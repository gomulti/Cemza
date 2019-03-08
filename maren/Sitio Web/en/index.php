<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Maren</title>
        <link rel="shortcut icon" href="favicon.png" />
        <link href="css/reset.css" rel="stylesheet" type="text/css">
        <link href="css/fonts.css" rel="stylesheet" type="text/css">        
        <link href="css/utilidades.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/animations.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        
        <!-- HTML 5 for older browsers -->
		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="js/html5.js"></script>
		<![endif]-->
		
        <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.js"></script>
        <script type="text/javascript" src="js/jqueryparallax1.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.vide.js"></script>  
        <script type="text/javascript" src="js/index.js"></script> 
        <script type="text/javascript" src="js/correo.js"></script>        
    </head>

    <body>		
    	<nav class="MainNav u-size100-p u-textCenter slideDown">
        	<div class="MainNav-Center u-inline-block u-textLeft">
            	<figure class="MainNav-Logo u-inline-block u-efecto"></figure>
                
            	<ul class="MainNav-List u-inline-block u-mayuscula">
                	<li class="u-inline-block">
                    	<a class="MainNav-ItemList u-inline-block activo" data-menu="Header">
                        	Home
                        </a>
                    </li>
                    <li class="u-inline-block">
                    	<a class="MainNav-ItemList u-inline-block" data-menu="AcercaNosotros">
                        	About us
                        </a>
                    </li>
                    <li class="u-inline-block">
                    	<a class="MainNav-ItemList u-inline-block" data-menu="Servicios">
                        	services
                        </a>
                    </li>
                    <li class="u-inline-block">
                    	<a class="MainNav-ItemList u-inline-block" data-menu="Contacto">
                        	contact
                        </a>
                    </li>
                </ul>
                
                <a href="../index.php" class="MainNav-Idioma u-redondeadoTotal u-inline-block"></a>
            </div>
        </nav>
        
        <?php
            require 'cms/wp-blog-header.php';
        ?>

		<header class="Header u-size100-p u-box-sizing" data-vide-bg="videos/MAREN">
        	<div class="Header-Sombra u-positionAbsolute"></div>
            <?php
                query_posts('p=47');				
                        
                while (have_posts()) : the_post();

                $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'img-home' );
                $urlImagen = $thumb['0'];
            ?>

            <div class="Header-ContainerLogo u-imagenFondoCover u-inline-block u-box-sizing u-textRight u-desaparecer">
            	<h1 class="Header-Logo u-inline-block u-desaparecer" style="background-image: url(<?php echo $urlImagen; ?>);"><span class="u-ocultar">Maren</span></h1>               
            </div>
            
             <h2 class="Header-Title u-inline-block u-desaparecer">
                <?php the_title(); ?> 
             </h2>

            <?PHP
                endwhile;
                wp_reset_query();
            ?>
        </header>
        
        <section class="AcercaNosotros u-size100-p u-imagenFondoCover u-textCenter">
        	<article class="AcercaNosotros-Center u-inline-block u-textLeft">
                <?php
                    query_posts('p=8');				
                                
                    while (have_posts()) : the_post();
                ?>
                
        		<h3 class="AcercaNosotros-Title u-textCenter aparecerSlideDown  u-desaparecer"><?php the_title(); ?></h3>
                
                <div class="AcercaNosotros-Col u-inline-block u-desaparecer aparecerRight">
                    <?php
                        the_content('[...]');                   
                    ?>
                </div>

                <?php                   
                        endwhile;
                        wp_reset_query();
                ?>
                
                <div class="AcercaNosotros-ContainerMapa u-inline-block u-textCenter u-desaparecer aparecerSlideLeft u-textJustify">
                	
                    <figure class="AcercaNosotros-Mapa u-inline-block u-desaparecer">
                        <div class="AcercaNosotros-ZonaMapa u-positionAbsolute u-desaparecer"></div>
                        <div class="AcercaNosotros-LogoMapa u-positionAbsolute u-desaparecer"></div>
                    </figure>
                    
                    <?php
                        query_posts('p=10');				
                                
                        while (have_posts()) : the_post();

                        the_content('[...]');
                   
                        endwhile;
                        wp_reset_query();
                    ?>

                </div>
        	</article>
        </section>
        
        <section class="Servicios u-size100-p u-textCenter">            
            <h4 class="Servicios-Title u-imagenFondoCover">
                <span class="u-desaparecer aparecerFadeIn">
                    <?php
                        query_posts('category_name=our-services&order=ASC&showposts=1');				
                                    
                        while (have_posts()) : the_post();
                            echo single_cat_title("", false);
                        endwhile;
                        wp_reset_query();
                    ?>
                </span>
            </h4>
        	
            <ul class="Servicios-List u-textLeft">

                <?php
                    $j=0;
                    $listClass = array("Servicioa-IcoPerforacion", "Servicioa-IcoServicios", "Servicioa-IcoFluidos","Servicioa-IcoCementaciones","Servicioa-IcoRegistros","Servicioa-IcoHerramientas","Servicioa-IcoEmpacadores","Servicioa-IcoPruebas");

                    query_posts('category_name=our-services&order=ASC');				
                        
                    while (have_posts()) : the_post();
                ?>

                <li class="Servicios-Item u-inline-block u-box-sizing u-desaparecer aparecerSlideUp <?php if($j==3 || $j==7) echo "SinBorde"; ?>">
                	<figure class="Servicios-ImgItem">
                        <?php the_post_thumbnail(''); ?>
                    </figure>
                    
                    <h5 class="Servicios-TitleItem  <?php echo $listClass[$j];?>">
                        <?php the_title();?> 
                    </h5>

                    <?php
                        the_content('[...]');
                    ?>                   
                </li>
                
                <?php
                    $j++;
                    
                    endwhile;
                    wp_reset_query();
                ?>                
            </ul>
        </section>
        
        <section class="ServiciosAdicionales u-size100-p u-imagenFondoCover u-textCenter">
        	<article class="ServiciosAdicionales-Center u-inline-block">
            	    	
                <div class="ServiciosAdicionales-Info u-textLeft u-desaparecer aparecerFadeIn">
                
                    <h5 class="ServiciosAdicionales-Title  u-textCenter">
                        <?php
                            query_posts('category_name=additional-services&order=ASC&showposts=1');				
                                    
                            while (have_posts()) : the_post();
                                echo single_cat_title("", false);
                            endwhile;
                            wp_reset_query();
                        ?>
                    </h5>

                    <?php
                        query_posts('category_name=additional-services&order=ASC');			
                                
                        while (have_posts()) : the_post();

                        the_content('[...]');
                   
                        endwhile;
                        wp_reset_query();
                    ?>
                </div>
            </article>
        </section>
        
        <footer class="Footer u-size100-p u-textCenter">
            <div class="Contacto u-size100-p u-imagenFondoCover">
            	<div class="Contacto-Center u-inline-block u-inline-block u-textLeft">
                    <?php
                        query_posts('p=63');				
                                
                        while (have_posts()) : the_post();
                    ?>

					<h6 class="Contacto-Title u-desaparecer aparecerSlideDown">
                        <?php the_title(); ?> 
  	              	</h6>
                	
                    <div class="Contacto-Datos u-inline-block u-desaparecer aparecerRight2">
                    	<!--<ul class="Contacto-List">
                   		  <li class="Contacto-IcoDireccion">
                            	<p class="Contacto-TitleList">
                                	Oficina
                                </p>
                                <p>
                                	Av. Adolfo Lopez Mateos #179 Col. PIP Laguna Azul. <br>
									C.P. 24140. Ciudad del Carmen, Campeche, México.
                              </p>
                            </li>
                            
                            <li class="Contacto-IcoTelefono">
                            	<p class="Contacto-TitleList">
                                    Teléfono
                                </p>
                                <p>
                                	(938) 112 1254
                                </p>
                                <p>
                                	<strong>Móvil</strong>. (938) 160 5047
                                </p>
                            </li>
                            
                            <li class="Contacto-IcoEmail">
                            	<p class="Contacto-TitleList">
                                    Email
                                </p>
                                <p>
                                	<a href="mailto:sergio.delgado@marinsa.com.mx">sergio.delgado@marinsa.com.mx</a>
                                </p>
                            </li>
                        </ul>-->
                        
                        <?php
                            the_content('[...]');
                        ?>

                    </div>
                    <?php
                        endwhile;
                        wp_reset_query();
                    ?>
                    
                  <form name="formContacto" id="formContacto" class="Contacto-Formulario u-inline-block  u-desaparecer aparecerSlideLeft2" method="post" action="">
                    <input class="u-box-sizing" type="text" name="txtNombre" id="txtNombre" autocomplete="off" placeholder="Name" value="Name" onfocus="if(this.value=='Name')this.value='';">
                    <input class="u-box-sizing" type="email" name="txtEmail" id="txtEmail" autocomplete="off" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">
                    <input class="u-box-sizing" type="text" name="txtComentario" id="txtComentario" autocomplete="off" placeholder="Comments" value="Comments" onfocus="if(this.value=='Comments')this.value='';">
                        
                    <a id="btnEnviar" class="Contacto-Btn u-redondeado u-inline-block">Send</a>
                        
                    <p class="Contacto-Msj u-textCenter fadeIn2"><strong class="u-mayuscula u-inline-block">Thank you so much!.</strong><br> Your message was sent successfully.</p>
                  </form>
                    
                </div>
            </div>
            
            
        	<div class="Footer-Center u-inline-block u-textLeft">
            	<figure class="u-inline-block">
                	<img src="images/logoCemza.png" alt="LOgo CEMZA" />
                </figure>
                
                <p class="Footer-Txt u-floatRight">
                    <a class="Footer--Politica" href="http://www.cemza.com/CGI-BIN/CemzaAvisoPrivacidad.html" target="_blank">Privacy Policy</a> &copy; 2018. All rights reserved. Design and development by <a href="http://gomultimedios.com/" target="_blank">GO multimedios</a>.
                </p>
            </div>
        </footer>
    </body>
</html>
