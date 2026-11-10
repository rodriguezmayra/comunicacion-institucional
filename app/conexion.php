<?php

class Conexion {

    private static ?Conexion $instancia = null;
    private mysqli $conexion;


    //constructor privado con datos hardcodeados
    private function __construct() {

        $servidor = "localhost";
        $usuario = "app";
        $contrasenia = "1234";
        $baseDeDatos = "comunicacion_institucional";

        $this->conexion = new mysqli($servidor, $usuario, $contrasenia, $baseDeDatos);

        // En caso de error en la conexión se detiene la ejecución de la petición actual

        if ($this->conexion->connect_error) {
            die("Conexión fallida: " . $this->conexion->connect_error);
        }

    }

    public static function getInstancia(): Conexion {
        if (self::$instancia === null) {
            self::$instancia = new Conexion(); 
        }
        return self::$instancia;

    }

    public function getConexion(): mysqli {
        return $this->conexion;
    }

    public function cerrarConexion() {
        if ($this->conexion !== null) {
            $this->conexion->close();
            $this->conexion = null;
        }
    }

    // Reescribir el método clone y hacerlo privado
    private function __clone(){
    }

}


?>
