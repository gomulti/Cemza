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

<header>
	<nav class="navbar">
	  	<div class="container-fluid">
		    <div class="navbar-header">
		    	<span class="btn_idioma_mvl visible-xs" > 
		        	<span  class="dropdown">
		        		<span id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma.png" alt="idiomas" data-toggle="tooltip" data-placement="bottom" title="Change language">
						    <span class="caret"></span>
						</span>
						<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dLabel">
						    <li><a href="http://oceamar.com.mx/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-mx.png" alt=""> Spanish</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="http://oceamar.com.mx/portugues/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-pt.png" alt=""> Portuguese</a></li>
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
			        <li><a class="transicion cambio" href="#us">ABOUT US </a></li>
			        <li><a class="transicion cambio" href="#service">SERVICES </a></li>
			        <li><a class="transicion cambio" href="#client">OUR CUSTOMERS </a></li>
			        <li><a class="transicion cambio" href="#contact">CONTACT</a></li>
			    </ul>

			    <div class="nav navbar-nav navbar-right btns_ico">
			    	<a class="cambio" href="https://www.facebook.com/Oceamar-Offshore-Agency-214311189152875/" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Follow facebook"><img src="<?php bloginfo('template_url') ?>/imgs/ico-fb.png" alt=""> </a>
			        <a class="cambio" href="https://www.instagram.com/oceamar_agency/" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Follow instagram "><img src="<?php bloginfo('template_url') ?>/imgs/ico-instag.png" alt=""> </a>
			        <a class="cambio" href="https://www.linkedin.com/company/10546640/admin/updates/" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Follow linkedin"><img src="<?php bloginfo('template_url') ?>/imgs/ico-in.png" alt=""> </a></li>
			        <span class="btn_idioma hidden-xs cambio" > 
			        	<span  class="dropdown">
			        		<span id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma.png" alt="idiomas" data-toggle="tooltip" data-placement="bottom" title="Change language">
							    <span class="caret"></span>
							</span>
							<ul class="dropdown-menu" aria-labelledby="dLabel">
							    <li><a href="http://oceamar.com.mx/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-mx.png" alt=""> Spanish</a></li>
							     <li role="separator" class="divider"></li>
							    <li><a href="http://oceamar.com.mx/portugues/"> <img src="<?php bloginfo('template_url') ?>/imgs/ico-idioma-pt.png" alt=""> Portuguese</a></li>
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
		<div class="col-xs-6 text-right box_img extra wow fadeInLeft">
			<img src="<?php bloginfo('template_url') ?>/imgs/logo_oceamar_full.png" alt="logo Oceamar">
		</div>
		<div class="col-xs-6 box_info extra wow fadeInRight">
			<?php query_posts('category_name=acerca&tag=version-ingles&showposts=1'); if (have_posts()) : while (have_posts()) : the_post(); ?>
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
			<?php query_posts('category_name=nosotros&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
					<?php query_posts('category_name=vision&tag=version-ingles&showposts=1');
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
					<?php query_posts('category_name=mision&tag=version-ingles&showposts=1'); 
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
					<h3 class="text-center wow fadeInUp">Values</h3>
					<?php query_posts('category_name=valores&tag=version-ingles&showposts=5'); if(have_posts()) : while (have_posts()) : the_post(); ?>

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
			<?php query_posts('category_name=servicios&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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

							<?php query_posts('category_name=agenciamiento&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
			
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
							<?php query_posts('category_name=tramites&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
									<?php query_posts('category_name=logistica&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
									<?php query_posts('category_name=importación-exportación&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
							        <div class="front">
										<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
										<h3 class="name_service"><?php the_title(); ?> </h3>
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
								<?php query_posts('category_name=personal&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
								<?php query_posts('category_name=shorebase&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
								<?php query_posts('category_name=servicios-portuarios&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
							<?php query_posts('category_name=renta-equipos&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
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
				<h3 class="ttl_puertos wow fadeInDown">We operate in the main ports of the Gulf of Mexico:</h3>
				<div class="item_puertos wow fadeInLeft">
					<div class="box_items altamira">
						<?php query_posts('category_name=puerto-altamira&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="altamira" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  left">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items tampico">
						<?php query_posts('category_name=puerto-tampico&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="tampico" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  left">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items tuxpan">
						<?php query_posts('category_name=puerto-tuxpan&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="tuxpan" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  left">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items coatza">
						<?php query_posts('category_name=puerto-coatzacoalcos&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

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
						<?php query_posts('category_name=puerto-dos-bocas&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="dos_bocas" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  right">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items frontera">
						<?php query_posts('category_name=puerto-frontera&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="frontera" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  right">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items carmen">
						<?php query_posts('category_name=puerto-carmen&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="carmen" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  right">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items seybaplaya">
						<?php query_posts('category_name=puerto-seybaplaya&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

						<p id="seybaplaya" class="cambio"><?php the_title(); ?></p>
						<div style="display:none" class="box_info_puertos  right">
							<?php if (has_post_thumbnail() ) { the_post_thumbnail();} ?>
							<?php the_content(); ?>
						</div>
						<?php endwhile; ?><?php endif; wp_reset_query(); ?>
					</div>
					<div class="box_items progreso">
						<?php query_posts('category_name=puerto-progreso&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>

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
			<?php query_posts('category_name=contacto&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
					
				<h2 class="col-xs-12 wow fadeInLeft"><?php the_title(); ?></h2>

			 <?php endwhile; else: ?>
				<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
			<?php endif; wp_reset_query(); ?>
			<div class="col-xs-4 wow fadeInLeft info_text">
				<?php query_posts('category_name=contacto&tag=version-ingles&showposts=1'); if(have_posts()) : while (have_posts()): the_post(); ?>
					<?php the_content(); ?>
				
				 <?php endwhile; else: ?>
					<h1>¡Lo sentimos, aun no tenemos notas aquí!</h1>
				<?php endif; wp_reset_query(); ?>
				<form>
					<div class="form-group">
					    <input name="txtNombre" type="text" class="form-control" id="txtNombre" required="" placeholder="Name">
					</div>
					<div class="form-group">
					    <input name="txtEmail" type="email" class="form-control" id="txtEmail" required="" placeholder="Email">
					</div>
					<div class="form-group">
					   <textarea name="txtComentario" id="txtComentario" class="form-control" rows="1" required="" placeholder="Comments"></textarea>
					</div>
					
					<button type="button" class="btn BtnEnviarEn"><span>Send</span> <span class="glyphicon glyphicon-send" aria-hidden="true"></span></button>
					<div class="Contacto-Msj"><strong>Thank you so much!.</strong><br> Your message was sent successfully.</div>
				</form>
			</div>
			<div class="col-xs-8 wow fadeInRight">
				<div class="row">
					<div class="text-left cont_iconos">
						<a href="https://www.facebook.com/Oceamar-Offshore-Agency-214311189152875/" target="_blank"  target="_blank" data-toggle="tooltip" data-placement="bottom" title="Facebook"><img src="<?php bloginfo('template_url') ?>/imgs/ico-fb.png" alt=""> </a>
				        <a href="https://www.instagram.com/oceamar_agency/" target="_blank"  target="_blank" data-toggle="tooltip" data-placement="bottom" title="Fnstagram"><img src="<?php bloginfo('template_url') ?>/imgs/ico-instag.png" alt=""> </a>
				        <a href="https://www.linkedin.com/company/10546640/admin/updates/" target="_blank"  target="_blank" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><img src="<?php bloginfo('template_url') ?>/imgs/ico-in.png" alt=""> </a>
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
			<div class="col-xs-6 f_info text-center  wow fadeInUp">© 
				All rights reserved. Design and development by <a href="http://gomultimedios.com/" target="_blank"> GO miltimedios</a>.</small></div>
		</div>
	</div>
</footer>
