<?php
include('../conexion/conexion.php'); 


if ($mysqli->connect_error) {
    die("Error de conexión: " . $mysqli->connect_error);
}
$nombre = $_POST['nombre'] ?? '';
$apellido = $_POST['apellido'] ?? '';
$correo = $_POST['correo'] ?? '';
$contrasena = $_POST['contrasena'] ?? '';


if (empty($nombre) || empty($apellido) || empty($correo) || empty($contrasena)) {
    echo "Todos los campos son obligatorios.";
    exit();
}

// Consulta SQL
$sql = "INSERT INTO usuario (nombre, apellido, correo, contrasena)
        VALUES ('$nombre', '$apellido', '$correo', '$contrasena')";

// Ejecuta la consulta 
if ($mysqli->query($sql) === TRUE) {
    header("Location: /EVA4.5/views/html/PaginaWeb.html");
    exit(); 
} else {
    echo "Error al registrar: " . $mysqli->error;
}

$mysqli->close();
?>
