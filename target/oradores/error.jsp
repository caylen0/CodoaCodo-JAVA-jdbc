<%@ page contentType="text/html" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error</title>
    <link rel="stylesheet" href="./CSS/bootstrap.css">
    <link rel="stylesheet" href="./CSS/style.css">
</head>
<body>
    <header>
        <!--Menu-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid" id="menu">
                <a class="navbar-brand" href="#">
                    <img src="./IMG/codoacodo.png" alt="Logo codo a codo" width="120" height="60">
                    Conf Bs As
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="./index.html">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./index.html">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./index.html">Conviértete en orador</a>
                        </li>
                        <form class="d-flex" action="ver_orador" method="get">
                            <input class="form-control me-2" name="buscar_id" type="text" placeholder="Buscar por ID" >
                            <button class="btn btn-outline-success" type="submit">MOSTRAR</button>
                        </form>
                    </ul>
                </div>
            </div>
        </nav>
    <h2 class="orador">¡ERROR AL INGRESAR EL NUEVO REGISTRO!</h2>


    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
          </symbol>
    </svg>
    <div class="container">
        <div class="alert alert-danger d-flex align-items-center" role="alert">
            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
            <div>
                No se pudo ingresar correctamente el nuevo registro, por favor intente nuevamente
            </div>
        </div>
    </div>
    <p id="exito" class="parrafo"></p>

    <div class="container">
        <div class="row mb-2">
            <div id="boton-formulario" class="d-grid gap-2 col-8 mx-auto">
                <a class="btn btn-primary" href="./index.html" role="button">Volver a la pagina principal</a>
            </div>
        </div>
    </div>

</body>
</html>