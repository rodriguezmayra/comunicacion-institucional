<?php 

require_once 'app/presentacion/NotificacionPresentacion.php';
require_once 'app/logica/Entidades/NotificacionEntidad.php';

$notificacioon = new NotificacionLogica();

$notificacioon->crearNotificacion("24","pepe","lolo","todos");
?>