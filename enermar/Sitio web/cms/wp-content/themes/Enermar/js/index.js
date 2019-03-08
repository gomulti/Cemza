			$(document).ready(function(){

				setTimeout(function(){
					$(".Header-Logo").addClass("slideDown");
				},800);

				setTimeout(function(){
					$(".Header-Title").addClass("fadeIn");
				},1200);

				setTimeout(function(){
					$(".HeaderMenu").addClass("slideUp");
				},1600);



				//Navegacion Menu
				$('.MainMenu-ItemList').each(function(j)
				{
					$(this).click(function()
					{
						$('html, body').animate(
						{
							scrollTop: $("."+$(this).data('menu')).offset().top - 120
						}, 1000, 'swing');
					});
				});

				//NavegaciÃ³n Menu
				$('.HeaderMenu-ItemList').each(function(j)
				{
					$(this).click(function()
					{
						$('html, body').animate(
						{
							scrollTop: $("."+$(this).data('menu')).offset().top - 120
						}, 1000, 'swing');
					});
				});

			});

			var banMenuAlterno = false;
			var banPrecio = false;
			var banNosotros = false;				
			var banQueOfre = false;
			var banAlcance = false;
			var banServicios = false;
			var banAcreditaciones = false;
			var banContacto = false;

										
			//Posicionamiento del menu
			$(window).scroll(function() 
			{			
				var ajuste = 120;

				$('.Header').each(function()
		  		{
				 	var altura = $(this).offset().top-ajuste;
					var alturaSi = $('.Precios-Center').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banMenuAlterno)
						{
							$(".MainMenu").removeClass("ActivarMenu");
							banMenuAlterno = true;		
						}
					 }
					 else
					 {
						$(".MainMenu").addClass("ActivarMenu");
						banMenuAlterno = false;						
					 }	 
				});




				$('.Precios-Center').each(function()
		  		{
				 	var altura = $(this).offset().top-ajuste;
					var alturaSi = $('.Nosotros').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banPrecio)
						{
							limpiarMenu();
			  				$('.MainMenu-ItemList').eq(1).addClass("activo");
							
							banPrecio = true;
							banNosotros = false;				
							banQueOfre = false;
							banAlcance = false;
							banServicios = false;
							banAcreditaciones = false;
							banContacto = false;
						}
					}		  	  
		  		});
				
				$('.Nosotros').each(function()
		  		{
				 	var altura = $(this).offset().top - ajuste;
					var alturaSi = $('.QueOfrecemos-Center').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banNosotros)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(2).addClass("activo");
							
							banPrecio = false;
							banNosotros = true;				
							banQueOfre = false;
							banAlcance = false;
							banServicios = false;
							banAcreditaciones = false;
							banContacto = false;		
						}						
					}		  	  
		  		});
				
				$('.QueOfrecemos-Center').each(function()
		  		{
				 	var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.AlcanceOperativo-Center').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banQueOfre)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(3).addClass("activo");
							
							banPrecio = false;
							banNosotros = false;				
							banQueOfre = true;
							banAlcance = false;
							banServicios = false;
							banAcreditaciones = false;
							banContacto = false;	
						}
					}		  	  
				});
				
				$('.AlcanceOperativo-Center').each(function()
		  		{
				 	var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.NuestrosServicios-Title').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banAlcance)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(4).addClass("activo");
							
							banPrecio = false;
							banNosotros = false;				
							banQueOfre = false;
							banAlcance = true;
							banServicios = false;
							banAcreditaciones = false;
							banContacto = false;	
						}
					}		  	  
				});				
				
				$('.NuestrosServicios-Title').each(function()
		  		{
				 	var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Acreditaciones-Center').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banServicios)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(5).addClass("activo");
							
							banPrecio = false;
							banNosotros = false;				
							banQueOfre = false;
							banAlcance = false;
							banServicios = true;
							banAcreditaciones = false;
							banContacto = false;	
						}
					}		  	  
				});

				$('.Acreditaciones-Center').each(function()
		  		{
				 	var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Contacto').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banAcreditaciones)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(6).addClass("activo");
							
							banPrecio = false;
							banNosotros = false;				
							banQueOfre = false;
							banAlcance = false;
							banServicios = true;
							banAcreditaciones = false;
							banContacto = false;	
						}
					}		  	  
				});
				
				$('.Contacto').each(function()
		  		{
				 	var altura = $(this).offset().top - ajuste;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura) 
			 		{
						if(!banContacto)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(7).addClass("activo");
							
							banPrecio = false;
							banNosotros = false;				
							banQueOfre = false;
							banAlcance = false;
							banServicios = false;
							banAcreditaciones = false;
							banContacto = true;
						}
					}		  	  
				  });  
			});


			//Animaciones
			$(window).scroll(function() 
			{					
				$('.aparecerSlideUp').each(function()
		  		{
				 	var altura = $(this).offset().top-500;						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideUp");		  
				  });	
				  	
				$('.aparecerRight').each(function()
		  		{
				 	var altura = $(this).offset().top-500;						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideRight");		  
		  		});	
				
				$('.aparecerSlideLeft').each(function()
		  		{
				 	var altura = $(this).offset().top-500;						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideLeft");		  
		  		});	
				
				$('.aparecerFadeIn').each(function()
		  		{
				 	var altura = $(this).offset().top-500;						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("fadeIn");		  
				});	
				  
				$('.aparecerFadeIn2').each(function()
		  		{
				 	var altura = $(this).offset().top-600;						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("fadeIn");		  
		  		});	  
			});

			function limpiarMenu()
			{
				$(".MainMenu-ItemList").removeClass('activo');
			}
			