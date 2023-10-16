import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.text.ParseException;

public class ValidacionFormulario extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //formato para la fecha

        boolean datosValidos = true;
        HashMap<String, String> errors = new HashMap<>();
        String action = "WEB-INF/jsp/exito.jsp";

        if (request.getParameter("ingrediente") == null || "".equals(request.getParameter("ingrediente")) ) {
            datosValidos = false;
            errors.put("ingrediente", "El nombre del ingrediente es obligatorio");
        }

        if (request.getParameter("tipoProducto") == null || "Seleccionar".equals(request.getParameter("tipoProducto"))) {
            datosValidos = false;
            errors.put("tipoProducto", "Debe indicar el tipo de producto");
        }

        if (request.getParameter("cantidadExistencia") == null) {
            datosValidos = false;
            errors.put("cantidadExistencia", "La cantidad de existencia es obligatoria");
        } else {
            try {
                int cantidadExistencia = Integer.parseInt(request.getParameter("cantidadExistencia"));
                if (cantidadExistencia < 0) {
                    datosValidos = false;
                    errors.put("cantidadExistencia", "La cantidad debe ser mayor que cero");
                }
            } catch (NumberFormatException e) {
                datosValidos = false;
                errors.put("cantidadExistencia", "La cantidad de existencia debe ser un número válido");
            }
        }


        if (request.getParameterValues("medida") == null || "Seleccionar".equals(request.getParameter("medida"))) {
            datosValidos = false;
            errors.put("medida", "Debe indicar el tipo de medida del producto");
        }

        if (request.getParameter("fechaCompra") == null) {
            datosValidos = false;
            errors.put("fechaCompra", "La fecha de compra no puede ser en el futuro");
        }else{
            try{
                Date fecha = sdf.parse(request.getParameter("fechaCompra"));
                if(fecha.after(new Date())){
                    datosValidos = false;
                   errors.put("fechaCompra", "La fecha de compra no puede ser en el futuro"); 
                }
            }catch (ParseException e) {
                datosValidos = false;
                errors.put("fechaCompra", "Fecha de compra inválida"); 
            }
        }

        if (request.getParameter("fechaCaducidad") == null) {
            datosValidos = false;
            errors.put("fechaCaducidad", "Debe ingresar una fecha de caducidad");
        }else if(!"Producto Perecedero".equals(request.getParameter("tipoProducto"))){
            datosValidos = false;
                errors.put("fechaCaducidad", "Los prodcutos no perecederos no pueden tener fecha de caducidad"); 
        
        }else{
            try{
                Date fecha = sdf.parse(request.getParameter("fechaCaducidad"));
                if(fecha.before(new Date())){
                    datosValidos = false;
                   errors.put("fechaCaducidad", "La fecha de caducidad no puede ser en el pasado"); 
                }
            }catch (ParseException e) {
                datosValidos = false;
                errors.put("fechaCaducidad", "Fecha de caducidad inválida"); 
            }
        }

        

        if (request.getParameter("medida") == null) {
            datosValidos = false;
            errors.put("medida", "Debe seleccionar la unidad de medida del producto");
        }

        if(request.getParameter("nombreProveedor") == null || "".equals(request.getParameter("nombreProveedor"))){
            datosValidos = false;
            errors.put("nombreProveedor", "Debe especicificar el nombre del proveedor");
        }


        if (!datosValidos) {
            action = "WEB-INF/jsp/error.jsp";
            request.setAttribute("errores", errors);
        }
        
        request.getRequestDispatcher(action)
        .forward(request, response);

    }

}