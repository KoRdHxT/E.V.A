<?php
session_start(); 
include('../conexion/conexion.php');

$correo = $_POST['correo'] ?? '';
$contrasena = $_POST['contrasena'] ?? '';

// Validar campos vacíos
if (empty($correo) || empty($contrasena)) {
    echo "Por favor, completa todos los campos.";
    exit;
}

// -------- BUSCAR EN USUARIO --------
$stmt = $mysqli->prepare("SELECT nombre, contrasena FROM usuario WHERE correo = ?");
$stmt->bind_param("s", $correo);
$stmt->execute();
$resultado = $stmt->get_result();

if ($resultado && $resultado->num_rows > 0) {
    $fila = $resultado->fetch_assoc();

    if ($fila['contrasena'] === $contrasena) {
        $_SESSION['usuario'] = $fila['nombre'];
        $_SESSION['correo'] = $correo;
        $_SESSION['rol'] = "usuario";

        header("Location: /EVA4.5/views/html/sesion.html");
        exit;
    } else {
        echo "Contraseña incorrecta.";
        exit;
    }
}
$stmt->close(); // Cerramos antes de preparar otro

// -------- BUSCAR EN CENTRO_DEPORTIVO --------
$stmt = $mysqli->prepare("SELECT nombre, contrasena FROM usuario_deportivo WHERE correo = ?");
$stmt->bind_param("s", $correo);
$stmt->execute();
$resultado = $stmt->get_result();

if ($resultado && $resultado->num_rows > 0) {
    $fila = $resultado->fetch_assoc();

    if ($fila['contrasena'] === $contrasena) {
        $_SESSION['usuario'] = $fila['nombre'];
        $_SESSION['correo'] = $correo;
        $_SESSION['rol'] = "admin";

        header("Location: /EVA4.5/views/html/sesionadmin.html");
        exit;
    } else {
        echo "Contraseña incorrecta.";
        exit;
    }
} else {
    echo "El correo no está registrado.";
}

$stmt->close();
$mysqli->close();
?>
