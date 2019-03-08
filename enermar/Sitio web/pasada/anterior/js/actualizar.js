			$(window).load(function()
			{
				$("#btnGuardar").click(function()
				{
					/*if(confirm("¿Esta seguro que desea guardar los cambios?"))
                    {*/
						if(validar_campo("#txtPrecio",2,"0"))
							if(!isNaN($("#txtPrecio").val()))
								if(parseInt($("#txtPrecio").val())>0)
									$("#form-login").submit();
								else
								{
									$("#txtPrecio").effect('pulsate', { times:2 }, 1000);		
									$("#txtPrecio").focus();
								}
							else
							{
								$("#txtPrecio").effect('pulsate', { times:2 }, 1000);		
								$("#txtPrecio").focus();
							}
					/*}*/
				});
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