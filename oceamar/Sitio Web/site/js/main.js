function flip_card() {
	$(".cardex").flip({
        axis: "y",
        trigger: "click",
        autoSize: true
    });
}

function menu_remove() {
	$(".transicion").click(function() {
		$(".collapse").removeClass("in");
	});
} 


function header_hover() {
	$(window).scroll(function(){

		var alto = $(window).height();
		var cambio = ($(window).scrollTop()>alto-100)?true:false;

		if (cambio){	

			$(".nav_a,.nav_contact").css("padding","5px");
			$(".log_home").css("padding","15px");
			$(".btns_ico a").css("padding","15px 5px");

		}else{
			$(".nav_a,.nav_contact").css("padding","25px 15px");
			$(".log_home").css("padding","35px 15px");
			$(".btns_ico a").css("padding","35px 5px");
		};
	});
}

function item_puertos_hover() {
	$("#altamira").hover(function(){
		$(".altamira .box_info_puertos").css("display","block");
		$(".point_a").css("opacity","1");
	}, function(){
		$(".altamira .box_info_puertos").css("display","none");
		$(".point_a").css("opacity",".3");
	});

	$("#tampico").hover(function(){
		$(".tampico .box_info_puertos").css("display","block");
		$(".point_b").css("opacity","1");
	}, function(){
		$(".tampico .box_info_puertos").css("display","none");
		$(".point_b").css("opacity",".3");
	});

	$("#tuxpan").hover(function(){
		$(".tuxpan .box_info_puertos").css("display","block");
		$(".point_c").css("opacity","1");
	}, function(){
		$(".tuxpan .box_info_puertos").css("display","none");
		$(".point_c").css("opacity",".3");
	});

	$("#coatza").hover(function(){
		$(".coatza .box_info_puertos").css("display","block");
		$(".point_d").css("opacity","1");
	}, function(){
		$(".coatza .box_info_puertos").css("display","none");
		$(".point_d").css("opacity",".3");
	});

	$("#dos_bocas").hover(function(){
		$(".dos_bocas .box_info_puertos").css("display","block");
		$(".point_e").css("opacity","1");
	}, function(){
		$(".dos_bocas .box_info_puertos").css("display","none");
		$(".point_e").css("opacity",".3");
	});

	$("#frontera").hover(function(){
		$(".frontera .box_info_puertos").css("display","block");
		$(".point_f").css("opacity","1");
	}, function(){
		$(".frontera .box_info_puertos").css("display","none");
		$(".point_f").css("opacity",".3");
	});

	$("#carmen").hover(function(){
		$(".carmen .box_info_puertos").css("display","block");
		$(".point_g").css("opacity","1");
	}, function(){
		$(".carmen .box_info_puertos").css("display","none");
		$(".point_g").css("opacity",".3");
	});

	$("#seybaplaya").hover(function(){
		$(".seybaplaya .box_info_puertos").css("display","block");
		$(".point_h").css("opacity","1");
	}, function(){
		$(".seybaplaya .box_info_puertos").css("display","none");
		$(".point_h").css("opacity",".3");
	});

	$("#progreso").hover(function(){
		$(".point_i").css("opacity","1");
		$(".progreso .box_info_puertos").css("display","block");
	}, function(){
		$(".point_i").css("opacity",".3");
		$(".progreso .box_info_puertos").css("display","none");
	});


	// ------- reves ------

	$(".point_a").hover(function(){
		$(".point_a").css("opacity","1");
		$(".altamira .box_info_puertos").css("display","block");
	}, function(){
		$(".point_a").css("opacity",".3");
		$(".altamira .box_info_puertos").css("display","none");
	});

	$(".point_b").hover(function(){
		$(".point_b").css("opacity","1");
		$(".tampico .box_info_puertos").css("display","block");
	}, function(){
		$(".point_b").css("opacity",".3");
		$(".tampico .box_info_puertos").css("display","none");
	});

	$(".point_c").hover(function(){
		$(".point_c").css("opacity","1");
		$(".tuxpan .box_info_puertos").css("display","block");
	}, function(){
		$(".point_c").css("opacity",".3");
		$(".tuxpan .box_info_puertos").css("display","none");
	});

	$(".point_d").hover(function(){
		$(".point_d").css("opacity","1");
		$(".coatza .box_info_puertos").css("display","block");
	}, function(){
		$(".point_d").css("opacity",".3");
		$(".coatza .box_info_puertos").css("display","none");
	});

	$(".point_e").hover(function(){
		$(".point_e").css("opacity","1");
		$(".dos_bocas .box_info_puertos").css("display","block");
	}, function(){
		$(".point_e").css("opacity",".3");
		$(".dos_bocas .box_info_puertos").css("display","none");
	});

	$(".point_f").hover(function(){
		$(".point_f").css("opacity","1");
		$(".frontera .box_info_puertos").css("display","block");
	}, function(){
		$(".point_f").css("opacity",".3");
		$(".frontera .box_info_puertos").css("display","none");
	});

	$(".point_g").hover(function(){
		$(".point_g").css("opacity","1");
		$(".carmen .box_info_puertos").css("display","block");
	}, function(){
		$(".point_g").css("opacity",".3");
		$(".carmen .box_info_puertos").css("display","none");
	});

	$(".point_h").hover(function(){
		$(".point_h").css("opacity","1");
		$(".seybaplaya .box_info_puertos").css("display","block");
	}, function(){
		$(".point_h").css("opacity",".3");
		$(".seybaplaya .box_info_puertos").css("display","none");
	});

	$(".point_i").hover(function(){
		$(".point_i").css("opacity","1");
		$(".progreso .box_info_puertos").css("display","block");
	}, function(){
		$(".point_i").css("opacity",".3");
		$(".progreso .box_info_puertos").css("display","none");
	});

}

