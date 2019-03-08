			//Menu
			$(window).scroll(function() 
			{					
		  		$('.About').each(function()
		  		{				
				 	var altura = $(this).offset().top;
						
				   	var topOfWindow = $(window).scrollTop()+52;
		   
			 		if (topOfWindow >= altura) 
			 		{										
						$(".contentMenu").addClass("ActivarMenu");
						
						//$(".contentMenu-Logo").addClass("fadeIn2");
						$(".MainMenu").addClass("slideUp2");	
						//$("#mnNosotros").addClass("activo");
						//$(".contentMenu-Idioma").addClass("slideUp2");		
					}						
					//if($(".Menu").css("top") == "0px")
					else if(topOfWindow < altura)
					{
						//$(".MainMenu-Item a").removeClass("activo");
						$(".contentMenu").removeClass("ActivarMenu");
							
						//$(".contentMenu-Logo").removeClass("fadeIn2");
						$(".MainMenu").removeClass("slideUp2");	
						//$(".contentMenu-Idioma").removeClass("slideUp2");					
					}	  	  
		  		});										
			});
			
			//Navegación menu
			$(document).ready(function()
			{
				$("a.fancyboxGrupoCemza").fancybox(
				{
					'width': 840, //or whatever you like
					'height': 570
				});
				
				$("a.fancyboxPublicidad").fancybox(
				{
					'width': 700, //or whatever you like
					'height': 400
				});	
				
				$("#mostrarPublicidad").click();
				
				$('.WeOffer').anystretch();
								
				$(".WeOffer-Item").each(function(j)
				{
					$(this).click(function()
					{
						$(".WeOffer-Item").removeClass("activo");
						$('.WeOffer').anystretch("images/ofrecemos/fondo"+(j+1)+".jpg", {speed: 350});		
						$(this).addClass("activo");				
					});			
				});
				
				$.simpleWeather(
				{
					location: 'Ciudad del Carmen, CM, MX',
					woeid: '',
					unit: 'c',
					success: function(weather) 
					{										
						$(".Header-icoClima").addClass("icon-"+weather.code);
						$("#Header-Temperatura").html(weather.temp+'&deg;'+weather.units.temp);
						$("#Header-Estado").html(weather.currently+"");
					},
					error: function(error) 
					{
				  		
					}
  				});
				
				
				$('#sliderCalidad').rhinoslider({
					effect: 'fade',
					effectTime: 1000,
					showTime: 3000,
					animateActive: true,
					controlsMousewheel: false,
					autoPlay: true,				
					captionsFadeTime: 0,
					captionsOpacity: 1,				
					showCaptions: 'always',
					//captionsFadeTime: 1000,
					showBullets: 'never',
					showControls: 'never'
				});
				
				$('#sliderServicios').rhinoslider({
					effect: 'fade',
					effectTime: 1000,
					showTime: 3000,
					animateActive: true,
					controlsMousewheel: false,
					autoPlay: true,				
					captionsFadeTime: 0,
					captionsOpacity: 1,				
					showCaptions: 'always',
					//captionsFadeTime: 1000,
					showBullets: 'never',
					showControls: 'never'
				});
				
				
				
				var ajuste = 0;
				
				$('.contentMenu-Logo').click(function()
				{
	      			$('html, body').animate(
					{
		        		scrollTop: 0
		    		}, 400, 'swing');
				});
					
				$('#mnHome').click(function()
				{
	      			$('html, body').animate(
					{
		        		scrollTop: 0
		    		}, 400, 'swing');
				});
				
				$('#mnAbout').click(function()
				{
	      			$('html, body').animate(
					{
		        		scrollTop: $(".About").offset().top-ajuste
		    		}, 400, 'swing');
				});
				
				$('#mnWeOffer').click(function()
				{
	      			$('html, body').animate(
					{
		        		scrollTop: ($(".WeOffer").offset().top-ajuste-35)
		    		}, 400, 'swing');
				});		
				
				$('#mnContacto').click(function()
				{
	      			$('html, body').animate(
					{
		        		scrollTop: $(".EstamosServirle").offset().top-ajuste
		    		}, 400, 'swing');
				});				
			});
			
			var banAbout = false;
			var banWeOffer = false;
			var banContacto = false;
										
			//Posicionamiento del menu
			$(window).scroll(function() 
			{			
				var ajuste = 80;
										
		  		$('.About').each(function()
		  		{
				 	var altura = $(this).offset().top-ajuste;
					var alturaSi = $('.WeOffer').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banAbout)
						{
							limpiarMenu();
			  				$('#mnAbout').addClass("activo");
							
							banAbout = true;
							banWeOffer = false;	
							banContacto = false;			
						}
					}		  	  
		  		});				
								
				$('.WeOffer').each(function()
		  		{
				 	var altura = ($(this).offset().top - ajuste - 25);
					var alturaSi = $('.EstamosServirle').offset().top;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura && topOfWindow < alturaSi) 
			 		{
						if(!banWeOffer)
						{
							limpiarMenu();
							$('#mnWeOffer').addClass("activo");
							
							banAbout = false;
							banWeOffer = true;
							banContacto = false;	
						}
					}		  	  
		  		});
				
				$('.EstamosServirle').each(function()
		  		{
				 	var altura = $(this).offset().top - ajuste;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow >= altura) 
			 		{
						if(!banContacto)
						{
							limpiarMenu();
							$('#mnContacto').addClass("activo");
							
							banAbout = false;
							banTextAbout = false;				
							banWeOffer = false;									
							banContacto = true;	
						}
					}		  	  
		  		});
			});
			
			var distancia = 500;
			//Animación
			$(window).scroll(function() 
			{	
				$('.aparecerFade').each(function()
		  		{
				 	var altura = $(this).offset().top - distancia;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
			 			$(this).addClass("fadeIn2");	  			 				  
		  		});	
				
				$('.aparecerFade2').each(function()
		  		{
				 	var altura = $(this).offset().top - ( distancia + 250 );
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("fadeIn2");	  			 				  
		  		});	  
	  			
				$('.aparecerDown').each(function()
		  		{
				 	var altura = $(this).offset().top - distancia;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideDown");		  			 				  
		  		});	 
				
				$('.aparecerUp').each(function()
		  		{
				 	var altura = $(this).offset().top - distancia;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideUp2");	  			 				  
		  		});	 
				
				$('.aparecerUp2').each(function()
		  		{
				 	var altura = $(this).offset().top - distancia;
						
				   	var topOfWindow = $(window).scrollTop() + 50;
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideUp2");	  			 				  
		  		});	  
	  			
				$('.aparecerLeft').each(function()
		  		{
				 	var altura = $(this).offset().top - distancia;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideLeft");	  			 				  
		  		});	  
	  		
				$('.aparecerRight').each(function()
		  		{
				 	var altura = $(this).offset().top - distancia;
						
				   	var topOfWindow = $(window).scrollTop();
		   
			 		if (topOfWindow > altura) 
						$(this).addClass("slideRight");		  			 				  
		  		});	  
	  		});
						
			function limpiarMenu()
			{
				$(".MainMenu-List li a").removeClass('activo');
			}