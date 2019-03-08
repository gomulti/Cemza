<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Presco houston</title>
        <link rel="shortcut icon" href="favicon.png" />
        <link href="css/reset.css" rel="stylesheet" type="text/css">
        <link href="css/fonts.css" rel="stylesheet" type="text/css">        
        <link href="css/utilidades.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/vegas.min.css" rel="stylesheet" type="text/css">
        <link href="css/lightslider.css" rel="stylesheet" type="text/css">
        <link href="css/animations.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        
        <!-- HTML 5 for older browsers -->
		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="js/html5.js"></script>
		<![endif]-->
		
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/vegas.min.js"></script> 
        <script type="text/javascript" src="js/jqueryparallax1.1.3.js"></script>
        <script type="text/javascript" src="js/lightslider.js"></script>
        <script type="text/javascript" src="js/index.js"></script> 
        <script type="text/javascript" src="js/menu.js"></script> 
        <script type="text/javascript" src="js/correo.js"></script>      
    </head>

    <body>		
        <nav class="MainMenu u-size100-p u-textCenter">
        
            <figure class="MainMenu-Logo u-inline-block"><img class="u-efecto" src="images/logoMenu.png" alt="Logo"></figure>

            <ul class="MainMenu-List u-textLeft u-mayuscula">
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Nosotros">About us</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Servicios">Our Services</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Productos">Products</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Galeria">Gallery</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block u-sinMargen" data-menu="Contacto">Contact us</a>
                </li>
            </ul>
        
            <!--<a class="MainMenu-Idioma u-inline-block u-redondeadoTotal"></a>-->
        
            <a class="MainMenu-IcoMenu u-floatRight"></a>
        </nav>

        <?php
            require 'cms/wp-blog-header.php';
        ?>

    	<header class="Header u-size100-p u-textCenter">
            <div class="Header_slide u-imagenFondoCover"></div>

            <div class="Header_Sombra u-imagenFondoCover u-positionAbsolute"></div>

            <div class="Header-Center u-inline-block u-box-sizing u-textLeft">
                <?php
                    query_posts('p=9');				
                            
                    while (have_posts()) : the_post();

                    $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                    $urlImagen = $thumb['0'];
                ?>

                    <h1 class="Header-Logo u-inline-block u-desaparecer" style="background-image: url(<?php echo $urlImagen; ?>);"><span class="u-ocultar">Presco  houston</span></h1>
                
                    <div class="Header-Txt u-desaparecer">
                        <?php
                            the_content();
                        ?>
                    </div>

                <?php
                    endwhile;
                    wp_reset_query();
                ?>
                
                <span class="Header-Linea u-inline-block"></span>
            </div>

            <div class="HeaderMenu u-size100-p u-textCenter u-positionAbsolute u-desaparecer">
                <ul class="HeaderMenu-List u-textLeft u-mayuscula">
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Nosotros">About us</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Servicios">Our Services</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Productos">Products</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Galeria">Gallery</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block u-sinMargen" data-menu="Contacto">Contact us</a>
                    </li>
                </ul>

                <a class="HeaderMenu-IcoMenu u-floatRight"></a>
            </div>
        </header>

        <section class="Nosotros u-imagenFondoCover u-size100-p u-textCenter">
        	<article class="Nosotros-Center u-inline-block u-textLeft">
                <?php
                    query_posts('p=24');
                    while (have_posts()) : the_post();
                ?>
            	<h2 class="Nosotros-Title u-desaparecer aparecerSlideUp"><?php the_title(); ?> <span class="u-block"></span></h2>
                
                <?php
                    the_content();
                ?>

                <?php      
                    endwhile;
                    wp_reset_query();
                ?>        
        	</article>
        </section>
       
        <section class="Servicios u-imagenFondoCover u-size100-p u-textCenter">
            <article class="Servicios-Center u-inline-block">
                <div class="Servicios-Content u-floatRight u-textLeft">
                    <?php
                        query_posts('p=15');				
                                
                        while (have_posts()) : the_post();
                    ?>

                    <h3 class="Servicios-Title u-desaparecer aparecerSlideUp">
                        <?php the_title(); ?>
                        <span class="u-block"></span>
                    </h3>

                    <div class="Servicios-Txt u-desaparecer aparecerSlideUp">
                        <?php
                            the_content();
                        ?>
                    </div>

                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>
                    
                    <?php
                        query_posts('p=19');				
                                    
                        while (have_posts()) : the_post();
                            
                        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                        $urlImagen = $thumb['0'];
                    ?>
                    <figure class="Servicios-Img u-inline-block u-desaparecer aparecerRight">
                        <img class="u-redondeadoTotal" src="<?php echo $urlImagen;?>" alt="Machines" />
                    </figure>

                    <div class="Servicios-Info u-inline-block u-desaparecer aparecerSlideLeft">                        
                        <h4 class="Servicios-TitleInfo">
                            <?php the_title(); ?>:
                        </h4>
                        <?php
                            the_content();
                        ?>
                    </div>

                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>
                </div>
            </article>
        </section>

        <section class="Productos u-size100-p u-imagenFondoCover u-textCenter">
            <article class="Productos-Center u-inline-block u-textLeft">
                <h5 class="Productos-Title u-textCenter u-desaparecer aparecerSlideUp">
                    Products
                    <span class="u-block"></span>
                </h5>

                <div class="Productos-Item u-inline-block u-desaparecer aparecerSlideUp">
                    <?php
                        query_posts('p=38');				
                                    
                        while (have_posts()) : the_post();
                            
                        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                        $urlImagen = $thumb['0'];
                    ?>
                    <figure class="Productos-ImgItem">
                        <img src="<?php echo $urlImagen; ?>" alt="<?php the_title(); ?>" />

                        <span class="Productos-IcoItem Productos-IcoItem--Garments u-redondeadoTotal u-positionAbsolute"></span>
                    </figure>

                    <div class="Productos-InfoItem">
                        <h6 class="Productos-TitleItem"><?php the_title(); ?></h6>

                        <?php
                            the_content();
                        ?>
                    </div>     
                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>
                </div>

                <div class="Productos-Item u-inline-block u-desaparecer aparecerSlideUp">
                    <?php
                        query_posts('p=44');				
                                    
                        while (have_posts()) : the_post();
                            
                        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                        $urlImagen = $thumb['0'];
                    ?>
                    <figure class="Productos-ImgItem">
                        <img src="<?php echo $urlImagen; ?>" alt="<?php the_title(); ?>" />

                        <span class="Productos-IcoItem Productos-IcoItem--Fabrics u-redondeadoTotal u-positionAbsolute"></span>
                    </figure>
                    
                    <div class="Productos-InfoItem">
                        <h6 class="Productos-TitleItem"><?php the_title(); ?></h6>

                        <?php
                            the_content();
                        ?>
                    </div>
                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>
                </div>

                <div class="Productos-Item u-inline-block u-sinMargen u-desaparecer aparecerSlideUp">
                    <?php
                        query_posts('p=49');				
                                    
                        while (have_posts()) : the_post();
                            
                        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                        $urlImagen = $thumb['0'];
                    ?>
                    <figure class="Productos-ImgItem">
                        <img src="<?php echo $urlImagen; ?>" alt="<?php the_title(); ?>" />

                        <span class="Productos-IcoItem Productos-IcoItem--Fibers u-redondeadoTotal u-positionAbsolute"></span>
                    </figure>

                    <div class="Productos-InfoItem">
                        <h6 class="Productos-TitleItem"><?php the_title(); ?></h6>

                        <?php
                            the_content();
                        ?>
                    </div>
                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>
                </div>
            </article>
        </section>

        <section class="Descarga u-size100-p u-textCenter">
            <article class="Descarga-Center u-inline-block">
                <?php
                    query_posts('p=54');				
                                    
                    while (have_posts()) : the_post();
                ?>
                <?php
                    the_content();
                ?>
                <?php      
                    endwhile;
                    wp_reset_query();
                ?>

                <!--<p class="u-desaparecer aparecerSlideUp">
                    <strong>
                        Download our catalogue (PDF 4.5 MB.)
                    </strong>
                </p>

                <a href="#" class="Descarga-Btn u-inline-block u-textLeft u-redondeado u-desaparecer aparecerSlideUp">
                    Download
                </a>-->
            </article>
        </section>


        <section class="Galeria u-size100-p u-textCenter  u-imagenFondoCover">
            <article class="Galeria-Center u-inline-block">
                <?php
                    query_posts('p=60');
                    while (have_posts()) : the_post();
                ?>
                <h5 class="Galeria-Title u-desaparecer aparecerSlideUp">
                    <?php the_title(); ?>
                    <span class="u-block"></span>
                </h5>
                
                <div class="Galeria-ContentGaleria  u-desaparecer aparecerFadeIn">
                    <?php
                        the_content();
                    ?>
                </div>

                <?php      
                    endwhile;
                    wp_reset_query();
                ?>                
            </article>
        </section>        

        <footer class="Footer u-size100-p">
            <div class="Contacto u-imagenFondoCover u-size100-p u-textCenter">                    
                <div class="Contacto-Center u-inline-block u-desaparecer aparecerFadeIn">
                    <?php
                        query_posts('p=81');
                        while (have_posts()) : the_post();
                    ?>
                    <h6 class="Contacto-Title">
                        <?php the_title(); ?>
                        <span class="u-block"></span>
                    </h6>

                    <div class="Contacto-Txt u-inline-block u-desaparecer aparecerFadeIn">
                        <?php
                            the_content();
                        ?>
                    </div>
                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>  

                    <div class="u-textLeft">   
                        <div class="Contacto-Datos u-inline-block">
                            <?php
                                query_posts('p=86');
                                while (have_posts()) : the_post();
                            ?>
                            <?php
                                the_content();
                            ?>
                            <!--<ul class="Contacto-List">
                                <li class="Contacto-icoDireccionList">
                                        11111 Katy Fwy, Houston, TX 77043, USA.
                                </li>
                                <li class="Contacto-icoTelefonoList">
                                    <p><strong>Attention 24 hours a day:</strong></p>
                                    <p>
                                        <strong>In US:</strong><br />
                                        Cellphone: +1-346-2700095
                                    </p>

                                    <p>
                                        <strong>In MEXICO:</strong><br />
                                        Mobile. +01 938-160-8216 <br />
                                        Office. (938) 2861356
                                    </p>
                                </li>
                                <li class="Contacto-icoEmailList">
                                    <a href="mailto:sales@presco.mx">sales@presco.mx</a>
                                </li>
                            </ul>-->
                            <?php      
                                endwhile;
                                wp_reset_query();
                            ?> 
                            <div class="Contacto-RedesSociales">
                                <a href="https://www.facebook.com/PrescoReclutamiento" class="Contacto-ItemRedSocial u-inline-block" target="_blank"><img src="images/icoFacebook.png" alt="Facebook"></a>
                                <a href="https://twitter.com/PRESCO_RH" class="Contacto-ItemRedSocial u-inline-block" target="_blank"><img src="images/icoTwitter.png" alt="Twitter"></a>
                                <a href="https://www.linkedin.com/in/presco-sa-de-cv" class="Contacto-ItemRedSocial u-inline-block" target="_blank"><img src="images/icoLn.png" alt="Linkelind"></a>
                            </div>
                        </div>
                            
                        <form class="Contacto-Formulario u-inline-block u-floatRight" name="Contacto-FmFormulario" id="Contacto-FmFormulario" method="post" action="">                	
                        
                            <input class="u-box-sizing" name="txtNombre" id="txtNombre" placeholder="Name" value="Name" onfocus="if(this.value=='Name')this.value='';">
                                    
                            <input class="u-box-sizing" name="txtEmail" id="txtEmail" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">

                            <input type="tel" class="u-box-sizing" name="txtTelefono" id="txtTelefono" placeholder="Phone" value="Phone" onfocus="if(this.value=='Phone')this.value='';">
                                    
                            <input class="u-box-sizing" name="txtComentario" id="txtComentario" placeholder="Message" value="Message" onfocus="if(this.value=='Message')this.value='';">   
                                    
                            <a class="Contacto-BtnEnviar u-redondeado u-inline-block">Send</a>
                                    
                            <div class="Contacto-Msj u-textCenter fadeIn2"><strong class="u-mayuscula u-inline-block">Thank you so much!.</strong><br> Your message was sent successfully.</div>
                        </form>
                    </div>
                        
                </div>
            </div>
    
            <div class="DerechoAutor u-size100-p u-textCenter">
                <div class="DerechoAutor-Center u-inline-block u-textLeft">
    
                    <figure class="u-inline-block">
                        <img src="images/cemzaFooter.png" alt="Cemza">
                    </figure>
    
                    <p class="u-inline-block u-floatRight">
                        <a class="DerechoAutor-Politica" href="http://www.cemza.com/CGI-BIN/CemzaAvisoPrivacidad.html" target="_blank">Política de Privacidad</a> &copy; 2018. Todos los derechos reservados. Diseño y desarrollo por <a href="http://gom360.mx/" target="_blank">GO multimedios.</a> 
                    </p>
                </div>
            </div>
        </footer>
    </body>
</html>
