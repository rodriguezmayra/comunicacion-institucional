<main id="mainLogin">

    <h2 id="inicioSesion">Iniciar Sesión</h2>
    
    <section id="login">

        <form method="POST" action="app/presentacion/UsuarioPresentacion.php">


            <label id="correoLabel" for="correo">
                Correo electronico:
            </label>

            <input type="email" id="correo" name="correoElectronico" required>

            <label id="passwordLabel" for="contrasenia">
                Contraseña: 
            </label>

            <input type="password" id="contrasenia" name="contrasenia" required>

             <button id="loginButton" type="submit">
                Iniciar Sesión
            </button>

            <?php

                $accion = $_GET["accion"] ?? "";

                if ($accion == "credenciales-incorrectas") {
                    
                    echo "<p id=mensaje>Credenciales incorrectas, vuelva a intentarlo...</p>";

                }

            ?>

           

             


        </form>

    </section>

</main>

