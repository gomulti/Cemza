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
						scrollTop: $(".Header").offset().top - 93
					}, 1000, 'swing');
				});

				//Navegacion Menu
				$('.MainMenu-ItemList').each(function(j)
				{
					$(this).click(function()
					{
						$('html, body').animate(
						{
							scrollTop: $("."+$(this).data('menu')).offset().top - 93
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
							scrollTop: $("."+$(this).data('menu')).offset().top - 93
						}, 1000, 'swing');
					});
				});

				$('.Galeria-List').lightSlider({
					gallery:true,
					autoWidth:true,
					item:1,
					thumbItem:7,
					slideMargin: 0,
					speed:500,
					mode:'fade',
					auto:true,
					loop:true,
					onSliderLoad: function() {
						$('.Galeria-List').removeClass('cS-hidden');
					}
				});
			});

			var banMenuAlterno = false;
			var banAcercaDe = false;
			var banServicios = false;				
			var banProductos = false;
			var banGaleria = false;
			var banContacto = false;

										
			//Posicionamiento del menu
			$(window).scroll(function() 
			{			
				var ajuste = 93;

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
							banGaleria = false;
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
							banGaleria = false;
							banContacto = false;	
						}						
					}		  	  
				});
				
				$('.Productos').each(function()
				{
					var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Galeria').offset().top;	
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
							banGaleria = false;
							banContacto = false;	
						}
					}		  	  
				});		
				
				$('.Galeria').each(function()
				{
					var altura = ($(this).offset().top - ajuste);
					var alturaSi = $('.Contacto').offset().top;							
					var topOfWindow = $(window).scrollTop();
			
					if (topOfWindow >= altura && topOfWindow < alturaSi) 
					{
						if(!banGaleria)
						{
							limpiarMenu();
							$('.MainMenu-ItemList').eq(4).addClass("activo");
								
							banAcercaDe = false;
							banServicios = false;				
							banProductos = false;
							banGaleria = true;
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
							banGaleria = false;
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
			