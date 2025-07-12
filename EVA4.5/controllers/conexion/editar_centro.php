<?php

include "../conexion/conexion.php";
header('Content-Type: application/json');

// AGREGAR CENTRO (INSERT)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['accion']) && $_POST['accion'] === 'agregar') {
    $nombre = $_POST['edinombreCentro'] ?? '';
    $correo = $_POST['ediCorreoCentro'] ?? '';
    $numero = $_POST['ediNumeroCentro'] ?? '';
    $contrasena = $_POST['ediContrasenaCentro'] ?? '';
    $descripcion = $_POST['ediDescripcionCentro'] ?? '';
    $estado = $_POST['ediEstadoCentro'] ?? 'activo';
    $direccion = $_POST['direccionCentro'] ?? '';

    $stmt = $mysqli->prepare("INSERT INTO centro_deportivo (nombre, correo, numero, contrasena, descripcion, estado, direccion) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $nombre, $correo, $numero, $contrasena, $descripcion, $estado, $direccion);
    $success = $stmt->execute();
    echo json_encode(['success' => $success]);
    $stmt->close();
    $mysqli->close();
    exit;
}

// LISTAR CENTROS (SELECT)
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['accion']) && $_GET['accion'] === 'listar') {
    $result = $mysqli->query("SELECT * FROM centro_deportivo");
    $centros = [];
    while ($row = $result->fetch_assoc()) $centros[] = $row;
    echo json_encode($centros);
    $mysqli->close();
    exit;
}

// OBTENER CENTRO POR ID (SELECT WHERE)
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['accion']) && $_GET['accion'] === 'obtener' && isset($_GET['idCentro'])) {
    $id = intval($_GET['id_c']);
    $stmt = $mysqli->prepare("SELECT * FROM centro_deportivo WHERE id_c=?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $res = $stmt->get_result();
    echo json_encode($res->fetch_assoc());
    $stmt->close();
    $mysqli->close();
    exit;
}

// EDITAR CENTRO (UPDATE)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['accion']) && $_POST['accion'] === 'editar') {
    $id = $_POST['id_c'];
    $nombre = $_POST['ediNombreCentro'];
    $correo = $_POST['ediCorreoCentro'];
    $numero = $_POST['ediNumeroCentro'];
    $contrasena = $_POST['ediContrasenaCentro'];
    $descripcion = $_POST['ediDescripcionCentro'];
    $estado = $_POST['ediEstadoCentro'];
    $direccion = $_POST['ediDireccionCentro'];

    $stmt = $mysqli->prepare("UPDATE centro_deportivo SET nombre=?, correo=?, numero=?, contrasena=?, descripcion=?, estado=?, direccion=? WHERE id_c=?");
    $stmt->bind_param("sssssssi", $nombre, $correo, $numero, $contrasena, $descripcion, $estado, $direccion, $id);
    $success = $stmt->execute();
    echo json_encode(['success' => $success]);
    $stmt->close();
    $mysqli->close();
    exit;
}

// ELIMINAR CENTRO (DELETE)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['accion']) && $_POST['accion'] === 'eliminar') {
    $id = $_POST['id_c'];
    $stmt = $mysqli->prepare("DELETE FROM centro_deportivo WHERE id_c=?");
    $stmt->bind_param("i", $id);
    $success = $stmt->execute();
    echo json_encode(['success' => $success]);
    $stmt->close();
    $mysqli->close();
    exit;
}

// Si no coincide ninguna acción
echo json_encode(['success' => false, 'message' => 'Acción no válida']);
$mysqli->close();
?>