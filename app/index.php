<?php

require_once "Conexion.php";

//comprobar si el Singleton funciona correctamente (prueba)

$conexion1 = Conexion::getInstancia();
$conexion2 = Conexion::getInstancia();

if ($conexion1 === $conexion2) {
    echo "Ambas variables son idénticas";
}else{
    echo "El singleton no está funcionando correctamente";
}


?>