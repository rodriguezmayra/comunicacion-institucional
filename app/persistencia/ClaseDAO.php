<?php

require_once __DIR__ . "/Conexion.php";
require_once __DIR__ . "/DAOGenerico.php";

class ClaseDAO extends DAOGenerico{


    function getTabla(): string{
        return "clases";

    }

    function getColumnas(): array{
        return ["identificador", "hora_inicio", "hora_fin", "nombre_dia", "nombre_grupo", "nombre_materia"];

    }

    function getClavePrimaria(): string{
        return "identificador";

    }

    function ObtenerClase (int $identificador){
        return $this->obtenerFila($identificador);
    }
    
    function obtenerClases ($grupo){

        $sql = "SELECT * FROM clases WHERE nombre_grupo = ?";
        $sentencia = $this->conexion->prepare($sql);
        $sentencia->bind_param("s", $grupo);
        $sentencia->execute();
        $resultado = $sentencia->get_result();

        if ($resultado !== false && $resultado->num_rows > 0) {

            $filas = $resultado->fetch_all(MYSQLI_ASSOC);
            $sentencia->close();
            return $filas;

        }

        $sentencia -> close();
        return null;


    }

}

?>