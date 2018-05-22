<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <title>Web Actores - Pagina de Inicio</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >

        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/business-frontpage.css"/>" rel="stylesheet">
        
    </head>

    <body>

        <!-- Navigation -->
        <jsp:include page="../layouts/menu.jsp"></jsp:include>

        <!-- Header with Background Image -->
        <header class="business-header" style="background-image: url('resources/images/encabezado.png');" >
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <h1 class="display-3 text-center text-white mt-4">Modelo de Actores</h1>
              </div>
            </div>
          </div>
        </header>

        <!-- Page Content -->
        <div class="container">

          <div class="row">
            <div class="col-sm-8">
              <h2 class="mt-4">What We Do</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A deserunt neque tempore recusandae animi soluta quasi? Asperiores rem dolore eaque vel, porro, soluta unde debitis aliquam laboriosam. Repellat explicabo, maiores!</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis optio neque consectetur consequatur magni in nisi, natus beatae quidem quam odit commodi ducimus totam eum, alias, adipisci nesciunt voluptate. Voluptatum.</p>
              <p>
                <a class="btn btn-primary btn-lg" href="#">Call to Action &raquo;</a>
              </p>
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
                <img class="card-img-top" src="http://placehold.it/300x200" alt="">
                <div class="card-body">
                  <h4 class="card-title">Card title</h4>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque sequi doloribus.</p>
                </div>
                <div class="card-footer">
                  <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
              </div>
            </div>
            <div class="col-sm-4 my-4">
              <div class="card">
                <img class="card-img-top" src="http://placehold.it/300x200" alt="">
                <div class="card-body">
                  <h4 class="card-title">Card title</h4>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque sequi doloribus totam ut praesentium aut.</p>
                </div>
                <div class="card-footer">
                  <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
              </div>
            </div>
            <div class="col-sm-4 my-4">
              <div class="card">
                <img class="card-img-top" src="http://placehold.it/300x200" alt="">
                <div class="card-body">
                  <h4 class="card-title">Card title</h4>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
                </div>
                <div class="card-footer">
                  <a href="#" class="btn btn-primary">Find Out More!</a>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
        <footer>
            <jsp:include page="../layouts/footer.jsp"></jsp:include>
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/webjars/jquery/3.3.1/jquery.min.js"/>"</script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"</script>

    </body>
    
</html>
