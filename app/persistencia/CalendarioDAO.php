<?php

    require_once __DIR__ . "/Conexion.php";
    require_once __DIR__ . "/DAOGenerico.php";

    class CalendarioDAO {    
        
    

        private ?mysqli $conexion;

        public function __construct() {
            $this->conexion = Conexion::getInstancia()->getConexion();
        }
        function insertarEvento (EventoEntidad $evento){

            $identificador= $evento->getIdentificador();
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


            $sql = "SELECT 
            e.identificador,
            e.hora_inicio,
            e.hora_fin,
            e.fecha_inicio,
            e.fecha_fin,
            n.nombre AS nombre_notificacion

        
        FROM eventos e

        
        INNER JOIN notificaciones n
        ON e.identificador = n.identificador

        ORDER BY e.identificador";

            $conexion = $this->conexion;
            $resultado = $conexion->query($sql);



            $eventos = array();

            if ($resultado && $resultado ->num_rows >0){
                while($fila = $resultado->fetch_assoc()){ 
                    $evento = new EventoEntidad(
                    (int)$fila['identificador'],
                    
                    new DateTimeImmutable($fila['hora_inicio']),
                    
                    $horaFinal = 'hora_fin' !== null
                    ? new DateTimeImmutable($fila['hora_fin'])
                    :null,
                    

                    $fila['fecha_inicio'],
                    $fila['fecha_fin'] ?? '' ,
                    $fila['nombre_notificacion']
                    );
                    $eventos[] = $evento;
                }    


            }
            return $eventos;

        }
            
        
    }

?>