<?php

    require_once 'app/presentacion/NotificacionPresentacion.php';
    require_once 'app/logica/Entidades/NotificacionEntidad.php';

    $notificacionPresentacion = new NotificacionPresentacion();
    $palabraFiltro = isset($_GET['palabraFiltro']) ? $_GET['palabraFiltro'] : '';


    if (isset($_GET['pagina'])) {
        $pagina = $_GET['pagina'];
    } else {
        $pagina = 1;
    }

    session_start();
    //echo $_SESSION['grupo'];
    
    $notificaciones = $notificacionPresentacion->obtenerNotificaciones(10, $pagina, $palabraFiltro);

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
            require_once __DIR__ . '/app/logica/NotificacionLogica.php';

            //recibe los datos enviados por javascript, 
            $identificador = 0; 
            $nombre = $datos['nombre'];
            $descripcion = $datos['descripcion'];
            $publico = $datos['publico'];
            
            //crea el objeto en la clase logica e inserta los datos recibidos
            $logica = new NotificacionLogica();
            //boolean dependiendo si se guardan de manera correcta los datos
            $resultado = $logica->crearNotificacion($identificador, $nombre, $descripcion, $publico);

            //condicion enviando una respuesta en formato json, dependiendo si tuvo éxito
            if ($resultado) {
                echo json_encode(['success' => true]);
            } else {
                echo json_encode(['success' => false, 'mensaje' => 'No se pudo guardar la notificación.']);
            }
        } catch (Exception $e) {
            echo json_encode(['success' => false, 'mensaje' => $e->getMessage()]);
        }
    } else {
        echo json_encode(['success' => false, 'mensaje' => 'Datos JSON inválidos o vacíos.']);
    }
    exit; 
}




?>

    <main id = "mainNotificaciones"> 
        <div id="contenedorBuscadorNotificaciones">
            <i class="fa-solid fa-magnifying-glass"></i>
            <form method="GET">
                <input type="text" placeholder="Buscar notificaciones" name = "palabraFiltro" value = "<?php echo htmlspecialchars($palabraFiltro); ?>" ></input>
            </form>
            <a id="newpapers"><i class="fa-solid fa-newspaper" ></i></a>
            <a id="userPlus"><i class="fa-solid fa-user-plus"></i></a>
        </div> 

            <div id = "contenedorNotificaciones">
                <h2>Últimas novedades</h2>
    

                <?php
                    if($notificaciones === null){
                        echo("NO SE HAN ENCONTRADO NOTIFICACIONES");

                    }
                    else{
                        foreach ($notificaciones as $notificacion) {
        
                        echo '<div class = "notificacion">';
                        echo '<h3>' . $notificacion->getNombre() . '</h3>';
                        echo '<p>' . $notificacion->getDescripcion() . '</p>';
                        echo '<a class="leerMas">Leer más</a>';
                        echo '</div>';

                        }
                    }

                ?>
            

        </div>
        <div id="paginacion">
            <?php
            if ($pagina>1)
            echo '<a href="index.php?pagina=' . $pagina - 1 . '" id="paginacionAnterior"> Anterior </a>';

            for($i = 1; $i <= 10; $i++){
                echo '<a href="index.php?pagina=' . $i . '" class="paginacionIndices">' . $i . '</a>';
            }

            echo '<a href="index.php?pagina=' . $pagina + 1 . '" id="paginacionSiguiente"> Siguiente </a>';

            ?>
    </div>

        <div id="contenedorAgregarNotificacion" class="oculto">
           
            <a id="volverAgregarNotificacion"><i class="fa-solid fa-arrow-left"></i></a>

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

                <select id="grupoSelect" name="Grupo"> 

                    <option value="" disabled selected>Selecciona un grupo...</option>
                    <option value="MC">Informática</option>
                    <option value="Gastronomia">Gastronomía</option>

                </select>

                <select id="añoGrupoSelect" name="AñoGrupo"> 

                    <option value="" disabled selected>Selecciona un año...</option>
                    <option value="1ero">Primero</option>
                    <option value="2do">Segundo</option>
                    <option value="3ero">Tercero</option>

                </select>
                        
            </div>

            <button id="AgregarNotificacion">Agregar Notificacion</button>

        </div>
    </main>
    <div id="overlayNotificacion"></div>