<?php

    require_once __DIR__ . "/Conexion.php";

    class CalendarioDAO {       

        private ?mysqli $conexion;

        public function __construct() {
            $this->conexion = Conexion::getInstancia()->getConexion();
        }
        function insertarEvento (EventoEntidad $evento){
        
            $horaInicio = $evento->getHoraInicio();
            $horaFinal = $evento->getHoraFinal();
            $fechaInicio = $evento->getFechaInicio();
            $fechaFinal = $evento->getFechaFinal();
            
            $sql = "INSERT INTO eventos (hora_inicio, hora_fin, fecha_inicio, fecha_fin) VALUES (?, ?, ?, ?)";  

            $conexion = $this->conexion->getConexion(); 

            $sentencia = $conexion->prepare($sql);
            $sentencia->bind_param("isss", $horaInicio, $horaFinal, $fechaInicio, $fechaFinal);
            $sentencia ->execute();

            $sentencia->close();
            
        }

        function obtenerEvento (): array {

            $sql = "SELECT identificador, hora_inicio, hora_fin, fecha_inicio, fecha_fin FROM eventos ORDER BY fecha_inicio";

            $conexion = $this->conexion;
            $resultado = $conexion->query($sql);


            $eventos = array();

            if ($resultado && $resultado ->num_rows >0){
                while($fila = $resultado->fetch_assoc()){
                    $evento = new EventoEntidad(
                    (int)$fila['identificador'],
                    new DateTimeImmutable($fila['hora_inicio']),
                    new DateTimeImmutable($fila['hora_fin']),
                    $fila['fecha_inicio'],
                    $fila['fecha_fin'] ?? '' 
                    );
                    $eventos[] = $evento;
                }    


            }
            return $eventos;

        }
            
        
    }

?>