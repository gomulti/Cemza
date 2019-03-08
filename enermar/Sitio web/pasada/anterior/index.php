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
        
        <script type="text/javascript">
			$(document).ready(function() 
			{
			  	$.simpleWeather(
				{
					location: 'Ciudad del Carmen, CM, MX',
					woeid: '',
					unit: 'c',
					success: function(weather) 
					{										
						$(".Header-icoClima").addClass("icon-"+weather.code);
						$("#Header-Temperatura").html(weather.temp+'&deg;'+weather.units.temp);
						//$("#Header-Estado").html(weather.currently+"");
					},
					error: function(error) 
					{
				  		
					}
  				});
			});
		</script> 
        
        <?php
			$precio = 0;
			$estado = "Abierto";
			$j = 0;
			
			$fp = fopen ("actualizacionInformacion.csv","r");
					
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
                Excepcional<br />
                <strong>ALTA CALIDAD EN<br />
                PRODUCTOS MGO</strong>
           		<span>los 365 días del año</span>                
            </h2>
        	
            <div class="Header-Barra u-size100-p fadeIn2">
            	<div class="Header-Center u-size-center u-textLeft">
                	<p class="Header-colMarine u-inline-block">
                    	<strong class="Header-TitleCol">DIESEL MARINA</strong>
                        PRECIO ACTUAL:
                        <span class="Header-Azul">$ <?php echo $precio;?></span>
                    </p>
                    
                    <p class="Header-colClima u-inline-block">
                    	<span class="Header-icoClima u-floatLeft"></span>
                    	<strong class="Header-TitleCol">Carmen</strong><br />
                        <span id="Header-Estado" data-traducir="texto1"></span>
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
                    	<li class="MainMenu-Item u-inline-block"><a id="mnHome" class="u-inline-block">Inicio</a></li>
                        <li class="MainMenu-Item u-inline-block"><a id="mnAbout" class="u-inline-block">Acerca de nosotros</a></li>
                        <li class="MainMenu-Item u-inline-block"><a id="mnWeOffer" class="u-inline-block">Ofrecemos</a></li>
                        <li class="MainMenu-Item u-sinMargen u-inline-block"><a id="mnContacto" class="u-inline-block">Contáctenos</a></li>
                    </ul>
                    <a href="en" class="contentMenu-Idioma u-redondeadoTotal u-floatRight u-inline-block"></a>
                </nav>                       
        </section>        
       
        <section class="About u-size100-p u-imagenFondo">
        	<figure class="About-Img u-desaparecer aparecerLeft"><img src="images/acercaDe.png" alt="Acerca de" /></figure>
            
        	<article class="About-Center u-size-center u-desaparecer aparecerUp">
            	<h3 class="About-Title u-textCenter u-mayuscula">Acerca de <strong>nosotros</strong></h3>
                               
                <p class="About-Info"><strong class="azul">En Enermar</strong>, estamos especializados en el suministro de Diesel Marino para los buques y plataformas petroleras, con un personal altamente capacitado, comprometido a dar siempre un servicio de excelencia para las operaciones que exige su empresa diariamente.</p>
                <p class="About-Info"><strong>Nuestro compromiso</strong> es el de optimizar la compra de <strong>combustible, lubricantes y agua</strong> para <strong>todo tipo de embarcaciones</strong> y <strong>plataformas petroleras</strong> en el <strong>Golfo de México</strong>, de la misma manera nos hemos posicionado en el mercado que se caracteriza por <strong>mantener siempre la mejor calidad en nuestros productos</strong> y servicios a nivel <strong>local y en el mar.</strong></p>                
      		
            	<div class="About-GrupoCemza fadeIn2"> 
               		<figure class="u-inline-block">
                    	<a href="grupoCemza.html" class="fancyboxGrupoCemza fancybox.iframe">
                    		<img class="About-ImgCemza u-efecto" src="images/cemza.png" alt="Cemza" />
                    	</a>
                    </figure>
                    
                    <p class="About-TextCemza u-inline-block">
                    	Enermar es parte del corporativo CEMZA. Un grupo de empresas que provee servicios y suministros para la industria offshore.
                    </p>   
                </div> 
                
            </article>
        </section>
        
        <section class="TextAbout u-size100-p u-imagenFondo">
        	<article class="TextAbout-Center u-textCenter u-size-center u-desaparecer aparecerFade2">
      			<p>Hemos alcanzado nuestra <strong>experiencia de más de 40 años</strong> por ser parte de un grupo muy conocido en la <strong>industria marítima en el Golfo de México.</strong></p>
            </article>
        </section> 
        
        <section class="WeOffer u-size100-p" data-stretch="images/ofrecemos/fondo1.jpg">
        	<article class="WeOffer-Center u-size-center">
            	<ul class="WeOffer-List u-textCenter u-desaparecer aparecerUp">
                	<li class="u-inline-block"><a class="WeOffer-Item activo u-inline-block"><span class="WeOffer-Ico u-redondeadoTotal u-inline-block u-efecto"></span>Almacenamiento de Diesel marino</a></li>
                    <li class="u-inline-block"><a class="WeOffer-Item u-inline-block"><span class="WeOffer-Ico WeOffer-Ico--Transportacion u-redondeadoTotal u-inline-block u-efecto"></span>Transportación</a></li>
                    <li class="u-inline-block"><a class="WeOffer-Item u-inline-block"><span class="WeOffer-Ico WeOffer-Ico--Distribucion u-redondeadoTotal u-inline-block u-efecto"></span>Distribución</a></li>
                    <li class="u-inline-block"><a class="WeOffer-Item u-inline-block u-sinMargen"><span class="WeOffer-Ico WeOffer-Ico--Embarcacion u-redondeadoTotal u-inline-block u-efecto"></span>Bunkering</a></li>
                </ul>
                
                <div class="WeOffer-ContentSlides u-textCenter u-desaparecer aparecerFade2">
                	<div class="WeOffer-ColSlider u-inline-block">
                    	<h4 class="WeOffer-Title">Calidad</h4>
                        
                        <div class="WeOffer-Slider">
                        	<ul id="sliderCalidad">
                            	<li><img src="images/calidad/slider1.png" alt="Slider" /><div class="rhino-caption">Certificación de calidad por Qualli Pemex.</div></li>
                            	<li><img src="images/calidad/slider2.png" alt="Slider" /><div class="rhino-caption rhino-caption--Slider2">Despachadores Diesel certificados por la Ley de <br />Protección Federal al Consumidor (Profeco).</div></li>
                            	<li><img src="images/calidad/slider3.png" alt="Slider" /><div class="rhino-caption rhino-caption--Slider3">Todos nuestros despachadores y filtros de tanques están bajo constante calibración y verificación para entregar<br /> el producto completo y libre de cualquier mancha o suciedad.</div></li>
                            	<li><img src="images/calidad/slider4.png" alt="Slider" /><div class="rhino-caption">Flashpoint mínimo 60º C</div></li>
                            	<li><img src="images/calidad/slider5.png" alt="Slider" /><div class="rhino-caption">ISO 8217:2005 / ISO 8217:2010</div></li>
                            	<li><img src="images/calidad/slider6.png" alt="Slider" /><div class="rhino-caption">Bajo Sulfuro</div></li>
                            	<li><img src="images/calidad/slider7.png" alt="Slider" /><div class="rhino-caption">Control volumétrico electrónico</div></li>
                            	<li><img src="images/calidad/slider8.png" alt="Slider" /><div class="rhino-caption">Contadores digitales</div></li>
                            	<li><img src="images/calidad/slider9.png" alt="Slider" /><div class="rhino-caption">Sistema de seguridad en todas las instalaciones</div></li>
                            </ul>       
                            <div class="WeOffer-Barra"></div>                 
                        </div>
                    </div>
                    
					<div class="WeOffer-ColSlider u-inline-block u-sinMargen">
                    	<h4 class="WeOffer-Title">Servicios</h4>
                        
                        <div class="WeOffer-Slider">
                        	<ul id="sliderServicios">
                            	<li><img src="images/servicios/slider1.png" alt="Slider" /><div class="rhino-caption">Somos socio comercial más confiable.</div></li>
                                <li><img src="images/servicios/slider2.png" alt="Slider" /><div class="rhino-caption">Servicio de bomba 24 horas del día, los 365 días del año.</div></li>
                                <li><img src="images/servicios/slider3.png" alt="Slider" /><div class="rhino-caption">Servicio a clientes 24 horas / Seguimiento post-venta.</div></li>
                                <li><img src="images/servicios/slider4.png" alt="Slider" /><div class="rhino-caption">Maniobras operacionales.</div></li>
                                <li><img src="images/servicios/slider5.png" alt="Slider" /><div class="rhino-caption rhino-caption--Slider5">Alta capacidad de distribución y suministro de embarcaciones y plataformas petroleras 3 veces mayor <br />que nuestra capacidad de almacenamiento.</div></li>
                                <li><img src="images/servicios/slider6.png" alt="Slider" /><div class="rhino-caption">Suministro de aceites, lubricantes, agua y otros.</div></li>
                                <li><img src="images/servicios/slider7.png" alt="Slider" /><div class="rhino-caption">Entrega directa a su embarcación.</div></li>
                                <li><img src="images/servicios/slider8.png" alt="Slider" /><div class="rhino-caption">Acceso gratuito a nuestro muelle</div></li>
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
                	<strong>CONTÁCTENOS</strong>
                </h6>
                
                <p class="EstamosServirle-Info u-textJustify u-size-center u-desaparecer aparecerUp">Nuestros ejecutivos proporcionarán servicio y asesoramiento a su negocio, rápido, puntual y profesional. Para obtener más información, póngase en contacto:</p>
                
                <div class="EstamosServirle-DatosContacto u-inline-block u-desaparecer aparecerRight">
                	<p class="EstamosServirle-DatosContacto-Atencion">Atención las 24 horas del día.</p>
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
                	<a class="EstamosServirle-Formulario-btnOnline u-boton u-inline-block u-floatRight" href="/atencionEnLinea//client.php?locale=sp" target="_blank" onclick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 &amp;&amp; window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('/atencionEnLinea//client.php?locale=sp&amp;url='+escape(document.location.href)+'&amp;referrer='+escape(document.referrer), 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;">
                    	<span>@</span> ATENCIÓN EN LÍNEA                  
                    </a>
                    
                    <input type="text" name="txtNombre" id="txtNombre" autocomplete="off" placeholder="Nombre" value="Nombre" onfocus="if(this.value=='Nombre')this.value='';">
                    <input type="email" name="txtEmail" id="txtEmail" autocomplete="off" placeholder="Email" value="Email" onfocus="if(this.value=='Email')this.value='';">	
                    <input type="text" name="txtAsunto" id="txtAsunto" autocomplete="off" placeholder="Asunto" value="Asunto" onfocus="if(this.value=='Asunto')this.value='';">
                    <textarea name="txtMensaje" id="txtMensaje" placeholder="Mensaje" onfocus="if(this.value=='Mensaje')this.value='';">Mensaje</textarea>                        
                    <a id="btnEnviar" class="u-boton u-efecto u-textCenter u-mayuscula">Enviar</a>	 
                	<p class="EstamosServirle-Aviso u-textCenter fadeIn2"><strong class='u-mayuscula u-inline-block'>¡Muchas Gracias!.</strong><br> Su mensaje fue enviado con éxito.</p>                	    	
    	    	</form>
                
                <footer class="Footer u-textCenter">
         			&copy;  2015. Enermar Marine Fuel. Todos los derechos reservados.  Diseño y desarrollo por <a href="http://www.gomultimedios.com/" target="_blank">GO multimedios.</a>        
        		</footer> 
            </article>
        </section>

        <!--<section class="Empresas u-size100-p u-imagenFondo">
			<figure class="Empresas-Logo u-textCenter u-desaparecer aparecerDown">
            	<img src="images/empresas/cemza.png" alt="Cemza" />
            </figure>  
            
            <p class="Empresas-Info u-textCenter u-letter-spacing u-desaparecer aparecerFade2">
                  Enermar es parte del <strong>Corporativo CEMZA.</strong> Un grupo de empresas que proveen de servicios e <br />insumos para la industria petrolera y marítima.
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
            	
                   
        </section>  -->                 
    </body>
</html>
