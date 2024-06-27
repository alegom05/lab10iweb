

<%@page import="java.util.ArrayList"%>
<%@page import="com.example.lab10.entidad.Estadio"%>
<%@page import="java.text.NumberFormat"%>
<%@ page import="com.example.lab10.entidad.Estadio" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //Job job = (Job) request.getAttribute("job");
    ArrayList<Estadio> listaEstadios = (ArrayList) request.getAttribute("listar");

    String searchTerm = request.getParameter("searchTerm");
    Estadio estadio = new Estadio();
    /*genero generoSeleccionado = (genero) request.getAttribute("generoSeleccionado");
    streaming streamingSeleccionado = (streaming) request.getAttribute("streamingSeleccionado");
    NumberFormat formatter = NumberFormat.getInstance();*/
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Películas</title>
</head>
<body>

<h1>Lista de Estadios</h1>

<form action="listar" method="POST">
    <div class="combobox-container">


        <input type="hidden" name="action" value="filtrar">
        <button type="submit">Filtrar</button>
        <form action="EstadioController?action=listar" method="GET">
            <button type="submit">Limpiar</button>
        </form>
    </div>

</form>


<table border="1">
    <tr>

        <th>Id</th>
        <th>Nombre</th>
        <th>Provincia</th>
        <th>Club</th>
        <th></th>


    </tr>
    <%
        for (Estadio i : listaEstadios) {
    %>
    <tr>

        <td><a href="listaEstadios?idPelicula=<%= i.getIdEstadio() %>"><%=i.getNombre()%></a></td>
        <td><%=i.getIdEstadio()%></td>
        <td><%=i.getNombre()%></td>
        <td><%=i.getProvincia()%>/10</td>
        <td><%=i.getClub()%></td>
        <td><a href="listaEstadios?idEstadio=<%= i.getIdEstadio() %>">Ver Actores</a></td>
        <%
            if (1 == 1) {
        %>
        <td> <a href="listaPeliculas?action=borrar&idPelicula=<%= i.getIdEstadio() %>" class="button-link">Borrar</a></td>
        <%
            }
        %>
    </tr>

    <%
        }
    %>

</table>

</body>
</html>