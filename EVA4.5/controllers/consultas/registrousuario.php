<?php

include('../conexion/conexion.php');

if ($conexion->connect_error) {
  die("Error de conexión: " . $conexion->connect_error);
}

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];
$numeroTelefonico = $_POST['numeroTelefonico'];

$sql = "INSERT INTO registros (nombre, apellido, correo, contrasena, numeroTelefonico)
        VALUES ('$nombre', '$apellido', '$correo', '$contrasena', '$numeroTelefonico')";

if ($conexion->query($sql) === TRUE) {
  echo "Usuario registrado correctamente.";
} else {
  echo "Error: " . $sql . "<br>" . $conexion->error;
}

$conexion->close();
?>
