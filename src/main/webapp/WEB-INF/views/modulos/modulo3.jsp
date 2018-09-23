<%-- 
    Document   : modulo3
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

        <title>Modulo 3</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"/>">
    </head>
    
    <body onload="loadModulo()">
        <!-- Navegacion -->
        <jsp:include page="../layouts/menu.jsp"/>

        <div class="container">
            <h2 class="my-4">Modulo 3: Cola de Mensajes</h2>

            <div class="row rounded" style="background-color: #f8f8f8; border: 1px solid; height: 200px;">
                <div class="col-md-12">
                    <h5><b>Objetivo:</b></h5>
                    <p>Demostrar el funcionamiento del buzon de mensajes de un actor, cuando recibe multiples mensajes.</p>
                    <h5><b>Descripción:</b></h5>
                    <p>En este modulo, puedes definir la cantidad de mensajes que quieres que envie cada actor indicando la cantidad en cada espacio desigano. 
                        Una vez hecho esto, al presionar Iniciar, cada actor mensajero enviará la cantidad de mensajes indicada al actor recetor, en cual
                        los almacenara en su buzon segun orden de llegada.</p>
                </div>
            </div>
            <li> ID = <c:out value="${id}" /> </li>
            <hr>
            <div class="row rounded" style="background-color: #f8f8f8; border: 1px solid; height: 40px; align-items: center;">
                <div class="col-md-12">
                    <span class="badge badge-secondary">Opciones</span>
                    <div class="btn-group col-md-8">
                        <button class="btn btn-outline-primary" onclick="location.href = '/webActores/modulo3'" id="btnIniciar" value="Iniciar" style="width: 100px">Iniciar</button>
                        <button class="btn btn-outline-primary" id="btnReiniciar" value="Reiniciar" style="width: 100px">Reiniciar</button>
                    </div> 
                </div>
            </div>
            <div class="row rounded" style="background-color: #f8f8f8; border: 1px solid; height: 40px; align-items: center;">
                <div class="col-md-2"><span class="badge badge-secondary">Mensajes por Actor</span></div>
                <a>Mensajero 1: </a>
                <div class="col-md-1"><input class="form-control" id="actor1" type="text" value="1" style="width: 50px; height: 30px;"></div>
                <a>Mensajero 2: </a>
                <div class="col-md-1"><input class="form-control" id="actor2" type="text" value="1" style="width: 50px; height: 30px;"></div>
                <a>Mensajero 3: </a>
                <div class="col-md-1"><input class="form-control" id="actor3" type="text" value="1" style="width: 50px; height: 30px;"></div>
            </div>
            <div class="row">
                <div class="col-md-12 rounded" style="border: 1px solid; height: 500px;">
                    <canvas id="lienzo3" width="1150" height="500" class="col-md-12">Este navegador no soporta canvas</canvas>
                    <img src="<c:url value="/resources/images/mensaje.png"/>" id="mensaje" style="display: none">
                    <script src="<c:url value="/resources/js/modulo3.js"/>"></script>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"></script>
    </body>
</html>
