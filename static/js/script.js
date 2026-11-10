
/*-------------------------------------------*/
/*Funcionamiento del botón del menú desplegable*/

//Guarda el botón en una constante
const botonMenu = document.querySelector("#botonMenu");
if (botonMenu){
    //Guarda el <ul> hijo del menú 
    let menuDesplegable = document.querySelector("#menuHeader ul");

    //Agrega un evento de "Click" al botón
    botonMenu.addEventListener("click", () => {
        //Asigna o quita la clase "oculto" al elemento, lo hace cada vez que se presiona el botón.
        menuDesplegable.classList.toggle("oculto");

    });
    //Agrega un evento "Click" para que cuando se presione fuera del botón, se cierre el menú desplegable
    document.addEventListener("click", (clickFuera) => {
        //Si el evento "Click" no es sobre el botón del menú ejecuta
        if (!botonMenu.contains(clickFuera.target)){
            //cambia la clase del menú para que se oculte
            menuDesplegable.classList.add("oculto");

        }
    });
}
const horarios = document.querySelector("#horarios");
const calendario = document.querySelector("#calendario");
const notificaciones = document.querySelector("#notificaciones");
const iniciarSesionA = document.querySelector("#iniciarSesionA");
const cerrarSesionA = document.querySelector("#cerrarSesionA");
const indexMain = document.querySelector("#mainInicio");


if (horarios && calendario && notificaciones && iniciarSesionA){

    document.addEventListener("DOMContentLoaded", async () => {

        const parametros = new URLSearchParams(window.location.search);
        const accion = parametros.get("accion");

         if (accion === "credenciales-incorrectas"){
            
            const respuestaLogin = await fetch("login.php" + window.location.search);
            const loginTexto = await respuestaLogin.text();

            indexMain.innerHTML = loginTexto;
            return;
        
        }


        const respuestaNotificaciones = await fetch ("notificaciones.php" + window.location.search);

        const notificacionesTexto = await respuestaNotificaciones.text();

        indexMain.innerHTML = notificacionesTexto;

        notificaciones.classList.add("mainActivo");
        notificaciones.classList.remove("bordeBajo");

        horarios.classList.remove("mainActivo");
        horarios.classList.add("bordeBajo");

        calendario.classList.remove("mainActivo");
        calendario.classList.add("bordeBajo");

        inicializarAgregarNotificaciones();

        subopcionesGrupos();

        inicializarExpandirNotificaciones();

    });

    horarios.addEventListener("click", async () =>{

        const respuestaHorarios = await fetch ("horarios.php");

        const horarioTexto = await respuestaHorarios.text();

        indexMain.innerHTML = horarioTexto;

        notificaciones.classList.remove("mainActivo");
        notificaciones.classList.add("bordeBajo");

        horarios.classList.add("mainActivo");
        horarios.classList.remove("bordeBajo");

        calendario.classList.remove("mainActivo");
        calendario.classList.add("bordeBajo");


    });

    calendario.addEventListener("click", async () => {

        const respuestaCalendario = await fetch ("calendario.php");

        const calendarioTexto = await respuestaCalendario.text();

        indexMain.innerHTML = calendarioTexto;

        notificaciones.classList.remove("mainActivo");
        notificaciones.classList.add("bordeBajo");

        horarios.classList.remove("mainActivo");
        horarios.classList.add("bordeBajo");

        calendario.classList.add("mainActivo");
        calendario.classList.remove("bordeBajo");

    });

    notificaciones.addEventListener("click", async () => {

        const respuestaNotificaciones = await fetch ("notificaciones.php");

        const notificacionesTexto = await respuestaNotificaciones.text();

        indexMain.innerHTML = notificacionesTexto;

        notificaciones.classList.add("mainActivo");
        notificaciones.classList.remove("bordeBajo");

        horarios.classList.remove("mainActivo");
        horarios.classList.add("bordeBajo");

        calendario.classList.remove("mainActivo");
        calendario.classList.add("bordeBajo");

        inicializarAgregarNotificaciones();

        subopcionesGrupos();

        inicializarExpandirNotificaciones();

    });

    iniciarSesionA.addEventListener("click", async () => {
        
        const respuestaLogin = await fetch("login.php");

        const loginTexto = await respuestaLogin.text();

        indexMain.innerHTML = loginTexto;

        notificaciones.classList.remove("mainActivo");
        notificaciones.classList.add("bordeBajo");

        horarios.classList.remove("mainActivo");
        horarios.classList.add("bordeBajo");

        calendario.classList.remove("mainActivo");
        calendario.classList.add("bordeBajo");

        inicializarLoginButton();


    });
        
}
else {
    console.log("no funciona");
}

function inicializarAgregarNotificaciones (){
    const botonAgregarNotificacion = document.querySelector("#newpapers");
    const agregarNotificacion = document.querySelector("#contenedorAgregarNotificacion");
    const contenedorNotificaciones = document.querySelector("#contenedorNotificaciones");
    const paginacion = document.querySelector("#paginacion");
    const contenedorBuscadorNotificaciones = document.querySelector("#contenedorBuscadorNotificaciones");
    const volverAgregarNotificaciones = document.querySelector("#volverAgregarNotificacion");

    if (botonAgregarNotificacion && agregarNotificacion && contenedorNotificaciones && contenedorBuscadorNotificaciones && volverAgregarNotificaciones) {
        console.log("Se encontró el botón");

        botonAgregarNotificacion.addEventListener("click", () => {

            agregarNotificacion.classList.toggle("oculto");
            contenedorNotificaciones.classList.toggle("oculto");
            paginacion.classList.toggle("oculto");
            contenedorBuscadorNotificaciones.classList.toggle("oculto");

        });
        
        volverAgregarNotificaciones.addEventListener("click", () => {

            agregarNotificacion.classList.toggle("oculto");
            contenedorNotificaciones.classList.toggle("oculto");
            paginacion.classList.toggle("oculto");
            contenedorBuscadorNotificaciones.classList.toggle("oculto");

        });
    }

    else{

        console.log("no funciona");

    }
}


function subopcionesGrupos() {

    const opcionesGrupo = document.querySelector("#opcionesGrupos");
    const selectPublico = document.querySelector("#PublicoNotificacion");

        selectPublico.addEventListener("change", (evento) => {

            const publicoNotificacion = evento.target.value;

            if(publicoNotificacion === "Grupo"){

            opcionesGrupo.classList.remove("oculto");

            }
            else{
               opcionesGrupo.classList.add("oculto");
            }
        });
        
}


function inicializarExpandirNotificaciones() {

    const overlay = document.querySelector("#overlayNotificacion");
    const botonesLeerMas = document.querySelectorAll(".leerMas");

    botonesLeerMas.forEach(boton => {

        boton.addEventListener("click", () => {

            const notificacion = boton.closest(".notificacion");
            
            notificacion.classList.toggle("expandida");
            overlay.classList.toggle("activo");

            if(notificacion.classList.contains("expandida")){
                boton.textContent = "Leer menos";
            }
            else{
                boton.textContent = "Leer más";
            }

        });
    });

    overlay.addEventListener("click", () => {
        const notificacionExpandida = document.querySelector(".notificacion.expandida");

        if(notificacionExpandida){

            notificacionExpandida.classList.remove("expandida");

            const boton = notificacionExpandida.querySelector(".leerMas");
            if(boton){
                boton.textContent = "Leer más";
            }
        }
        overlay.classList.remove("activo");
    });

}
