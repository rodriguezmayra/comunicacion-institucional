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


     function obtenerNotificaciones (int $limite, int $desplazamiento, string $palabraFiltro): array {

            $sql = "SELECT identificador, nombre, descripcion, publico, fecha FROM notificaciones  WHERE nombre LIKE ? ORDER BY identificador DESC LIMIT ? OFFSET ? ";

            $conexion = $this->conexion;

            $sentencia = $conexion->prepare($sql);
            $likeValue = "%" . $palabraFiltro. "%";
            $sentencia->bind_param("sii", $likeValue , $limite, $desplazamiento);
            $sentencia->execute();

            $resultado = $sentencia->get_result();
                   
            $notificaciones = array();

            while ($fila = $resultado->fetch_assoc()) {
                $notificacion = new NotificacionEntidad($fila["identificador"], $fila["nombre"], $fila["descripcion"], $fila["publico"], $fila["fecha"] ?? "");
                $notificaciones[] = $notificacion;
            }

            $sentencia->close();

            return $notificaciones;

        }

     function insertarNotificacion (NotificacionEntidad $notificacion){
        
            $identificador = $notificacion->getIdentificador();
            $nombre = $notificacion->getNombre();
            $descripcion = $notificacion->getDescripcion();
            $publico = $notificacion->getPublico();
            $fecha = $notificacion->getFecha();
            
            $sql = "INSERT INTO notificaciones (identificador, nombre, descripcion, publico, fecha) VALUES (?, ?, ?, ?, ?)";  

            $conexion = $this->conexion; 

            $sentencia = $conexion->prepare($sql);
            $sentencia->bind_param("issss", $identificador, $nombre, $descripcion, $publico, $fecha);
            $sentencia ->execute();
            
            $sentencia->close();
            
        }
}

?>