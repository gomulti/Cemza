			$(document).ready(function()
			{
				$(".BtnEnviar").click(function()
				{				
					if(validar_campo("#txtNombre",4,"Nombre"))
	    					if((/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w/.test($("#txtEmail").val())))
							{	
								if(validar_campo("#txtTelefono",6,"Teléfono"))																
								if(validar_campo("#txtMensaje",6,"Mensaje"))	
										{
											$(".confirm").css({"display": "block"});
											$(".confirm").html("<img src='img/loading.gif' width='50px' />");
							
											$.ajax(
											{
												url		: "enviar.php",
												type	: "POST",
												data	: 
												{
													txtNombre		: $("#txtNombre").val(),
													txtEmail		: $("#txtEmail").val(),	
													txtTelefono		: $("#txtTelefono").val(),
													txtMensaje		: $("#txtMensaje").val()
												},
												success	: function(HTMLRespuesta)
												{			
													$("#txtNombre").val("Nombre");
													$("#txtEmail").val("Email");
													$("#txtTelefono").val("Teléfono");
													$("#txtMensaje").val("Mensaje");											
													$(".confirm").html(HTMLRespuesta);

													setTimeout(function(){
														$(".confirm").slideUp('slow');
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