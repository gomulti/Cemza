<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shorcut icon" type="imge/x-ico" href="<?php bloginfo('template_url') ?>/imgs/ico_solcar.ico" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SOLCAR</title>

    <meta name="theme-color" content="#093683"/>
    <meta name="msapplication-navbutton-color" content="#093683"/> 
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/vegas.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/toastr.min.css">
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">

</head>
<body>
    <header class="header_fix">
        <nav>
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navTo box_img_head xx-index" href="#home">
                        <img src="<?php bloginfo('template_url') ?>/imgs/logo_solcar-header.png" alt="Logo Oficial">
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav text-uppercase">
                        <li><a href="#about" class="navTo xx">Acerca de nosotros</a></li>
                        <li><a href="#service" class="navTo xx">Servicios</a></li>
                        <li><a href="#products" class="navTo xx">Productos</a></li>
                        <li><a href="#contact" class="navTo xx">Contacto</a></li>
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <span class="box_idioma cambio" > 
                            <span  class="dropdown">
                                <span id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img  class="i-round img-circle" src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-mx.png" alt="idiomas" data-toggle="tooltip" data-placement="bottom" title="Cambiar idioma">
                                </span>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li><a href="http://solcar.gomserver.net/ingles/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma.png" alt=""> Inglés</a></li>
                                </ul>
                            </span>
                        </span>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main id="container">
        <section id="home" class="wrapper_home page slide_home">
            <div class="container flex_container box_home">
                <div class="text-center">
                    <span class="box_idioma cambio" > 
                        <span  class="dropdown">
                            <span class="wow fadeIn" id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="i-round" src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-mx.png" alt="idiomas" data-toggle="tooltip" data-placement="bottom" title="Cambiar idioma">
                            </span>
                            <ul class="dropdown-menu" aria-labelledby="dLabel">
                                <li><a href="http://solcar.gomserver.net/ingles/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma.png" alt=""> Inglés</a></li>
                                
                            </ul>
                        </span>
                    </span>
                    <div class="box_imgs wow fadeInDown">
                        <img src="<?php bloginfo('template_url') ?>/imgs/logo_solcar.png" alt="Logo Oficial">
                    </div>
                    <nav class="nav_home wow fadeInUp">
                        <ul class="text-uppercase">
                            <li><a href="#about" class="navTo cambio xx">Acerca de nosotros</a></li>
                            <li><a href="#service" class="navTo cambio xx">Servicios</a></li>
                            <li><a href="#products" class="navTo cambio xx">Productos</a></li>
                            <li><a href="#contact" class="navTo cambio xx">Contacto</a></li>
                        </ul>
                    </nav>
                    <div class="box_foot row">
                        <div class="container">
                            <div class="col-xs-3 wow fadeInLeft">
                                <img src="<?php bloginfo('template_url') ?>/imgs/logo-x.png" alt="Logo CENZA">
                            </div>
                            <div class="col-xs-9 text-right wow fadeInRight">
                                <small class="pull-right">© 2018. Todos los derechos reservados. Diseño y desarrollo por GO multimedios.</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="about" class="wrapper_about page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 mtop wow fadeInUp">
                        <?php query_posts('category_name=acerca-de-nosotros&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                        <h1 class="ttl_sections"><?php the_title(); ?></h1>
                        <div class="p_text">
                            <?php the_content();?>
                        </div>
                        <?php endwhile; else: ?>
                            <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                        <?php endif; wp_reset_query(); ?>
                        <div class="box_post_note">
                            <div class="note img text-center">
                                <img src="<?php bloginfo('template_url') ?>/imgs/img_about.png" alt="Acerca de nosotros">
                            </div>
                            <div class="note info">
                                <?php query_posts('tag=nosotros-extracto&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>    
                                    <?php the_content();?>
                                <?php endwhile; else: ?>
                                    <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                                <?php endif; wp_reset_query(); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box_foot in_sections ">
                    <div class="">
                        <div class="col-xs-3 wow fadeInLeft">
                            <img src="<?php bloginfo('template_url') ?>/imgs/logo-x.png" alt="Logo CENZA">
                        </div>
                        <div class="col-xs-9 text-right wow fadeInRight">
                            <small class="pull-right">© 2018. Todos los derechos reservados. Diseño y desarrollo por GO multimedios.</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" box_item_about">
                <img src="<?php bloginfo('template_url') ?>/imgs/about-c.png" alt="" class="item_about c wow slideInRight">
                <img src="<?php bloginfo('template_url') ?>/imgs/about-a.png" alt="" class="item_about a wow slideInDown">
                <img src="<?php bloginfo('template_url') ?>/imgs/about-b.png" alt="" class="item_about b wow zoomIn">
            </div>
        </section>
        <section id="service" class="wrapper_service page">
           
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 mtop wow slideInLeft">
                        <?php query_posts('category_name=servicios&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                        <h1 class="ttl_sections">Servicios</h1>
                        <div class="p_text"><?php the_content(); ?></div>
                        <?php endwhile; else: ?>
                            <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                        <?php endif; wp_reset_query(); ?>
                        <div class="box_oferta">
                            <br>
                            <h4>Nuestra oferta de valor incluye:</h4>
                            <?php query_posts('tag=oferta-de-valor&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                            <?php the_content(); ?>  
                            <?php endwhile; else: ?>
                            <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                        <?php endif; wp_reset_query(); ?>  
                        </div>
                    </div>
                    <div class="col-sm-6 text-center box_service_img mtop zoomIn wow">
                        <img src="<?php bloginfo('template_url') ?>/imgs/servicio.png" alt="Servicios Generales">
                    </div>
                </div>
            </div>
            <div class="box_foot in_sections ">
                <div class="">
                    <div class="col-xs-3">
                        <img src="<?php bloginfo('template_url') ?>/imgs/logo-x.png" alt="Logo CENZA">
                    </div>
                    <div class="col-xs-9 text-right">
                        <small class="pull-right">© 2018. Todos los derechos reservados. Diseño y desarrollo por GO multimedios.</small>
                    </div>
                </div>
            </div>
        </section>
        <section id="products" class="wrapper_products page">
            
            <div class="container">
                <div class="row mtop wrapper_products_ttl fadeInDown wow">
                    <div class="col-xs-4 col-sm-7">
                        <h1 class="ttl_sections">Productos</h1> 
                    </div>
                    <div class="col-xs-7 col-sm-5 box_download">
                        <div class="row">
                            <div class="col-xs-6 text-dwl">Descarga nuestro catálogo de productos (PDF 4.5 MB.)</div>
                            <div class="col-xs-6">
                                <a class="btn_download btns" download="Documento APM" href="<?php bloginfo('template_url') ?>/imgs/bg_home_a.png"> Descargar <span class="ico glyphicon glyphicon-download-alt" aria-hidden="true"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                <?php query_posts('category_name=productos&showposts=4&order=ASC'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>    
                    <div class="box_item_products col-sm-6 fadeInUp wow">
                        <div class="products_img">
                            <?php if (has_post_thumbnail() ) { the_post_thumbnail('thumbsnail_note');} ?>
                        </div>
                        <div class="products_details">
                            <h4><?php the_title();?></h4>
                            <?php the_content();?>
                        </div>
                    </div>
                
                <?php endwhile; else: ?>
                    <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                <?php endif; wp_reset_query(); ?>
                </div>
            </div>
            <div class="box_foot in_sections ">
                <div class="">
                    <div class="col-xs-3">
                        <img src="<?php bloginfo('template_url') ?>/imgs/logo-x.png" alt="Logo CENZA">
                    </div>
                    <div class="col-xs-9 text-right">
                        <small class="pull-right">© 2018. Todos los derechos reservados. Diseño y desarrollo por GO multimedios.</small>
                    </div>
                </div>
            </div>
        </section>
        <section id="contact" class="wrapper_contact page ">
            
            <div class="container">
                <div class="row mtop">
                    <div class="col-sm-6 fadeInLeft wow">
                    <?php query_posts('category_name=contacto&tag=contacto-info&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>   
                        <h1 class="ttl_sections"><?php the_title();?></h1>
                        <div class="p_text">
                        <?php the_content();?>
                        </div>
                    <?php endwhile; else: ?>
                        <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                    <?php endif; wp_reset_query(); ?>
                    </div>
                </div>
                <div class="row wpr_contact_form">
                    <div class="col-xs-6 fadeInLeft wow">
                        <div class="box_address">
                            <div class="note info col-sm-8">
                                <div>
                                <?php query_posts('category_name=contacto&tag=contacto-address&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>   
                                <span class="glyphicon glyphicon-home" aria-hidden="true"></span> <?php the_content();?>
                                <?php endwhile; else: ?>
                                    <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                                <?php endif; wp_reset_query(); ?>
                                </div>
                                <div>
                                <?php query_posts('category_name=contacto&tag=contacto-phone&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>   
                                <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> <?php the_content();?>
                                <?php endwhile; else: ?>
                                    <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                                <?php endif; wp_reset_query(); ?>
                                </div>
                                <div>

                                <?php query_posts('category_name=contacto&tag=contacto-email&showposts=1'); if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>   
                                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <?php the_content();?>
                                <?php endwhile; else: ?>
                                    <h5>¡Lo sentimos, aun no tenemos notas aquí!</h5>
                                <?php endif; wp_reset_query(); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 wow fadeInRight">
                        <form class="form_contact" method="POST" data-toggle="validator" role="form" id="formulario_solcar">
                            <div class="form-group">
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="correo" name="correo" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="tel" name="tel" placeholder="Teléfono">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="2" name="mensaje" id="mensaje" placeholder="Comentarios"></textarea>
                            </div>
                            
                                <button type="submit" class="cambio btn_summit btns" value="Enviar"><span>Enviar</span> <span class="ico glyphicon glyphicon-send" aria-hidden="true"></span></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="box_foot in_sections ">
                <div class="">
                    <div class="col-xs-3">
                        <img src="<?php bloginfo('template_url') ?>/imgs/logo-x.png" alt="Logo CENZA">
                    </div>
                    <div class="col-xs-9 text-right">
                        <small class="pull-right">© 2018. Todos los derechos reservados. Diseño y desarrollo por GO multimedios.</small>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <div class="extra" >
		<?php query_posts('category_name=slider&showposts=4'); if (have_posts()) : while (have_posts()) : the_post(); ?>

			<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
		<?php endwhile; else: ?>
			<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
		<?php endif; wp_reset_query(); ?>
	</div> 

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/vegas.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/jquery.fadenavigation.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/wow.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/jquery.validate.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/toastr.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/main.js"></script>


	<script>
		$(document).ready(function() {
            slideHome();
            header_change();
    		new WOW().init();


            // ----

            toastr.options = {   
            "positionClass": "toast-bottom-right",
            "preventDuplicates": true,      
            }

            $( "#formulario_solcar").validate( {
                submitHandler: function () {

                    var $this = $('#formulario_solcar');

                    toastr.info("Enviando...");

                    // obtener datos del formulario
                    var inputs = $this.serializeArray();
                    var objData = {};

                    for (var i = 0; i < inputs.length; i++) {
                        objData[inputs[i].name] = inputs[i].value;
                    };

                    $.ajax({
                        type : "POST",
                        url : "sendmail.php",
                        url : "http://solcar.gomserver.net/wp-content/themes/solcar_theme/sendmail.php",

                        data : objData
                    })
                    .done(function(data){
                        toastr.success("Enviado");

                        $this.find('input[type="text"]').val('');
                        $this.find('input[type="email"]').val('');
                        $this.find('textarea').val('');
                    })
                    .fail(function(data){
                        $this.find('.text-warning').text(data);     

                        // toastr.warning("Error de envío");       
                    });
                
                    return false;
                },
                rules: {
                    nombre: "required",
                    tel: "required",
                    mensaje: "required",
                    correo: {
                        required: true,
                        email: true
                    },  
                },
                messages: {
                    nombre: "Todos los campos son obligatorios",
                    tel: "Todos los campos son obligatorios",
                    mensaje: "Todos los campos son obligatorios",
                    correo: {
                    required: "Todos los campos son obligatorios",
                    email: "Introduzca una dirección de correo electrónica válida"
                    }
                },
                errorPlacement: function ( error, element ) {
                    error.addClass( "help-block" );
                },
                showErrors: function(errorMap, errorList) { 
                    this.defaultShowErrors();                   

                    if (errorList.length > 0) {
                        var errorArray = [];

                        // recorrer arreglo para concatenar mensaje
                        for (var i = 0; i < errorList.length; i++) {
                            // busco el mensaje en el arreglo errorList y lo agrego si no existe
                            if(errorArray.lastIndexOf(errorList[i].message) == -1){
                                errorArray.push(errorList[i].message);
                            }
                        }
                        // convierto el arreglo en una cadena y le agrego un salto de linea
                        errorMessage = errorArray.join('<br/>')
                        // mostrar mensaje
                        toastr.warning(errorMessage);
                    }
                }, 
                onkeyup: false,
                onclick: false,
                onfocusout : false
            });

        });
        $(function(){ $('#container').fadeNavigation(); });

	</script>
</body>
</html>