<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Enermar. MARINE FUEL |</title>
        <link rel="shortcut icon" href="favicon.png" />
        <link href="css/reset.css" rel="stylesheet" type="text/css">
        <link href="css/fonts.css" rel="stylesheet" type="text/css">        
        <link href="css/utilidades.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/animations.css" rel="stylesheet" type="text/css">
        <link href="css/rhinoslider-1.05.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="source/jquery.fancybox.css" media="screen" />
        
        <!-- HTML 5 for older browsers -->
		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="js/html5.js"></script>
		<![endif]-->
		
        <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.js"></script>
        <script type="text/javascript" src="source/jquery.fancybox.js"></script> 
        <script type="text/javascript" src="js/jquery.anystretch.min.js"></script>
        <script type="text/javascript" src="js/rhinoslider-1.05.min.js"></script>
        <script type="text/javascript" src="js/jquery.simpleWeather.min.js"></script>  
        <script type="text/javascript" src="js/index.js"></script>
        <script type="text/javascript" src="js/correo.js"></script>  
        
        <?php
			$precio = 0;
			$estado = "Abierto";
			$j = 0;
			
			$fp = fopen ("../actualizacionInformacion.csv","r");
					
			while ($data = fgetcsv ($fp, 1000, ";")) 
			{
				if($j == 0)	
					$precio = $data[0];
				else if($j == 1)	
					$estado = $data[0];
				
				$j++;
			}
			fclose($fp);
		?> 
    </head>

    <body>
    	<header class="Header u-size100-p u-imagenFondo u-textCenter">        	
            <h1 class="Header-Logo u-inline-block slideDown"><span class="u-ocultar">Enermar. MARINE FUEL |</span></h1>
                
            <h2 class="Header-Title u-size-center slideUp u-textCenter">
                Exceptionally
                <strong>HIGH QUALITY
                MGO PRODUCTS</strong>
           		<span>365 days a year</span>
            </h2>
        	
            <div class="Header-Barra u-size100-p fadeIn2">
            	<div class="Header-Center u-size-center u-textLeft">
                	<p class="Header-colMarine u-inline-block">
                    	<strong class="Header-TitleCol">MARINE DIESEL</strong>
                        CURRENT PRICE:
                        <span class="Header-Azul">$ <?php echo $precio; ?></span>
                    </p>
                    
                    <p class="Header-colClima u-inline-block">
                    	<span class="Header-icoClima u-floatLeft"></span>
                    	<strong class="Header-TitleCol">Carmen</strong><br />
                        <span id="Header-Estado"></span>
                        <span id="Header-Temperatura" class="Header-Azul"><img src="images/loading.gif" width="50px" /></span>
                    </p>
                    
                    <p class="Header-colPuesto u-floatRight">
                    	<strong class="Header-TitleCol">ESTADO DEL</strong>
                        PUERTO:
                        <span class="Header-Azul"><?php echo $estado; ?></span>
                    </p>
            	</div>
            </div>
        </header>
		
     	<section class="contentMenu u-size100-p u-imagenFondo">        	               
                <nav class="MainMenu u-size-center">
                	<figure class="contentMenu-Logo u-inline-block">
                    	<img src="images/logoMenu.png" alt="Logo" />
                    </figure>
                    
                	<ul class="MainMenu-List u-inline-block u-mayuscula">
                    	<li class="MainMenu-Item u-inline-block"><a id="mnHome" class="u-inline-block">Home</a></li>
                        <li class="MainMenu-Item u-inline-block"><a id="mnAbout" class="u-inline-block">About Us</a></li>
                        <li class="MainMenu-Item u-inline-block"><a id="mnWeOffer" class="u-inline-block">We offer</a></li>
                        <li class="MainMenu-Item u-sinMargen u-inline-block"><a id="mnContacto" class="u-inline-block">Contact us</a></li>
                    </ul>
                    <a href="../" class="contentMenu-Idioma u-redondeadoTotal u-floatRight u-inline-block"></a>
                </nav>                       
        </section>        
       
        <section class="About u-size100-p u-imagenFondo">
        	<figure class="About-Img u-desaparecer aparecerLeft"><img src="images/acercaDe.png" alt="Acerca de" /></figure>
            
        	<article class="About-Center u-size-center u-desaparecer aparecerUp">
            	<h3 class="About-Title u-textCenter">ABOUT <strong>US</strong></h3>
                               
                <p class="About-Info"><strong class="azul">In Enermar</strong>, we are specialized in supplying Marine Diesel for vessels and oil rigs with a highly trained staff committed to always give an outstanding service for the operation that your business demands in a daily basis.</p>
                <p class="About-Info"><strong>Our commitment</strong> is to optimize the purchase of <strong>fuel, lubricants and water</strong> to <strong>any type of vessels</strong> and <strong>oil rigs</strong> in the <strong>Gulf of Mexico</strong> in the same way we have positioned ourselves in the market characterized by <strong>always keeping the best quality in our products</strong> and service <strong>locally and offshore.</strong></p>                
      			
                <div class="About-GrupoCemza fadeIn2"> 
               		<figure class="u-inline-block">
                    	<a href="grupoCemza.html" class="fancyboxGrupoCemza fancybox.iframe">
                    		<img class="About-ImgCemza u-efecto" src="images/cemza.png" alt="Cemza" />
                    	</a>
                    </figure>
                    
                    <p class="About-TextCemza u-inline-block">
                    	Enermar is part of CEMZA Corporate. A group of companies that provides services and supplies for the offshore industry.
                    </p>   
                </div> 
            </article>
        </section>
        
        <section class="TextAbout u-size100-p u-imagenFondo">
        	<article class="TextAbout-Center u-textCenter u-size-center u-desaparecer aparecerFade2">
            	<p>We have achieved our <strong>experience from more than 40 years</strong> for being part of a well-known group in the <strong>maritime industry in the Gulf of Mexico.</strong></p>
      		</article>
        </section> 
        
        <section class="WeOffer u-size100-p" data-stretch="images/ofrecemos/fondo1.jpg">
        	<article class="WeOffer-Center u-size-center">
            	<ul class="WeOffer-List u-textCenter u-desaparecer aparecerUp">
                	<li class="u-inline-block"><a class="WeOffer-Item activo u-inline-block"><span class="WeOffer-Ico u-redondeadoTotal u-inline-block u-efecto"></span>Marine Fuel Storage</a></li>
                    <li class="u-inline-block"><a class="WeOffer-Item u-inline-block"><span class="WeOffer-Ico WeOffer-Ico--Transportacion u-redondeadoTotal u-inline-block u-efecto"></span>Transportation</a></li>
                    <li class="u-inline-block"><a class="WeOffer-Item u-inline-block"><span class="WeOffer-Ico WeOffer-Ico--Distribucion u-redondeadoTotal u-inline-block u-efecto"></span>Distribution</a></li>
                    <li class="u-inline-block"><a class="WeOffer-Item u-inline-block u-sinMargen"><span class="WeOffer-Ico WeOffer-Ico--Embarcacion u-redondeadoTotal u-inline-block u-efecto"></span>Bunkering</a></li>
                </ul>
                
                <div class="WeOffer-ContentSlides u-textCenter u-desaparecer aparecerFade2">
                	<div class="WeOffer-ColSlider u-inline-block">
                    	<h4 class="WeOffer-Title">Quality</h4>
                        
                        <div class="WeOffer-Slider">
                        	<ul id="sliderCalidad">
                            	<li><img src="images/calidad/slider1.png" alt="Slider" /><div class="rhino-caption">Quality certification by Qualli Pemex.</div></li>
                            	<li><img src="images/calidad/slider2.png" alt="Slider" /><div class="rhino-caption rhino-caption--Slider2">Diesel dispatchers certified by The Law of Federal <br />Protection to the Consumer (Profeco).</div></li>
                            	<li><img src="images/calidad/slider3.png" alt="Slider" /><div class="rhino-caption rhino-caption--Slider3">All our dispatchers and tank filters are under constant calibration and check up for delivering the product full <br />and free of any stain or debris.</div></li>
                            	<li><img src="images/calidad/slider4.png" alt="Slider" /><div class="rhino-caption">Flashpoint Minimum 60º C</div></li>
                            	<li><img src="images/calidad/slider5.png" alt="Slider" /><div class="rhino-caption">ISO 8217:2005 / ISO 8217:2010</div></li>
                            	<li><img src="images/calidad/slider6.png" alt="Slider" /><div class="rhino-caption">Low Sulphur</div></li>
                            	<li><img src="images/calidad/slider7.png" alt="Slider" /><div class="rhino-caption">Electronic volumetric control</div></li>
                            	<li><img src="images/calidad/slider8.png" alt="Slider" /><div class="rhino-caption">Digital Counters</div></li>
                            	<li><img src="images/calidad/slider9.png" alt="Slider" /><div class="rhino-caption">Security System in all facilities</div></li>
                            </ul>       
                            <div class="WeOffer-Barra"></div>                 
                        </div>
                    </div>
                    
					<div class="WeOffer-ColSlider u-inline-block u-sinMargen">
                    	<h4 class="WeOffer-Title">Services</h4>
                        
                        <div class="WeOffer-Slider">
                        	<ul id="sliderServicios">
                            	<li><img src="images/servicios/slider1.png" alt="Slider" /><div class="rhino-caption">Being your main reliable business partner.</div></li>
                                <li><img src="images/servicios/slider2.png" alt="Slider" /><div class="rhino-caption">24 hour pump service, 365 days a year.</div></li>
                                <li><img src="images/servicios/slider3.png" alt="Slider" /><div class="rhino-caption">Customer Rep 24 hours  /  After Sales follow-up.</div></li>
                                <li><img src="images/servicios/slider4.png" alt="Slider" /><div class="rhino-caption">Operations maneuvers.</div></li>
                                <li><img src="images/servicios/slider5.png" alt="Slider" /><div class="rhino-caption">High capacity of distribution and supply of vessels and oil <br />rigs 3 times greater than our storage capacity.</div></li>
                                <li><img src="images/servicios/slider6.png" alt="Slider" /><div class="rhino-caption">Supply of oils, lubricants, water and others.</div></li>
                                <li><img src="images/servicios/slider7.png" alt="Slider" /><div class="rhino-caption">Direct delivery to your vessel.</div></li>
                                <li><img src="images/servicios/slider8.png" alt="Slider" /><div class="rhino-caption">Free Access to our dock</div></li>
                            </ul>
                            <div class="WeOffer-Barra"></div>
                        </div>
                    </div>
                                    
                </div>
            
            
            </article>
        </section>
       
        <section class="EstamosServirle u-size100-p u-imagenFondo">
        	<article class="EstamosServirle-Center u-size-center">
            	<h6 class="EstamosServirle-Title u-mayuscula u-textCenter u-desaparecer aparecerDown">
                	<strong>CONTACT</strong> US!
                </h6>
                
                <p class="EstamosServirle-Info u-textJustify u-size-center u-desaparecer aparecerUp">Our executives will provide service and advice to your business, fast, punctual and professional. For more information please contact:</p>
                
                <div class="EstamosServirle-DatosContacto u-inline-block u-desaparecer aparecerRight">
                	<p class="EstamosServirle-DatosContacto-Atencion">Attention 24 hours a day</p>
                    <p class="EstamosServirle-DatosContacto-Hora"><strong>01 938 11 216 00</strong></p>
                    
                    <div class="EstamosServirle-Ubicacion">
                    	<h6 class="EstamosServirle-Ubicacion-Title"><strong>Ciudad del Carmen</strong></h6>
                        <ul class="EstamosServirle-Ubicacion-List">
                        	<li>
                            	Av. 4 Oriente, 1ra Dársena No. 6,<br />
								Col. Puerto Industrial Pesquero Laguna Azul,<br />
								Cd. del Carmen Campeche, México. C.P. 24140
                             </li> 
                             <li>
                                <a href="mailto:ventas@enermar.com.mx">ventas@enermar.com.mx</a>
                             </li>
                        </ul>
                    </div>                
                </div>
                
                <form name="form1" id="form-contact" class="EstamosServirle-Formulario u-inline-block u-floatRight  u-desaparecer aparecerLeft" method="post" action="">
                	<a class="EstamosServirle-Formulario-btnOnline u-boton u-inline-block u-floatRight" href="/atencionEnLinea//client.php?locale=en" target="_blank" onclick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 &amp;&amp; window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('/atencionEnLinea//client.php?locale=en&amp;url='+escape(document.location.href)+'&amp;referrer='+escape(document.referrer), 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;">
                    	<span>@</span> ONLINE ASSISTANCE                  
                    </a>
                    
                    <input type="text" name="txtName" id="txtName" autocomplete="off" placeholder="Name" value="Name" onfocus="if(this.value=='Name')this.value='';">
                    <input type="email" name="txtEmail" id="txtEmail" autocomplete="off" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">	
                    <input type="text" name="txtSubject" id="txtSubject" autocomplete="off" placeholder="Subject" value="Subject" onfocus="if(this.value=='Subject')this.value='';">
                    <textarea name="txtMessage" id="txtMessage" placeholder="Message" onfocus="if(this.value=='Message')this.value='';">Message</textarea>                        
                    <a id="btnSend" class="u-boton u-efecto u-textCenter u-mayuscula">Send</a>	 
                	<p class="EstamosServirle-Aviso u-textCenter fadeIn2"><strong class='u-mayuscula u-inline-block'>¡Muchas Gracias!.</strong><br> Su mensaje fue enviado con éxito.</p>                	    	
    	    	</form>
                
                <footer class="Footer u-textCenter">
                    &copy;  2015. Enermar Marine Fuel. All rights reserved. Design and development by <a href="http://www.gomultimedios.com/" target="_blank">GO multimedios.</a>        
                </footer>
            </article>
        </section>

        <!--<section class="Empresas u-size100-p u-imagenFondo">
			<figure class="Empresas-Logo u-textCenter u-desaparecer aparecerDown">
            	<img src="images/empresas/cemza.png" alt="Cemza" />
            </figure>  
            
            <p class="Empresas-Info u-textCenter u-letter-spacing u-desaparecer aparecerFade2">
                  Enermar is part of the <strong>Corporate CEMZA.</strong> A group of companies that provide services and <br />supplies for the oil and shipping industry.
            </p>
            
            <figure class="Empresa-List u-size-center u-desaparecer aparecerFade2">
            	<a><img class="u-efecto" src="images/empresas/marinsa.png" alt="Marinsa" /></a>
                <a><img class="u-efecto" id="imgPetronaval" src="images/empresas/petronaval.png" alt="Petronaval" /></a>
                <a><img class="u-efecto" src="images/empresas/bistro.png" alt="Bistro" /></a>
                <a><img class="u-efecto" id="imgVenus"  src="images/empresas/venus.png" alt="Venus" /></a>
                <a><img class="u-efecto" src="images/empresas/enemar.png" alt="Enemar" /></a>
                <a><img class="u-efecto" id="imgPresco" src="images/empresas/presco.png" alt="Presco" /></a>
                <a><img class="u-efecto" src="images/empresas/varaderos.png" alt="Varaderos" /></a>
                <a><img class="u-efecto" id="imgMartel" src="images/empresas/martel.png" alt="martel" /></a>
            </figure>   
            	
            <footer class="Footer u-textCenter">
         		&copy;  2015. Enermar Marine Fuel. All rights reserved. Design and development by <a href="http://www.gomultimedios.com/" target="_blank">GO multimedios.</a>        
        	</footer>        
        </section> -->                  
    </body>
</html>
