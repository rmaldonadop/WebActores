<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

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
              <b>El Modelo de Actores</b>
            </div>
            <div class="card-body">
              <p>El Modelo de Actores es un modelo de computación concurrente usado para el desarrollo de sistemas paralelos, distribuidos y móviles. En el 
                  modelo, cada actor es un objeto autónomo que opera concurrentemente y asincrónicamente, recibiendo y enviando mensajes a otros actores, 
                  creando nuevos actores y actualizando su propio estado local. Un sistema de actores consiste en una colección de actores, algunos de los 
                  cuales pueden enviar mensajes a, o recibir mensajes de, actores fuera del sistema. (Rajesh Karmani & Gul Agha, 2011)</p>
              <p>El concepto de actores fue introducido por primera vez por Carl Hewitt en 1969 (Carl Hewitt’s Planner, 1969), en donde el término hacía 
                  referencia a entidades basadas en reglas que buscan una base de conocimiento para que coincidan los patrones y, en respuesta, desencadenan 
                  acciones. Por las siguientes dos décadas, el equipo de Hewitt trabajó en el Modelo de Actores como agentes de computación hasta que evolucionó 
                  como un modelo de computación concurrente. (Rajesh Karmani & Gul Agha, 2011)</p>
              <p>En los últimos años, el Modelo de Actores ha visto un considerable incremento en su popularidad como alternativa para dar solución a la 
                  computación concurrente en los distintos tipos de sistemas. Tanto es así, que múltiples lenguajes de programación como, por ejemplo, Erlang, 
                  Scala, entre otros, han implementado el modelo de forma nativa. Por otro lado, lenguajes ampliamente usados por la comunidad, han implementado 
                  el modelo a través de librerías que permiten la utilización del modelo, como es el caso de la librería actorFoundry para JAVA o Celluloid para 
                  Ruby.</p>
              <p>Una de las ventajas que tiene este modelo sobre los demás modelos de concurrencia computacional, es que fue desarrollado en un ambiente donde 
                  la computación concurrente era una realidad; algunos sistemas ya podían realizar multiprocesamiento, trayendo consigo una serie de problemas. 
                  Por tanto, el modelo fue desarrollado desde un principio con la finalidad de dar solución al tal problema, mientras que la mayoría de los 
                  modelos más antiguos, son adaptaciones de formas secuenciales de programar para dar solución a una programación no secuencial.</p>
              <a href="<c:url value="/conceptos-basicos"/>" class="btn btn-success">Siguiente</a>
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
