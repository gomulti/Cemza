<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ENERMAR | Insertar nuevo precio</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
a {
	text-decoration:none;
}
a:hover {
	text-decoration:underline;

}
body {
	background-color: #00344d;
	}
div {
	text-decoration: none;
}
#formprice {
	height: 438px;
	width: 300px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #FFF;
	background-image: url(images/actualizar-precio.jpg);
	background-repeat: no-repeat;
	position: absolute; 
    top: 50%; 
    left: 50%;
	margin-top: -180px; 
    margin-left: -130px; 
}
#precioactual {
	padding-top: 142px;
	padding-left: 35px;
	font-size: 16px;
}
#formulario {
	padding-top: 65px;
	padding-right: 30px;
	padding-left: 30px;
	font-size: 14px;
	font-weight: bold;
}
.instrucciones {
	font-size: 11px;
	font-style: italic;
	font-weight: normal;
	font-family: Arial, Helvetica, sans-serif;
	margin-top: 5px;
	margin-bottom: 10px;
}
</style>
</head>

<body>
<div id="formprice">
<div id="precioactual">
<?php
$conexion = mysql_connect ("localhost", "enermar_gas", "ko0=u30zxG+z");
mysql_select_db("enermar_website", $conexion);
$registros = mysql_query("select * from precio", $conexion);

while ($fila = mysql_fetch_array($registros)) {
	echo "Precio Actual $ ", $fila["actual"];
}
mysql_close($conexion);
?>

</div>
<div id="formulario">
  <?php
if (!$_POST) {
	?>
  
  <form method="post" action="nuevoprecio.php">
    <p>Escriba nuevo precio: 
    </p>
    <p class="instrucciones">(solo números y decimales, sin símbolo de pesos "$" ni otros caracteres)</p>
    <p><input name="actual" type="text" size="20" />
    <input type="submit" value="Enviar" />
    </p>
	
	</form>
    <?php 
}else{
	$ssql = "UPDATE precio SET actual='".$_POST["actual"]."'";
	$conexion = mysql_connect ("localhost", "enermar_gas", "ko0=u30zxG+z");
mysql_select_db("enermar_website", $conexion);
	if (mysql_query($ssql,$conexion)){
		echo "<span class='confirma'>¡Los datos se han actualizado correctamente!</span><br /><br />";
		echo "<a href='index.php' class='enlace'>Ir al sitio >></a>";
	}else{
		echo "ERROR. No se han podido actualizar los datos" ;
	}	
}
?>
</div>
</div>
</body>
</html>