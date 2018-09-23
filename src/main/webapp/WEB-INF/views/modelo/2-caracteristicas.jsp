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
                            <b>Características</b>
                        </div>
                        <div class="card-body">
                            <p>El Modelo de Actores es una teoría matemática de la computación que trata al “actor” como la unidad primitiva de computación 
                                (Hewitt, Bishop, and Steiger 1973), el cual es capaz de recibir un mensaje y luego realizar algún tipo de computación en base 
                                a él. El modelo se ha utilizado tanto como marco para comprensión teórica de concurrencia, y como base teórica para varias 
                                implementaciones prácticas de sistemas concurrentes (Carl Hewitt, 2010). </p>
                            <p>Dicho de otra forma, un actor es la unidad primitiva de computación y es lo que recibe un mensaje y realiza algún tipo de cálculo 
                                basado en él. La idea es muy similar a la que tenemos en los lenguajes orientados a objetos, en donde un objeto recibe un mensaje 
                                (una llamada a un método) y hace algo dependiendo de qué mensaje recibe (a qué método llamamos). La principal diferencia es que 
                                los actores están completamente aislados unos de otros y nunca compartirán la memoria. También vale la pena señalar que un actor 
                                puede mantener un estado privado que nunca puede ser cambiado directamente por otro actor.</p>
                            <p>Un actor tiene un nombre, el cual es globalmente único y un comportamiento que determina sus acciones. Además, para enviar un 
                                mensaje a un actor, su nombre debe ser necesariamente usado. Por otro lado, el nombre de un actor no puede ser adivinado, por 
                                lo que si otro actor no conoce el nombre de su destinatario no podrá enviar su mensaje. Sin embargo, el nombre de un actor puede 
                                ser comunicado en un mensaje, lo que permite ampliar las posibilidades de comunicación.</p>
                            <p>Para hacer que un actor “se active”, debe recibir un mensaje o tomar uno de los mensajes pendientes y dependiendo de este, el actor 
                                tomará una acción correspondiente.  Cuando un actor recibe un mensaje, puede realizar las siguientes acciones concurrentemente:</p>
                            <ul style="list-style-type: disc">
                                <li><p><b>Enviar un mensaje:</b> un actor puede enviar un mensaje a otro actor a través del uso de la dirección de dicho actor, 
                                        la cual es única e infalible.</p></li>
                                <li><p><b>Crear un nuevo actor:</b> el actor tiene la capacidad de poder crear nuevos actores los cuales pueden permanecer de 
                                        manera indefinida como parte del sistema (persistente) o desaparecer luego de realizar la computación correspondiente.</p></li>
                                <li><p><b>Designar que hacer con el siguiente mensaje:</b> esto quiere decir que un actor puede definir cuál será su estado para 
                                        el próximo mensaje que reciba o, dicho de otra manera, el actor cambia su propio estado, tomando efecto cuando el siguiente 
                                        mensaje entrante es recibido.</p></li>
                            </ul>
                            <p>El comportamiento de un actor, puede cambiar a medida que se modifica su estado local y además los actores no comparten estado. 
                                Un actor debe enviar explícitamente un mensaje a otro actor para poder modificar su comportamiento y cada actor realiza sus acciones 
                                de forma concurrente y asincrónica.</p>
                            <p>Para la comunicación, el Modelo de Actores utiliza el paso de mensajes asincrónico. En particular, no usa ninguna entidad intermedia 
                                como canales. En cambio, cada actor, posee un buzón con su propia dirección a la cual puede dirigirse. Estas direcciones, no deben 
                                ser confundidas con identidades. Cuando un actor envía un mensaje, debe conocer la dirección del receptor. Además, los actores tienen 
                                permitido enviar mensajes a sí mismos, recibiéndolos y manejándolos más tarde en un paso futuro. Se debe tener en cuenta que el mapeo 
                                de direcciones y actores no es parte del modelo conceptual (aunque es una característica de las implementaciones) (Benjamín Erb, 2012).</p>
                            <p style="text-align: center">
                                <img class="img-fluid mb-3 mb-md-0" src="<c:url value="/resources/images/esquemas/esquema-de-actores.png"/>">
                            </p>
                            <p>La figura 1.1, es un ejemplo de una red de varios actores. Cada actor tiene su propio correo y estado aislado. Basado en el 
                                comportamiento designado, el actor responde a mensajes entrantes ya sea, enviando nuevos mensajes, creando nuevos actores y/o 
                                cambiando su comportamiento futuro (estado local).</p>
                            <p>Los mensajes son enviados asincrónicamente y dado que la ruta de acceso de un mensaje no se especifica, estos pueden tomar 
                                arbitrariamente un largo tiempo en eventualmente llegar al buzón del destinatario. Además, el Modelo de Actores no garantiza 
                                el orden de llegada de los mensajes enviados. </p>
                            <p>Un actor procesa mensajes entrantes secuencialmente de su buzón utilizando las posibilidades anteriormente mencionadas para reaccionar. 
                                La tercera posibilidad, de cambiar su propio estado interno, finalmente permite tratar con el estado mutable. Sin embargo, el nuevo 
                                comportamiento sólo se aplica después de que se haya manejado el mensaje actual. Por lo tanto, cada ejecución de tratamiento de 
                                mensajes aun representa una operación libre de efectos secundarios desde una perspectiva conceptual. El Modelo de Actores se puede 
                                usar para modelar sistemas intrínsecamente concurrentes, ya que cada actor es completamente independiente de cualquier otra instancia. 
                                No existe un estado compartido y la interacción entre los actores se basa puramente en mensajes asincrónicos.</p>
                            <p>El desacoplamiento del remitente de las comunicaciones que envía fue un avance fundamental del Modelo de Actores, ya que, permite la 
                                comunicación asincrónica y controlar las estructuras como patrones de los mensajes que pasan (Carl Hewitt, 1997).</p>
                            <p>Un actor solo puede comunicarse con otro actor del que tiene una dirección. La dirección puede ser implementada en varias formas:</p>
                            <ul style="list-style-type: disc">
                                <li><p>Dirección física fija</p></li>
                                <li><p>Dirección de memoria o disco</p></li>
                                <li><p>Dirección red</p></li>
                                <li><p>Dirección email</p></li>
                            </ul>
                            <p>El Modelo de Actores se caracteriza por la concurrencia de computación inherente dentro y entre actores, creación dinámica de actores, 
                                inclusión de dirección de actores en mensajes e interacción sólo a través del envío directo de mensajes asíncronos sin restricción 
                                en el orden de recepción de mensajes.</p>

                            <hr>
                            <a href="<c:url value="/conceptos-basicos"/>" class="btn btn-success">Anterior</a>
                            <a href="<c:url value="/sincronizacion"/>" class="btn btn-success">Siguiente</a>
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
