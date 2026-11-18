<?php

require_once 'app/presentacion/ClasePresentacion.php';

$horariosPresentacion = new ClasePresentacion();

session_start();
//si no hay sesion manda el main de login
if (!isset($_SESSION['correoElectronico'])) {
    header("Location: login.php");
    exit();
}
?>

<main id ="mainHorarios">
    <h2>HORARIO SEMANAL</h2>
    <div>
        <table id="tablaHorarios">

            <thead>
                <tr>
                    <th>Hora</th>
                    <th>Lunes</th>
                    <th>Martes</th>
                    <th>Miércoles</th>
                    <th>Jueves</th>
                    <th>Viernes</th>
                </tr>
            </thead>

            
            <?php

                $filasHorario = $horariosPresentacion->obtenerHorarios();
                
            ?>
                <tbody>

                    <?php

                    if ( $filasHorario !== null){

                        foreach ($filasHorario as $fila){
                        ?>
                        
                            <tr>
                                <td>

                                    <?= $fila["horaInicio"] . "-" . $fila["horaFin"] ?>

                                </td>

                                <?php 
                                
                                if ($fila["tipo"] === "descanso"){

                                    echo '<td colspan="5" style="background-color: #fffacd;">Descanso</td>';

                                }else{

                                    foreach ($fila["materias"] as $materia){

                                        echo "<td>" . $materia . "</td>";

                                    }

                                } 
                                ?>


                            </tr>    

                    <?php
                    }

                }else{
                    
                }
                    
                    ?>
                
                </tbody>

            

        </table>
    </div>
</main>   
