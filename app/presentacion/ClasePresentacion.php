<?php

require_once __DIR__ . '/../logica/ClaseLogica.php';
//require_once __DIR__ . '/../logica/Entidades/ClaseEntidad.php';

class ClasePresentacion{

    private ClaseLogica $servicioClase;

    public function __construct(){
        $this->servicioClase = new ClaseLogica();
    }

    public function obtenerHorarios(): ?array{
    
        $grupo = null;

        //en una próxima versión podrá obtener un grupo de la url para administrativos o docentes
        if ($_SESSION['rol'] === 'estudiante'){
            $grupo = $_SESSION['grupo'];
        }

        //return [["tipo"=>"clase","horaInicio"=>"12:10","horaFin"=>"13:45","materias"=>["Lunes"=>"Programación","Martes"=>"Redes Informáticas","Miércoles"=>"Bases de Datos","Jueves"=>"Sistemas Operativos","Viernes"=>"Ingeniería de Software"]],["tipo"=>"clase","horaInicio"=>"13:45","horaFin"=>"15:25","materias"=>["Lunes"=>"Matemáticas","Martes"=>"Sistemas Operativos","Miércoles"=>"Matemáticas","Jueves"=>"Programación","Viernes"=>"Lógica y Métodos Discretos"]],["tipo"=>"clase","horaInicio"=>"15:25","horaFin"=>"16:10","materias"=>["Lunes"=>"Inglés","Martes"=>"Programación","Miércoles"=>"Inglés","Jueves"=>"Soporte IT","Viernes"=>"Inglés"]],["tipo"=>"descanso","horaInicio"=>"16:10","horaFin"=>"16:20"],["tipo"=>"clase","horaInicio"=>"16:20","horaFin"=>"17:50","materias"=>["Lunes"=>"Bases de Datos","Martes"=>"Lógica y Métodos Discretos","Miércoles"=>"Redes Informáticas","Jueves"=>"Bases de Datos","Viernes"=>"Programación"]],["tipo"=>"descanso","horaInicio"=>"17:50","horaFin"=>"17:55"],["tipo"=>"clase","horaInicio"=>"17:55","horaFin"=>"18:40","materias"=>["Lunes"=>"Lengua y Comunicación","Martes"=>"Soporte IT","Miércoles"=>"Ciudadanía y Sociedad","Jueves"=>"Filosofía","Viernes"=>"Redes Informáticas"]]];
        return $this->servicioClase->obtenerHorarios($grupo);
    }

}