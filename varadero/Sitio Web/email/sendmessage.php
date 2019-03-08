<?php 
$name    = $_POST['txtNombre'];
$email   = $_POST['txtEmail'];
$phone   = $_POST['txtTelefono'];
$message = $_POST['txtComentario'];

$contenidoHTML = "<table class='table table-condensed'>
                <tbody>
                  <tr>
                    <td>Nombre del contacto</td>
                    <td>".$name."</td>
                  </tr>
                  <tr>
                    <td>Teléfono</td>
                    <td>".$phone."</td>  
                  </tr>
                  <tr>
                    <td>Correo</td>
                    <td>".$email."</td>  
                  </tr>
                  <tr>
                    <td>Comentario</td>
                    <td>".$message."</td>  
                  </tr>
                </tbody>
              </table>";
$subject  = "Varaderos Zavala";
$to       = "ventas@varaderoszavala.com";
$headers  = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

if(mail($to,$subject,$contenidoHTML,$headers)){
	$data = array(
		'status' => 'success',
		'messagge' => 'Información enviada'
	);
}else{
	$data = array(
		'status' => 'error',
		'messagge' => 'Información no enviada'
	);
}

header("Content-type: application/json; charset=utf-8");
echo json_encode($data);
?>