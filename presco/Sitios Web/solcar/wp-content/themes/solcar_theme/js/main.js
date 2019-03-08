function slideHome() {
	var bgSlide1 = $(".extra img:nth-child(1)").attr("src");
	var	bgSlide2 = $(".extra img:nth-child(2)").attr("src");
	var	bgSlide3 = $(".extra img:nth-child(3)").attr("src");
	var	bgSlide4 = $(".extra img:nth-child(4)").attr("src");

	$(".slide_home").vegas({
		overlay: true,
        delay: 5000,
        slidesToKeep: 1,
        transition: 'fade2',
        transitionDuration: 8000,
        animation: 'random',
        animationDuration: 8000,
	    slides: [
			{ src: bgSlide1},
	        { src: bgSlide2},
	        { src: bgSlide3},
	        { src: bgSlide4}
	    ]
	});
}

function header_change() {
	$(".xx").click(function() {
		$(".header_fix").slideDown(300);
		$('.navbar-collapse').removeClass('in');
	});
	 $('.xx-index').click(function(){
        $(".header_fix").slideUp(300);
	 })

}

