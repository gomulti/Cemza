<?php

 //$destino= "juanantonio.martinez2003@gmail.com";
 $destino= "sales@enermar.com.mx";

 $nombre = $_POST["txtNombre"];
 $email = $_POST["txtEmail"];
 $comentario = $_POST["txtComentario"];
 
 $headers = "From: Enermar";
 $headers .= "<".$email.">\r\n";
 $headers .= "Reply-To: ".$email."\nContent-Type: text/html; charset=iso-8859-1"; 
	
 $message = "<p><b>Nombre: </b>".$nombre."</p><p><b>Email:</b> ".$email."</p><p><b>Comentario: </b>".$comentario."</p>";
	 
 $ban = mail($destino,"Correo de contacto - Sitio de Enermar", $message, $headers);

 mail("costumerservice@enermar.com.mx","Correo de contacto - Sitio de Enermar", $message, $headers);

 if($ban)
	 echo "<strong class='u-mayuscula u-inline-block'>¡Muchas Gracias!.</strong><br /> Su mensaje fue enviado con éxito.";
 else
	 echo "<strong class='u-mayuscula u-inline-block'>¡Lo sentimos!.</strong><br /> Su mensaje no puedo ser enviado";
?>