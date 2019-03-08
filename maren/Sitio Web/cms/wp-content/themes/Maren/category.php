<?php get_header(); ?>

  <script type="text/javascript">
    $(document).ready(function() 
    {
        $(".MainNav-LinkList").eq(5).addClass('activo');
		$(".MainNav-LinkIdioma").eq(1).attr("href","http://marinsa.gomserver.net/en/cms/category/blog/");
		$(".MainNavInterior-Idioma").attr("href","http://marinsa.gomserver.net/en/cms/category/blog/");
    });
  </script>

  <header class="HeaderInterior u-size100-p u-textCenter u-imagenFondoCover">

   <div class="HeaderInterior-Triangulo u-positionAbsolute"></div>

    <div class="HeaderInterior-Center u-inline-block u-textLeft">
      <h2 class="HeaderInterior-Title HeaderInterior-Title--Blog">
        <?php 
			      $str_categ ="";
		   
            foreach((get_the_category()) as $category)  
              if($str_categ=="")
                $str_categ = $category->cat_name;  		  
              else
                $str_categ .= ",".$category->cat_name; 
          
              echo $str_categ;	  
		    ?>          
      </h2>
    </div>
  </header>
  
  <section class="Post size100-p u-textCenter">
    <span class="BorderInterior u-block"></span>

    <article class="Categoria-Center u-inline-block u-textLeft"> 
  
         

		    <?php if ( have_posts() ) : ?>
        
          <ul class="Categoria-List">
		    <?php
          while ( have_posts() ) : the_post();
              ?>
                  <li class="u-inline-block">            
                    <a href="<?php the_permalink(); ?>" class="Categoria-ItemList u-inline-block">
                      <figure class="Blog-ImgList">
                        <?php the_post_thumbnail('img-ItemBlog'); ?> 
                      </figure>
                                
                      <div class="Categoria-InfoList">
                        <h6 class="Categoria-TitleList u-efecto">
                          <?php the_title();?>
                        </h6>
                      
                        <?php the_excerpt('[...]'); ?> 
                      </div> 
                    </a>
                  </li>                  
                <?php
          endwhile;

			    //twentytwelve_content_nav( 'nav-below' );                          
			  ?>             
         </ul>
          
         <div class="Categoria-RedesSociales">

            <div class="fb-page" data-href="https://www.facebook.com/marinsaspecializedvessels/" data-tabs="timeline" data-width="338" data-height="475" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/reclutamiento.marinsa/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/reclutamiento.marinsa/">Reclutamiento Marinsa</a></blockquote></div>
          
            <script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
            <script type="IN/CompanyProfile" data-id="10546663" data-format="inline" data-related="false"  data-width="338" data-height="475"></script>
 
            <div class="Categoria-Instagram u-inline-block">
              <?php get_sidebar(); ?>
            </div>

         </div>
         

	      <?php //if(function_exists('wp_pagenavi')) { wp_pagenavi(); } ?>

		    <?php //else : ?>

			    <?php //get_template_part( 'content', 'none' ); ?>

		    <?php endif; ?>

   </article>
  
  </section>
  

<?php get_footer(); ?>