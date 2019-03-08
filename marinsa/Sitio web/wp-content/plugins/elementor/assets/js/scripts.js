jQuery(function() {
	
	'use strict';
    
	setTimeout(function(){

  	if(jQuery(window).scrollTop()==0){

    	jQuery('html, body').animate(
    	{
        	scrollTop: jQuery(".home-1").offset().top
    	}, 1500, 'swing');
  	}

	},55000);

	jQuery('#skip-btn').on('click', function() {
		event.preventDefault();
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".home-1").offset().top,
			},1500, 'swing');
	});

	jQuery(window).scroll(function(){
		
		var windowHeight = jQuery(window).scrollTop();
		var contenido1 = jQuery(".home-1").offset();
		contenido1 = contenido1.top;

	    if(windowHeight >= contenido1-100  ){
			jQuery('#seccion1').removeClass('seccion-inactivo').addClass('seccion-activo');
			jQuery('#seccion2').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion3').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion4').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion5').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );

			//jQuery('.scroll-btn').css('display','block');


	    }

	    var windowHeight = jQuery(window).scrollTop();
		var contenido2 = jQuery(".about-1").offset();
		contenido2 = contenido2.top;

	    if(windowHeight >= contenido2-100  ){
			jQuery('#seccion2').removeClass('seccion-inactivo').addClass('seccion-activo');
			jQuery('#seccion1').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion3').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion4').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion5').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );

	    }

	    var windowHeight = jQuery(window).scrollTop();
		var contenido3 = jQuery(".services-1").offset();
		contenido3 = contenido3.top;

	    if(windowHeight >= contenido3  ){
			jQuery('#seccion3').removeClass('seccion-inactivo').addClass('seccion-activo');
			jQuery('#seccion1').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion2').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion4').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion5').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );

	    }

	    var windowHeight = jQuery(window).scrollTop();
		var contenido4 = jQuery(".embarcaciones-1").offset();
		contenido4 = contenido4.top;

	    if(windowHeight >= contenido4-100  ){
			jQuery('#seccion4').removeClass('seccion-inactivo').addClass('seccion-activo');
			jQuery('#seccion1').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion2').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion3').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion5').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );

	    }

	    var windowHeight = jQuery(window).scrollTop();
		var contenido5 = jQuery(".contact-1").offset();
		contenido5 = contenido5.top;

	    if(windowHeight >= contenido5-120  ){
			jQuery('#seccion5').removeClass('seccion-inactivo').addClass('seccion-activo');
			jQuery('#seccion1').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion2').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion3').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
			jQuery('#seccion4').removeClass( "seccion-activo" ).addClass( "seccion-inactivo" );
	    }

     });

	jQuery(document).on('keyup',function(evt) {
	    if (evt.keyCode == 27) {
	       jQuery('.menu-lg').hide();
	    }
	});

	jQuery('.close-mark').on('click', function(){
		jQuery('.menu-lg').hide();
	});
	

	jQuery('.btn-scroll').on('click', function() {
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".about-1").offset().top-50,
			},1500, 'swing');
	});

	jQuery('#logo-mini').on('click', function() {
		jQuery('.menu-lg').show();
	});

	jQuery('#seccion1').on('click', function() {
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".home-1").offset().top,
			},1500, 'swing');
	});

	jQuery('#seccion2').on('click', function() {
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".about-1").offset().top-50,
			},1500, 'swing');
	});

	jQuery('#seccion3').on('click', function() {
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".services-1").offset().top+250,
			},1500, 'swing');
	});

	jQuery('#seccion4').on('click', function() {
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".embarcaciones-1").offset().top-50,
			},1500, 'swing');
	});

	jQuery('#seccion5').on('click', function() {
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".contact-1").offset().top-50,
			},1500, 'swing');
	});

	jQuery('.dp-btn').on('click', function(){
		jQuery('.element-item').isotope({ 
			filter: '.shipdp',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});

	jQuery('.btn-todos').on('click', function(){
		jQuery('.element-item').isotope({ 
			filter : '*',
			getSortData: {
			    nombre: '.text-azul'
			 },
			sortBy : 'nombre',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});

	jQuery('.vessel-btn').on('click', function(){
		jQuery('.element-item').isotope({ filter: '.vessel',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});	

	jQuery('.fsv-btn').on('click', function(){
		jQuery('.element-item').isotope({ filter: '.fsv',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});	

	jQuery('.ahts-btn').on('click', function(){
		jQuery('.element-item').isotope({ filter: '.ahts',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});

	jQuery('.crew-btn').on('click', function(){
		jQuery('.element-item').isotope({ filter: '.crew-boats',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});

	jQuery('.boats-btn').on('click', function(){
		jQuery('.element-item').isotope({ filter: '.boats',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});	

	jQuery('.tug-btn').on('click', function(){
		jQuery('.element-item').isotope({ filter: '.tug',
			animationOptions: {
     			duration: 1500
     		}
     	});
	});

	jQuery('#op-nosotros').on('click', function(){
		jQuery('.menu-lg').hide();
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".about-1").offset().top-50,
			},1500, 'swing');
	});

	jQuery('#op-servicios').on('click', function(){
		jQuery('.menu-lg').hide();
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".services-1").offset().top,
			},1500, 'swing');
	});

	jQuery('.op-embarcaciones').on('click', function(){
		jQuery('.menu-lg').hide();
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".embarcaciones-1").offset().top-50,
			},1500, 'swing');
	});

	jQuery('#op-calidad').on('click', function(){
		jQuery('.menu-lg').hide();
		jQuery('html, body').animate(
			{
				scrollTop:jQuery("#qhse").offset().top-100,
			},1500, 'swing');
	});

	jQuery('#op-contacto').on('click', function(){
		jQuery('.menu-lg').hide();
		jQuery('html, body').animate(
			{
				scrollTop:jQuery(".contact-1").offset().top-50,
			},1500, 'swing');
	});

	var circulo = document.querySelectorAll('.post-grid-thumbnail');

	for(let i = 0, length1 = circulo.length; i < length1; i++){
			circulo[i].addEventListener("mouseover", function() {
			circulo[i].style.borderColor = "#00ccb7";
		});

			circulo[i].addEventListener("mouseleave", function() {
			circulo[i].style.borderColor = "#B7C3C6";
		});

	}

	jQuery('#hamburguesa-icon').on('click', function(event) {
		event.preventDefault();
		jQuery('#menu-responsive').slideToggle(400);
	});

});