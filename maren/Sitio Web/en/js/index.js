		
	$(document).ready(function(){
		//Navegación Menu
		$('.MainNav-ItemList').each(function(j)
		{
			$(this).click(function()
			{
				$('html, body').animate(
				{
					scrollTop: $("."+$(this).data('menu')).offset().top - 84
				}, 1000, 'swing');
			});
		});

		setTimeout(function(){
			$(".Header-ContainerLogo").addClass("slideRight");
		},400);

		setTimeout(function(){
			$(".Header-Logo").addClass("fadeIn");
			$(".Header-Title").addClass("slideLeft");
		},1500);

		setTimeout(function(){
			$(".Servicios-Item").eq(1).css({"height":$(".Servicios-Item").eq(0).height()+36});
			$(".Servicios-Item").eq(2).css({"height":$(".Servicios-Item").eq(0).height()+36});
			$(".Servicios-Item").eq(3).css({"height":$(".Servicios-Item").eq(0).height()+36});

			$(".Servicios-Item").eq(4).css({"height":$(".Servicios-Item").eq(6).height()+36});
			$(".Servicios-Item").eq(5).css({"height":$(".Servicios-Item").eq(6).height()+36});
			$(".Servicios-Item").eq(7).css({"height":$(".Servicios-Item").eq(6).height()+36});
		},1000);

		$('.Servicios-Title').parallax("50%", 0.1);	
		$('.ServiciosAdicionales').parallax("50%", 0.1)
	});

	$(window).resize(function(){
		$(".Servicios-Item").eq(1).css({"height":$(".Servicios-Item").eq(0).height()+36});
		$(".Servicios-Item").eq(2).css({"height":$(".Servicios-Item").eq(0).height()+36});
		$(".Servicios-Item").eq(3).css({"height":$(".Servicios-Item").eq(0).height()+36});

		$(".Servicios-Item").eq(4).css({"height":$(".Servicios-Item").eq(6).height()+36});
		$(".Servicios-Item").eq(5).css({"height":$(".Servicios-Item").eq(6).height()+36});
		$(".Servicios-Item").eq(7).css({"height":$(".Servicios-Item").eq(6).height()+36});
	});


	var banHeader = false;
	var banAcercaDe = false;
	var banServicios = false;				
	var banContacto = false;
										
	//Posicionamiento del menu
	$(window).scroll(function() 
	{			
		var ajuste = 84;

		$('.Header').each(function()
  		{
			var altura = $(this).offset().top-ajuste;
			var alturaSi = $('.AcercaNosotros').offset().top;
						
			var topOfWindow = $(window).scrollTop();
		   
			if (topOfWindow >= altura && topOfWindow < alturaSi) 
			{
				if(!banHeader)
				{
					limpiarMenu();
					$('.MainNav-ItemList').eq(0).addClass("activo");
							
					banHeader = true;
					banAcercaDe = false;
					banServicios = false;				
					banContacto = false;			
				}
			}		  	  
		});

		$('.AcercaNosotros').each(function()
  		{
			var altura = $(this).offset().top-(ajuste+180);
			var alturaSi = $('.Servicios').offset().top;
						
			var topOfWindow = $(window).scrollTop();
		   
			if (topOfWindow >= altura && topOfWindow < alturaSi) 
			{
				$(".AcercaNosotros-Mapa").addClass("fadeIn");

				setTimeout(function(){
					$(".AcercaNosotros-ZonaMapa").addClass("fadeIn");
				},800);

				setTimeout(function(){
					$(".AcercaNosotros-LogoMapa").addClass("fadeIn2");
				},1600);

				setTimeout(function(){
					$(".AcercaNosotros-LogoMapa").addClass("GirarLogo");
				},2600);
			}		  	  
		});


		$('.AcercaNosotros').each(function()
  		{
			var altura = $(this).offset().top-ajuste;
			var alturaSi = $('.Servicios').offset().top;
						
			var topOfWindow = $(window).scrollTop();
		   
			if (topOfWindow >= altura && topOfWindow < alturaSi) 
			{
				if(!banAcercaDe)
				{
					limpiarMenu();
					$('.MainNav-ItemList').eq(1).addClass("activo");
							
					banHeader = false;
					banAcercaDe = true;
					banServicios = false;				
					banContacto = false;			
				}
			}		  	  
		});
				
		$('.Servicios').each(function()
		{
			var altura = $(this).offset().top - ajuste;
			var alturaSi = $('.Contacto').offset().top;
						
			var topOfWindow = $(window).scrollTop();
		   
			if (topOfWindow >= altura && topOfWindow < alturaSi) 
			{
				if(!banServicios)
				{
					limpiarMenu();
					$('.MainNav-ItemList').eq(2).addClass("activo");
							
					banHeader = false;
					banAcercaDe = false;
					banServicios = true;				
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
					$('.MainNav-ItemList').eq(3).addClass("activo");
						
					banHeader = false;
					banAcercaDe = false;
					banServicios = false;				
					banContacto = true;	
				}
			}		  	  
  		});
	});


	//Animaciones
	$(window).scroll(function() 
	{	
		$('.aparecerSlideDown').each(function()
		  {
			 var altura = $(this).offset().top-500;						
			   var topOfWindow = $(window).scrollTop();
   
			 if (topOfWindow > altura) 
				$(this).addClass("slideDown");		  
		  });	

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
		
		$('.aparecerRight2').each(function()
		  {
			 var altura = $(this).offset().top-600;						
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
		

		$('.aparecerSlideLeft2').each(function()
		{
			var altura = $(this).offset().top-600;						
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
		$(".MainNav-ItemList").removeClass('activo');
	}