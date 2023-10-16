<%@ page contentType="text/html; charset=UTF-8"  %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Ejemplo JSP</title>
</head>
<body class="container">
    <header class="row">
        <h1>Datos recibidos:</h1>
    </header>
    <div class="row">
        <div class="col-3">Nombre del ingrediente: </div>
        <div class="col-9">
        <%=
            request.getParameter("ingrediente")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Tipo de producto: </div>
        <div class="col-9">
        <%=
            request.getParameter("tipoProducto")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Cantidad en existencia: </div>
        <div class="col-9">
        <%=
            request.getParameter("cantidadExistencia")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Medida: </div>
        <div class="col-9">
        <%=
            request.getParameter("medida")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Fecha de Compra: </div>
        <div class="col-9">
        <%=
            request.getParameter("fechaCompra")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Fecha de caducidad: </div>
        <div class="col-9">
        <%=
            request.getParameter("fechaCaducidad")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Nombre del Proveedor: </div>
        <div class="col-9">
        <%=
            request.getParameter("nombreProveedor")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Descripción: </div>
        <div class="col-9">
        <%=
            request.getParameter("descripcion")
        %>
        </div>
    </div>

    <div class="row">
        <div class="col-3">Comentarios: </div>
        <div class="col-9">
        <%=
            request.getParameter("comentarios")
        %>
        </div>
    </div>
    
    <a href="../../../myApp/pagina/formularios/formulario-inv.jsp">Regresar al formulario</a>
</body>
</html>