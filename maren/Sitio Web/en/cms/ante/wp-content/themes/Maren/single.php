
<?php  get_header(); ?> 
  
    <?php 
        while ( have_posts() ) : the_post(); 

        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
        $urlImagen = $thumb['0'];
    ?>

    <!--<header class="HeaderInterior u-size100-p u-textCenter u-imagenFondoCover" style="background-image: url(<?php echo $urlImagen; ?>);">
    <header class="HeaderInterior u-size100-p u-textCenter u-imagenFondoCover">
        <div class="HeaderInterior-Triangulo u-positionAbsolute"></div>

        <div class="HeaderInterior-Center HeaderInterior-Center--Blog u-inline-block u-textLeft">
            <h2 class="HeaderInterior-Title HeaderInterior-Title--Blog">
                Blog    
            </h2>
        </div>
    </header>-->
  
    <section class="Post size100-p u-textCenter">

        <article class="Post-Center u-inline-block u-textLeft"> 
            <h2 class="Post-Title">
                <?php the_title();?>       
            </h2>
        
          <?php the_post_thumbnail('img-single');  ?>
          
          <?php the_content('[...]'); ?> 


          <?php endwhile; //twentytwelve_content_nav( 'nav-below' );// end of the loop. ?>

          <?php // wp_reset_query();  ?>  
		 
         </article>
    </section>


<?php //get_sidebar(); ?>

<?php get_footer(); ?>