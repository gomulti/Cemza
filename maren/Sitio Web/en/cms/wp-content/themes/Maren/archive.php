<?php
 get_header(); 
?>
 
  <section id="categorias" class="size100-p">
  
   <article class="size-center">
  
    <?php get_sidebar(); ?>
    
    <div id="categorias-informacion">
   
     <section id="primary" class="site-content">
		<div id="content" role="main">

		  <?php if ( have_posts() ) : ?>
			<header class="archive-header">
				<h1 class="archive-title"><?php
					if ( is_day() ) :
						printf( __( 'Daily Archives: %s', 'twentytwelve' ), '<span>' . get_the_date() . '</span>' );
					elseif ( is_month() ) :
						printf( __( 'Monthly Archives: %s', 'twentytwelve' ), '<span>' . get_the_date( _x( 'F Y', 'monthly archives date format', 'twentytwelve' ) ) . '</span>' );
					elseif ( is_year() ) :
						printf( __( 'Yearly Archives: %s', 'twentytwelve' ), '<span>' . get_the_date( _x( 'Y', 'yearly archives date format', 'twentytwelve' ) ) . '</span>' );
					else :
						_e( 'Archives', 'twentytwelve' );
					endif;
				?></h1>
			</header><!-- .archive-header -->

			<?php
			/* Start the Loop */
                        query_posts('category_name=Eventos');
			while ( have_posts() ) : the_post();


		       //get_template_part( 'content', get_post_format() );
                       ?>
                       <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('evento-thumb'); ?></a> 

                        <h1 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title();?></a></h1>

                      <?php
			endwhile;
                        
			twentytwelve_content_nav( 'nav-below' );
			?>
                       <?php wp_reset_query(); ?>

		<?php else : ?>
			<?php get_template_part( 'content', 'none' ); ?>
		<?php endif; ?>

		</div><!-- #content -->
	 </section><!-- #primary -->
    </div>
   </article>  
  </section>

<?php get_footer(); ?>