<%@ page contentType="text/html" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro Exitoso</title>
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
    <h2 class="orador">¡REGISTRO EXITOSO!</h2>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
          <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
        </symbol>
    </svg>
    <div class="container">
        <div class="alert alert-success d-flex align-items-center" role="alert">
            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
            <div>
                Se inserto correctamente el nuevo registro
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mb-2">
            <div id="boton-formulario" class="d-grid gap-2 col-8 mx-auto">
                <a class="btn btn-primary" href="./index.html" role="button">Volver a la pagina principal</a>
            </div>
        </div>
    </div>

</body>
</html>