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



}

?>