<?php
    require_once '../conexion/conexion.php';

    $sql = "SELECT * 
            FROM libros 
            ORDER BY fecha DESC";
    $resultado = $conexion->query($sql);

    $array = array();

    for ($i = 0; $i < $resultado->num_rows; $i++) {
        array_push($array, $resultado->fetch_object());
    }

    echo json_encode($array);
?>