<?php
include "../conexion/conexion.php";

$nombre = $_POST['nombreAdmin'];
$numero = $_POST['numeroAdmin'];
$correo = $_POST['correoAdmin'];
$contrasena = $_POST['contraseñaAdmin'];
$direccion = $_POST['direccionAdmin'];

$sql = "INSERT INTO administradores (nombre, apellido, correo, contrasena)
        VALUES ('$nombre', '$apellido', '$correo', '$contrasena')";

if ($conexion->query($sql) === TRUE) {
  echo "Administrador registrado correctamente.";
} else {
  echo "Error: " . $sql . "<br>" . $conexion->error;
}

$conexion->close();
?>
