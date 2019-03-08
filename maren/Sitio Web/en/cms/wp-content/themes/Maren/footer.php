 
        <footer class="Footer u-size100-p u-textCenter">
            <div class="Contacto u-size100-p u-imagenFondoCover">
            	<div class="Contacto-Center u-inline-block u-inline-block u-textLeft">
					<h6 class="Contacto-Title aparecerSlideDown">
                		Contacto
  	              	</h6>
                	
                    <div class="Contacto-Datos u-inline-block aparecerRight2">
                    	<ul class="Contacto-List">
                   		  <li class="Contacto-IcoDireccion">
                            	<p class="Contacto-TitleList">
                                	Oficina
                                </p>
                                <p>
                                	Av. Adolfo Lopez Mateos #179 Col. PIP Laguna Azul. <br>
									C.P. 24140. Ciudad del Carmen, Campeche, México.
                              </p>
                            </li>
                            
                            <li class="Contacto-IcoTelefono">
                            	<p class="Contacto-TitleList">
                                    Teléfono
                                </p>
                                <p>
                                	(938) 112 1254
                                </p>
                                <p>
                                	<strong>Móvil</strong>. (938) 160 5047
                                </p>
                            </li>
                            
                            <li class="Contacto-IcoEmail">
                            	<p class="Contacto-TitleList">
                                    Email
                                </p>
                                <p>
                                	<a href="mailto:sergio.delgado@marinsa.com.mx">sergio.delgado@marinsa.com.mx</a>
                                </p>
                            </li>
                        </ul>
                    </div>
                    
                    
                  <form name="formContacto" id="formContacto" class="Contacto-Formulario u-inline-block aparecerSlideLeft2" method="post" action="">
                    <input class="u-box-sizing" type="text" name="txtNombre" id="txtNombre" autocomplete="off" placeholder="Nombre" value="Nombre" onfocus="if(this.value=='Nombre')this.value='';">
                    <input class="u-box-sizing" type="email" name="txtEmail" id="txtEmail" autocomplete="off" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">
                    <input class="u-box-sizing" type="text" name="txtComentario" id="txtComentario" autocomplete="off" placeholder="Comentario" value="Comentario" onfocus="if(this.value=='Comentario')this.value='';">
                        
                    <a id="btnEnviar" class="Contacto-Btn u-redondeado u-inline-block">Enviar</a>
                        
                    <p class="Contacto-Msj u-textCenter fadeIn2"><strong class="u-mayuscula u-inline-block">¡Muchas Gracias!.</strong><br> Su mensaje fue enviado con éxito.</p>
                  </form>
                    
                </div>
            </div>
            
            
        	<div class="Footer-Center u-inline-block u-textLeft">
            	<figure class="u-inline-block">
                	<img src="<?php echo get_template_directory_uri(); ?>/images/logoCemza.png" alt="LOgo CEMZA" />
                </figure>
                
                <p class="Footer-Txt u-floatRight">
                	&copy; 2018. Todos los derechos reservados. Diseño y desarrollo por <a href="http://gomultimedios.com/" target="_blank">GO multimedios</a>.
                </p>
            </div>
        </footer>


<?php wp_footer(); ?>



<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.0&appId=175285526444354&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

</body>

</html>