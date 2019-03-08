<?php get_header(); ?>

  <script type="text/javascript">
    $(document).ready(function() 
    {
        $(".MainNav-LinkList").eq(4).addClass('activo');
		$(".MainNav-LinkIdioma").eq(1).attr("href","http://marinsa.gomserver.net/en/cms/quality-hse/");
		$(".MainNavInterior-Idioma").attr("href","http://marinsa.gomserver.net/en/cms/quality-hse/");
    });
  </script>

<?php
        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' );
        $urlImagen = $thumb['0'];
?>

  <header class="HeaderInterior u-size100-p u-textCenter u-imagenFondoCover" style="background-image: url(<?php echo $urlImagen; ?>);">
    <div class="HeaderInterior-Triangulo u-positionAbsolute"></div>

    <div class="HeaderInterior-Center u-inline-block u-textLeft">
      <h2 class="HeaderInterior-Title HeaderInterior-Title--Page">
        <?php 
			    the_title();		  
		    ?>          
      </h2>
    </div>
  </header>
    
  <section class="Page size100-p u-textCenter">
    <span class="BorderInterior u-block"></span>

      <article class="Page-Center u-inline-block u-textLeft"> 
   
        <?php //get_sidebar(); ?>
    
            <?php while ( have_posts() ) : the_post(); ?>
        		
            <?php get_template_part( 'content', 'page' ); ?>
            <?php comments_template( '', true ); ?>
                
        <?php endwhile; // end of the loop. ?>
      </article>
  </section>


<?php get_footer(); ?>