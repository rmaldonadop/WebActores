<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Modelo de Actores - Informacion</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/shop-item.css"/>" rel="stylesheet">
  </head>

  <body>
    <!-- Navigation -->
    <jsp:include page="../layouts/menu.jsp"></jsp:include>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <jsp:include page="../modelo/indice-lateral.jsp"></jsp:include>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div class="card card-outline-secondary my-4">
            <div class="card-header">
                <b>Conceptos Básicos</b>
            </div>
            <div class="card-body">
              <p>Existen varios componentes que son claves para entender el funcionamiento y filosofía del modelo de forma correcta. 
                  Entre tales conceptos, lo primero que se debe tener claro es la definición de valor, identidad y estado.</p>
              <ul style="list-style-type: disc">
                  <li><p><b>Valor:</b> Un valor es algo que no cambia.</p></li>
                  <li><p><b>Identidad:</b> corresponde a una entidad lógica estable, asociada con una serie de diferentes valores a lo largo del tiempo.</p></li>
                  <li><p><b>Estado:</b> Se refiere al <b>valor</b> que una entidad con una <b>identidad</b> específica, tiene en un punto particular en el tiempo.</p></li>
              </ul>
              <p>Una vez conocidos estos conceptos básicos, lo siguiente es preguntarse ¿Cómo se sabe si algo tiene estado? La respuesta es muy sencilla. 
                  Si una función es invocada con los mismos argumentos en dos diferentes puntos en el tiempo y retorna diferentes valores, 
                  entonces tiene un estado.</p>
              <p><b>Modelo cliente-servidor</b></p>
              <p>Un concepto interesante que puede ayudar a tener una mayor comprensión sobre el funcionamiento del Modelo de Actores y sus posibles
                  aplicaciones, es el bien conocido modelo cliente-servidor.</p>
              <p>El modelo cliente-servidor es una estructura de aplicación distribuida que divide las tareas o cargas de trabajo entre los proveedores 
                  de un recurso o servicio, los cuales son llamados servidores mientras que, por otro lado, aquellos que solicitan el servicio reciben 
                  el nombre de cliente.</p>
              <p>En esta arquitectura, la capacidad de proceso está repartida entre los clientes y los servidores; además, ofrece varias ventajas 
                  desde el punto de vista organizativo, debido a la centralización de la información y la separación de responsabilidades.</p>
              <p>La separación entre cliente y servidor es una separación de tipo lógico, donde el servidor no se ejecuta necesariamente sobre una 
                  sola máquina ni es necesariamente un solo programa. Los tipos específicos de servidores incluyen los servidores web, los servidores 
                  de archivo, los servidores de correo, etc. Mientras que sus propósitos varían de unos servicios a otros, la arquitectura básica 
                  seguirá siendo la misma.</p>
              <p style="text-align: center">
                  <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/modelo-cliente-servidor.png"/>">
              </p>
              <p><b>Características</b></p>
              <p>La máquina que desempeña el papel de servidor, es la que tiene en ejecución los programas de servidor, que son aquellos encargados 
                  de contestar a las solicitudes de los clientes. Por lo general, los clientes inician la comunicación, mientras que los servidores 
                  son los que esperan la llegada de solicitudes.</p>
              <p><b>Ventajas</b></p>
              <ul style="list-style-type: disc">
                  <li><p>Centralización del control de los recursos, datos y accesos. Es decir, los accesos, recursos y la integridad son manejados 
                          únicamente por el servidor.</p></li>
                  <li><p>Facilidad de mantenimiento por parte del servidor. Esto es debido a que el servidor se puede aplicar actualización fácilmente, 
                          mientras que los clientes generalmente no las necesitan.</p></li>
                  <li><p>Este modelo permite escalabilidad, es decir, se puede aumentar la capacidad tanto de los clientes como de los servidores por 
                          separado. Cualquier elemento puede ser mejorado en cualquier momento.</p></li>
                  <li><p>Existe un gran número de herramientas cliente-servidor probadas y seguras que están a disposición.</p></li>
              </ul>
              <p><b>Desventajas</b></p>
              <ul style="list-style-type: disc">
                  <li><p>Cuando existen una gran cantidad de peticiones simultaneas por parte de los clientes hacia un servidor, puede provocar una 
                          congestión en el servidor, causando así problemas en este para procesar dichas peticiones.</p></li>
                  <li><p>Si el servidor falla, al ser un sistema centralizado, el servicio queda totalmente paralizado para los clientes que envíen 
                          solicitudes.</p></li>
                  <li><p>Los clientes no disponen de los recursos que puedan existir en el servidor.</p></li>
              </ul>
              <hr>
              <a href="<c:url value="/caracteristicas"/>" class="btn btn-success">Siguiente</a>
            </div>
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

      </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer>
        <jsp:include page="../layouts/footer.jsp"></jsp:include>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"></script>

  </body>
</html>
