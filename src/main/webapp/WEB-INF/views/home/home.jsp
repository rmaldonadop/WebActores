<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Home</title>
        
        <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.1.0/css/bootstrap.min.css"/>" >
    </head>
    <body>
        
        <hr/>
        
        <h1>Hello World!</h1>
        <p>This is the homepage!</p>
        
        <table class="table table-bordered">
            <thead>
                <th>ID</th>
                <th>algo</th>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>panky</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>roberto</td>
                </tr>
            </tbody>
        </table>
        
        <hr/>
        <div class="container">
            <div class="panel panel-info">
                <div class="panel-heading">Encabezado</div>
                <div class="panel-body">A Basic Panel</div>
            </div>
        </div>
        
        <hr/>
        <div class="container"><br/>
            <div class="alert alert-success">         
                <strong>Success!</strong> It is working as we expected.
            </div>
        </div>
        
        <script src="<c:url value="/webjars/jquery/3.3.1/jquery.min.js"/>"</script>
        <script src="<c:url value="/webjars/bootstrap/4.1.0/js/bootstrap.min.js"/>"</script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    </body>
</html>
