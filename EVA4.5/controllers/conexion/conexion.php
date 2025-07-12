<?php
$host = "localhost";
$usuario = "root";
$contrasena = "";
$basededatos = "evadb2"; // el nombre de tu base de datos

$mysqli = new mysqli($host, $usuario, $contrasena, $basededatos);

// Verifica errores
if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}
?>
