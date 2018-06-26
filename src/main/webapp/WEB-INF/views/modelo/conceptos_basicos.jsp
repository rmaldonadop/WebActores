<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modelo de Actores - Conceptos Basicos</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/shop-item.css"/>" rel="stylesheet">

  </head>

  <body>
    <!-- Page Content -->
        <div class="col-lg-9">

          <div class="card card-outline-secondary my-4">
            <div class="card-header">
              Conceptos Basicos
            </div>
            <div class="card-body">
              <p>Existen varios componentes que son claves para entender el funcionamiento y filosofía del modelo de forma correcta. 
                  Entre tales conceptos, lo primero que se debe tener claro es la definición de valor, identidad y estado.</p>
              <p>Valor: Un valor es algo que no cambia.</p>
              <p>Identidad: corresponde a una entidad lógica estable, asociada con una serie de diferentes valores a lo largo del tiempo.</p>
              <p>Estado: Se refiere al valor que una entidad con una identidad específica, tiene en un punto particular en el tiempo.</p>
              <p>Una vez conocidos estos conceptos básicos, lo siguiente es preguntarse ¿Cómo se sabe si algo tiene estado? La respuesta es muy sencilla. 
                  Si una función es invocada con los mismos argumentos en dos diferentes puntos en el tiempo y retorna diferentes valores, 
                  entonces tiene un estado.</p>
              <a href="#" class="btn btn-success">Leave a Review</a>
            </div>
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->


    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"</script>
    <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"</script>

  </body>

</html>
