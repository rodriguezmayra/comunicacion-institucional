<?php

require_once __DIR__ . '/Entidades/UsuarioEntidad.php';
require_once __DIR__ . '/../persistencia/UsuarioDAO.php';
require_once __DIR__ . '/../persistencia/EstudianteDAO.php';


class UsuarioLogica {

    private UsuarioDAO $usuarioDAO;
    private EstudianteDAO $estudianteDAO;

    public function __construct() {
        $this->usuarioDAO = new UsuarioDAO();
        $this->estudianteDAO = new EstudianteDAO();
    }

    public function iniciarSesion (string $correoElectronico, string $contrasenia) : ?array {

        $usuario = $this->usuarioDAO->obtenerUsuario($correoElectronico);

        if ($usuario !== null){

            $hash=$usuario["contrasenia"];

            if( password_verify($contrasenia, $hash)) {

                $datosUsuario = ["correoElectronico" => $usuario["correo_electronico"], "nombre" => $usuario["nombre"], "rol" => $usuario["rol"]];
                
                if($datosUsuario["rol"] === "estudiante") {

                    $datosEstudiante = $this->estudianteDAO->obtenerEstudiante($datosUsuario["correoElectronico"]);
                    
                    if ($datosEstudiante !== null){

                        $datosUsuario["grupo"] = $datosEstudiante["nombre_grupo"];

                    }else{
                        return null;
                    }
                    
 
                }
            
                return $datosUsuario;
            }

        }

        return null;

    }

    function crearUsuario (int $correoElectronico, string $nombre, string $contrasenia, string $rol): bool{

        $conexion = Conexion::getInstancia();

        $usuario = new UsuarioEntidad($correoElectronico, $nombre, $contrasenia, $rol);  

        $usuarioDAO = new UsuarioDAO();

        $usuarioDAO->insertarUsuario($usuario);

        return true;
        
    }


}

?> 