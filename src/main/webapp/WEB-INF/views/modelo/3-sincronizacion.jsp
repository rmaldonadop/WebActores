<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en-us">
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
        <jsp:include page="../layouts/menu.jsp"/>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <jsp:include page="../modelo/indice-lateral.jsp"/>
                <!-- /.col-lg-3 -->

                <div class="col-lg-9">

                    <div class="card card-outline-secondary my-4">
                        <div class="card-header">
                            <b>Metodos de Sincronización</b>
                        </div>
                        <div class="card-body">
                            <p>Si bien los actores por definición se comunican de manera asincrónica, es posible lograr la sincronización entre ellos. Para los 
                                sistemas que hacen uso del Modelo de Actores, existe un par de métodos descritos por (Rajesh K. Karmani, Gul Agha, 2011) que 
                                establecen lo siguiente:</p>
                            <p>La sincronización en el Modelo de Actores, puede ser implementada a través de la comunicación. Existen dos tipos de patrones de 
                                comunicación comúnmente usados los cuales son: mensajería tipo Remote Procedure Call (RPC – llamada de procedimiento remoto) y 
                                las restricciones locales de sincronización. Los constructos de lenguaje pueden permitir a los programadores de actores especificar 
                                dichos patrones. Tales construcciones de lenguaje son definibles en términos de constructos de actores primitivos, pero proporcionarlos 
                                como objetos lingüísticos de primera clase simplifica la tarea de escribir código paralelo (Rajesh K. Karmani, Gul Agha, 2011).</p>

                            <p><b>a. Mensajería tipo RPC</b></p>
                            <p>La comunicación tipo RPC, consta de un patrón común de paso de mensajes en programas de actores. En este tipo de comunicación, 
                                el remitente de un mensaje espera a que llegue una respuesta antes de comenzar con el procesamiento de otros mensajes.  </p>
                            <p>Para implementar con éxito el esquema de la mensajería tipo RPC en una aplicación, un programador debe ser capaz de implementar 
                                cuatro pasos esenciales de la comunicación en su programa: </p>
                            <ul style="list-style-type: decimal">
                                <li><p>El actor cliente envía una petición.</p></li>
                                <li><p>El cliente entonces comienza a verificar mensajes entrantes.</p></li>
                                <li><p>Si el mensaje entrante corresponde a una respuesta a la petición, el cliente realiza la acción apropiada (acepta la oferta, o 
                                        continúa buscando).</p></li>
                                <li><p>Si un mensaje entrante no corresponde a una respuesta a la petición, el mensaje debe ser manejado (por ejemplo, puede ser 
                                        temporalmente almacenado para ser procesado posteriormente), y el cliente continúa verificando los mensajes buscando una 
                                        respuesta.</p></li>
                            </ul>
                            <p style="text-align: center">
                                <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/mensajeria-tipo-RPC.png"/>">
                            </p>
                            <p>En la figura anterior, se muestra como un actor cliente solicita cotizaciones de múltiples servicios competidores, usando la comunicación 
                                tipo RPC. Las flechas segmentadas entre el cliente y los servicios representan los mensajes, mientras que las flechas verticales 
                                denotan que el actor está esperando o está bloqueado durante ese periodo de su vida </p>
                            <p>Una de las ventajas de la mensajería tipo RPC, es que es soportado casi universalmente por los lenguajes y librerías de actores. Este 
                                tipo de comunicación es particularmente útil en dos tipos de escenarios. El primero de ellos ocurre cuando un actor quiere enviar una 
                                secuencia de mensajes ordenados a un destinatario particular; en este caso, se quiere asegurar que el mensaje haya sido recibido antes 
                                de enviar el siguiente mensaje. El segundo caso se da cuando el estado de un actor solicitante depende de la respuesta que recibe. 
                                En este caso, el actor solicitante no puede procesar mensajes no relacionados hasta recibir una respuesta del destinatario.</p>
                            <p>Debido a que la mensajería tipo RPC es similar a la llamada de procedimientos en los lenguajes secuenciales, los programadores tienen 
                                la tendencia a sobre usarlos. Desafortunadamente, el uso inapropiado de mensajes tipo RPC introduce dependencias innecesarias dentro 
                                del código. Esto no sólo puede hacer la ejecución del programa más ineficiente de lo que debería ser, sino que también puede llevar a 
                                deadlocks (mutuo) y liverlocks.</p>
                            <p>Los deadlocks (también conocidos en español como bloqueo mutuo o interbloqueo), es un estado que se da en la computación concurrente, 
                                en donde cada miembro de un conjunto de procesos o hilos de programación esperan permanentemente entre sí, que otro miembro libere un 
                                bloqueo para así continuar su trabajo o terminar. Este problema se da comúnmente, por necesidades de dos procesos para acceder a un 
                                mismo recurso o por problemas de comunicación.</p>
                            <p>El liverlock, es un tipo de bloqueo similar al deadlock, con la excepción que los estados de los procesos involucrados en él, cambian 
                                constantemente entre sí con respecto al otro, provocando que finalmente ninguno progrese. En otras palabras, liverlock es un estado 
                                que especifica que un proceso especifico no está progresando. Un ejemplo de liverlock en la vida real, es cuando dos personas se 
                                encuentran en un pasillo angosto y cada una intenta ser cortés dejando pasar al otro, pero, finalmente, terminan balanceándose sin 
                                realizar ningún progreso al no saber quién pasara primero ya que ambos cambian su estado de la misma manera al mismo tiempo.</p>
                            <p><b>b. Restricciones locales de sincronización</b></p>
                            <p>La asincronía es inherente en los sistemas distribuidos y móviles. Una consecuencia de la asincronía, es que el número de ordenamientos 
                                posibles en los que puede llegar un mensaje, es exponencial con respecto al número de mensaje que están pendientes en cualquier momento 
                                (mensajes que han sido enviados, pero no han sido recibidos). Debido a que un remitente puede desconocer el estado del actor al cual 
                                está enviando un mensaje, es posible que el destinatario no se encuentre en un estado en el cual pueda procesar el mensaje que está 
                                recibiendo. Por ejemplo, una cola de impresión puede no tener trabajo cuando una impresora lo solicita.</p>
                            <p>Continuando con el ejemplo de la cola de impresión. Supongamos que un mensaje “obtener” de una impresora inactiva, llega a su cola de 
                                impresión cuando esta no tiene trabajos para devolver a la impresora. Una forma de solucionar este problema es que el administrador de 
                                la aplicación rehaga la solicitud. Esto provoca que ahora la impresora necesita verificar constantemente su cola de impresión hasta que 
                                esta finalmente tenga un trabajo para la impresora. Esta técnica se conoce como “espera activa” (bussy waiting); la espera activa puede 
                                ser costosa, impidiendo al actor en espera, realizar algún otro trabajo mientras “espera”, generando un tráfico de mensajes innecesario. 
                                Una alternativa es almacenar temporalmente el mensaje “obtener” de la cola de impresión para su procesamiento diferido. El efecto de 
                                almacenar temporalmente es cambiar el orden en el cual los mensajes son procesados de manera que garantice que la cantidad de mensajes 
                                que se colocan en la cola de impresión sea siempre mayor que el número de mensajes de “obtener” procesados por la cola de impresión.</p>
                            <p style="text-align: center">
                                <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/restriccion-local.png"/>">
                            </p>
                            <p><i>En la figura 1.3, se muestra la comunicación del archivo de un actor con un cliente que está usando restricciones locales de sincronización. 
                                    Las flechas verticales describen la línea de tiempo de vida del actor y las flechas punteadas representan los mensajes. Las descripciones 
                                    dentro de los círculos representan los mensajes que el archivo del actor puede aceptar en ese estado particular.</i></p>
                            <p>Si los mensajes pendientes son almacenados explícitamente dentro del cuerpo de un actor, el código especificando la funcionalidad (el cómo o 
                                la representación) del actor es mezclado con la lógica que determina el orden con el cual el actor procesa el mensaje (el cuándo). Esta mezcla 
                                viola el principio del software de separación de preocupaciones (separation of concerns). Los investigadores han propuesto varios constructores 
                                para permitir a los programadores especificar el ordenamiento correcto en una forma modular y abstracta, específicamente, como formular la 
                                lógica (predicado) sobre el estado de un actor y el tipo de mensaje. Muchos lenguajes de actores y marcos de trabajo proporcionan tales constructores.</p>
                            <p><b>Patrones de Programación de Actores</b></p>
                            <p>Existen dos patrones programación paralela comúnmente usados: pipeline y dividir y conquistar (divide and conquer). </p>
                            <p><b>Pipeline:</b> Consiste en una cadena de procesos conectados de tal forma que la salida de cada proceso es la entrada del próximo. Un ejemplo claro 
                                de pipeline es el procesamiento de una red de imágenes, en la cual una secuencia de imágenes pasa a través de distintas etapas de filtrado y 
                                transformación. La salida de la última etapa es la secuencia de imágenes procesadas.</p>
                            <p style="text-align: center">
                                <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/patron-pipeline.png"/>">
                            </p>
                            <p><b>Dividir y vencer:</b> Método que consiste en dividir un problema en dos o más subproblemas de igual o similar tipo. Dicha división continua 
                                hasta que los subprocesos llegan a ser lo suficientemente sencillos como para ser resueltos directamente. Luego las soluciones de los subproblemas 
                                se combinan para dar solución al problema inicial.</p>
                            <p style="text-align: center">
                                <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/patron-dividir-vencer.png"/>">
                            </p>
                            <hr>
                            <a href="<c:url value="/caracteristicas"/>" class="btn btn-success">Anterior</a>
                            <a href="<c:url value="/propiedades-semanticas"/>" class="btn btn-success">Siguiente</a>
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
            <jsp:include page="../layouts/footer.jsp"/>
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"></script>

    </body>
</html>
