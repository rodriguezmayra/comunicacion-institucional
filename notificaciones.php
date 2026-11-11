<?php

    require_once 'app/presentacion/NotificacionPresentacion.php';
    require_once 'app/logica/Entidades/NotificacionEntidad.php';

    $notificacionPresentacion = new NotificacionPresentacion();
    


    if (isset($_GET['pagina'])) {
        $pagina = $_GET['pagina'];
    } else {
        $pagina = 1;
    }

    session_start();
    //echo $_SESSION['grupo'];
    
    $notificaciones = $notificacionPresentacion->obtenerNotificaciones(10, $pagina);



?>

    <main id = "mainNotificaciones"> 
        <div id="contenedorBuscadorNotificaciones">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" placeholder="Buscar notificaciones"></input>
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

            <button id="AgregarNotificacion"    >Agregar Notificacion</button>

        </div>
    </main>
    <div id="overlayNotificacion"></div>