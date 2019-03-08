			$(document).ready(function(){

				setTimeout(function(){
					$(".Header-Logo").addClass("slideDown");
				},800);

				setTimeout(function(){
					$(".Header-Txt").addClass("fadeIn");
				},1200);

				setTimeout(function(){
					$(".Header-Linea").addClass("fadeIn");
				},1600);

				setTimeout(function(){
					$(".HeaderMenu").addClass("slideLeft");
				},2000);


				$(".Header_slide").vegas({
					overlay: true,
			        delay: 5000,
			        slidesToKeep: 1,
			        transition: 'fade2',
			        transitionDuration: 8000,
			        animation: 'random',
			        animationDuration: 8000,
				    slides: [
				        { src: 'images/sliderHome/bgHeader1.jpg'},
				        { src: 'images/sliderHome/bgHeader2.jpg'},
				        { src: 'images/sliderHome/bgHeader3.jpg'}
				    ]
				});

				//Click logo
				$(".MainMenu-Logo img").click(function()
				{
					$('html, body').animate(
					{
						scrollTop: $(".Header").offset().top - 103
					}, 1000, 'swing');
				});

				//Navegacion Menu
				$('.MainMenu-ItemList').each(function(j)
				{
					$(this).click(function()
					{
						$('html, body').animate(
						{
							scrollTop: $("."+$(this).data('menu')).offset().top - 103
						}, 1000, 'swing');
					});
				});

				//Navegacion Menu
				$('.HeaderMenu-ItemList').each(function(j)
				{
					$(this).click(function()
					{
						$('html, body').animate(
						{
							scrollTop: $("."+$(this).data('menu')).offset().top - 103
						}, 1000, 'swing');
					});
				});

				//Click Servicios
				$(".Servicios-ItemList").click(function()
				{
					$('html, body').animate(
					{
						scrollTop: $(".Servicios-InfoList").offset().top - 400
					}, 1000, 'swing');
				});

				$(".Servicios-InfoList").parallax("50%", 0.0);

				$(".Servicios-ItemList").each(function( j ) {
					$(this).click(function(){
						$(".Servicios-ItemList").removeClass("activo");
						$(".Servicios-ItemList").eq(j).addClass("activo");

						$(".Servicios-ItemInfoList").animate({'opacity':'0'}, 200);
						$(".Servicios-ItemInfoList").css({display:'none'});

						$(".Servicios-ItemInfoList").eq(j).css({display:'block'});
						$(".Servicios-ItemInfoList").eq(j).animate({'opacity':'1'}, 400);

						$(".Servicios-InfoListR").slideUp('slow');

						$(".Servicios-InfoListR").eq(j).html($(".Servicios-ItemInfoList").eq(j).html());

						$(".Servicios-InfoListR").eq(j).slideDown('slow');

						/*$(".Servicios-InfoList").eq(j).animate({opacity: 0}, 2000, function() {
							$(this)
								.css({'background-image': 'url(images/servicios/servicio'+j+'.jpg)'})
								.animate({opacity: 1});
						});*/
					});
				});

				$(".Reclutamiento").parallax("50%", 0.2);
			});

			var banMenuAlterno = false;
			var banAcercaDe = false;
			var banServicios = false;				
			var banProductos = false;
			var banCertificaciones = false;
			var banReclutamiento = false;
			var banContacto = false;

										
			//Posicionamiento del menu
			$(window).scroll(function() 
			{			
				var ajuste = 103;

				$('.Header').each(function()
		  		{
				 	var altura = $(this).offset().top-ajuste;
					var alturaSi = $('.Nosotros').offset().top;
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
			
				$('.Nosotros').each(function()
				{
					var altura = $(this).offset().top-ajuste;
					var alturaSi = $('.Servicios').offset().top;
					var topOfWindow = $(window).scrollTop();
			
					if (topOfWindow >= altura && topOfWindow < alturaSi) 
					{
						if(!banAcercaDe)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(0).addClass("activo");
								
							banAcercaDe = true;
							banServicios = false;				
							banProductos = false;
							banCertificaciones = false;
							banReclutamiento = false;
							banContacto = false;
						}
					}		  	  
				});
					
				$('.Servicios').each(function()
				{
					var altura = $(this).offset().top - ajuste;
					var alturaSi = $('.Productos').offset().top;
					var topOfWindow = $(window).scrollTop();
			
					if (topOfWindow >= altura && topOfWindow < alturaSi) 
					{
						if(!banServicios)
						{
							limpiarMenu();

							$('.MainMenu-ItemList').eq(1).addClass("activo");
								
							banAcercaDe = false;
							banServicios = true;				
							banProductos = false;
							banCertificaciones = false;
							banReclutamiento = false;
							banContacto = false;	
						}						
					}		  	  
				});
				
				$('.Productos').each(function()
				{
					var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Certificaciones').offset().top;	
					var topOfWindow = $(window).scrollTop();
			
					if (topOfWindow >= altura && topOfWindow < alturaSi) 
					{
						if(!banProductos)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(2).addClass("activo");
								
							banAcercaDe = false;
							banServicios = false;				
							banProductos = true;
							banCertificaciones = false;
							banReclutamiento = false;
							banContacto = false;	
						}
					}		  	  
				});
					
				$('.Certificaciones').each(function()
				{
					var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Reclutamiento').offset().top;					
					var topOfWindow = $(window).scrollTop();
			
					if (topOfWindow >= altura && topOfWindow < alturaSi) 
					{
						if(!banCertificaciones)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(3).addClass("activo");
								
								banAcercaDe = false;
								banServicios = false;				
								banProductos = false;
								banCertificaciones = true;
								banReclutamiento = false;
								banContacto = false;	
						}
					}		  	  
				});				
				
				$('.Reclutamiento').each(function()
				{
					var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Contacto').offset().top;							
					var topOfWindow = $(window).scrollTop();
			
					if (topOfWindow >= altura && topOfWindow < alturaSi) 
					{
						if(!banReclutamiento)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(4).addClass("activo");
								
							banAcercaDe = false;
							banServicios = false;				
							banProductos = false;
							banCertificaciones = false;
							banReclutamiento = true;
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
							$('.MainMenu-ItemList').eq(5).addClass("activo");
							
							banAcercaDe = false;
							banServicios = false;				
							banProductos = false;
							banCertificaciones = false;
							banReclutamiento = false;
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
						$(this).addClass("fadeIn2");		  
		  		});	  
			});

			function limpiarMenu() {
				$(".MainMenu-ItemList").removeClass('activo');
			}
			