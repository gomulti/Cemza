<!DOCTYPE html>

  <!--[if IE 7]>
  <html class="ie ie7" <?php language_attributes(); ?>>
  <![endif]-->

  <!--[if IE 8]>
  <html class="ie ie8" <?php language_attributes(); ?>>
  <![endif]-->

  <!--[if !(IE 7) | !(IE 8)  ]>
  <!-->

  <html <?php language_attributes(); ?>>

    <head>

      <meta charset="<?php bloginfo( 'charset' ); ?>" />

      <meta name="viewport" content="width=device-width, initial-scale=1.0">

      <meta name="title" content="Marinsa SPECIALIZED VESSELS"> 
      <meta name="autor" content="Marinsa SPECIALIZED VESSELS">
      <meta name="description" lang="es"content="Marinsa SPECIALIZED VESSELS">
      <meta name="keywords" lang="es"content="Marinsa SPECIALIZED VESSELS">
      <meta name="robots" content="index, follow">

      <meta http-equiv="Expires" content="0"> 
      <meta http-equiv="Pragma" content="no-cache">

      <title><?php wp_title( '|', true, 'right' ); ?></title>

      <link href="<?php echo get_template_directory_uri(); ?>/favicon.png" rel="shortcut icon">
      <link href="<?php echo get_template_directory_uri(); ?>/css/reset.css" rel="stylesheet" type="text/css">
      <link href="<?php echo get_template_directory_uri(); ?>/css/fonts.css" rel="stylesheet" type="text/css">
      <link href="<?php echo get_template_directory_uri(); ?>/css/utilidades.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" media="screen" />
      <link href="<?php echo get_template_directory_uri(); ?>/css/style.css" rel="stylesheet" type="text/css">
      <link href="<?php echo get_template_directory_uri(); ?>/css/animations.css" rel="stylesheet" type="text/css">
      <link href="<?php echo get_template_directory_uri(); ?>/css/responsive.css" rel="stylesheet" type="text/css">
      <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />


      <!--[if lt IE 9]>
      <script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
      <![endif]-->

      <script src="<?php echo get_template_directory_uri();?>/js/jquery-1.8.2.min.js"></script>   
      <script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/jquery-ui.min.js"></script>
      <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/correo.js"></script>   


      <script type="text/javascript">
        /*$(document).ready(function() 
      {
        $("#header-wrapper img#logo").click(function()
        {  
          $('html, body').animate(
        {
          scrollTop: $("#slider-main").offset().top - 83
          }, 900, 'swing');   
        
          limpiar_menu();
        });
      });   

      function limpiar_menu()
      {
        $("#menu ul li a").removeClass("seleccionado");
      }*/
      </script>

      <?php wp_head(); ?>

    </head>
<body>

    <nav class="MainNav u-size100-p u-textCenter slideDown">
        <div class="MainNav-Center u-inline-block u-textLeft">
        	<figure class="MainNav-Logo u-inline-block u-efecto"></figure>
                
           	<ul class="MainNav-List u-inline-block u-mayuscula">
               	<li class="u-inline-block">
                   	<a class="MainNav-ItemList u-inline-block activo" data-menu="Header">
                       	Inicio
                    </a>
                </li>
                <li class="u-inline-block">
                	<a class="MainNav-ItemList u-inline-block" data-menu="AcercaNosotros">
                    	acerca de
                    </a>
                </li>
                <li class="u-inline-block">
                	<a class="MainNav-ItemList u-inline-block" data-menu="Servicios">
                    	servicios
                    </a>
                </li>
                <li class="u-inline-block">
                	<a class="MainNav-ItemList u-inline-block" data-menu="Contacto">
                    	contacto
                    </a>
                </li>
            </ul>
                
            <a class="MainNav-Idioma u-redondeadoTotal u-inline-block"></a>
        </div>
    </nav>  

   <!-- #masthead -->