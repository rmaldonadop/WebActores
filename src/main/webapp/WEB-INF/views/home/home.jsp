<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Web Actores - Pagina de Inicio</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/business-frontpage.css"/>" rel="stylesheet">

    </head>

    <body>

        <!-- Navigation -->
        <jsp:include page="../layouts/menu.jsp"/>

        <!-- Header with Background Image -->
        <header class="business-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="display-3 text-center text-white mt-4 font-weight-bold">Modelo de Actores</h1>
                    </div>
                </div>
            </div>
        </header>

        <!-- Page Content -->
        <div class="container">

            <div class="row">
                <div class="col-sm-8">
                    <h2 class="mt-4">Bienvenido</h2>
                    <p>Esta web a sido desarrollada con la finalidad de ser una fuente de información util y una herramienta de aprendizaje para todo aquel que 
                        interesado en conocer acerca del modelo de programacion concurrente conocido como: Modelo de Actores</p>
                    <p>En esta web, encontrarás todo lo necesario para entender como funciona el modelo, desde lo mas básico a lo mas complejo. Ademas, tendrás a
                        tu disposición herramientas graficas que muestran como se comportan los "actores" dentro del modelo para así ayudar a su facil comprensión 
                        una vez que domines los conceptos básicos.</p>
                    <p>Espero que todo el material que encuentres aqui te ayude a aprender sobre el modelo, de la manera mas sencilla posible.</p>
                </div>
                <div class="col-sm-4">
                    <h2 class="mt-4">Contact Us</h2>
                    <address>
                        <strong>Start Bootstrap</strong>
                        <br>3481 Melrose Place
                        <br>Beverly Hills, CA 90210
                        <br>
                    </address>
                    <address>
                        <abbr title="Phone">P:</abbr>
                        (123) 456-7890
                        <br>
                        <abbr title="Email">E:</abbr>
                        <a href="mailto:#">name@example.com</a>
                    </address>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-sm-4 my-4">
                    <div class="card">
                        <img class="card-img-top" src="<c:url value="/resources/images/tarjeta1.png"/>" alt="">
                        <div class="card-body">
                            <h4 class="card-title">Acerca del modelo</h4>
                            <p class="card-text">Aprende todo lo que necesitas saber sobre el Modelo de Actores y los conceptos básicos que debes manejar.</p>
                        </div>
                        <div class="card-footer">
                            <a href="<c:url value="/actor-model"/>" class="btn btn-primary">Ir a la pagina</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 my-4">
                    <div class="card">
                        <img class="card-img-top" src="<c:url value="/resources/images/tarjeta2.png"/>" alt="">
                        <div class="card-body">
                            <h4 class="card-title">Experimenta</h4>
                            <p class="card-text">¿Ya dominas los conceptos? Aprende sobre el comportamiento de los usando alguno de los simuladores gráficos.</p>
                        </div>
                        <div class="card-footer">
                            <a href="<c:url value="/modulos"/>" class="btn btn-primary">Ir a la pagina</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 my-4">
                    <div class="card">
                        <img class="card-img-top" src="<c:url value="/resources/images/tarjeta3.png"/>" alt="">
                        <div class="card-body">
                            <h4 class="card-title">Java Akka</h4>
                            <p class="card-text">Aprende mas acerca de la programación de actores en Java a traves de Akka, usando la documentacion oficial.</p>
                        </div>
                        <div class="card-footer">
                            <a href="https://doc.akka.io/docs/akka/2.5/guide/introduction.html#how-to-get-started" class="btn btn-primary">Ir a la pagina</a>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->

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
