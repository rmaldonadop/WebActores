<%-- 
    Document   : indice_lateral
    Created on : 26-06-2018, 0:14:28
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modelo de actores - Indice</title>
    </head>
    <body>
        <div class="col-lg-3">
            <h1 class="my-4">Acerca del modelo</h1>
            <div class="list-group">
                <a href="<c:url value="/actor_model"/>" class="list-group-item active">Modelo de Actores</a>
                <a href="<c:url value="/conceptos_basicos"/>" class="list-group-item">Conceptos básicos</a>
                <a href="<c:url value="/caracteristicas"/>" class="list-group-item">Características</a>
                <a href="<c:url value="/sincronizacion"/>" class="list-group-item">Sincronización</a>
                <a href="#" class="list-group-item">Propiedades semánticas</a>
                <a href="#" class="list-group-item">Aplicación básica</a>
            </div>
        </div>
        <!-- /.col-lg-3 -->
    </body>
</html>
