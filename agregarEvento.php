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
            <input type="text" id="FechaInicioEvento" name="FechaInicio" required>

            <label id="FechaFinLabel" for="FechaFinEvento">
                Fecha de finalización: 
            </label>
            <input type="text" id="FechaFinEvento" name="FechaFin" required>
        </div>
        <div id="horaEvento">
            <label id="HoraInicioLabel" for="HoraInicioEvento">
                Horario de inicio: 
            </label>
            <input type="text" id="HoraInicioEvento" name="HoraInicio" required>

            <label id="HoraFinLabel" for="HoraFinEvento">
                Horario de finalización: 
            </label>
            <input type="text" id="HoraFinEvento" name="HoraFin" required>
        </div>

        <button id="AgregarEvento">Agregar Evento</button>

    </form>
</main>