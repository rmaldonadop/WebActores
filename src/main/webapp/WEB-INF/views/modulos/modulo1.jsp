<%-- 
    Document   : modulo1
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
        
        <title>Modulo 1</title>
        
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"/>">
        
    </head>
    <body>
        <!-- Navegacion -->
        <jsp:include page="../layouts/menu.jsp"></jsp:include>
        
        <div class="container">
            <h2 class="my-4">Modulo 1</h2>
            
            <div class="row">
                <div class="col-md-12 rounded" style="background-color: #f8f8f8; border: 1px solid; height: 150px;">
                    <h5>Objetivo:</h5>
                    <p>objetivos del modulo</p>
                    <h5>Descripción:</h5>
                    <p>descripcion resumida del funcionamiento del modulo</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12 rounded" style="background-color: #f8f8f8; border: 1px solid; height: 40px;">
                    <a>Opciones: </a>
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-primary">opción 1</button>
                        <button type="button" class="btn btn-outline-primary">opción 2</button>
                        <button type="button" class="btn btn-outline-primary">opción 3</button>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 rounded" style="background-color: #f8f8f8; border: 1px solid; height: 500px;">
                </div>
            </div>
            
        </div>
        
        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/webjars/jquery/3.3.1/jquery.min.js"/>"</script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"</script>
        
    </body>
</html>
