	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<!--<header class="entry-header">
			<h1 class="entry-title"><?php the_title(); ?></h1>
		</header>-->

		<div class="entry-content">

                       <?php 
                                //echo get_the_content(); 
                              echo the_content();
                            ?>
			
		</div><!-- .entry-content -->
		<footer class="entry-meta">
			<?php edit_post_link( __( 'Edit', 'twentytwelve' ), '<span class="edit-link">', '</span>' ); ?>
		</footer><!-- .entry-meta -->
	</article><!-- #post -->