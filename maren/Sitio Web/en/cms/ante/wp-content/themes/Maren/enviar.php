<?php

 $destino= "";

 $asunto = $_POST["txtAsunto"]; 
 $nombre = $_POST["txtNombre"];
 $email = $_POST["txtEmail"];
 $mensaje = $_POST["txtMensaje"];
 
 $headers = "From: Colegio de Arquitectos Tabasqueños A.C";
 $headers .= "<".$email.">\r\n";
 $headers .= "Reply-To: ".$email."\nContent-Type: text/html; charset=iso-8859-1"; 
	
 $message = "<p><b>Asunto:</b>".$asunto."</p><p><b>Nombre:</b>".$nombre."</p><p><b>Email:</b> ".$email."</p><p><b>Mensaje: </b>".$mensaje."</p>";
	 
 mail($destino,$asunto, $message, $headers);
	
 echo "Mensaje enviado. Muchas gracias.";
	
?>