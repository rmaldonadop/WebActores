<%-- 
    Document   : footer
    Created on : 21-05-2018, 21:31:57
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Pie de Pagina</title>
        
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >
    </head>
    <body>
        <footer class="py-5 bg-dark">
          <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
          </div>
          <!-- /.container -->
        </footer>
        
        <script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    </body>
</html>
