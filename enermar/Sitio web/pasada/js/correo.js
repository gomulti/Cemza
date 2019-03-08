			$(document).ready(function()
			{
				$("#btnEnviar").click(function()
				{				
					if(validar_campo("#txtNombre",4,"Nombre"))
						if((/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w/.test($("#txtEmail").val())))
						{						
							if(validar_campo("#txtAsunto",4,"Asunto"))
								if(validar_campo("#txtMensaje",6,"Mensaje"))	
								{
									$(".EstamosServirle-Aviso").css({"display": "block"});
									$(".EstamosServirle-Aviso").html("<img src='images/loading.gif' width='50px' />");
					
									$.ajax(
									{
										url		: "enviar.php",
										type	: "POST",
										data	: 
										{
											txtNombre		: $("#txtNombre").val(),
											txtAsunto		: $("#txtAsunto").val(),
											txtEmail		: $("#txtEmail").val(),										
											txtMensaje		: $("#txtMensaje").val()
										},
										success	: function(HTMLRespuesta)
										{			
											$("#txtNombre").val("Nombre");											
											$("#txtEmail").val("Email");
											$("#txtAsunto").val("Asunto");
											$("#txtMensaje").val("Mensaje");											
											$(".EstamosServirle-Aviso").html(HTMLRespuesta);
										}
									})
								}
						} 
						else
						{
							$("#txtEmail").effect('pulsate', { times:2 }, 1000);		
							$("#txtEmail").focus();   
						}   
				})					
			});
			
			
			function validar_campo(campo,cant_num, place)
 			{ 
  				var ban = true;
  
     			if(/^\s+$/.test($(campo).val()) || $(campo).val().length < cant_num ||  $(campo).val() == place)
	  			{
					$(campo).effect('pulsate', { times:2 }, 1000);		
					$(campo).focus();
					ban = false;		
	  			}
  			return ban;
 			}