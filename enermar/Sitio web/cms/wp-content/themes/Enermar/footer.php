 
       
        <footer class="Footer u-size100-p">
            <div class="Contacto u-imagenFondoCover u-size100-p u-textCenter">
            	<div class="Contacto-icoContacto u-positionAbsolute u-redondeadoTotal"></div>
                
                <div class="Contacto-Center u-inline-block">
                    <h6 class="Contacto-Title u-mayuscula u-inline-block">
                        Contacto
                    </h6>

                    <div class="u-textLeft">
                    
                    	<div class="Contacto-Datos u-inline-block">
                        	<ul class="Contacto-List">
                            	<li class="Contacto-icoBaseList">
                                	<p class="Contacto-TitleList">Base</p>
                                    <p>
                                    	Av. 4 Oriente, 1ra Dársena No. 6,<br />
                                        Col. Puerto Industrial Pesquero Laguna Azul,<br />
                                        Cd. del Carmen Campeche, México. C.P. 24140.
                                    </p>
                                </li>
                                <li class="Contacto-icoTelefonoList">
                                	<p class="Contacto-TitleList">Teléfono</p>
                                    <p>
                                    	(938) 1428138Móvil.<br />
                                        (938) 138 7641
                                    </p>
                                </li>
                                <li class="Contacto-icoEmailList">
                                	<p class="Contacto-TitleList">Email</p>
                                    <p><a href="mailto:ventas@enermar.com.mx">ventas@enermar.com.mx</a></p>
                                </li>
                            </ul>
                            
                        </div>
                        
                        <form class="Contacto-Formulario u-inline-block u-floatRight" name="Contacto-FmFormulario" id="Contacto-FmFormulario" method="post" action="">                	
                    
                            <input class="u-box-sizing" name="txtNombre" id="txtNombre" placeholder="Nombre" value="Nombre" onfocus="if(this.value=='Nombre')this.value='';">
                                
                            <input class="u-box-sizing" name="txtEmail" id="txtEmail" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">
                                
                            <input class="u-box-sizing" name="txtMensaje" id="txtMensaje" placeholder="Comentario" value="Comentario" onfocus="if(this.value=='Comentario')this.value='';">   
                                
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