
<?php
$conexion = mysql_connect ("localhost", "prescomx_enermar", "ko0=u30zxG+z");
mysql_select_db("prescomx_enermar", $conexion);
$registros = mysql_query("select * from precio", $conexion);

while ($fila = mysql_fetch_array($registros)) {
	echo "$ ", $fila["actual"];
}
mysql_close($conexion);
?>
