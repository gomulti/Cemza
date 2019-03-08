<?php

  require 'bd/conexion.php'; 
  
  $cone = connect_to_SMBD();

  $sql = "CREATE TABLE 'wp_commentmeta' (
    'meta_id' bigint(20) UNSIGNED NOT NULL,
    'comment_id' bigint(20) UNSIGNED NOT NULL DEFAULT '0',
    'meta_key' varchar(255) DEFAULT NULL,
    'meta_value' longtext
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8;";

	$resultado = mysqli_query($cone,$sql);

	if($resultado == 1)
    return true;
  else
    return false;
  
  close_DB($cone); 
?>