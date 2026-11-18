<?php

require_once __DIR__ . '/Entidades/EventoEntidad.php';
require_once __DIR__ . '/../persistencia/CalendarioDAO.php';

class CalendarioLogica{

    private CalendarioDAO $CalendarioDAO;

    public function __construct() {
        $this->CalendarioDAO = new CalendarioDAO();
    }


    public function crearEvento(int $identificador,string $nombre,string $descripcion,string $publico,string $fecha,string $fechaI,string $fechaF,string $horaI,string $horaF): bool {
    //pasa los string de las horas a datetime
    $horaInicio = new DateTimeImmutable($horaI);
    $horaFinal = new DateTimeImmutable($horaF);

    $evento = new EventoEntidad(
        $identificador,$nombre,$descripcion,$publico,$fecha,$horaInicio,$horaFinal,$fechaI,$fechaF);

        return $this->CalendarioDAO->insertarEvento($evento);
    }

    function obtenerEvento () : ?array {


        $eventos = $this->CalendarioDAO->obtenerEvento();


        return $eventos;

    }

}

?>