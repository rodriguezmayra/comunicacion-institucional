<?php


abstract class DAOGenerico{

    protected mysqli $conexion;

    public function __construct(){
        $this->conexion = Conexion::getInstancia()->getConexion();
    }

    abstract public function getTabla(): string;
    abstract public function getColumnas(): array;
    abstract public function getClavePrimaria(): string;

    protected function obtenerFila($identificador) : ?array {

        $sql = "SELECT * FROM {$this->getTabla()} WHERE {$this->getClavePrimaria()} = ?";


        if (is_int($identidicador) || is_bool($identidicador)){
            $tipo = "i";
        }elseif (is_float($identificador)){
            $tipo = "d";
        }else{
            $tipo = "s";
        }

        $sentencia = $this->conexion->prepare($sql);
        $sentencia->bind_param($tipo, $identificador);
        $sentencia->execute();
        $resultado = $sentencia->get_result();

        $fila  = $resultado->fetch_assoc();
        
        $sentencia->close();
        return $fila ?: null;

    }

    //En una versión futura se podria implementar un método que reciba filtros y devuelva los datos correspondientes


    protected function obtenerFilas($ordenamiento, $columna, $limite, $desplazamiento): ?array{
    
        $ordenamiento = strtoupper($ordenamiento) == "DESC" ? "DESC" : "ASC";

        $sql = "SELECT * FROM {$this->getTabla()} ORDER BY `{$columna}` {$ordenamiento} LIMIT ? OFFSET ?";

        $sentencia = $this->conexion->prepare($sql);
        $sentencia->bind_param("ii", $limite, $desplazamiento);
        $sentencia->execute();
        $resultado = $sentencia->get_result();

        if ($resultado !== false && $resultado->num_rows > 0) {

            $filas = $resultado->fetch_all(MYSQLI_ASSOC);
            $sentencia->close();
            return $filas;

        }
        
        $sentencia -> close();
        return null;

    }



    /*protected function insertarFila (array $datos) : bool {

        if (count($datos) === 0){
            return false;
        }

        $columnas = implode(", ", $this->getColumnas());
        $marcadoresPosicion = implode (", ", array_fill(0, count($this->getColumnas()), "?"));

        $sql = "INSERT INTO {$this->getTabla()} ({$columnas}) VALUES ({$marcadoresPosicion})";

        //$resultado = $this->conexion->execute_query($sql, $datos);
        $sentencia = $this->conexion->prepare($sql);
        $sentencia->bind_param()


        return $resultado !== false;
        
    }*/



}

?>