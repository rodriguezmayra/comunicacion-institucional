<?php

/*namespace app\persistencia;

use app\persistencia\Conexion;
use app\logica\entidades\NotificacionEntidad;

require_once __DIR__ . "\..\config\autoload.php";
*/

require_once __DIR__ . "/Conexion.php";
require_once __DIR__ . "/DAOGenerico.php";

class NotificacionDAO extends DAOGenerico{

    

    function getTabla(): string{
        return "notificaciones";

    }

    function getColumnas(): array{
        return ["identificador", "nombre", "descripcion", "publico"];

    }

    function getClavePrimaria(): string{
        return "identificador";

    }

    public function ObtenerNotificacion($identificador) : ?array{

        return $this->obtenerFila($identificador);

    }

    public function InsertarNotificacion($identificador): bool {

        return $this->insertarFila($datos);

    }

     function obtenerNotificaciones (int $limite, int $desplazamiento): array {

            $sql = "SELECT identificador, nombre, descripcion, publico FROM notificaciones ORDER BY identificador DESC LIMIT ? OFFSET ?";

            $conexion = $this->conexion;

            $sentencia = $conexion->prepare($sql);
            $sentencia->bind_param("ii", $limite, $desplazamiento);
            $sentencia->execute();

            $resultado = $sentencia->get_result();

            $notificaciones = array();

            while ($fila = $resultado->fetch_assoc()) {
                $notificacion = new NotificacionEntidad($fila["identificador"], $fila["nombre"], $fila["descripcion"], $fila["publico"]);
                $notificaciones[] = $notificacion;
            }

            $sentencia->close();

            return $notificaciones;

        }

}

?>