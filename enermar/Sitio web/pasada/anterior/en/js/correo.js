			$(document).ready(function()
			{
				$("#btnSend").click(function()
				{				
					if(validar_campo("#txtName",4,"Name"))
						if((/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w/.test($("#txtEmail").val())))
						{						
							if(validar_campo("#txtSubject",4,"Subject"))
								if(validar_campo("#txtMessage",6,"Message"))	
								{
									$(".EstamosServirle-Aviso").css({"display": "block"});
									$(".EstamosServirle-Aviso").html("<img src='images/loading.gif' width='50px' />");
					
									$.ajax(
									{
										url		: "enviar.php",
										type	: "POST",
										data	: 
										{
											txtNombre		: $("#txtName").val(),
											txtAsunto		: $("#txtSubject").val(),
											txtEmail		: $("#txtEmail").val(),										
											txtMensaje		: $("#txtMessage").val()
										},
										success	: function(HTMLRespuesta)
										{			
											$("#txtName").val("Name");											
											$("#txtEmail").val("Email");
											$("#txtSubject").val("Subject");
											$("#txtMessage").val("Message");											
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