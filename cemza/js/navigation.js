$(document).ready(function()
{
	thumbsClick(); 
});

// ========================================================================
// PROJECT THUMBS & NAVIGATION
// ========================================================================

function thumbsClick(){ // Thumbs Click to Go to Project
	$('#empresas ul li a').each(function(t){
		$(this).click(function(){

	      $('html, body').animate({
		        scrollTop: $("#empresas").offset().top - 50
		    }, 400, 'swing');
			
		    currentPage = 'empresas/empresa' + (t + 1);

	    	$('#empresas').animate({'opacity':'0'}, 300, 'swing', function(){
	    		$('#empresas').load(currentPage + '.html', function(){
	    			$('#empresas').animate({'opacity':'1'}, 300, 'swing');
	    			
	    		});
	    	});

		});
	});
	
}

function navCerrar()
{ // Nav Btn to Return to Portfolio
		
   	    $('html, body').animate({
		        scrollTop: $("#empresas").offset().top - 50
		    }, 400, 'swing');
			
    	$('#empresas').animate({'opacity':'0'}, 300, 'swing', function(){
    		$('#empresas').load('empresas/empresa.html', function(){
    			$('#empresas').animate({'opacity':'1'}, 300, 'swing');
    			thumbsClick();
    		});
    	});


}

function navNext(){ // Click to Go to Next Project

   	    $('html, body').animate({
		        scrollTop: $("#empresas").offset().top - 50
		    }, 400, 'swing');
			
    	$('#empresas').animate({'opacity':'0'}, 200, 'swing', function(){
    		currentCount = currentPage.replace('empresas/empresa','');
    		if (parseInt(currentCount) == 8) {currentCount = 0;}
    		currentPage = 'empresas/empresa' + (parseInt(currentCount) + 1);
    		$('#empresas').load(currentPage + '.html', function(){
    			$('#empresas').animate({'opacity':'1'}, 200, 'swing');
    			
    		});
    	});
}

function navPrevious(){ // Click to Go to Previous Project

   	    $('html, body').animate({
		        scrollTop: $("#empresas").offset().top - 50
		    }, 400, 'swing');
			
    	$('#empresas').animate({'opacity':'0'}, 200, 'swing', function(){
    		currentCount = currentPage.replace('empresas/empresa','');
    		if (parseInt(currentCount) == 1) {currentCount = 9;} 
    		currentPage = 'empresas/empresa' + (parseInt(currentCount) - 1);
    		$('#empresas').load(currentPage + '.html', function(){
    			$('#empresas').animate({'opacity':'1'}, 200, 'swing');
    			
    		});
    	});
}

$('#empresas ul li a').each(function()
	  {
		var imagePos = $(this).offset().top;
			
		var topOfWindow = $(window).scrollTop();
	 	  
		  
		  if (imagePos < topOfWindow+800) 
		 //if (topOfWindow > 2700) 
		  {
			$(this).addClass("mostrar");
		  }
	  });

(function($){$.fn.touchwipe=function(settings){var config={min_move_x:20,min_move_y:20,wipeLeft:function(){},wipeRight:function(){},wipeUp:function(){},wipeDown:function(){},preventDefaultEvents:true};if(settings)$.extend(config,settings);this.each(function(){var startX;var startY;var isMoving=false;function cancelTouch(){this.removeEventListener('touchmove',onTouchMove);startX=null;isMoving=false}function onTouchMove(e){if(config.preventDefaultEvents){e.preventDefault()}if(isMoving){var x=e.touches[0].pageX;var y=e.touches[0].pageY;var dx=startX-x;var dy=startY-y;if(Math.abs(dx)>=config.min_move_x){cancelTouch();if(dx>0){config.wipeLeft()}else{config.wipeRight()}}else if(Math.abs(dy)>=config.min_move_y){cancelTouch();if(dy>0){config.wipeDown()}else{config.wipeUp()}}}}function onTouchStart(e){if(e.touches.length==1){startX=e.touches[0].pageX;startY=e.touches[0].pageY;isMoving=true;this.addEventListener('touchmove',onTouchMove,false)}}if('ontouchstart'in document.documentElement){this.addEventListener('touchstart',onTouchStart,false)}});return this}})(jQuery);



	