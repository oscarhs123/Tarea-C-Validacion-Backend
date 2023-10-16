<%@ page contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../myApp/pagina/estilos/bootstrap.min.css">
    <title>Error</title>
</head>
<body class="container">
    <header class="row">
        <h1>Error. Datos Inválidos</h1>
    </header>
    

    <div class="row">
        <ul>
        <% 
            for (Map.Entry<String, String> error : ((HashMap<String, String>)request.getAttribute("errores")).entrySet()) {
 
        %>

                <li> <strong> <%= error.getKey() %> </strong> <%= error.getValue() %> </li>
        <%                                
            }
        %>
        </ul>
    </div>
    
    <a href="../../../myApp/pagina/formularios/formulario-inv.jsp">Regresar al formulario</a>
</body>
</html>