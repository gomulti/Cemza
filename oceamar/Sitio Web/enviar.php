<?php

 //$destino= "juanantonio.martinez2003@gmail.com";
 $destino= "ventas@oceamar.com.mx";

 $nombre = $_POST["txtNombre"];
 $email = $_POST["txtEmail"];
 $comentario = $_POST["txtComentario"];
 
 $headers = "From: Oceamar";
 $headers .= "<".$email.">\r\n";
 $headers .= "Reply-To: ".$email."\nContent-Type: text/html; charset=iso-8859-1"; 
	
 $message = "<p><b>Nombre: </b>".$nombre."</p><p><b>Email:</b> ".$email."</p><p><b>Comentario: </b>".$comentario."</p>";
	 
 $ban = mail($destino,"Correo de contacto - Sitio de Oceamar", $message, $headers);

 if($ban)
	 echo "<strong>¡Muchas Gracias!.</strong><br /> Su mensaje fue enviado con éxito.";
 else
	 echo "<strong>¡Lo sentimos!.</strong><br /> Su mensaje no puedo ser enviado";
?>