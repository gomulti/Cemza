<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="<?php bloginfo('language'); ?>">
	<title><?php bloginfo('name'); ?></title>

	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="">
	
	<meta name="application-name" content="Sitio web oficial de Oceamar">

	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

	<!-- Chrome, Firefox OS y Opera -->
	<meta name="theme-color" content="#272460"/>
	<!-- Windows Phone -->
	<meta name="msapplication-navbutton-color" content="#272460"/>
	<!-- iOS Safari -->
	<meta name="apple-mobile-web-app-capable" content="yes"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>

	<link rel="shorcut icon" type="imge/x-ico" href="<?php bloginfo('template_url') ?>/imgs/logo_oceamar.ico" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">

	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway:300,400,500,600,700,800" rel="stylesheet">
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.min.css">
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
	<?php wp_head();?>

</head>
<body>


	<?php 
		if ( is_page('137')){
			include(TEMPLATEPATH . '/index-us.php');
		} elseif (is_page('139')) { 
			include(TEMPLATEPATH . '/index-pt.php');
		} 
	?>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/flip.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/transiciones.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/wow.min.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/main.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/correo.js"></script>

	<script>
		$(document).ready(function() {
			menu_remove();
			flip_card();
			header_hover();
			item_puertos_hover();
    		new WOW().init();
			$("a.transicion").transicion();
    		$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<?php wp_footer();?>
	

</body>
</html>