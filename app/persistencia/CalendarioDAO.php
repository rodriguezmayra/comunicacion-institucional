<?php

    require_once __DIR__ . "/Conexion.php";
    require_once __DIR__ . "/DAOGenerico.php";

    class CalendarioDAO {    
        
    

        private ?mysqli $conexion;

        public function __construct() {
            $this->conexion = Conexion::getInstancia()->getConexion();
        }
       public function insertarEvento(EventoEntidad $evento): bool {
       //primero hace la sentencia a notificaciones
        $sqlNotif = "INSERT INTO notificaciones (nombre, descripcion, publico, fecha) VALUES (?, ?, ?, ?)";
        $sentNotif = $this->conexion->prepare($sqlNotif);
    
        $nombre = $evento->getNombre();
        $descripcion = $evento->getDescripcion();
        $publico = $evento->getPublico();
        $fecha = $evento->getFecha();

        $sentNotif->bind_param("ssss", $nombre, $descripcion, $publico, $fecha);
        $sentNotif->execute();
    
        //guarda el id generado para la notificacion, para que el evento tenga ese mismo identificador
        $idGenerado = $this->conexion->insert_id;
        $sentNotif->close();

        //sentencia en la tabla eventos ahora
        $sqlEvento = "INSERT INTO eventos (identificador, hora_inicio, hora_fin, fecha_inicio, fecha_fin) VALUES (?, ?, ?, ?, ?)";
        $sentEvento = $this->conexion->prepare($sqlEvento);

        $horaInicio = $evento->getHoraInicio()->format('H:i:s');
        $horaFinal = $evento->getHoraFinal()->format('H:i:s');
        $fechaInicio = $evento->getFechaInicio();
        $fechaFinal = $evento->getFechaFinal();

        $sentEvento->bind_param("issss", $idGenerado, $horaInicio, $horaFinal, $fechaInicio, $fechaFinal);
        $exito = $sentEvento->execute();
        $sentEvento->close();
        //EXITOSO COMO YO
        return $exito;
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
            //hice que los datos de la entidad q no se usaban se pasen vacios y no de ningun error raro
            if ($resultado && $resultado ->num_rows >0){
                while($fila = $resultado->fetch_assoc()){ 
                    $evento = new EventoEntidad(
                    (int)$fila['identificador'],
                    $fila['nombre_notificacion'], 
                    '',                          
                    '',                           
                    '',                           
                    new DateTimeImmutable($fila['hora_inicio']), 
                    new DateTimeImmutable($fila['hora_fin']), 
                    $fila['fecha_inicio'],        
                    $fila['fecha_fin']      
                    );
                    $eventos[] = $evento;
                }    
            }
            return $eventos;
        }
            
        
    }

?>