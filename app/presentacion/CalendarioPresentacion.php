<?php
    
require_once __DIR__ . '/../logica/CalendarioLogica.php';
require_once __DIR__ . '/../logica/Entidades/EventoEntidad.php';

$calendarioLogica = new CalendarioLogica();
session_start();
$eventos = $calendarioLogica->obtenerEvento();

class CalendarioPresentacion{

    private CalendarioLogica $servicioCalendario;

    public function __construct() {
       $this->servicioCalendario = new CalendarioLogica();
    }

    public function crearEvento (int $identificador, string $nombre, string $descripcion, string $publico, string $fecha, string $fechaI, string $fechaF, string $horaI, string $horaF){

    return $this->servicioCalendario->crearEvento($identificador, $nombre, $descripcion, $publico, $fecha, $fechaI, $fechaF, $horaI, $horaF);
    }

}

?>