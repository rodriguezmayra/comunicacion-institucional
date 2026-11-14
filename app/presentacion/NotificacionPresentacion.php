<?php
    
require_once __DIR__ . '/../logica/NotificacionLogica.php';
require_once __DIR__ . '/../logica/Entidades/NotificacionEntidad.php';

class NotificacionPresentacion{

    private NotificacionLogica $servicioNotificacion;

    public function __construct() {
       $this->servicioNotificacion = new NotificacionLogica();
    }


    // Es necesario realizar comprobaciones respecto a la paginación
    public function obtenerNotificaciones (int $limite, int $pagina, string $palabraFiltro): ?array {

        if ($pagina < 1 || $limite < 1) {
            $pagina = 1;
            $limite = 10;
        }

        $notificaciones = $this->servicioNotificacion->obtenerNotificaciones($limite, $pagina, $palabraFiltro);

        return $notificaciones;


    }



    /*
    public function obtenerNotificacion(){

        //creamos una notificacion
        $notificacion = new NotificacionEntidad(0, "Notificación de prueba 1","Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit, ducimus sequi laudantium debitis expedita, minus maiores quaerat culpa ratione, enim recusandae et deleniti impedit. Provident fuga voluptates impedit dolore corrupti?", "orep");

        return $notificacion;


    }

    public function listarNotificaciones() {

        $arrNotificaciones = this->servicioNotificaciones->listarNotificaciones();

        return $arrNotificaciones;
    }*/

}


?>