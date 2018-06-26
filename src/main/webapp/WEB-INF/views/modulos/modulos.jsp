<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simuladores - Listado</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/1-col-portfolio.css"/>" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <jsp:include page="../layouts/menu.jsp"></jsp:include>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">Modulos
        <small>Listado</small>
      </h1>

      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
          <a href="<c:url value="/modulo1"/>">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Modulo 1:
              <small>Reacción a mensaje</small>
          </h3>
          <p>En el modelo de actores cuando un actor recibe un mensaje, este básicamente puede tomar tres acciones: 
              enviar un mensaje, crear un nuevo actor o definir como procesar el siguiente mensaje. </p>
          <p>En este modulo, podrás apreciar como se comporta un actor al tomar alguna de estas decisiones.</p>
          <a class="btn btn-primary" href="<c:url value="/modulo1"/>">Ir al modulo</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Two -->
      <div class="row">
        <div class="col-md-7">
          <a href="<c:url value="/modulo2"/>">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Modulo 2:
              <small>Creación y comportamiento</small>
          </h3>
          <p>Cada actor en el modelo tiene características básicas en su composición y desempeñan un comportamiento en base a ellas.</p>
          <p>En este modulo, podrás crear tus propios actores y observar su comportamiento de acuerdo a tus especificaiones</p>
          <a class="btn btn-primary" href="<c:url value="/modulo2"/>">Ir al modulo</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Three -->
      <div class="row">
        <div class="col-md-7">
          <a href="<c:url value="/modulo3"/>">
            <img class="img-fluid rounded mb-3 mb-md-0" src="<c:url value="/resources/images/miniatura-modulo3.png"/>" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Modulo 3:
              <small>Buzón de mensajes</small>
          </h3>
          <p>Uno de los elementos básicos de los actores es que estos poseen un buzón, en donde cada uno de ellos almacena los mensajes 
              recibidos para luego procesarlos.</p>
          <p>En este modulo, observarás como se comporta el buzón de mensajes de un actor al recibir multiples mensajes a la vez.</p>
          <a class="btn btn-primary" href="<c:url value="/modulo3"/>">Ir al modulo</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Four -->
      <div class="row">

        <div class="col-md-7">
          <a href="<c:url value="/modulo4"/>">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Modulo 4
            <small>Metodos de sincronización</small>
          </h3>
          <p>El paso de mensajes entre actores es asincrónica por naturaleza. Sin embargo, existen métodos de sincronización que pueden 
              ser usados para conseguir que los mensajes tengan un orden deseado.</p>
          <p>En este modulo, podrás observar como funcionan dos de los metodos de sincronización mas utilizados.</p>
          <a class="btn btn-primary" href="<c:url value="/modulo4"/>">Ir al modulo</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Pagination -->
      <ul class="pagination justify-content-center" style="visibility: hidden">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer>
        <jsp:include page="../layouts/footer.jsp"></jsp:include>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"</script>
    <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"</script>

  </body>

</html>
