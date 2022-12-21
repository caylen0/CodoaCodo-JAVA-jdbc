<%@ page contentType="text/html" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Orador por ID</title>
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
    <h2 class="orador">Resultado de orador por ID</h2>

    <div class="container">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Contacto</th>
                <th scope="col">Tema</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="table-primary">${o.get_id()}</td>
                <td class="table-primary">${o.get_nombre()}</td>
                <td class="table-primary">${o.get_apellido()}</td>
                <td class="table-primary">${o.get_contacto()}</td>
                <td class="table-primary">${o.get_tema()}</td>
            </tr>
            <tr>
            </tbody>
        </table>
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