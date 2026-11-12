<?php

 require_once 'app/logica/CalendarioLogica.php';
 require_once 'app/presentacion/CalendarioPresentacion.php';
 require_once 'app/logica/Entidades/EventoEntidad.php';

 $calendarioLogica = new CalendarioLogica();


 $eventos = $calendarioLogica->obtenerEvento();

//Obtener zona horaria
date_default_timezone_set('America/Montevideo');

// Obtener el mes y año actual
$month = date('m');
$year = date('Y');
$day = date ('d');

// Obtener el número de días en el mes
$daysInMonth = cal_days_in_month(
    CAL_GREGORIAN,
    $month,
    $year
);

// Obtener el día de la semana en el que comienza el mes
$firstDay = date('N', strtotime("$year-$month-01"));

//Arreglo de meses en español
$months = [
1=> "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"
];

echo "<h1>" . $months[$month] . " de " . $year . "</h1>";

echo "</td>";

?>
<main>
<h2> Calendario de eventos</h2>

<table id="calendarioTabla">
    <tr>
        <th>Lun</th>
        <th>Mar</th>
        <th>Mie</th>
        <th>Jue</th>
        <th>Vie</th>
        <th>Sab</th>
        <th>Dom</th>
    </tr>

    <tr>
        <?php

        // Celdas vacías antes del primer día del mes
        for ($i = 1; $i < $firstDay; $i++) {
            echo "<td></td>";
        }

        // Muestra los días del mes
        for ($day = 1; $day <= $daysInMonth; $day++) {
            $class = ($day == date('j')) ? 'today' : '';

        $fechaActual = "$year-$month-" . str_pad($day,2,'0', STR_PAD_LEFT);

            
            $contenido = "";

            $contenido .= "<td class='$class'>";
            $contenido .= "<span class='numero_dia'>$day</span>";

            foreach ($eventos as $evento) {

                    if ($evento->getFechaInicio()== $fechaActual){

                    $contenido .= '<div class = "eventos">' ;
                    $contenido .= '<h5>' . $evento->getFechaInicio() . '</h5>';
                    $contenido .= '<p>' . $evento->getFechaFinal() . '</p>';
                    }

                    }

                $contenido .= '</div>';
                $contenido .= '</td>';
                echo $contenido;

                    

            // Comienza una nueva fila después del domingo
            if (($day + $firstDay - 1) % 7 == 0) {
                echo "</tr><tr>";
            }
        }

        ?>
    </tr>
</table>
</main>