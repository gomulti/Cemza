<?php

 //$destino= "juanantonio.martinez2003@gmail.com";
 $destino= "ventas@presco.mx";

 $nombre = $_POST["txtNombre"];
 $email = $_POST["txtEmail"];
 $telefono = $_POST["txtTelefono"];
 $comentario = $_POST["txtComentario"];
 
 $headers = "From: Presco";
 $headers .= "<".$email.">\r\n";
 $headers .= "Reply-To: ".$email."\nContent-Type: text/html; charset=iso-8859-1"; 
	
 $message = "<p><b>Nombre: </b>".$nombre."</p><p><b>Email:</b> ".$email."</p><p><b>Teléfono: </b>".$telefono."</p><p><b>Comentario: </b>".$comentario."</p>";
	 
 $ban = mail($destino,"Correo de contacto - Sitio de Presco", $message, $headers);

 if($ban)
	 echo "<strong class='u-mayuscula u-inline-block'>Thank you so much!.</strong><br /> Your message was sent successfully.";
 else
	 echo "<strong class='u-mayuscula u-inline-block'>We are sorry!.</strong><br /> Your message can not be sent.";
?>