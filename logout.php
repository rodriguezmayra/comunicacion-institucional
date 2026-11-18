<?php 
    session_start();

    $_SESSION = array();
    //verifica que php esta configurado para usar las cookies para las sesiones
    if (ini_get("session.use_cookies")){
        //obtiene los parametros con los que se creo la cookie
        $params = session_get_cookie_params();
        //sobreescribe la cookie dejandola vacia y se le pasa un parametro de tiempo para que el navegador vea q ya "caduco"
        setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
    }

    session_destroy();

    header("location: index.php");
    exit;
?>