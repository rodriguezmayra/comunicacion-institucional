
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
//Llama a todos los elementos necesarios para el fetch
const horarios = document.querySelector("#horarios");
const calendario = document.querySelector("#calendario");
const notificaciones = document.querySelector("#notificaciones");
const iniciarSesionA = document.querySelector("#iniciarSesionA");
const cerrarSesionA = document.querySelector("#cerrarSesionA");
const indexMain = document.querySelector("#mainInicio");

//Comprueba si existen antes de ejecutar el código para evitar errores
if (horarios && calendario && notificaciones && iniciarSesionA){

    //Agrega un evento cuando se carga el DOM
    document.addEventListener("DOMContentLoaded", async () => {


        const parametros = new URLSearchParams(window.location.search);
        const accion = parametros.get("accion");

         if (accion === "credenciales-incorrectas"){
            
            const respuestaLogin = await fetch("login.php" + window.location.search);
            const loginTexto = await respuestaLogin.text();

            indexMain.innerHTML = loginTexto;
            return;
        
        }

        //Guarda el contenido del archivo notificaciones.php
        const respuestaNotificaciones = await fetch ("notificaciones.php" + window.location.search);

        //Pasa a texto el contenido de el archivo notificaciones.php
        const notificacionesTexto = await respuestaNotificaciones.text();

        //Inserta el código dentro del main de index
        indexMain.innerHTML = notificacionesTexto;

        //Aplica los estilos necesarios para que se seleccione visualmente el botón "notificaciones"
        notificaciones.classList.add("mainActivo");
        notificaciones.classList.remove("bordeBajo");

        horarios.classList.remove("mainActivo");
        horarios.classList.add("bordeBajo");

        calendario.classList.remove("mainActivo");
        calendario.classList.add("bordeBajo");

        //Inicializa funciones que requieren de elementos de notificaciones.php
        inicializarAgregarNotificaciones();

        subopcionesGrupos();

        inicializarExpandirNotificaciones();

        inicializarAgregarUsuario();

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

        inicializarAgregarUsuario();

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

    //Guarda elementos necesarios desde el DOM
    const botonAgregarNotificacion = document.querySelector("#newpapers");
    const agregarNotificacion = document.querySelector("#contenedorAgregarNotificacion");
    const contenedorNotificaciones = document.querySelector("#contenedorNotificaciones");
    const paginacion = document.querySelector("#paginacion");
    const contenedorBuscadorNotificaciones = document.querySelector("#contenedorBuscadorNotificaciones");
    const volverAgregarNotificaciones = document.querySelector("#volverAgregarNotificacion");

    //Comprueba que existan esos elementos para mitigar errores
    if (botonAgregarNotificacion && agregarNotificacion && contenedorNotificaciones && contenedorBuscadorNotificaciones && volverAgregarNotificaciones) {

        //Agrega un evento de tipo click al botón de agregar notificaciones
        botonAgregarNotificacion.addEventListener("click", () => {

            //Oculta el contenedor donde se ven las notificaciones y demás
            agregarNotificacion.classList.toggle("oculto");
            contenedorNotificaciones.classList.toggle("oculto");
            paginacion.classList.toggle("oculto");
            contenedorBuscadorNotificaciones.classList.toggle("oculto");

            //Deselecciona visualmente los switches del main
            notificaciones.classList.remove("mainActivo");
            notificaciones.classList.add("bordeBajo");

            horarios.classList.remove("mainActivo");
            horarios.classList.add("bordeBajo");

            calendario.classList.remove("mainActivo");
            calendario.classList.add("bordeBajo");

        });
        
        //Agrega un evento de tipo click al botón de volver dentro de agregar notificaciones
        volverAgregarNotificaciones.addEventListener("click", () => {
            
            //Oculta y muestra los elementos inversamente respecto al boton de agregar notificaciones
            agregarNotificacion.classList.toggle("oculto");
            contenedorNotificaciones.classList.toggle("oculto");
            paginacion.classList.toggle("oculto");
            contenedorBuscadorNotificaciones.classList.toggle("oculto");

            //Vuelve a seleccionar visualmente el switch de notificaciones
            notificaciones.classList.add("mainActivo");
            notificaciones.classList.remove("bordeBajo");

            horarios.classList.remove("mainActivo");
            horarios.classList.add("bordeBajo");

            calendario.classList.remove("mainActivo");
            calendario.classList.add("bordeBajo");

        });
    }

    else{

        console.log("no funciona");

    }
}


function subopcionesGrupos() {

    const opcionesGrupo = document.querySelector("#opcionesGrupos");
    const selectPublico = document.querySelector("#PublicoNotificacion");

        //Agrega un evento de tipo change (cuando su valor cambia) al selector de público notificación
        selectPublico.addEventListener("change", (evento) => {

            //Se guarda el valor que tenga en ese momento el selector
            const publicoNotificacion = evento.target.value;

            //Si el valor del selector es "Grupo" se ejecuta
            if(publicoNotificacion === "Grupo"){
                
                //Hace aparecer las subopciones de grupo
                opcionesGrupo.classList.remove("oculto");

            }
            else{
                
                //Oculta las subopciones de grupo
                opcionesGrupo.classList.add("oculto");

            }
        });
        
}


function inicializarExpandirNotificaciones() {

    const overlay = document.querySelector("#overlayNotificacion");
    const botonesLeerMas = document.querySelectorAll(".leerMas");

    //Recorre todos los botones de leer más
    botonesLeerMas.forEach(boton => {

        //Le añade un evento click a cada uno
        boton.addEventListener("click", () => {

            //Guarda el contenedor de notificación de cada leer más
            const notificacion = boton.closest(".notificacion");
            
            //Activa o desactiva el overlay y la expanción de la notificación
            notificacion.classList.toggle("expandida");
            overlay.classList.toggle("activo");

            //Si la notificación está expandida se ejecuta
            if(notificacion.classList.contains("expandida")){
                //Cambia el texto del botón a Leer menos
                boton.textContent = "Leer menos";
            }
            else{
                //Vuelve el texto del botón a Leer más
                boton.textContent = "Leer más";
            }

        });
    });

    //Añade un evento para que si se clickea fuera de la notificación, vuelva a la normalidad
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

function inicializarAgregarUsuario() {

    const agregarUsuario = document.querySelector("#userPlus");
    
    //fetch para agregar usuario
    agregarUsuario.addEventListener("click", async () => {

        const respuestaAgregarUsuario = await fetch ("crearUsuario.php");

        const agregarUsuarioTexto = await respuestaAgregarUsuario.text();

        indexMain.innerHTML = agregarUsuarioTexto;

        notificaciones.classList.remove("mainActivo");
        notificaciones.classList.add("bordeBajo");

        horarios.classList.remove("mainActivo");
        horarios.classList.add("bordeBajo");

        calendario.classList.remove("mainActivo");
        calendario.classList.add("bordeBajo");

        inicializarVolverCrearUsuario();
    });
    
    //fetch para que vuelva al main de notificaciones desde crear usuario
    function inicializarVolverCrearUsuario() {
        const volverCrearUsuario = document.querySelector("#volverCrearUsuario");

        volverCrearUsuario.addEventListener("click", async () => {

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

            inicializarAgregarUsuario();

        });
    }


}

const BotonInsertarNotificacion = document.querySelector("#AgregarNotificacion");

document.addEventListener("click", async (event) => {
    //comprueba que se haya pulsado en el boton agregar notificacion
    if (event.target && event.target.id === "AgregarNotificacion") {
        //busca los elementos insertados y saca espacios 
        const NombreNotificacion = document.querySelector("#NombreNotificacion").value.trim();
        const DescripcionNotificacion = document.querySelector("#DescripcionNotificacion").value.trim();
        const PublicoNotificacion = document.querySelector("#PublicoNotificacion").value;
        const FechaNotificacion = new Date().toISOString().split('T')[0];

        //valida que los campos no esten vacios
        if(!NombreNotificacion || !DescripcionNotificacion || !PublicoNotificacion){
            alert("Complete todos los campos porfavor");
            return;
        }

        //guarda los datos en una variable "array"
        const datos = {
            nombre: NombreNotificacion,
            descripcion: DescripcionNotificacion,
            publico: PublicoNotificacion,
            fecha: FechaNotificacion
        };

        try {
            //peticion que envia los datos de forma sigilosa con el fetch con formato json
            const respuesta = await fetch('notificaciones.php', {
                //envia
                method: 'POST',
                //instruccion de la peticion web, avisa en que formato viaja la informacion
                headers: {
                    'Content-Type': 'application/json'
                },
                //transforma la variable datos en un texto plano (json)
                body: JSON.stringify(datos)
            });
            //recibe la respuesta de la db y lo guarda dentro de una variable
            const textoRespuesta = await respuesta.text();
            //transforma la respuesta json, y la transforma en un objeto javascript
            const resultado = JSON.parse(textoRespuesta);
            
            //segun el resultado decide que hacer
            if (resultado.success) {
                alert("¡Notificación agregada con éxito!");
                location.reload(); //reinicia la pagina para que sea visualice la nueva notificacion
            } else {
                alert("Error al agregar: " + resultado.mensaje);
            }
        } catch (error) {
            console.error("Error en la petición:", error);
            alert("Hubo un error de conexión con el servidor.");
        }
    }
});

