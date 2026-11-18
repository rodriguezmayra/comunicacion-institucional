<?php
require_once __DIR__ . '/app/presentacion/CalendarioPresentacion.php';
//se ejecuta cuando recibe la peticion de tipo post
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
            require_once __DIR__ . '/app/logica/CalendarioLogica.php';

            //recibe los datos enviados por javascript, 
            $identificador = 0; 
            $nombre = $datos['nombre'];
            $descripcion = $datos['descripcion'];
            $publico = $datos['publico'];
            $fecha = $datos['fecha'];
            $fechaI = $datos['fechaI'];
            $fechaF = $datos['fechaF'];
            $horaI = $datos['horaI'];
            $horaF = $datos['horaF'];
            
            //crea el objeto en la clase prsentacion e inserta los datos recibidos
            $pre = new CalendarioPresentacion();
            //boolean dependiendo si se guardan de manera correcta los datos
            $resultado = $pre->crearEvento($identificador, $nombre, $descripcion, $publico, $fecha, $fechaI, $fechaF, $horaI, $horaF);

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
<main id ="mainAgregarEvento">
    <form id="contenedorAgregarEvento">
        
        <a id="volverNotificacion"><i class="fa-solid fa-arrow-left"></i></a>

        <label id="NombreLabel" for="NombreNotificacion">
            Nombre: 
        </label>
        <input type="text" id="NombreNotificacion" name="Nombre" required>

        <label id="DescripcionLabel" for="DescripcionNotificacion">
            Descripcion: 
        </label>
        <textarea id="DescripcionNotificacion" name="Descripcion" required rows="4"></textarea>

        <label id="publicoLabel" for="PublicoNotificacion">
            Publico Objetivo: 
        </label>
        <select id="PublicoNotificacion" name="Publico" required>
            
            <option value="" disabled selected>Selecciona un público objetivo...</option>
            <option value="General">General</option>
            <option value="Usuario">Restringido</option>
            <option value="Grupo">Grupo</option>

        </select>
        <div id="opcionesGrupos" class="oculto">

            <select id="grupoSelect" name="Grupo" required> 

                <option value="" disabled selected>Selecciona un grupo...</option>
                <option value="MC">Informática</option>
                <option value="Gastronomia">Gastronomía</option>

            </select>

            <select id="añoGrupoSelect" name="AñoGrupo" required> 

                <option value="" disabled selected>Selecciona un año...</option>
                <option value="1ero">Primero</option>
                <option value="2do">Segundo</option>
                <option value="3ero">Tercero</option>

            </select>
                    
        </div>

        <div id="fechaEvento">
            <label id="FechaInicioLabel" for="FechaInicioEvento">
                Fecha de inicio: 
            </label>
            <input type="date" id="FechaInicioEvento" name="FechaInicio" required>

            <label id="FechaFinLabel" for="FechaFinEvento">
                Fecha de finalización: 
            </label>
            <input type="date" id="FechaFinEvento" name="FechaFin" required>
        </div>
        <div id="horaEvento">
            <label id="HoraInicioLabel" for="HoraInicioEvento">
                Horario de inicio: 
            </label>
            <input type="time" id="HoraInicioEvento" name="HoraInicio" required>

            <label id="HoraFinLabel" for="HoraFinEvento">
                Horario de finalización: 
            </label>
            <input type="time" id="HoraFinEvento" name="HoraFin" required>
        </div>

        <button id="AgregarEvento">Agregar Evento</button>

    </form>
</main>