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


    // En una versión futura el sistema podría registrar, además, el identificador de el usuario que creó la notificación
    function crearNotificacion (int $identificador, string $nombre, string $descripcion, string $publico, string $fecha): bool{

        $notificacion = new NotificacionEntidad($identificador, $nombre, $descripcion, $publico, $fecha);  

        return $this->notificacionDAO->insertarNotificacion($notificacion);
        
    }

    function obtenerNotificaciones (int $limite, int $pagina, string $palabraFiltro) : ?array {

        $desplazamiento = ($pagina - 1) * $limite;

        $notificaciones = $this->notificacionDAO->obtenerNotificaciones($limite, $desplazamiento, $palabraFiltro);

        return $notificaciones;

    }

}

?>