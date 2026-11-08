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

   




}

?>