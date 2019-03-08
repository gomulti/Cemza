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
	<style type='text/css'>
		.Contacto-Msj{
			display: none;
			text-align: center;
			margin-top: 30px;
		}

		.Contacto-Msj strong{
			color: #fff;
			font-size: 24px;
			text-transform: uppercase;
		}
	</style>
	<?php wp_head();?>

</head>
<body>
	<header>
		<nav class="navbar">
		  	<div class="container-fluid">
			    <div class="navbar-header">
			    	<span class="btn_idioma_mvl visible-xs" > 
			        	<span  class="dropdown">
			        		<span id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-mx.png" alt="idiomas" data-toggle="tooltip" data-placement="bottom" title="Cambiar idioma">
							    <span class="caret"></span>
							</span>
							<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dLabel">
							    <li><a href="http://oceamar.com.mx/ingles/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma.png" alt=""> Inglés</a></li>
							     <li role="separator" class="divider"></li>
							    <li><a href="http://oceamar.com.mx/portugues/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-pt.png" alt=""> Portugués</a></li>
							 </ul>
			        	</span>
			        </span>
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Menu</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand log_home transicion cambio" href="#home"><img src="<?php bloginfo('template_url') ?>/imgs/logo_oceamar.png" alt=""></a>
			      <a class="navbar-brand visible-xs transicion cambio" href="#home"><img src="<?php bloginfo('template_url') ?>/imgs/logo_oceamar.png" alt=""></a>
			    </div>
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				    <ul class="nav navbar-nav nav_a cambio">
				        <li><a class="transicion cambio" href="#us">NOSOTROS </a></li>
				        <li><a class="transicion cambio" href="#service">SERVICIOS </a></li>
				        <li><a class="transicion cambio" href="#client">CLIENTES </a></li>
				        <li><a class="transicion cambio" href="#contact">CONTACTO </a></li>
				    </ul>

				    <div class="nav navbar-nav navbar-right btns_ico">
				    	<a class="cambio" href="https://www.facebook.com/Oceamar-Offshore-Agency-214311189152875/" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Síguenos en facebook"><img src="<?php bloginfo('template_url') ?>/imgs/ico-fb.png" alt=""> </a>
				        <a class="cambio" href="https://www.instagram.com/oceamar_agency/" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Síguenos en instagram "><img src="<?php bloginfo('template_url') ?>/imgs/ico-instag.png" alt=""> </a>
				        <a class="cambio" href="https://www.linkedin.com/company/10546640/admin/updates/" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Síguenos en linkedin"><img src="<?php bloginfo('template_url') ?>/imgs/ico-in.png" alt=""> </a></li>
				        <span class="btn_idioma hidden-xs cambio" > 
				        	<span  class="dropdown">
				        		<span id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-mx.png" alt="idiomas" data-toggle="tooltip" data-placement="bottom" title="Cambiar idioma">
								    <span class="caret"></span>
								</span>
								<ul class="dropdown-menu" aria-labelledby="dLabel">
								    <li><a href="http://oceamar.com.mx/ingles/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma.png" alt=""> Inglés</a></li>
								     <li role="separator" class="divider"></li>
								    <li><a href="http://oceamar.com.mx/portugues/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-pt.png" alt=""> Portugués</a></li>
								 </ul>
								
				        	</span>
				        </span>
				    </div>
				    <div class="nav navbar-right nav_contact cambio">
				       <a class="cambio" href="mailto:ventas@oceamar.com.mx" target="_top"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-mail.png" alt="mail">ventas@oceamar.com.mx</a>
				       <a class="cambio" href="tel:+9383841951"><img src="<?php bloginfo('template_url') ?>/imgs/ico-phone.png" alt="phone">Tel: (+52) (938) 384 1951</a>
				    </div>
			    </div>
		  	</div>
		</nav>
	</header>

	<?php get_template_part('bg_video'); ?>

	<section id="home" class="sec_home flex_container">
		<div class="container">
			<div class="col-xs-6 text-right box_img wow fadeInLeft">
				<img src="<?php bloginfo('template_url') ?>/imgs/logo_oceamar_full.png" alt="logo Oceamar">
			</div>
			<div class="col-xs-6 box_info wow fadeInRight">
				<?php query_posts('category_name=acerca&tag=version-espanol&showposts=1'); if (have_posts()) : while (have_posts()) : the_post(); ?>
				
				<?php the_content(); ?>

				<?php endwhile; else: ?>
					<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
				<?php endif; wp_reset_query(); ?>
			</div>
		</div>
	</section>

	<section id="us" class="sec_us">
		<div class="ttl_sec">
			<div class="container wow slideInUp">
				<?php query_posts('category_name=nosotros&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
				<h1><?php the_title(); ?></h1> 
				<?php the_content(); ?> 

				<?php endwhile; else: ?>
					<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
				<?php endif; wp_reset_query(); ?>
			</div>
		</div>
		<div class="wrapper_us_info">
			<div class="container">
				<div class="row text-center">
					<div class="col-xs-6 fadeInLeft wow">
						<?php query_posts('category_name=vision&tag=version-espanol&showposts=1');
						if(have_posts()) : while (have_posts()) : the_post(); ?>

							<h3><?php the_title(); ?></h3>
							<div class="text-left">
								<?php the_content(); ?>
							</div>

						<?php endwhile; else: ?>
							<h1>¡Lo sentimos, aun no tenemos contenido aqui!</h1>
						<?php endif; wp_reset_query(); ?>
					</div>
					<div class="col-xs-6 wow fadeInRight">
						<?php query_posts('category_name=mision&tag=version-espanol&showposts=1'); 
						if(have_posts()) : while (have_posts()) : the_post(); ?>

							<h3><?php the_title(); ?></h3>
							<div class="text-left">
								<?php the_content(); ?>
							</div>

						<?php endwhile; else: ?>
							<h1>¡Lo sentimos, aun no tenemos contenido aqui!</h1>
						<?php endif; wp_reset_query(); ?>
					</div>
				</div>
				<div class="row">
					<div class="wrapper_values">
						<h3 class="text-center wow fadeInUp">Valores</h3>
						<?php query_posts('category_name=valores&tag=version-espanol&showposts=5'); if(have_posts()) : while (have_posts()) : the_post(); ?>

						<div class="box_values wow slideInUp">
							<h4 class="c_morado"><?php the_title(); ?></h4>
							<?php the_content(); ?>
						</div>
						<?php endwhile; else: ?>
							<h1>¡Lo sentimos, aun no tenemos contenido aqui!</h1>
						<?php endif; wp_reset_query(); ?>

					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="service" class="sec_service">
		<div class="ttl_sec">
			<div class="container wow slideInUp">
				<?php query_posts('category_name=servicios&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
				<h1><?php the_title(); ?></h1> 
				<?php the_content(); ?> 

				<?php endwhile; else: ?>
					<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
				<?php endif; wp_reset_query(); ?>
			</div>
		</div>
		<div class="wrapper_service_info">
			<div class="container">
				<div class="row">
					<div class="wrapper_box_service">
						<div class="content_box wow fadeInUp">
							<div class="card cardex">

								<?php query_posts('category_name=agenciamiento&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
				
						        <div class="front">
									<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
									<h3 class="name_service"><?php the_title(); ?></h3>
						        </div>
						        <div class="back c_b_marin">
						        	<div class="row">
						        		<div class="col-xs-6">
						        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_e.png" alt="">
						        			<h3><?php the_title(); ?></h3>
						        		</div>
						        		<div class="col-xs-6">
						        			<div class="ul_line sp_top">
						        				<?php the_content(); ?>
						        			</div>
						        		</div>
						        	</div>
						        </div> 

							    <?php endwhile; else: ?>
									<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
								<?php endif; wp_reset_query(); ?>
							</div>
						</div>
						<div class="content_box wow fadeInUp">
							<div class="card cardex">
								<?php query_posts('category_name=tramites&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
						        <div class="front">
									<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>

									<h3 class="name_service"><?php the_title(); ?></h3>
						        </div>
						        <div class="back c_b_medio">
						            <div class="row">
						        		<div class="col-xs-6">
						        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_a.png" alt="">
						        			<h3><?php the_title(); ?></h3>
						        		</div>
						        		<div class="col-xs-6">
						        			<div class="ul_line sp_top">
						        				<?php the_content(); ?>
						        			</div>
						        		</div>
						        	</div>
						        </div> 
								<?php endwhile; else: ?>
									<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
								<?php endif; wp_reset_query(); ?>
							</div>
						</div>

						<div class="">
							<div class="doble">
								<div class="content_box wow fadeInUp">
									<div class="card cardex">
										<?php query_posts('category_name=logistica&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
								        <div class="front">
											<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
											<h3 class="name_service"><?php the_title(); ?></h3>
								        </div>
								        <div class="back c_b_claro">
								           <div class="row">
								        		<div class="col-xs-12">
								        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_h.png" alt="">
								        			<h3><?php the_title(); ?></h3>
								        			<?php the_content(); ?>
								        		</div>
								        	</div>
								        </div> 
								        <?php endwhile; else: ?>
											<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
										<?php endif; wp_reset_query(); ?>
									</div>
								</div>
							</div><!-- 
						 --><div class="doble ">
						 		<div class="content_box wow fadeInUp">
									<div class="card cardex">
										<?php query_posts('category_name=importación-exportación&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
								        <div class="front">
											<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
											<h3 class="name_service">Importación <br> y exportación </h3>
								        </div>
								        <div class="back c_b_marin">
								            <div class="row">
								        		<div class="col-xs-12">
								        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_c.png" alt="">
								        			<h3><?php the_title(); ?> </h3>
								        			<?php the_content(); ?>
								        		</div>
								        	</div>
								        </div> 
								        <?php endwhile; else: ?>
											<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
										<?php endif; wp_reset_query(); ?>
									</div>
								</div>
							</div>
						</div>
					</div><!-- 
				 --><div class="wrapper_box_service">
				 		<div class="doble">
				 			<div class="content_box wow fadeInUp">
								<div class="card cardex">
									<?php query_posts('category_name=personal&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
							        <div class="front">
										
										<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>

										<h3 class="name_service"><?php the_title(); ?></h3>
							        </div>
							        <div class="back c_b_claro">
							            <div class="row">
							        		<div class="col-xs-12">
							        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_f.png" alt="">
							        			<h3><?php the_title(); ?></h3>
							        			<div class="sp_top">
							        				<?php the_content(); ?>
							        			</div>
							        		</div>
							        	</div>
							        </div> 
							        <?php endwhile; else: ?>
										<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
									<?php endif; wp_reset_query(); ?>
								</div>
							</div>
				 		</div><!-- 
				 	 --><div class="doble">
				 			<div class="content_box ">
								<div class="card cardex cc wow fadeInUp">
									<?php query_posts('category_name=shorebase&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
							        <div class="front">
										<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>

										<h3 class="name_service"><?php the_title(); ?></h3>
							        </div>
							        <div class="back c_b_medio">
					        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_b.png" alt="">
					        			<h3><?php the_title(); ?></h3>
					        			<?php the_content(); ?>
							        </div> 
							        <?php endwhile; else: ?>
										<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
									<?php endif; wp_reset_query(); ?>
								</div>
							</div>
							<div class="content_box ">
								<div class="card cardex cc wow fadeInUp">
									<?php query_posts('category_name=servicios-portuarios&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
							        <div class="front">
										<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>

										<h3 class="name_service"><?php the_title(); ?></h3>
							        </div>
							        <div class="back c_b_marin">
							            <img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_g.png" alt="">
					        			<h3><?php the_title(); ?></h3>
					        			<small>
						        			<?php the_content(); ?>
					        			</small>
							        </div> 
							        <?php endwhile; else: ?>
										<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
									<?php endif; wp_reset_query(); ?>
								</div>
							</div>
				 		</div>
						<div class="content_box wow fadeInUp">
							<div class="card cardex">
								<?php query_posts('category_name=renta-equipos&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
						        <div class="front">
									
									<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>

									<h3 class="name_service"> <?php the_title(); ?></h3>
						        </div>
						        <div class="back c_b_medio">
						            <div class="row">
						        		<div class="col-xs-6">
						        			<img src="<?php bloginfo('template_url') ?>/imgs/servicios/ico_d.png" alt="">
						        			<h3><?php the_title(); ?></h3>
						        		</div>
						        		<div class="col-xs-6">
						        			<div class="ul_line sp_top">
						        				<?php the_content(); ?>
						        			</div>
						        		</div>
						        	</div>
						        </div> 
						        <?php endwhile; else: ?>
									<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
								<?php endif; wp_reset_query(); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="puertos">
			<div class="wrapper_puertos">
				<div class="container">
					<h3 class="ttl_puertos wow fadeInDown">Operamos en los principales puertos del Golfo de México:</h3>
					<div class="item_puertos wow fadeInLeft">
						<div class="box_items altamira">
							<?php query_posts('category_name=puerto-altamira&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="altamira" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  left">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items tampico">
							<?php query_posts('category_name=puerto-tampico&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="tampico" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  left">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items tuxpan">
							<?php query_posts('category_name=puerto-tuxpan&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="tuxpan" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  left">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items coatza">
							<?php query_posts('category_name=puerto-coatzacoalcos&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="coatza" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  left">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
					</div>
					<div class="item_puertos wow fadeInRight">
						<div class="box_items dos_bocas">
							<?php query_posts('category_name=puerto-dos-bocas&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="dos_bocas" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  right">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items frontera">
							<?php query_posts('category_name=puerto-frontera&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="frontera" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  right">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items carmen">
							<?php query_posts('category_name=puerto-carmen&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="carmen" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  right">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items seybaplaya">
							<?php query_posts('category_name=puerto-seybaplaya&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="seybaplaya" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  right">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
						<div class="box_items progreso">
							<?php query_posts('category_name=puerto-progreso&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

							<p id="progreso" class="cambio"><?php the_title(); ?></p>
							<div style="display:none" class="box_info_puertos  right">
								<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
								<?php the_content(); ?>
							</div>
							<?php endwhile; ?><?php endif; wp_reset_query(); ?>
						</div>
					</div>
				</div>
				<div class="wrapper_points">
					<span class="points cambio point_a"></span>
					<span class="points cambio point_b"></span>
					<span class="points cambio point_c"></span>
					<span class="points cambio point_d"></span>
					<span class="points cambio point_e"></span>
					<span class="points cambio point_f"></span>
					<span class="points cambio point_g"></span>
					<span class="points cambio point_h"></span>
					<span class="points cambio point_i"></span>
				</div>
			</div>
		</div>
	</section>

	<section id="client" class="sec_client">
		<div class="container">
			<h1 class="text-center wow fadeIn">Clientes</h1><br>
			<div class="wrapper_lgs_client text-center wow fadeInUp">
				<div class="row">
					<?php query_posts('category_name=clientes&tag=version-espanol&showposts=13'); if(have_posts()) : while (have_posts()): the_post(); ?>

					<div class="box_log_clients">
						<div>
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
						</div>
						<div class="box_info_clients">
							<?php the_content(); ?>
						</div>
					</div>
					 <?php endwhile; else: ?>
						<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
					<?php endif; wp_reset_query(); ?>
				</div>
			</div>
		</div>
	</section>

	<section id="contact" class="sec_contact">
		<div class="container">
			<div class="row">
				<?php query_posts('category_name=contacto&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
						
					<h2 class="col-xs-12 wow fadeInLeft"><?php the_title(); ?></h2>

				 <?php endwhile; else: ?>
					<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
				<?php endif; wp_reset_query(); ?>
				<div class="col-xs-4 wow fadeInLeft info_text">
					<?php query_posts('category_name=contacto&tag=version-espanol&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
						<?php the_content(); ?>
					
					 <?php endwhile; else: ?>
						<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
					<?php endif; wp_reset_query(); ?>
					<form>
						<div class="form-group">
						    <input name="txtNombre" type="text" class="form-control" id="txtNombre" required="" placeholder="Nombre">
						</div>
						<div class="form-group">
						    <input name="txtEmail" type="email" class="form-control" id="txtEmail" required="" placeholder="Email">
						</div>
						<div class="form-group">
						   <textarea name="txtComentario" id="txtComentario" class="form-control" rows="1" required="" placeholder="Comentarios"></textarea>
						</div>
						
					  	<button type="button" class="BtnEnviar btn"><span>Enviar</span> <span class="glyphicon glyphicon-send" aria-hidden="true"></span></button>

						<div class="Contacto-Msj"><strong>¡Muchas Gracias!.</strong><br> Su mensaje fue enviado con éxito.</div>
					</form>
				</div>
				<div class="col-xs-8 wow fadeInRight">
					<div class="row">
						<div class="text-left cont_iconos">
							<a href="https://www.facebook.com/Oceamar-Offshore-Agency-214311189152875/" target="_blank"  target="_blank" data-toggle="tooltip" data-placement="bottom" title="Síguenos en facebook"><img src="<?php bloginfo('template_url') ?>/imgs/ico-fb.png" alt=""> </a>
					        <a href="https://www.instagram.com/oceamar_agency/" target="_blank"  target="_blank" data-toggle="tooltip" data-placement="bottom" title="Síguenos en instagram"><img src="<?php bloginfo('template_url') ?>/imgs/ico-instag.png" alt=""> </a>
					        <a href="https://www.linkedin.com/company/10546640/admin/updates/" target="_blank"  target="_blank" data-toggle="tooltip" data-placement="bottom" title="Síguenos en linkedin"><img src="<?php bloginfo('template_url') ?>/imgs/ico-in.png" alt=""> </a>
						</div>
					</div>
					
					<div class="col-xs-12">
						<?php query_posts('category_name=ubicaciones&tag=version-espanol&showposts=10'); if(have_posts()) : while (have_posts()): the_post(); ?>
						<div class="box_ubications col-xs-6">
							<div class="row">
								<div class="col-xs-2 col_icons">
									<i class="fas fa-map-marker-alt"></i>
								</div>
								<div class="col-xs-10">
									<h4><?php the_title(); ?></h4>
									<?php the_content(); ?>
								</div>
							</div>
						</div>

						<?php endwhile; else: ?>
							<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
						<?php endif; wp_reset_query(); ?>
						
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-6 box_img_fot wow fadeInUp">
					<img src="<?php bloginfo('template_url') ?>/imgs/logo-cem.png" alt="Logo CENZA">
				</div>
				<div class="col-xs-6 f_info text-center  wow fadeInUp">© 2018. Todos los derechos reservados. Diseño y desarrollo por <a href="http://gomultimedios.com/" target="_blank"> GO miltimedios.</a></small></div>
			</div>
		</div>
	</footer>
	

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