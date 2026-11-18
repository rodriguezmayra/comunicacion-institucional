<?php
require_once __DIR__ . 'app/presentacion/UsuarioPresentacion.php';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    //avisa que los datos van en formato json
    header('Content-Type: application/json');
    //metodo donde php consigue el formato json que manda javascript
    $contenidoJson = file_get_contents('php://input');
    //convierte ese texto en un array
    $datos = json_decode($contenidoJson, true);

    //comprueba que la peticion reciba los datos
    if ($datos) {
        try {
            require_once __DIR__ . '/app/logica/UsuarioLogica.php';

            //recibe los datos enviados por javascript, 
            $email =$datos['email'] ; 
            $nombre = $datos['nombre'];
            $contrasenia = $datos['contrasenia'];
            $rol = $datos['rol'];
            
            
            //crea el objeto en la clase prsentacion e inserta los datos recibidos
            $pre = new UsuarioPresentacion();
            //boolean dependiendo si se guardan de manera correcta los datos
            $resultado = $pre->crearUsuario($email,$nombre,$contrasenia,$rol);

            //condicion enviando una respuesta en formato json, dependiendo si tuvo éxito
            if ($resultado) {
                echo json_encode(['success' => true]);
            } else {
                echo json_encode(['success' => false, 'mensaje' => 'No se pudo guardar la notificación.']);
            }
        } catch (\Throwable $e) { // Captura cualquier Exception o Error fatal
            echo json_encode(['success' => false, 'mensaje' => 'Error: ' . $e->getMessage()]);
        }
    } else {
        echo json_encode(['success' => false, 'mensaje' => 'Datos JSON inválidos o vacíos.']);
    }
    exit; 
}
?>
<main id="mainAuser">

    <form id="contenedorAgregarUsuario">

        <a id="volverCrearUsuario"><i class="fa-solid fa-arrow-left"></i></a>

        <label id="IDlabel" for="ID">
            CorreoElectronico:
        </label>
        <input type="email" id="email" name="email" required>

        <label id="NombreLabel" for="NombreUsuario">
            Nombre: 
        </label>
        <input type="text" id="NombreUsuario" name="Nombre" required>

        <label id="ContraseniaLabel" for="ContraseniaUsuario">
            Contraseña: 
        </label>
        <input type="password" id="ContraseniaUsuario" name="Contrasenia" required>

        <label id="RolLabel" for="RolUser">
            Rol: 
        </label>
        
        <select id="RolUser" name="Usuario" required>
            
            <option value="" disabled selected>Selecciona un rol...</option>
            <option value="Estudiante">Estudiante</option>
            <option value="Docente">Docente</option>
            <option value="Administrativo">Administrativo</option>

        </select>
    
        <button id="AgregarUsuario">Agregar Usuario</button>

    </form>          


</main>