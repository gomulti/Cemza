<!-- Manual de PHP de WebEstilo.com --> 
<html> 
<head> 
   <title>Ejemplo de PHP</title> 
</head> 
<body> 
<?php 
function Conectarse() 
{ 
   if (!($link=mysql_connect("localhost","nousmedi_enerm","3n3rm4r"))) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   if (!mysql_select_db("nousmedi_enermar",$link)) 
   { 
      echo "Error seleccionando la base de datos."; 
      exit(); 
   } 
   return $link; 
} 

$link=Conectarse(); 
echo "Conexión con la base de datos conseguida.<br>"; 

mysql_close($link); //cierra la conexion 
?> 
</body> 
</html>