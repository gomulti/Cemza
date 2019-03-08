<?php

 //$destino= "juanantonio.martinez2003@gmail.com";
 $destino= "ventas@oceamar.com.mx";

 $nombre = $_POST["txtNombre"];
 $email = $_POST["txtEmail"];
 $comentario = $_POST["txtComentario"];
 
 $headers = "From: Oceamar";
 $headers .= "<".$email.">\r\n";
 $headers .= "Reply-To: ".$email."\nContent-Type: text/html; charset=iso-8859-1"; 
	
 $message = "<p><b>Name: </b>".$nombre."</p><p><b>Email:</b> ".$email."</p><p><b>Comments: </b>".$comentario."</p>";
	 
 $ban = mail($destino,"Contact email - Site Oceamar", $message, $headers);

 if($ban)
	 echo "<strong>Thank you so much!.</strong><br /> Your message was sent successfully.";
 else
	 echo "<strong>We are sorry!.</strong><br /> Your message can not be sent.";
?>