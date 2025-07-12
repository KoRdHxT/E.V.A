<?php
session_start();
echo isset($_SESSION['usuario']) ? '1' : '0';
?>
