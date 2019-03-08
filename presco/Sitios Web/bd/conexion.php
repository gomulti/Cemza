<?php
function connect_to_SMBD()
{
 	$servidor="sql5c75c.carrierzone.com";
 	$usuario="prescomx97661554";
 	$contrasenia="qweASD123*";
	
 	$conection = mysqli_connect("$servidor","$usuario","$contrasenia","presco_prescomx97661554");
	
 	if(!$conection)
  		die ('Conexión no hecha: '.mysqli_error());
	 
 	return $conection;
}

function bd_selection($conection)
{	
  	/*$bd = 'imartel';

  	if(!mysql_select_db("$bd",$conection))
   		die ('El servidor no esta disponible en este momento, Intentelo mas tarde:  '.mysql_error());*/
}

function close_DB($conection)
{
 	if(!mysqli_close($conection))
  		die("conexion a la Base de Datos Perdida. ".mysql_error());
}

?>