<%-- 
    Document   : modulo2
    Created on : 21-05-2018, 20:00:49
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <title>Modulo 2</title>
        
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"/>">
        
    </head>
    <body>
        <!-- Navegacion -->
        <jsp:include page="../layouts/menu.jsp"></jsp:include>
        
        <div class="container">
            <h2 class="my-4">Modulo 2</h2>
            
            <div class="row">
                <div class="col-md-12 rounded" style="background-color: #f8f8f8; border: 1px solid; height: 150px;">
                    <h5>Objetivo:</h5>
                    <p>Mostrar al usuario cual es la estructura básica un actor y su comportamiento en base a ello.</p>
                    <h5>Descripción:</h5>
                    <p>descripcion resumida del funcionamiento del modulo</p>
                </div>
            </div>
            <hr>
            <div class="row rounded" style="background-color: #f8f8f8; border: 1px solid; height: 40px; align-items: center;">
                <div class="col-md-12">
                    <span class="badge badge-secondary">Opciones</span>
                    <div class="btn-group col-md-8">
                        <input type="button" class="btn btn-outline-primary" id="op1" value="Opcion 1" style="width: 100px">
                        <input type="button" class="btn btn-outline-primary" id="op2" value="Opcion 2" style="width: 100px">
                        <input type="button" class="btn btn-outline-primary" id="op3" value="Opcion 3" style="width: 100px">
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 rounded" style="border: 1px solid; height: 500px;">
                    <canvas id="lienzo2" width="1150" height="500" class="col-md-12">Este navegador no soporta canvas</canvas>
                    <img src="<c:url value="/resources/images/mensaje.png"/>" id="mensaje" style="display: none">
                    <script src="<c:url value="/resources/js/modulo2.js"/>"></script>
                </div>
            </div>
        </div>
        
        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"></script>
        
    </body>
</html>

