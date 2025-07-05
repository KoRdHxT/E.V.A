<?php
include "../conexion/conexion.php";

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

$sql = "INSERT INTO administradores (nombre, apellido, correo, contrasena)
        VALUES ('$nombre', '$apellido', '$correo', '$contrasena')";

if ($conexion->query($sql) === TRUE) {
  echo "Administrador registrado correctamente.";
} else {
  echo "Error: " . $sql . "<br>" . $conexion->error;
}

$conexion->close();
?>
