<?php 

register_nav_menus( array(
	'menu_versiones' => 'Menu versiones',

));



add_theme_support('post-thumbnails');
add_image_size('portada_galeria', 260, 140, true);


function my_login_logo() { ?>
	<style type="text/css">
		body {
			background: #272460 !important;
		}

		.login #backtoblog a, .login #nav a {
			color: #ffffff !important;
		}

		.login #backtoblog a:hover, .login #nav a:hover {
			color: #019bc1 !important;
		}

		#login h1 a, .login h1 a {
			background-image: url('http://oceamar.com.mx/logoOceamar.png');
			width: 200px;
    		height: 68px;
			background-repeat: no-repeat;
			background-size: cover;
		}
	</style>
  <?php }//end my_login_logo()
  add_action( 'login_enqueue_scripts', 'my_login_logo' );


?>