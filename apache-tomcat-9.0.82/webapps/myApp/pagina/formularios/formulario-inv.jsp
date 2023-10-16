<%@ page contentType="text/html; charset=UTF-8"  %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Inventario</title>
    <link href="../estilos/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../estilos/styles.css">
</head>

<body class="fondo-imagen">

    <header class="container bg-dark col-6 rounded">
        <h1 class="text-primary text-center">
            Editar Formulario
        </h1>
    </header>

    <nav>
        <div id="barra-nav" class="bg-dark">
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="../index.html"> Inicio </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="../recetas.html"> Recetas </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../inventario.html">Inventario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../menu.html">Menú</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container col-md-6 bg-dark mt-3">
        <h1 class="text-primary">Formulario de Inventario</h1>
        <form class="form" method="post" action="../../ValidacionFormulario"> OJO AQUI
            <div class="form-group mt-1">
                <label for="nombreIngrediente" class="text-primary">Nombre del Ingrediente</label>
                <input type="text" name="ingrediente" class="form-control" id="nombreIngrediente" placeholder="Ejemplo: Lechuga">
            </div>


            <div class="form-group mt-3">
                <label for="tipoProducto" class="text-primary">Tipo de Producto</label>
                <select class="form-control" id="tipoProducto" name="tipoProducto" >
                    <option value="Seleccionar">Seleccionar</option>
                    <option value="Producto Perecedero">Producto Perecedero</option>
                    <option value="Producto para Empacar">Producto para Empacar</option>
                    <option value="Otros">Otros</option>
                </select>
            </div>


            <div class="form-group mt-3">
                <label for="cantidadExistencia" class="text-primary">Cantidad</label>
                <input type="number" class="form-control" id="cantidadExistencia" placeholder="Ejemplo: 100" name="cantidadExistencia">
            </div>


            <div class="form-group mt-3">
                <label for="medida" class="text-primary">Medida</label>
                <select class="form-control" id="medida" name="medida">
                    <option value="Seleccionar">Seleccionar</option>
                    <option value="Kg"> Kilogramos</option>
                    <option value="g"> Gramos</option>
                    <option value="pza">Pieza</option>
                    <option value="lt">Litros</option>
                    <option value="ml">Mililitros</option>
                </select>
            </div>


            <div class="form-group mt-3">
                <label for="fechaCompra" class="text-primary">Fecha de compra</label>
                <input type="date" class="form-control" id="fechaCompra" name="fechaCompra">
            </div>
            <div class="form-group mt-3">
                <label for="fechaCaducidad" class="text-primary">Fecha de caducidad</label>
                <input type="date" class="form-control" id="fechaCaducidad" name="fechaCaducidad">
            </div>


            <div class="form-group mt-3">
                <label for="nombreProveedor" class="text-primary">Nombre del Proveedor</label>
                <input type="text" class="form-control" id="nombreProveedor" placeholder="Ejemplo: Proveedor AAA" name="nombreProveedor">
            </div>
            <div class="form-group mt-3">
                <label for="descripcion" class="text-primary">Breve descripción del producto</label>
                <input type="text" class="form-control" id="descripcion" name="descripcion">
            </div>
            <div class="form-group mt-3">
                <label for="comentarios" class="text-primary">Comentarios adicionales</label>
                <textarea class="form-control" id="comentarios" rows="3" name="comentarios"></textarea>
            </div>
            <div class="col-md-6 text-right">
                <button type="submit" class="btn btn-primary mt-3 mb-3">Agregar al inventario</button>
            </div>
        </form>
    </div>
</body>

</html>
 
