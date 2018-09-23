<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

  <head>

    <meta charset="UTF-8">
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
                <b>Aplicación Básica</b>
            </div>
            <div class="card-body">
              <p>Con la finalidad de mostrar cómo se define un actor en una aplicación, en la siguiente figura, se muestra un ejemplo básico de cómo se 
                  define un actor. Este ejemplo esta implementado en el lenguaje Scala/Akka</p>
              <p style="text-align: center">
                  <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/aplicacion-basica.png"/>">
              </p>
              <p>En el código, se define un actor con el nombre “HelloActor”. El comportamiento del actor “HelloActor” se implementa por la definición 
                  del método “receive”, el cual se implementa utilizando una expresión “match”. Cuando “helloActor”, recibe el string “hello” como un 
                  mensaje, este imprime la primera respuesta, mientras que, si recibe cualquier otro tipo de mensaje, imprime la segunda respuesta.</p>
              <p>El objeto “main” se crea para probar el actor. En “main” se necesita un “ActorSystem” para comenzar, por lo que se crea uno. “ActorSystem” 
                  toma un nombre como argumento, por lo que se debe dar un nombre significativo al sistema, que para este caso es “HelloSystem”.</p>
              <p>Los actores se pueden crear a nivel de “ActorSystem” o dentro de otros actores. En el nivel de “ActorSystem”, las instancias de actor se 
                  crean con el método “system.actorOf”. La línea “HelloActor” muestra la sintaxis para crear un actor con un constructor que no toma 
                  argumentos. Los actores se inician automáticamente (de forma asincrónica) cuando se crean, por lo que no es necesario llamar a ningún 
                  tipo de método de "inicio" o "ejecución".</p>
              <p>Por último, los mensajes se envían con el método “!”, y “main” envía dos mensajes al actor los cuales son, “hello” y “buenos días”. 
                  El actor responde a los mensajes según el comportamiento definido anteriormente.</p>
              <p>Cabe destacar, que los mensajes enviados al actor no tienen por qué ser procesados en el mismo orden en que se enviaron, por lo que la 
                  respuesta al mensaje “buenos días” podría llegar antes que la del mensaje “hello”.</p>
              <hr>
              <a href="<c:url value="/sincronizacion"/>" class="btn btn-success">Anterior</a>
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
