<?php

require_once 'app/presentacion/ClasePresentacion.php';
require_once 'app/presentacion/UsuarioPresentacion.php';

$horariosPresentacion = new ClasePresentacion();
$usuario = new UsuarioPresentacion();
session_start();
//si no hay sesion manda el main de login
if (!isset($_SESSION['correoElectronico'])) {
    header("Location: login.php");
    exit();
}
?>

<main id="mainHorarios">

    <?php
    if (isset($_SESSION['correoElectronico'])) {
        $grupoActual = $usuario->obtenerGrupoUsuario($_SESSION['correoElectronico']);
    }

    if (isset($_SESSION['correoElectronico']) && ((isset($_SESSION['rol']) && $_SESSION['rol'] === 'administrativo') || $grupoActual === '3 MC')):
    ?>

        <h2>HORARIO SEMANAL 3MC</h2>
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

                if ($filasHorario !== null) {

                    foreach ($filasHorario as $fila) {
                ?>

                        <tr>
                            <td>

                                <?= $fila["horaInicio"] . "-" . $fila["horaFin"] ?>

                            </td>

                            <?php

                            if ($fila["tipo"] === "descanso") {

                                echo '<td colspan="5" style="background-color: #fffacd;">Descanso</td>';
                            } else {

                                foreach ($fila["materias"] as $materia) {

                                    echo "<td>" . $materia . "</td>";
                                }
                            }
                            ?>


                        </tr>

                <?php
                    }
                } else {
                }

                ?>

            </tbody>

        </table>
    <?php
    endif;
    ?>
    <?php
    if (isset($_SESSION['correoElectronico']) && ((isset($_SESSION['rol']) && $_SESSION['rol'] === 'administrativo') || $grupoActual === '2 MB')):
    ?>
        <h2>HORARIO SEMANAL 2MB</h2>
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

            <tbody>
                <tr>
                    <td>17:20 - 18:00</td>
                    <td>Inglés</td>
                    <td>Filosofía</td>
                    <td>Inglés</td>
                    <td>Filosofía</td>
                    <td>Biología</td>
                </tr>
                <tr>
                    <td>18:00 - 18:50</td>
                    <td>Geografía</td>
                    <td>Matemáticas</td>
                    <td>Geografía</td>
                    <td>Matemáticas</td>
                    <td>Historia</td>
                </tr>
                <tr>
                    <td>18:50 - 19:00</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>19:00 - 19:45</td>
                    <td>Química</td>
                    <td>Literatura</td>
                    <td>Química</td>
                    <td>Literatura</td>
                    <td>Informática</td>
                </tr>
                <tr>
                    <td>19:45 - 20:30</td>
                    <td>Química</td>
                    <td>Literatura</td>
                    <td>Química</td>
                    <td>Literatura</td>
                    <td>Informática</td>
                </tr>
                <tr>
                    <td>20:30 - 20:40</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>20:40 - 21:25</td>
                    <td>Matemáticas</td>
                    <td>Educación Física</td>
                    <td>Matemáticas</td>
                    <td>Educación Física</td>
                    <td>Física</td>
                </tr>
                <tr>
                    <td>21:25 - 22:10</td>
                    <td>Matemáticas</td>
                    <td>Educación Física</td>
                    <td>Matemáticas</td>
                    <td>Educación Física</td>
                    <td>Física</td>
                </tr>
                <tr>
                    <td>22:10 - 22:20</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>22:20 - 23:05</td>
                    <td>Arte</td>
                    <td>Química</td>
                    <td>Arte</td>
                    <td>Química</td>
                    <td>Filosofía</td>
                </tr>
                <tr>
                    <td>23:05 - 23:50</td>
                    <td>Arte</td>
                    <td>Química</td>
                    <td>Arte</td>
                    <td>Química</td>
                    <td>Filosofía</td>
                </tr>
            </tbody>
        </table>
    <?php
    endif;
    ?>
    <?php
    if (isset($_SESSION['correoElectronico']) && ((isset($_SESSION['rol']) && $_SESSION['rol'] === 'administrativo') || $grupoActual === '1 MA')):
    ?>
        <h2>HORARIO SEMANAL 1MA</h2>
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

            <tbody>
                <tr>
                    <td>17:20 - 18:00</td>
                    <td>Química</td>
                    <td>Geografía</td>
                    <td>Química</td>
                    <td>Geografía</td>
                    <td>Literatura</td>
                </tr>
                <tr>
                    <td>18:00 - 18:50</td>
                    <td>Filosofía</td>
                    <td>Informática</td>
                    <td>Filosofía</td>
                    <td>Informática</td>
                    <td>Matemáticas</td>
                </tr>
                <tr>
                    <td>18:50 - 19:00</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>19:00 - 19:45</td>
                    <td>Historia</td>
                    <td>Matemáticas</td>
                    <td>Historia</td>
                    <td>Matemáticas</td>
                    <td>Inglés</td>
                </tr>
                <tr>
                    <td>19:45 - 20:30</td>
                    <td>Historia</td>
                    <td>Matemáticas</td>
                    <td>Historia</td>
                    <td>Matemáticas</td>
                    <td>Inglés</td>
                </tr>
                <tr>
                    <td>20:30 - 20:40</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>20:40 - 21:25</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Arte</td>
                </tr>
                <tr>
                    <td>21:25 - 22:10</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Arte</td>
                </tr>
                <tr>
                    <td>22:10 - 22:20</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>22:20 - 23:05</td>
                    <td>Educación Física</td>
                    <td>Literatura</td>
                    <td>Educación Física</td>
                    <td>Literatura</td>
                    <td>Geografía</td>
                </tr>
                <tr>
                    <td>23:05 - 23:50</td>
                    <td>Educación Física</td>
                    <td>Literatura</td>
                    <td>Educación Física</td>
                    <td>Literatura</td>
                    <td>Geografía</td>
            </tbody>
        </table>
    <?php
    endif;
    ?>



</main>