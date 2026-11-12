<?php

require_once __DIR__ . '/Entidades/EventoEntidad.php';
require_once __DIR__ . '/../persistencia/CalendarioDAO.php';

class CalendarioLogica{

    private CalendarioDAO $CalendarioDAO;

    public function __construct() {
        $this->CalendarioDAO = new CalendarioDAO();
    }


    function obtenerEvento () : ?array {

        $eventos = $this->CalendarioDAO->obtenerEvento();

        return $eventos;

    }

}

?>