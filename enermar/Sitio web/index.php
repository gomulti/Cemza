<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Enermar</title>
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
        <script type="text/javascript" src="js/index.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/correo.js"></script>
    </head>

    <body>		
        
        <nav class="MainMenu u-size100-p u-textCenter">
            <figure class="MainMenu-Logo u-inline-block"><img src="images/logoMenu.png" alt="Logo"></figure>

            <ul class="MainMenu-List u-textLeft u-mayuscula">
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Header">Inicio</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Precios-Title">precios</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Nosotros">nosotros</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="QueOfrecemos-Center">qué ofrecemos</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="AlcanceOperativo-Center">alcance operativo</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="NuestrosServicios-Title">servicios</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Acreditaciones-Center">Acreditaciones</a>
                </li>
                <li class="u-inline-block">
                    <a class="MainMenu-ItemList u-inline-block" data-menu="Contacto">contacto</a>
                </li>
            </ul>

            <a href="en/" class="HeaderMenu-Idioma HeaderMenu-Idioma--MainMenu u-inline-block u-redondeadoTotal"></a>

            <a class="MainMenu-IcoMenu u-floatRight"></a>
        </nav>
        
        <?php
            require 'cms/wp-blog-header.php';
        ?>

        <header class="Header u-imagenFondoCover u-size100-p u-textCenter fadeIn">

        	<div class="Header-Center u-inline-block u-textLeft">
                <?php
                    query_posts('p=5');				
                            
                    while (have_posts()) : the_post();

                    $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                    $urlImagen = $thumb['0'];
                ?>

            	<h1 class="Header-Logo u-desaparecer" style="background-image: url(<?php echo $urlImagen; ?>);"><span class="u-ocultar">Enermar</span></h1>
                
                <h2 class="Header-Title u-desaparecer">
                    <?php the_title(); ?> 
                </h2>

                <?PHP
                    endwhile;
                    wp_reset_query();
                ?>
            </div>
            
            <div class="HeaderMenu u-size100-p u-textCenter u-positionAbsolute u-desaparecer">

                <ul class="HeaderMenu-List u-textLeft u-mayuscula">
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Header">Inicio</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Precios-Title">precios</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Nosotros">nosotros</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="QueOfrecemos-Center">qué ofrecemos</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="AlcanceOperativo-Center">alcance operativo</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="NuestrosServicios-Title">servicios</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Acreditaciones-Center">Acreditaciones</a>
                    </li>
                    <li class="u-inline-block">
                        <a class="HeaderMenu-ItemList u-inline-block" data-menu="Contacto">contacto</a>
                    </li>
                </ul>

                <a href="en/" class="HeaderMenu-Idioma u-inline-block u-redondeadoTotal"></a>

                <a class="HeaderMenu-IcoMenu u-floatRight"></a>
            </div>
        </header>
        
        <section class="Precios u-imagenFondoCover u-size100-p u-textCenter">
        	<article class="Precios-Center u-inline-block">
                <?php
                    query_posts('p=10');				
                            
                    while (have_posts()) : the_post();
                    
                    $custom_fields = get_post_custom();
                ?>

            	<h2 class="Precios-Title u-inline-block u-desaparecer aparecerSlideUp"><?php the_title(); ?></h2>
                <div class="u-desaparecer aparecerSlideUp">
                    <?php
                        the_content();
                    ?>
                </div>
                
                <?PHP
                    endwhile;
                    wp_reset_query();
                ?>
                
                <?php
                    query_posts('post_type=precios_post_type');				
                            
                    while (have_posts()) : the_post();
                    
                    $custom_fields = get_post_custom();
                ?>

                <div class="Precios-ContentCostos u-redondeado u-textLeft u-desaparecer aparecerSlideUp">
                	<p>
                    	<strong>Diesel marino</strong>
          
	                    <strong class="Precios-Costo u-inline-block">
	                        $<span><?php echo $custom_fields['Disel-marino'][0]; ?></span> USD*
                        </strong>
                   	</p>
                </div>
                
                <p class="u-desaparecer aparecerSlideUp">Precio por litro / <strong>$<?php echo $custom_fields['Precio-por-litro'][0]; ?> MXN</strong></p>
                
                <p class="u-desaparecer aparecerSlideUp" style="margin-top: 10px;">* Tipo de cambio: <strong>$<?php echo $custom_fields['Tipo-cambio'][0]; ?> MXN</strong></p>

                <?PHP
                    endwhile;
                    wp_reset_query();
                ?>
            </article>
        </section>
        
        <div class="BgFondo3 u-size100-p u-imagenFondoCover">
        	
             <section class="Nosotros u-imagenFondoCover u-size100-p u-textCenter">
                
                <div class="Nosotros-icoContacto u-positionAbsolute u-redondeadoTotal u-desaparecer aparecerFadeIn"></div>

	        	<article class="Nosotros-Center u-inline-block">
                    <?php
                        query_posts('p=15');				
                                
                        while (have_posts()) : the_post();
                        
                        $custom_fields = get_post_custom();
                    ?>

					<h3 class="Nosotros-Title u-inline-block u-desaparecer aparecerSlideUp"><?php the_title(); ?></h3>
                    
                    <div class="u-desaparecer aparecerSlideUp">
                        <?php
                            the_content();
                        ?>
                    </div>

                    <?PHP
                        endwhile;
                        wp_reset_query();
                    ?>
        		</article>
             </section>
             
             
             <section class="QueOfrecemos u-imagenFondoCover u-size100-p u-textCenter">
	        	<article class="QueOfrecemos-Center u-inline-block">
					<h3 class="QueOfrecemos-Title u-inline-block u-desaparecer aparecerSlideUp">QUE OFRECEMOS <span class="u-inline-block"></span></h3>
                    
                    <ul class="QueOfrecemos-List u-textLeft">

                        <?php
                            $j=0;

                            query_posts('category_name=que-ofrecemos&order=ASC');				
                                
                            while (have_posts()) : the_post();

                            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                            $urlImagen = $thumb['0'];
                        ?>        
                        <li class="QueOfrecemos-ItemList u-inline-block <?php if($j==2||$j==5||$j==8) echo "u-sinMargen"; ?> u-desaparecer aparecerFadeIn">
                                <figure class="QueOfrecemos-IcoItemList u-inline-block u-redondeadoTotal" style="background-image: url(<?php echo $urlImagen; ?>);"></figure>
                                <div class="u-inline-block" style="<?php if($j==3||$j==5) echo "margin-top: 20px;"; ?>">
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
                    <?php
                        query_posts('p=43');                                
                        while (have_posts()) : the_post();                        
                    ?>
                    <div class="QueOfrecemos-TxtOrgullo u-inline-block u-redondeado--3 u-desaparecer aparecerSlideUp">
                        <?php
                            the_content();
                        ?>
                    </div>
                    <?php                            
                        endwhile;
                        wp_reset_query();
                    ?>  


                    <div class="QueOfrecemos-Col u-inline-block u-sinMargen u-desaparecer aparecerSlideLeft">
                    <?php
                        query_posts('p=50');                                
                        while (have_posts()) : the_post();
                        
                        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                        $urlImagen = $thumb['0'];                  
                    ?>
                        <span class="QueOfrecemos-IcoCol u-inline-block u-redondeadoTotal" style="background-image: url(<?php echo $urlImagen; ?>);"></span>
                        <h4 class="QueOfrecemos-TitleCol"><?php the_title(); ?></h4>
                        <?php
                            the_content();
                        ?>
                    <?php     
                        endwhile;
                        wp_reset_query();
                    ?>
                    </div>
                   
        		</article>
             </section>


             <section class="AlcanceOperativo u-imagenFondoCover u-size100-p u-textCenter">
                <article class="AlcanceOperativo-Center u-inline-block">
                    <?php
                        query_posts('p=54');
                        while (have_posts()) : the_post();
                    ?>
                    <h3 class="AlcanceOperativo-Title u-mayuscula u-inline-block u-desaparecer aparecerSlideUp"><?php the_title(); ?> <span class="u-inline-block"></span></h3>
                    
                    <div class="u-desaparecer aparecerSlideUp">
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

        </div>


        <div class="BgFondo4 u-size100-p u-imagenFondoCover">
            <section class="NuestrosServicios u-size100-p u-textCenter">

                <div class="NuestrosServicios-icoContacto u-positionAbsolute u-redondeadoTotal u-desaparecer aparecerFadeIn"></div>

                <article class="NuestrosServicios-Center u-inline-block">
                    <?php
                        query_posts('p=56');
                        while (have_posts()) : the_post();
                    ?>
                    <h4 class="NuestrosServicios-Title u-inline-block u-mayuscula u-desaparecer aparecerSlideUp"><?php the_title(); ?> <span class="u-inline-block"></span></h4>
                    <div class="NuestrosServicios-Txt u-inline-block u-desaparecer aparecerSlideUp">
                        <?php
                            the_content();
                        ?>
                    </div>
                    <?php     
                        endwhile;
                        wp_reset_query();
                    ?>
                    
                    <h5 class="NuestrosServicios-TitleME">
                        MEDIOS DE ENTREGA
                    </h5>

                    <ul class="NuestrosServicios-List">
                        <?php
                            $j=0;

                            query_posts('category_name=nuestros-servicios&order=ASC');				
                                
                            while (have_posts()) : the_post();

                            $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
                            $urlImagen = $thumb['0'];
                        ?>
                            <li class="NuestrosServicios-ItemList u-inline-block <?php if($j==2||$j==5||$j==8) echo "u-sinMargen"; ?>  u-desaparecer aparecerFadeIn">
                                <figure><img src="<?php echo $urlImagen;?>" alt="<?php the_title(); ?>"></figure>
                                <h5 class="NuestrosServicios-TitleItemList"><?php the_title(); ?></h5>
                                <?php
                                    the_content();
                                ?>
                            </li>
                        <?php
                            $j++;
                            
                            endwhile;
                            wp_reset_query();
                        ?> 
                    </ul>

                    <div class="NuestrosServicios-Capacidad u-inline-block u-redondeado--3 u-textLeft u-desaparecer aparecerSlideUp">
                        <?php
                            query_posts('p=67');
                            while (have_posts()) : the_post();
                        ?>
                        <?php
                            the_content();
                        ?>
                        <?php
                            endwhile;
                            wp_reset_query();
                        ?> 
                    </div>
                </article>
            </section>


            <section class="Acreditaciones u-size100-p u-textCenter">
                <article class="Acreditaciones-Center u-inline-block">
                    <figure class="Acreditaciones-IcoAcreditacion u-redondeadoTotal u-desaparecer aparecerFadeIn"></figure>
                    <?php
                        query_posts('p=72');
                        while (have_posts()) : the_post();
                    ?>
                        <h4 class="Acreditaciones-Title u-inline-block u-mayuscula u-desaparecer aparecerSlideUp"><?php the_title(); ?> <span class="u-inline-block"></span></h4>
                        
                        <div class="u-desaparecer aparecerSlideUp">
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
        </div>
        
		<footer class="Footer u-size100-p">
            <div class="Contacto u-imagenFondoCover u-size100-p u-textCenter">
            	<div class="Contacto-icoContacto u-positionAbsolute u-redondeadoTotal u-desaparecer aparecerFadeIn"></div>
                
                <div class="Contacto-Center u-inline-block">
                    <h6 class="Contacto-Title u-mayuscula u-inline-block">
                        Contacto
                    </h6>

                    <div class="u-textLeft">
                    
                    	<div class="Contacto-Datos u-inline-block">
                        <?php
                            query_posts('p=91');
                            while (have_posts()) : the_post();
                        ?>
                        <?php
                            the_content();
                        ?>
                        <?php
                            endwhile;
                            wp_reset_query();
                        ?> 

                        <!--<ul class="Contacto-List">
                        	<li class="Contacto-icoBaseList">
                            	<p class="Contacto-TitleList">Base</p>
                                <p>
                                	Av. 4 Oriente, 1ra Dársena No. 6,<br />
                                    Col. Puerto Industrial Pesquero Laguna Azul,<br />
                                    Cd. del Carmen Campeche, México. C.P. 24140.
                               </p>
                            </li>
                                <li class="Contacto-icoTelefonoList">
                                	<p class="Contacto-TitleList">Teléfono</p>
                                    <p>
                                    	(938) 1428138Móvil.<br />
                                        (938) 138 7641
                                    </p>
                                </li>
                                <li class="Contacto-icoEmailList">
                                	<p class="Contacto-TitleList">Email</p>
                                    <p><a href="mailto:ventas@enermar.com.mx">ventas@enermar.com.mx</a></p>
                                </li>
                            </ul>-->
                            
                        </div>
                        
                        <form class="Contacto-Formulario u-inline-block u-floatRight" name="Contacto-FmFormulario" id="Contacto-FmFormulario" method="post" action="">                	
                    
                            <input class="u-box-sizing" name="txtNombre" id="txtNombre" placeholder="Nombre" value="Nombre" onfocus="if(this.value=='Nombre')this.value='';">
                                
                            <input class="u-box-sizing" name="txtEmail" id="txtEmail" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">
                                
                            <input class="u-box-sizing" name="txtComentario" id="txtComentario" placeholder="Comentario" value="Comentario" onfocus="if(this.value=='Comentario')this.value='';">   
                                
                            <a class="Contacto-BtnEnviar u-redondeado u-inline-block">Enviar</a>
                                
                            <div class="Contacto-Msj u-textCenter fadeIn2"><strong class="u-mayuscula u-inline-block">¡Muchas Gracias!.</strong><br> Su mensaje fue enviado con éxito.</div>
                        </form>
                    </div>
                    
                </div>
            </div>

            <div class="DerechoAutor u-size100-p u-textCenter">
                <div class="DerechoAutor-Center u-inline-block u-textLeft">

                    <figure class="u-inline-block">
                        <img src="images/cemzaFooter.png" alt="Cemza">
                    </figure>

                    <p class="u-inline-block u-floatRight"><a href="http://www.cemza.com/CGI-BIN/CemzaAvisoPrivacidad.html">Política de Privacidad</a><span class="spacer">..........</span>
                        &copy; 2018. Todos los derechos reservados. Diseño y desarrollo por <a href="http://gom360.mx/" target="_blank">GO multimedios.</a> 
                    </p>
                </div>
            </div>
        </footer>
    </body>
</html>
