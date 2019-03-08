	var seleccion_menu = true;

	$(document).ready(function()
	{
		$(".MainNavInterior-IcoMenu").click(function()
		{
			if(seleccion_menu)
			{
				$(".MainNav").css({"display": "block"});
				$(".MainNavInterior-IcoMenu").addClass("activo");
				$('.MainNav').animate({'opacity':'1'}, 500);
				
				seleccion_menu=false;
			}
			else
			{
				$('.MainNav').animate({'opacity':'0'}, 500);
				
				setTimeout(function(){
					$(".MainNav").css({"display": "none"});
				},400);
				
				$(".MainNavInterior-IcoMenu").removeClass("activo");

				seleccion_menu=true;
			}
		}); 

		/*$(".MenuAlterno-LinkList").click(function()
		{
			$(".MenuAlterno-List").addClass("MenuAlterno-OcultarAlterno");
			seleccion_menuAlterno=true;
		});

		$(".MainNav-LinkList").click(function()
		{
			$(".MainNav-List").addClass("MenuAlterno-Ocultar");
			seleccion_menu=true;
		});

	   	$(".MainNav-IcoMenu").click(function()
		{
			if(seleccion_menu)
			{  
				$(".MainNav-List").css({"display": "inline-block"},250);
				$(".MainNav-List").removeClass("MenuAlterno-Ocultar");
				seleccion_menu=false;
			}
			else
			{
				$(".MainNav-List").addClass("MenuAlterno-Ocultar");
				seleccion_menu=true;
			}
		}); 		
		
		$(".MainNav-IcoMenuAlterno").click(function()
		{
			if(seleccion_menuAlterno)
			{  
				$(".MenuAlterno-List").css({"display": "inline-block"},250);
				$(".MenuAlterno-List").removeClass("MenuAlterno-OcultarAlterno");
				seleccion_menuAlterno=false;
			}
			else
			{
				$(".MenuAlterno-List").addClass("MenuAlterno-OcultarAlterno");
				seleccion_menuAlterno=true;
			}
		});*/ 
	});