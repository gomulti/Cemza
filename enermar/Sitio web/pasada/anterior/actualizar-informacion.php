<?php
 if (!isset($_SESSION)) 
 {
   session_start();
 }
 
 $msj = "";
 
 if(!empty($_POST['txtPrecio']))
 { 
 	$lista = array 
	(
    	array($_POST['txtPrecio']),
    	array($_POST['rdEstado'])
	);

	$fp = fopen('actualizacionInformacion.csv', 'w');
	
	foreach ($lista as $campos) {
		fputcsv($fp, $campos);
	}

	fclose($fp);
	
	$msj = "Los cambios fueron guardados correctamente";
 }
?>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Actualización de la información-Enermar. MARINE FUEL |</title>
		<link rel="shortcut icon" href="favicon.png" />
        <link href="css/reset.css" rel="stylesheet" type="text/css">
        <link href="css/fonts.css" rel="stylesheet" type="text/css" />
        <link href="css/utilidades.css" rel="stylesheet" type="text/css" />
		<link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/animations.css" rel="stylesheet" type="text/css" />

		<!-- HTML 5 for older browsers -->
			<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
			<!--[if lt IE 9]>
				<script src="js/html5.js"></script>
			<![endif]-->
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
		<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.js"></script>  
        <script type="text/javascript" src="js/actualizar.js"></script>
	</head>

	<body class="Login-Body">
		<section id="contentLogin" class="size100-p">
  			<article class="Login u-redondeado u-textCenter slideDown" id="login">         	
                <h1 class="Login-Logo"><span class="u-ocultar">Enermar. MARINE FUEL |</span><a class="u-inline-block" href="index.php"></a></h1>
                <h2 class="Login-Title">
                	Actualización de la información
                </h2>
                
   				<form name="form-login" id="form-login" class="Login-Form u-inline-block" method="post" action="">
                	<label for="txtPrecio" class="Login-Etiqueta">
                    	Precio del diesel marina:
                    </label>
    				<input type="text" name="txtPrecio" id="txtPrecio" class="text" value="<?php echo $precio; ?>" required>
    				<label for="txtUsuario" class="Login-Etiqueta">
                    	Estado del puerto:
                    </label>
                    
                    <div class="Login-ItemRadio u-inline-block">
                    	<input type="radio" name="rdEstado" id="rdEstado1" value="Abierto" <?php if(strcmp($estado,"Abierto")==0) { ?> checked<?php }?>> <label class="ajusteRadio" for="rdEstado1">Abierto</label>
                    </div>
                    <div class="Login-ItemRadio u-inline-block">
                    	<input type="radio" name="rdEstado" id="rdEstado2" value="Cerrado" <?php if(strcmp($estado,"Cerrado")==0) { ?> checked<?php }?>> <label class="ajusteRadio" for="rdEstado2">Cerrado</label>
                    </div>
                                        
    				<a id="btnGuardar" class="Login-Boton u-boton u-boton--azul u-mayuscula u-efecto u-textCenter">Guardar cambios</a>    	
                    			
					<?php 
                    if(!empty($_POST['txtPrecio']))
                    {
                        if(!empty($msj))
                        {	
                    ?>
                    <p class="Login-Msj fadeIn2 u-textcenter">	
                        <strong><?php echo $msj;?></strong>	
                    </p>
                    
                    <script type="text/javascript">
						setTimeout(function()
						{
							$(".Login-Msj").addClass("u-ocultar");
						},5000);
					</script>
                     <?php
                        }
                    }
                    ?>     		  		  
                </form>
			</article>
		</section> 

        <footer class="FooterLogin u-size100-p fadeIn2">
        	<p class="FooterLogin-Center">&copy;  2015. Enermar Marine Fuel. Todos los derechos reservados. Diseño y desarrollo por <a href="http://www.gomultimedios.com/" target="_blank">GO multimedios.</a></p>
        </footer> 
	</body>
</html>
