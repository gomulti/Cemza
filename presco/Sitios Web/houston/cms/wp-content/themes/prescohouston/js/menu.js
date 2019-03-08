	var seleccion_menu = true;
	var seleccion_menu2 = true;

	$(document).ready(function()
	{
		$(".MainMenu-ItemList").click(function()
		{
			$(".MainMenu-List").addClass("MainMenu-Ocultar");
			seleccion_menu = true;
		});

	   	$(".MainMenu-IcoMenu").click(function()
		{
			if(seleccion_menu)
			{
				$(".MainMenu-List").css({"display": "inline-block"},250);
				$(".MainMenu-List").removeClass("MainMenu-Ocultar");
				seleccion_menu = false;
			}
			else
			{
				$(".MainMenu-List").addClass("MainMenu-Ocultar");
				seleccion_menu = true;
			}
		}); 

		//Menu home
		$(".HeaderMenu-ItemList").click(function()
		{
			$(".HeaderMenu-List").addClass("MainMenu-Ocultar");
			seleccion_menu2 = true;
		});

	   	$(".HeaderMenu-IcoMenu").click(function()
		{
			if(seleccion_menu2)
			{
				$(".HeaderMenu-List").css({"display": "inline-block"},250);
				$(".HeaderMenu-List").removeClass("MainMenu-Ocultar");
				seleccion_menu2 = false;
			}
			else
			{
				$(".HeaderMenu-List").addClass("MainMenu-Ocultar");
				seleccion_menu2 = true;
			}
		}); 
	});