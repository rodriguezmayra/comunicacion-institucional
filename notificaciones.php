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
            <i class="fa-solid fa-newspaper"></i>
            <button id="IngresarNotificacion" onclick="window.location.href='crearNotificacion.php';">Agregar Notificacion</button>
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
    </main>