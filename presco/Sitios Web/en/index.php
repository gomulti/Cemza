<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Presco</title>
        <link rel="shortcut icon" href="favicon.png" />
        <link href="css/reset.css" rel="stylesheet" type="text/css">
        <link href="css/fonts.css" rel="stylesheet" type="text/css">        
        <link href="css/utilidades.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/vegas.min.css" rel="stylesheet" type="text/css">
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
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Servicios">Services</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Productos">Products</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Certificaciones">Certifications</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Reclutamiento">Talent Hunting</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block u-sinMargen" data-menu="Contacto">Contact us</a>
                </li>
            </ul>
        
            <div class="MainMenu-Idioma u-inline-block u-redondeadoTotal u-efecto">
                <a href="../index.php" class="u-inline-block u-positionAbsolute">Spanish</a>
            </div>
        
            <a class="MainMenu-IcoMenu u-floatRight"></a>
        </nav>

        <?php
            require '../cms/wp-blog-header.php';
        ?>

    	<header class="Header u-size100-p u-textCenter">
            <div class="Header_slide u-imagenFondoCover"></div>

            <div class="Header-Center u-inline-block u-box-sizing">
                <?php
                    query_posts('p=105');				
                            
                    while (have_posts()) : the_post();

                    $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                    $urlImagen = $thumb['0'];
                ?>
                    <h1 class="Header-Logo u-inline-block u-desaparecer" style="background-image: url(<?php echo $urlImagen; ?>);"><span class="u-ocultar">Presco</span></h1>
                
                    <p class="Header-Txt u-desaparecer">
                        <?php the_title(); ?>
                    </p>
                <?php
                    endwhile;
                    wp_reset_query();
                ?>
                
                <span class="Header-Linea u-inline-block u-desaparecer"></span>
            </div>

            <div class="HeaderMenu u-size100-p u-textCenter u-positionAbsolute u-desaparecer">
                <ul class="HeaderMenu-List u-textLeft u-mayuscula">
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Nosotros">About us</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Servicios">Services</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Productos">Products</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Certificaciones">Certifications</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Reclutamiento">Talent Hunting</a>
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
                    query_posts('p=107');				
                            
                    while (have_posts()) : the_post();
                ?>
                    <h2 class="Nosotros-Title u-desaparecer aparecerSlideUp"><?php the_title(); ?> <span class="u-block"></span></h2>
                    <div class="Nosotros-Txt u-desaparecer aparecerSlideUp">
                        <?php
                            the_content();
                        ?>    
                    </div>
                <?PHP
                    endwhile;
                    wp_reset_query();
                ?>
                
                <ul class="Nosotros-List u-desaparecer aparecerSlideUp">
                    <?php
                        query_posts('category_name=about-us&order=ASC');				
                                
                        while (have_posts()) : the_post();

                            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                            $urlImagen = $thumb['0'];
                    ?>  
                    <li>
                    	<img src="<?php echo $urlImagen; ?>" alt="Icono" />
                        <?php
                            the_content();
                        ?>
                    </li>
                    <?php      
                        endwhile;
                        wp_reset_query();
                    ?>
                </ul>
                
        	</article>
        </section>

        <section class="Servicios u-size100-p u-textCenter">
            <article class="Servicios-Center">
                <?php
                    query_posts('p=113');				
                            
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

                <ul class="Servicios-List u-desaparecer aparecerSlideUp">
                    <li class="u-inline-block">
                        <a class="Servicios-ItemList u-inline-block activo">
                            <div class="u-efecto"></div>
                            <span class="Servicios-IcoItemList Servicios-IcoItemList--Reclutamiento u-block u-redondeadoTotal"></span>
                            <h4 class="Servicios-TitleItemList Servicios-TitleItemList--Reclutamiento u-inline-block">Recruitment and selection</h4>
                        </a>
                        <div class="Servicios-InfoListR u-imagenFondoCover"></div>
                    </li><li class="u-inline-block">
                        <a class="Servicios-ItemList Servicios-ItemList--C2 u-inline-block">
                            <div class="u-efecto"></div>
                            <span class="Servicios-IcoItemList Servicios-IcoItemList--Contratacion u-block u-redondeadoTotal"></span>
                            <h4 class="Servicios-TitleItemList u-inline-block u-redondeadoTotal">Hiring, payroll, taxes, benefits and others</h4>
                        </a>
                        <div class="Servicios-InfoListR u-imagenFondoCover"></div>
                    </li><li class="u-inline-block">
                        <a class="Servicios-ItemList u-inline-block">
                            <div class="u-efecto"></div>
                            <span class="Servicios-IcoItemList Servicios-IcoItemList--Cursos u-block u-redondeadoTotal"></span>
                            <h4 class="Servicios-TitleItemList u-inline-block u-redondeadoTotal">Courses and Certifications with strategic alliances</h4>
                        </a>
                        <div class="Servicios-InfoListR u-imagenFondoCover"></div>
                    </li><li class="u-inline-block">
                        <a class="Servicios-ItemList Servicios-ItemList--C2 u-inline-block">
                            <div class="u-efecto"></div>
                            <span class="Servicios-IcoItemList Servicios-IcoItemList--Logistica u-block u-redondeadoTotal"></span>
                            <h4 class="Servicios-TitleItemList Logistica u-inline-block u-redondeadoTotal">Personnel logistics</h4>
                        </a>
                        <div class="Servicios-InfoListR u-imagenFondoCover"></div>
                    </li>
                </ul>

                <div class="Servicios-InfoList u-imagenFondoCover">
                    <?php
                        $j=0;

                        query_posts('category_name=our-services&order=ASC');				
                                
                        while (have_posts()) : the_post();

                            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                            $urlImagen = $thumb['0'];
                    ?> 
                        <div class="Servicios-ItemInfoList" <?php if($j!=0) { ?> style="display:none;"  <?php }?>>
                            <figure class="Servicios-ImgItemInfoList u-inline-block">
                                <img src="<?php echo $urlImagen; ?>" alt="<?php the_title(); ?>">
                            </figure>

                            <div class="Servicios-DatosItemInfoList u-inline-block u-textLeft">
                                <h4>
                                    <?php the_title(); ?>
                                </h4>
                                <?php
                                    the_content();
                                ?>
                            </div>
                        </div>
                    
                    <?php      
                        $j++;

                        endwhile;
                        wp_reset_query();
                    ?>
                </div>
            </article>
        </section>

        <section class="Productos u-size100-p u-imagenFondoCover u-textCenter">
            <article class="Productos-Center u-inline-block">
                <div class="Productos-Content u-floatRight u-textLeft">
                    <h4 class="Productos-Title u-desaparecer aparecerSlideUp">
                        Products
                        <span class="u-block"></span>
                    </h4>
                    
                    <?php
                        query_posts('category_name=products&order=ASC');				
                                
                        while (have_posts()) : the_post();

                            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                            $urlImagen = $thumb['0'];
                    ?>

                    <div class="Productos-Item u-floatRight u-desaparecer aparecerSlideUp">
                        <span class="Productos-IcoItem u-positionAbsolute u-redondeadoTotal" style="background-image:url(<?php echo $urlImagen; ?>);"></span>
                        <h5 class="Productos-TitleItem">
                            <?php the_title(); ?>
                        </h5>
                        <?php
                            the_content();
                        ?>
                    </div>

                    <?php
                        endwhile;
                        wp_reset_query();
                    ?>

                    <p class="Productos-TxtDescarga u-textCenter u-desaparecer aparecerSlideUp"><strong>Download our product catalogue (PDF 16.4 MB.)</strong></p>

                    <a href="../catalogo/catalogo_presco_offshore.pdf" class="Productos-BtnDescarga u-block u-redondeado u-desaparecer aparecerSlideUp" target="_blank">Download</a>
                </div>
            </article>
        </section>

        <section class="Certificaciones u-size100-p u-textCenter">
            <article class="Certificaciones-Center u-inline-block">
                <?php
                    query_posts('p=130');				
                            
                    while (have_posts()) : the_post();
                ?>
                    <h4 class="Certificaciones-Title u-desaparecer aparecerSlideUp">
                        <?php the_title(); ?>
                        <span class="u-block"></span>
                    </h4>

                    <div class="Certificaciones-Txt u-desaparecer aparecerSlideUp">
                        <?php
                            the_content();
                        ?>
                    </div>
                <?php
                    endwhile;
                    wp_reset_query();
                ?>

                <ul class="Certificaciones-List u-inline-block">
                    <?php
                        $j=1;

                        query_posts('category_name=certifications&order=ASC');				
                                
                        while (have_posts()) : the_post();

                            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                            $urlImagen = $thumb['0'];
                    ?>
                        <li class="Certificaciones-ItemList <?php if($j%5==0) { ?> u-sinMargen <?php } ?> u-desaparecer aparecerSlideUp">
                            <figure class="Certificaciones-ImgItemList">
                                <img src="<?php echo $urlImagen; ?>" alt="Certificación">
                            </figure>

                            <div class="Certificaciones-Info u-positionAbsolute fadeIn">
                                <?php
                                    the_content();
                                ?>
                            </div>
                        </li>
                    <?php
                        $j++;

                        endwhile;
                        wp_reset_query();
                    ?>
                </ul>
            </article>
        </section>

        <section class="Reclutamiento u-size100-p u-imagenFondoCover u-textCenter">
            <article class="Reclutamiento-Center u-inline-block">

                <?php
                    query_posts('p=143');                            
                    while (have_posts()) : the_post();
                ?>

                    
                <h5 class="Reclutamiento-Title u-desaparecer aparecerSlideUp">
                   	<?php the_title(); ?>
                    <span class="u-block"></span>
                </h5>
                
                <div class="Reclutamiento-Txt u-desaparecer aparecerSlideUp"> 
				  <?php
                        the_content();
                  ?>
                </div>
        		
                <a class="Reclutamiento-Btn u-inline-block u-redondeado u-textLeft" href="https://presco.hiringroom.com/jobs" target="_blank">See job board</a>
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
                        query_posts('p=153');                            
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
                            query_posts('p=149');                            
                            while (have_posts()) : the_post();

                             the_content();
                    
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

                            <input type="tel" class="u-box-sizing" name="txtTelefono" id="txtTelefono" placeholder="Telephone" value="Telephone" onfocus="if(this.value=='Telephone')this.value='';">
                                    
                            <input class="u-box-sizing" name="txtComentario" id="txtComentario" placeholder="Commentary" value="Commentary" onfocus="if(this.value=='Commentary')this.value='';">   
                                    
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
                        <a class="DerechoAutor-Politica" href="http://www.cemza.com/CGI-BIN/CemzaAvisoPrivacidad.html" target="_blank">Privacy Policy</a> &copy; 2018. All rights reserved. Design and development by <a href="http://gom360.mx/" target="_blank">GO multimedios.</a> 
                    </p>
                </div>
            </div>
        </footer>
    </body>
</html>
