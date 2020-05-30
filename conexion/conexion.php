<?php
    $host = "localhost";
    $user = "root";
    $password = "123456"; // puede cambiar
    $baseDatos = "biblioteca";

    $conexion = new mysqli($host, $user, $password, $baseDatos);
    
    if ($conexion->connect_errno) {
        echo "Error de conexión a la Base de Datos " . $conexion->connect_errno;
        exit();
    }
?>