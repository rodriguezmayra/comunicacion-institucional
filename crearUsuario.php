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