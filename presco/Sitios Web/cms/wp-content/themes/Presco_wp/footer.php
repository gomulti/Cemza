 
        <footer class="Footer u-size100-p">
            <div class="Contacto u-imagenFondoCover u-size100-p u-textCenter">                    
                <div class="Contacto-Center u-inline-block u-desaparecer aparecerSlideUp">
                    <h6 class="Contacto-Title u-textLeft">
                        Contáctanos
                    </h6>
    
                    <div class="u-textLeft">   
                        <div class="Contacto-Datos u-inline-block">
                            <ul class="Contacto-List">
                                <li class="Contacto-icoDireccionList">
                                    <p>
                                        Calle 47, No. 80 Col. Tecolutla, C.P. 24140 Ciudad del Carmen, Campeche, Mexico.
                                    </p>
                                </li>
                                <li class="Contacto-icoTelefonoList">
                                    +52 01 (938) 286 1356
                                </li>
                                <li class="Contacto-icoEmailList">
                                    <p>Clientes: <a href="mailto:ventas@presco.mx">ventas@presco.mx</a></p>
                                    <p>Proveedores: <a href="mailto:compras@presco.mx">compras@presco.mx</a></p>
                                </li>
                            </ul>

                            <div class="Contacto-RedesSociales">
                                <a href="#" class="Contacto-ItemRedSocial u-inline-block"><img src="<?php echo get_template_directory_uri(); ?>/images/icoFacebook.png" alt="Facebook"></a>
                                <a href="#" class="Contacto-ItemRedSocial u-inline-block"><img src="<?php echo get_template_directory_uri(); ?>/images/icoTwitter.png" alt="Twitter"></a>
                                <a href="#" class="Contacto-ItemRedSocial u-inline-block"><img src="<?php echo get_template_directory_uri(); ?>/images/icoLn.png" alt="Linkelind"></a>
                            </div>
                        </div>
                            
                        <form class="Contacto-Formulario u-inline-block u-floatRight" name="Contacto-FmFormulario" id="Contacto-FmFormulario" method="post" action="">                	
                        
                            <input class="u-box-sizing" name="txtNombre" id="txtNombre" placeholder="Nombre" value="Nombre" onfocus="if(this.value=='Nombre')this.value='';">
                                    
                            <input class="u-box-sizing" name="txtEmail" id="txtEmail" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">

                            <input type="tel" class="u-box-sizing" name="txtTelefono" id="txtTelefono" placeholder="Teléfono" value="Teléfono" onfocus="if(this.value=='Teléfono')this.value='';">
                                    
                            <input class="u-box-sizing" name="txtComentario" id="txtComentario" placeholder="Comentario" value="Comentario" onfocus="if(this.value=='Comentario')this.value='';">   
                                    
                            <a class="Contacto-BtnEnviar u-redondeado u-inline-block">Enviar</a>
                                    
                            <div class="Contacto-Msj u-textCenter fadeIn2"><strong class="u-mayuscula u-inline-block">¡Muchas Gracias!.</strong><br> Su mensaje fue enviado con éxito.</div>
                        </form>
                    </div>
                        
                </div>
            </div>
    
            <div class="DerechoAutor u-size100-p u-textCenter">
                <div class="DerechoAutor-Center u-inline-block u-textLeft">
    
                    <figure class="u-inline-block">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/cemzaFooter.png" alt="Cemza">
                    </figure>
    
                    <p class="u-inline-block u-floatRight">
                        &copy; 2018. Todos los derechos reservados. Diseño y desarrollo por <a href="http://gom360.mx/" target="_blank">GO multimedios.</a> 
                    </p>
                </div>
            </div>
        </footer>



        <?php wp_footer(); ?>
    </body>

</html>