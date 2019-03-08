<?php

 //$destino= "juanantonio.martinez2003@gmail.com";

 include('../PHPMailer/class.phpmailer.php');
 include('../PHPMailer/class.smtp.php');

  $destino= "ventas@cemza.com";

 $nombre = htmlentities($_POST['txtNombre']);
 $correo = htmlentities($_POST['txtEmail']);
 $telefono = htmlentities($_POST["txtTelefono"]);
 $mensaje = htmlentities($_POST['txtMensaje']);

 $mail = new PHPMailer(true); 
        
 $mail->IsSMTP();


 try 
 {
	$mail->Host       = "gomultimedios.com"; 
	$mail->SMTPDebug  = 0;                    
	$mail->SMTPAuth   = true;
	$mail->SMTPSecure = "";                  
	$mail->Host       = "mail.gomultimedios.com";
	$mail->Port       = 26;                   
	$mail->Username   = "envio@gomultimedios.com";
	$mail->Password   = "g0mult1m2016";
	$mail->CharSet = 'utf-8';         
  $mail->AddAddress($destino, 'Contact email - Site Cemza');
	$mail->SetFrom($correo, $correo);
	$mail->Subject = 'Contact email - Site Cemza';
	$mail->AltBody = 'Para ver este mensaje correctamente activa tu editor de HTML'; 
	$mail->MsgHTML('                  
                    <!DOCTYPE HTML>
                    <html>
                    <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                    <title>Contact email - Site Cemza</title>
                    <style type="text/css">
                        body{
                            line-height: normal;
                            color:#333333;
                            font:13px Tahoma,Arial,Helvetica,sans-serif;
                        }
                        strong
                        {
                            font-weight: bold;
                        }
                        table {
                                font:12px "Lucida Sans Unicode", "Lucida Grande", 
                                sans-serif; color:#333333; 
                                width:100%; 
                                border-top:5px solid #ed1c24; 
                                border-right:5px solid #ed1c24;
                                border-left:5px solid #ed1c24;
                                border-bottom:4px solid #ed1c24; 
                                margin-top:15px; 
                                -moz-border-radius:4px; 
                                -webkit-border-radius:4px; 
                                -khtml-border-radius:4px; 
                                border-radius:4px; 
                                width:700px;
                        }
                        table  td { vertical-align:top; padding:8px 10px 8px 10px; border-bottom:1px solid #0c225d;}
                        table  td img { width:18px; height:18px;}
                        table  tr { background: #FFF;}				
                        table  td a {color: #ed1c24 !important; text-decoration: underline;}
                        table  th {background: #FC3; padding-left:10px;height:30px; color:#FFFFFF; font-size:10px;text-transform:uppercase; vertical-align: middle; text-align:left;}
                        table  td span { color:#900; font-weight:bold;}
                    </style>
                    </head>		
                    <body>
                    <table width="200" border="0">		  
                    <tr>
                        <td width="142"><strong>Name:</strong></td>
                        <td width="538">'.$nombre.'</td>
					</tr>
					<tr>
                      <td><strong>Email:</strong></td>
                      <td>'.$correo.'</td>
                      </tr>
                    <tr>
                    <tr>
                      <td><strong>Phone:</strong></td>
                      <td>'.$telefono.'</td>
                      </tr>
                    <tr>
					<tr>
                    	<td height="86"><strong>Message:</strong></td>
                      	<td>'.$mensaje.'</td>
                    </tr>
                    </table>
                    </body>
                    </html>		  
                  ');
        
                  $mail->Send();
				  echo "<strong class='u-mayuscula u-inline-block'>Thank you so much!.</strong><br /> Your message was sent successfully.";
				  
                } catch (phpmailerException $e) {
                  echo $e->errorMessage(); 
                } catch (Exception $e) {
                  echo $e->getMessage(); 
                } 
?>
