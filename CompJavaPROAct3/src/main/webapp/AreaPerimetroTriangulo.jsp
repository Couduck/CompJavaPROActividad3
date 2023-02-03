<%-- 
    Document   : AreaPerimetroTriangulo
    Created on : 2 feb. 2023, 22:34:43
    Author     : patoe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Calculos.Triangulo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <h1>Resultados</h1>
        
        <% 
            //Se piden los valores del formulario y se utilizan para el cálculo de los valores para guardarse en variables de tipo int
            String n1 = request.getParameter("base");
            String n2 = request.getParameter("altura");
        
            Triangulo t = new Triangulo(n1, n2);
            int perimetro = t.getPerimetro();
            int area = t.getArea();
        %>
        
        <!-- Los ressultados se desplegarán en la pantalla -->
        <h2>Area</h2>
        <%=area%>
        <br><br>
        <h2>Perimetro</h2>
        <%=perimetro%>
    </body>
</html>
