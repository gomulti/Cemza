<?php

 //$destino= "juanantonio.martinez2003@gmail.com";
 $destino= "sales@enermar.com.mx";

 $nombre = $_POST["txtNombre"];
 $email = $_POST["txtEmail"];
 $comentario = $_POST["txtComentario"];
 
 $headers = "From: Enermar";
 $headers .= "<".$email.">\r\n";
 $headers .= "Reply-To: ".$email."\nContent-Type: text/html; charset=iso-8859-1"; 
	
 $message = "<p><b>Name: </b>".$nombre."</p><p><b>Email:</b> ".$email."</p><p><b>Commentary: </b>".$comentario."</p>";
	 
 $ban = mail($destino,"Contact email - Site of Enermar", $message, $headers);

 mail("costumerservice@enermar.com.mx","Correo de contacto - Sitio de Enermar", $message, $headers);

 if($ban)
	 echo "<strong class='u-mayuscula u-inline-block'>Thank you so much!.</strong><br /> Your message was sent successfully.";
 else
	 echo "<strong class='u-mayuscula u-inline-block'>¡We are sorry!.</strong><br /> Your message can not be sent";
?>