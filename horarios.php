<?php
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
            <tbody>
                <tr>
                    <td>17:20 - 18:00</td>
                    <td>Matemáticas</td>
                    <td>Historia</td>
                    <td>Matemáticas</td>
                    <td>Historia</td>
                    <td>Física</td>
                </tr>
                <tr>
                    <td>18:00 - 18:50</td>
                    <td>Literatura</td>
                    <td>Inglés</td>
                    <td>Literatura</td>
                    <td>Inglés</td>
                    <td>Química</td>
                </tr>
                <tr>
                    <td>18:50 - 19:00</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>19:00 - 19:45</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Educación Física</td>
                </tr>
                <tr>
                    <td>19:45 - 20:30</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Educación Física</td>
                </tr>
                <tr>
                    <td>20:30 - 20:40</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                <tr>
                    <td>20:40 - 21:25</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Educación Física</td>
                </tr>
                <tr>
                    <td>21:25 - 22:10</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Educación Física</td>
                </tr>
                <tr>
                    <td>22:10 - 22:20</td>
                    <!-- Unifica las celdas y les da un color -->
                    <td colspan="5" style="background-color: #fffacd;">Descanso</td>
                </tr>
                
                <tr>
                    <td>22:20 - 23:05</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Educación Física</td>
                </tr>
                
                <tr>
                    <td>23:05 - 23:50</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Física</td>
                    <td>Biología</td>
                    <td>Educación Física</td>
                </tr>
            </tbody>
        </table>
    </div>
    </main>   

