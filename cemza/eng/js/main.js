$(document).ready(function() {	
		//Scroll navigation
		$("a[href^='#']").click(function(e) {
			e.preventDefault();
			
			var position = $($(this).attr("href")).offset().top;

			$("body, html").animate({
				scrollTop: position
			} /* speed */ );
		});
		

		//Hide show menu
		// $(window).scroll(function(){
		//   if (document.body.scrollTop > 600 || document.documentElement.scrollTop > 600) {
		//     document.getElementById("menuTop").style.top = "0";
		//   }else{
		//     document.getElementById("menuTop").style.top = "-90px";
		//   }
		// });
		


		//Video position
		$("#Main div").eq(0).css({"position":"fixed"});

		// Animaciones de entrada	
		setTimeout(function(){
			$("#slogan").addClass("slideUp");
		},1600);

		setTimeout(function(){
			$("#MainNav").addClass("slideUp");
		},2700);

		setTimeout(function(){
			$(".btn_scroll").addClass("slideUp");
		},3500);

		setTimeout(function(){
			$(".btn_scroll").addClass("animacion");
		},4800);

		//Animaciones de scroll
		$(window).scroll(function() 
		{					
			$('.aparecerSlideUp').each(function()
	  		{
			 	var altura = $(this).offset().top-800;						
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
	  		$('.aparecerLeft').each(function()
	  		{
			 	var altura = $(this).offset().top-500;						
			   	var topOfWindow = $(window).scrollTop();
	   
		 		if (topOfWindow > altura) 
					$(this).addClass("slideLeft");		  
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
			 	var altura = $(this).offset().top-600;						
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
	  		$('.aparecerGrowHor').each(function()
	  		{
			 	var altura = $(this).offset().top-600;						
			   	var topOfWindow = $(window).scrollTop();
	   
		 		if (topOfWindow > altura) 
					$(this).addClass("growHorizontal");		  
			  });  
		});

		//Parallax
		$('#about').parallax("50%", 0.1);
		$('#brochure').parallax("50%", 0.1);
		$('#contacto').parallax("50%", 0.1);

		// Item empresas
		$(window).resize(function(){
		$(".item_empresas").css({"height":$(".item_empresas").width()});
		});

		
		
});
