<?php

require_once __DIR__ . "/Conexion.php";
require_once __DIR__ . "/DAOGenerico.php";

class UsuarioDAO extends DAOGenerico {

    function getTabla(): string{
        return "usuarios";
    }

    function getColumnas(): array{
        return ["correo_electronico", "contrasenia", "nombre","rol"];
    }

    function getClavePrimaria(): string{
        return "correo_electronico";
    }

    public function obtenerUsuario($identificador) : ?array {    
            return $this->obtenerFila($identificador);
        }

        public function insertarUser (array $datos) : bool {
            return $this->insertarFila($datos);
        }

    function insertarUsuario (UsuarioEntidad $usuario){
        
            $correoElectronico = $usuario->getCorreoElectronico();
            $nombre = $usuario->getNombre();
            $contrasenia = $usuario->getContrasenia();
            $rol = $usuario->getRol();
            
            $sql = "INSERT INTO usuarios (correo_electronico, nombre, contrasenia, rol) VALUES (?, ?, ?, ?)";  

            $conexion = $this->conexion; 

            $sentencia = $conexion->prepare($sql);
            $sentencia->bind_param("ssss", $correoElectronico, $nombre, $contrasenia, $rol);
            $sentencia ->execute();
            
            $sentencia->close();
            
        }
    
}
?>