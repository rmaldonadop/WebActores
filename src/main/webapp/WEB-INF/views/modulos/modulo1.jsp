<%-- 
    Document   : modulo1
    Created on : 21-05-2018, 20:00:49
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en-us">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Modulo 1</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"/>">
    </head>
    
    <body  onload="loadModulo()">
        <!-- Navegacion -->
        <jsp:include page="../layouts/menu.jsp"/>

        <div class="container">
            <h2 class="my-4">Modulo 1</h2>

            <div class="row">
                <div class="col-md-12 rounded" style="background-color: #f8f8f8; border: 1px solid; height: 150px;">
                    <h5>Objetivo:</h5>
                    <p>Desmostrar las reacciones básicas de un actor al recibir un mensaje.</p>
                    <h5>Descripción:</h5>
                    <p>descripcion resumida del funcionamiento del modulo</p>
                </div>
            </div>
            <hr>
            <div class="row rounded" style="background-color: #f8f8f8; border: 1px solid; height: 40px; align-items: center;">
                <div class="col-md-2"><span class="badge badge-secondary">Escribe tu Mensaje</span></div>
                <a>Mensaje: </a>
                <div class="col-md-2"><input class="form-control" id="txtMensaje" type="text" value="enviar" style="width: 100px; height: 30px;"></div>
                <button class="btn btn-outline-primary" id="btnEnviar" value="Enviar" style="width: 100px">Enviar</button>
            </div>
            <div class="row">
                <div class="col-md-12 rounded" style="border: 1px solid; height: 500px;">
                    <canvas id="lienzo1" width="1150" height="500" class="col-md-12">Este navegador no soporta canvas</canvas>
                    <img src="<c:url value="/resources/images/mensaje.png"/>" id="mensaje" style="display: none">
                    <script src="<c:url value="/resources/js/modulo1.js"/>"></script>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"></script>

    </body>
</html>
