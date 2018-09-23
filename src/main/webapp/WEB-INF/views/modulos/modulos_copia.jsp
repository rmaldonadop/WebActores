<%-- 
    Document   : modulos
    Created on : 16-05-2018, 18:01:16
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="es">
    <head>
        <meta charset="UTF-8"/>
        <title>Lista de Modulos</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
    </head>
    <body>
        <jsp:include page="../layouts/menu.jsp"></jsp:include>
        <hr/>
        
        <h1 class="color">Listado de Modulos</h1>
        <ul>
            <li> ID = <c:out value="${id}" /> </li>
            <li> ID2 = ${id2} </li>
        </ul>
        
        <script src="<c:url value="/resources/js/funciones.js"/>" ></script>
    </body>
</html>
