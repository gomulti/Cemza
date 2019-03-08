<?php
 get_header(); 
?>

	<section id="primary" class="site-content">
		<div id="content" role="main">

		<?php if ( have_posts() ) : ?>

			<section id="titulo-categoria" class="size100-p">
             <article class="size-center">
				<h2 class="page-title"><?php printf( __( 'Search Results for: %s', 'twentytwelve' ), '<span>' . get_search_query() . '</span>' ); ?></h2>
			 </article>  
            </section>
           
            <section id="categorias" class="size100-p">
  
             <article class="size-center">
  
              <?php get_sidebar(); ?>
     
              <div id="categorias-informacion">
    
			   <?php twentytwelve_content_nav( 'nav-above' ); ?>

			   <?php /* Start the Loop */ ?>
			   
			   <?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', get_post_format() ); ?>
			   <?php endwhile; ?>

  			   <?php twentytwelve_content_nav( 'nav-below' ); ?>

	  	       <?php else : ?>

			    <section id="titulo-categoria" class="size100-p">
                 <article class="size-center">
				  <h2 class="entry-title"><?php _e( 'Nothing Found', 'twentytwelve' ); ?></h2>
			     </article>  
                </section>

				<section id="categorias" class="size100-p">
  
                 <article class="size-center">
  
                 <?php get_sidebar(); ?>
     
                  <div id="categorias-informacion">
				   <p><?php _e( 'Sorry, but nothing matched your search criteria. Please try again with some different keywords.', 'twentytwelve' ); ?></p>
					  <?php //get_search_form(); ?>
                 	  
		             <?php endif; ?>                          
                 </div>
               </article>
             </section>
           
		</div><!-- #content -->
	</section><!-- #primary -->

           
<?php get_footer(); ?>