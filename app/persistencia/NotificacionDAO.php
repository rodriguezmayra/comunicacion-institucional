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
        return ["identificador", "nombre", "descripcion", "publico", "fecha"];

    }

    function getClavePrimaria(): string{
        return "identificador";

    }

    public function ObtenerNotificacion($identificador) : ?array{

        return $this->obtenerFila($identificador);

    }


     function obtenerNotificaciones (int $limite, int $desplazamiento, bool $restringidas, ?string $grupo,  string $palabraFiltro): array {
        

            $condiciones = ["publico = 'general'"];
            $parametros = [];
            $tipos = "";


            if ($restringidas){
                $condiciones[] = "publico = 'restringido'";
            }

            if ($grupo !== null){
                $condiciones[] = "publico = ?";
                $parametros[] = $grupo;
                $tipos .= "s";
            }

            //Parámetro y tipo para la palabra de filtro
            $parametros [] = "%" . $palabraFiltro . "%";
            $tipos .= "s";


            $parametros[] = $limite;
            $parametros[] = $desplazamiento;
            $tipos .= "ii";
            $sql = "SELECT identificador, nombre, descripcion, publico, fecha FROM notificaciones WHERE (" . implode(" OR ", $condiciones) . " ) AND nombre LIKE ? ORDER BY fecha DESC, identificador DESC LIMIT ? OFFSET ?";

            $conexion = $this->conexion;

            $sentencia = $conexion->prepare($sql);

            $referencias = [$tipos];

            foreach ($parametros as $indice => $parametro) {
                $referencias[] = &$parametros[$indice];
            }
            
            call_user_func_array ([$sentencia, "bind_param"], $referencias);
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

    function insertarNotificacion(NotificacionEntidad $notificacion): bool {

        $datos = [
            $notificacion->getIdentificador(),
            $notificacion->getNombre(),
            $notificacion->getDescripcion(),
            $notificacion->getPublico(),
            $notificacion->getFecha()
        ];

        return $this->insertarFila($datos);

    }
            
}

?>