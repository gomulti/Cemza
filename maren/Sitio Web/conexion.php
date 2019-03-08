<?php


$enlace = mysqli_connect('localhost', 'marenenerg853494', 'M@ren2018','	marenenerg853494');
if (!$enlace) {
    die('No pudo conectarse: ' . mysqli_error());
}

/*$sql = 'CREATE DATABASE mi_bd';
if (mysql_query($sql, $enlace)) {
    echo "La base de datos mi_bd se creó correctamente\n";
} else {
    echo 'Error al crear la base de datos: ' . mysql_error() . "\n";
}*/
?>