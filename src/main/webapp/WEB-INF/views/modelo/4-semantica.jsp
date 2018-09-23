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
                <b>Propiedades Semánticas</b>
            </div>
            <div class="card-body">
              <p>Existen algunas propiedades importantes del Modelo de Actores puro. Estás propiedades son: la encapsulación y atomicidad, imparcialidad 
                  y transparencia de ubicación. Si bien, no todos los lenguajes de actores imponen o implementan estas propiedades, es importante 
                  conocerlas para tener una visión más general del funcionamiento del modelo.</p>
              <p><b>a. Encapsulación y atomicidad</b></p>
              <p>El concepto de encapsulación, básicamente implica que dos actores no comparten un estado. Esto es útil para aplicar una descomposición 
                  de estilo de objeto en el código, en donde un objeto invoca a otro objeto (envía un mensaje), quien termina de procesar el mensaje antes 
                  de aceptar otro mensaje de un objeto diferente.</p>
              <p>Esto nos permite razonar sobre el comportamiento del objeto en respuesta a un mensaje, en función al estado del objeto objetivo cuando 
                  recibió el mensaje. En otras palabras, es posible predecir el comportamiento de un actor frente a un mensaje, si se conoce el estado 
                  actual de éste y el mensaje que recibe.</p>
              <p>En la computación concurrente, es posible que un mensaje llegue mientras un actor está ocupado procesando otro mensaje. Ahora bien, si 
                  el segundo mensaje tiene permitido interrumpir al actor objetivo y modificar el estado del objetivo mientras el objetivo aún está 
                  procesando el primer mensaje, ya no es posible razonar sobre el comportamiento del actor objetivo en función de cuál era el estado del 
                  objetivo cuando recibió el primer mensaje. Esto hace que sea difícil razonar sobre el comportamiento del sistema, ya que tal intercalación 
                  de mensajes puede conducir a estados erróneos e inconsistentes.</p>
              <p>En cambio, si el actor objetivo procesa los mensajes uno a la vez, se simplifica el razonamiento sobre los programas de los actores. </p>
              <p><b>b. Imparcialidad (fairness)</b></p>
              <p>El Modelo de Actores asume una noción de imparcialidad que establece que cada actor progresa si tiene algún cálculo que hacer, y que cada 
                  mensaje finalmente se entrega al actor de destino, a menos que el actor de destino esté permanentemente desactivado.</p>
              <p>La imparcialidad permite el razonamiento modular sobre las propiedades de vida de los programas de actores. Por ejemplo, si un sistema de 
                  actores A está compuesto por un sistema de actores B, donde B incluye actores que están permanentemente ocupados, la composición no afecta 
                  el progreso de los actores en A; esto permite evitar bloqueos de proceso debido a la dependencia de unos componentes con otros.</p>
              <p>Un ejemplo de falta de imparcialidad es en los navegadores, en donde muchas veces los complementos hechos por terceros, agregados al navegador, 
                  terminan bloqueando ciertas funciones o el navegador mismo. Si la imparcialidad estuviera presente en este caso, un mal funcionamiento de un 
                  complemento no afectaría al navegador en absoluto.</p>
              <p><b>c. Transparencia de ubicación (location transparency)</b></p>
              <p>En el Modelo de Actores, la ubicación actual de un actor no afecta su nombre. Los actores se comunican por intercambio de mensajes con otros 
                  actores, los cuales podrían estar en el mismo núcleo, en la misma CPU, o en otro nodo en la red. El nombre de transparencia de ubicación 
                  proporciona una abstracción para los programadores, permitiéndoles programar sin preocupación sobre la localización física actual de los actores. 
                  El nombre de transparencia de ubicación facilita la migración automática en el tiempo de ejecución, al igual que la indirección en el 
                  direccionamiento facilita la compactación después de la recolección de basura en la programación secuencial.</p>
              <p>La movilidad se define como la capacidad de un cálculo para migrar a través de diferentes nodos. La movilidad es importante para equilibrar la 
                  carga, tolerancia a fallas y reconfiguración. En particular, la movilidad es útil para lograr un rendimiento escalable, particularmente para 
                  aplicaciones dinámicas e irregulares. Además, el empleo de distribuciones diferentes en distintas etapas de un cálculo puede mejorar el 
                  rendimiento. En otros casos, el rendimiento óptimo o correcto depende de las condiciones de tiempo de ejecución, como los datos y la carga de 
                  trabajo, o las características de seguridad de las diferentes plataformas. Por ejemplo, las aplicaciones web pueden migrarse a servidores o 
                  clientes móviles dependiendo de las condiciones y capacidades de la red del cliente.</p>
              <hr>
              <a href="<c:url value="/sincronizacion"/>" class="btn btn-success">Anterior</a>
              <a href="<c:url value="/aplicacion-basica"/>" class="btn btn-success">Siguiente</a>
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
