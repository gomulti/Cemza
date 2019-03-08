<?php
$mysqli = new mysqli("sqlc75a.carrierzone.com", "varaderosz857085", "Cemz@2019", "ukoi4278_varaderoszavala_com");

//varaderosz857085
//varaderosz702677

/* comprobar la conexión */
if ($mysqli->connect_errno) {
    printf("Conexión fallida: %s\n", $mysqli->connect_error);
    exit();
}

/* comprobar si el servidor sigue vivo */
if ($mysqli->ping()) {
    printf ("¡La conexión está bien!\n");
} else {
    printf ("Error: %s\n", $mysqli->error);
}

/* cerrar la conexión */
$mysqli->close();
?>