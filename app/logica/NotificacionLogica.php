<?php
/*namespace app\logica;
use app\persistenica\NotificacionDAO;
use app\persistencia\Conexion;
*/

require_once __DIR__ . '/Entidades/NotificacionEntidad.php';
require_once __DIR__ . '/../persistencia/NotificacionDAO.php';

class NotificacionLogica{

    private NotificacionDAO $notificacionDAO;

    public function __construct() {
        $this->notificacionDAO = new NotificacionDAO();
    }


    function crearNotificacion (int $identificador, string $nombre, string $descripcion, string $publico): bool{

        $conexion = Conexion::getInstancia();

        $notificacion = new NotificacionEntidad($identificador, $nombre, $descripcion, $publico);  

        $notificacionDAO = new NotificacionDAO();

        $notificacionDAO->insertarNotificacion($notificacion);

        return true;
        
    }

    function obtenerNotificaciones (int $limite, int $pagina) : ?array {

        $desplazamiento = ($pagina - 1) * $limite;

        $notificaciones = $this->notificacionDAO->obtenerNotificaciones($limite, $desplazamiento);

        return $notificaciones;

    }

}

?>