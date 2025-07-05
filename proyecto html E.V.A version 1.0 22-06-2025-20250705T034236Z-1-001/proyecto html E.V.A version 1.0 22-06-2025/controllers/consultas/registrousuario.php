<?php

if ($conexion->connect_error) {
  die("Error de conexión: " . $conexion->connect_error);
}

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

$sql = "INSERT INTO usuarios (nombre, apellido, correo, contrasena)
        VALUES ($nombre, $apellido, $correo, $contrasena)";

if ($conexion->query($sql) === TRUE) {
  echo "Usuario registrado correctamente.";
} else {
  echo "Error: " . $sql . "<br>" . $conexion->error;
}

$conexion->close();
?>
