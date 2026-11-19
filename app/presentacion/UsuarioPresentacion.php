<?php

require_once __DIR__ . '/../logica/UsuarioLogica.php';
class UsuarioPresentacion{
    
    private UsuarioLogica $UsuarioL;

    public function __construct() {
       $this->UsuarioL = new UsuarioLogica();
    }

    public function CrearUsuario(String $correoElectronico, String $nombre, String $contrasenia, String $Rol): bool{
        return $this->UsuarioL->CrearUsuario($correoElectronico,$nombre,$contrasenia,$Rol);
    }

    public function obtenerGrupoUsuario(?string $correo): ?string
    {
        return $this->UsuarioL->obtenerGrupoUsuario($correo);
    }

}
// Solo ejecuta el login si el navegador llama directamente a usuraioPresentacion.php y no con el requiere once
if (realpath(__FILE__) === realpath($_SERVER['SCRIPT_FILENAME'])) {
    $servicioUsuario = new UsuarioLogica ();

    if ($_SERVER["REQUEST_METHOD"] === "POST") {


        $correoElectronico = trim($_POST["correoElectronico"]);
        $contrasenia = $_POST["contrasenia"];


        if(empty($correoElectronico) || empty($contrasenia)){
            header("Location: ../../error.php");
            exit;
        } 

        $datosUsuario = $servicioUsuario->iniciarSesion($correoElectronico, $contrasenia);
    


        if ($datosUsuario !== null){
        
            session_start();

    
            $_SESSION["correoElectronico"] = $datosUsuario["correoElectronico"];

            $_SESSION["nombre"] = $datosUsuario["nombre"];

            $_SESSION["rol"] = $datosUsuario["rol"];

            if ($datosUsuario["rol"] === "estudiante") {
        
                $_SESSION["grupo"] = $datosUsuario["grupo"];

            }

            header("Location: ../../index.php");
            exit;

    }else{

        
        header("Location: ../../index.php?accion=credenciales-incorrectas");
        exit;


    }

}else{

    header("Location: ../../index.php");
    exit;

}

}

?>