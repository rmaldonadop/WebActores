<%-- 
    Document   : indice_lateral
    Created on : 26-06-2018, 0:14:28
    Author     : roberto
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-lg-3">
    <h2 class="my-4">Acerca del modelo</h2>
    <div class="list-group">
        <a href="<c:url value="/actor-model"/>" class="list-group-item active">Modelo de Actores</a>
        <a href="<c:url value="/conceptos-basicos"/>" class="list-group-item">Conceptos b�sicos</a>
        <a href="<c:url value="/caracteristicas"/>" class="list-group-item">Caracter�sticas</a>
        <a href="<c:url value="/sincronizacion"/>" class="list-group-item">Sincronizaci�n</a>
        <a href="<c:url value="/propiedades-semanticas"/>" class="list-group-item">Propiedades sem�nticas</a>
        <a href="<c:url value="/aplicacion-basica"/>" class="list-group-item">Aplicaci�n b�sica</a>
    </div>
</div>
