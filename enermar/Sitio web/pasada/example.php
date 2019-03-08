<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>

<body>
<?php
	/*$lista = array 
	(
    	array('15.25'),
    	array('Abierto')
	);

	$fp = fopen('actualizacionInformacion.csv', 'w');
	
	foreach ($lista as $campos) {
		fputcsv($fp, $campos);
	}

	fclose($fp);*/

	$precio = 0;
	$estado = "";
	$j = 0;
	
	$fp = fopen ("actualizacionInformacion.csv","r");
	
	
	while ($data = fgetcsv ($fp, 1000, ";")) 
	{

		if($j == 0)	
			$precio = $data[0];
		else if($j == 1)	
			$estado = $data[0];
		
		$j++;
	}
	fclose($fp);
	
	echo $precio ."--".$estado;

?>
</body>
</html>