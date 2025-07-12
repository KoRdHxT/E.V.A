<?php
include "../conexion/conexion.php";

$nombre = $_POST['nombreCentro'] ?? '';
$correo = $_POST['correoCentro'] ?? '';
$numero = $_POST['numeroCentro'] ?? '';
$contrasena = $_POST['contrasenaCentro'] ?? '';
$descripcion = $_POST['descripcionCentro'] ?? '';
$estado = 1; // Estado activo por defecto
$direccion = $_POST['direccionCentro'] ?? ''; // Nueva variable para la dirección

$sql = "INSERT INTO centro_deportivo (nombre, correo, numero, contrasena, descripcion, estado, direccion)
        VALUES ('$nombre', '$correo', '$numero', '$contrasena', '$descripcion', '$estado', '$direccion')";

if ($mysqli->query($sql) === TRUE) {
  echo "Centro deportivo registrado correctamente.";
} else {
  echo "Error: " . $sql . "<br>" . $mysqli->error;
}

$mysqli->close();
?>
