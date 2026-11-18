<?php

require_once __DIR__ . '/Entidades/ClaseEntidad.php';
require_once __DIR__ . '/../persistencia/ClaseDAO.php';

class ClaseLogica{

    private ClaseDAO $claseDAO;

    public function __construct() {
        $this->claseDAO = new ClaseDAO();
    }


    //Una versión posterior de este método podría guardar los descansos
    function obtenerHorarios($grupo): ?array{

        $datos = $this->claseDAO->obtenerClases($grupo);

        // Aquí iría el código encargado de crear el array de horarios en base a los datos obtenidos

        $horario = [
            ["tipo" => "clase", "horaInicio" => "17:20", "horaFin" => "18:00", "materias" => ["Lunes" => "Matemática", "Martes" => "Historia", "Miércoles" => "Matemática", "Jueves" => "Historia", "Viernes" => "Física"]],
            ["tipo" => "clase", "horaInicio" => "18:00", "horaFin" => "18:50", "materias" => ["Lunes" => "Literatura", "Martes" => "Inglés", "Miércoles" => "Literatura", "Jueves" => "Inglés", "Viernes" => "Química"]],
            ["tipo" => "descanso", "horaInicio" => "18:50", "horaFin" => "19:00"],
            ["tipo" => "clase", "horaInicio" => "19:00", "horaFin" => "19:45", "materias" => ["Lunes" => "Física", "Martes" => "Biología", "Miércoles" => "Física", "Jueves" => "Biología", "Viernes" => "Educación Física"]],
            ["tipo" => "clase", "horaInicio" => "19:45", "horaFin" => "20:30", "materias" => ["Lunes" => "Física", "Martes" => "Biología", "Miércoles" => "Física", "Jueves" => "Biología", "Viernes" => "Educación Física"]],
            ["tipo" => "descanso", "horaInicio" => "20:30", "horaFin" => "20:40"],
            ["tipo" => "clase", "horaInicio" => "20:40", "horaFin" => "21:25", "materias" => ["Lunes" => "Física", "Martes" => "Biología", "Miércoles" => "Física", "Jueves" => "Biología", "Viernes" => "Educación Física"]],
            ["tipo" => "clase", "horaInicio" => "21:25", "horaFin" => "22:10", "materias" => ["Lunes" => "Física", "Martes" => "Biología", "Miércoles" => "Física", "Jueves" => "Biología", "Viernes" => "Educación Física"]],
            ["tipo" => "descanso", "horaInicio" => "22:10", "horaFin" => "22:20"],
            ["tipo" => "clase", "horaInicio" => "22:20", "horaFin" => "23:05", "materias" => ["Lunes" => "Física", "Martes" => "Biología", "Miércoles" => "Física", "Jueves" => "Biología", "Viernes" => "Educación Física"]],
            ["tipo" => "clase", "horaInicio" => "23:05", "horaFin" => "23:50", "materias" => ["Lunes" => "Física", "Martes" => "Biología", "Miércoles" => "Física", "Jueves" => "Biología", "Viernes" => "Educación Física"]]
        ];

        return $horario;   

    }

}

?>