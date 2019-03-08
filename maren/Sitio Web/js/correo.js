			$(document).ready(function()
			{
				$("#btnEnviar").click(function()
				{				
					if(validar_campo("#txtNombre",4,"Nombre"))
	    					if((/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w/.test($("#txtEmail").val())))
							{						
								if(validar_campo("#txtComentario",6,"Comentario"))	
								{
									$(".Contacto-Msj").css({"display": "block"});
									$(".Contacto-Msj").html("<img src='images/loading.gif' width='50px' />");
					
									$.ajax(
									{
										url		: "enviar.php",
										type	: "POST",
										data	: 
										{
											txtNombre		: $("#txtNombre").val(),
											txtEmail		: $("#txtEmail").val(),										
											txtComentario	: $("#txtComentario").val()
										},
										success	: function(HTMLRespuesta)
										{			
											$("#txtNombre").val("Nombre");
											$("#txtEmail").val("Email");
											$("#txtComentario").val("Comentario");											
											$(".Contacto-Msj").html(HTMLRespuesta);

											setTimeout(function(){
												$(".Contacto-Msj").slideUp('slow');
											},3000);
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