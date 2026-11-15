<?php

require_once __DIR__ . '/Entidades/EventoEntidad.php';
require_once __DIR__ . '/../persistencia/CalendarioDAO.php';

class CalendarioLogica{

    private CalendarioDAO $CalendarioDAO;

    public function __construct() {
        $this->CalendarioDAO = new CalendarioDAO();
    }


      function crearEvento (int $identificador,DateTimeImmutable $horaInicio, ?DateTimeImmutable $horaFinal, string $fechaInicio, string $fechaFinal ): bool{

        $conexion = Conexion::getInstancia();

        $evento = new EventoEntidad($identificador, $horaInicio, $horaFinal, $fechaInicio, $fechaFinal );  

        $CalendarioDAO = new CalendarioDAO();

        $CalendarioDAO->insertarEvento($evento);

        return true;
        
    }

    function obtenerEvento () : ?array {


        $eventos = $this->CalendarioDAO->obtenerEvento();


        return $eventos;

    }

}

?>