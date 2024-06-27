

<%@page import="java.util.ArrayList"%>
<%@page import="com.example.pruebalaboratorio1.beans.pelicula"%>
<%@page import="com.example.pruebalaboratorio1.beans.genero"%>
<%@page import="com.example.pruebalaboratorio1.beans.streaming"%>
<%@page import="java.text.NumberFormat"%>
<%@ page import="com.example.lab10.entidad.Jugador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Jugador jugador = new Jugador();
    ArrayList<Jugador> listaJugadores = (ArrayList) request.getAttribute("lista");
    String searchTerm = request.getParameter("searchTerm");
    genero generoSeleccionado = (genero) request.getAttribute("generoSeleccionado");
    streaming streamingSeleccionado = (streaming) request.getAttribute("streamingSeleccionado");
    NumberFormat formatter = NumberFormat.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Películas</title>
</head>
<body>

<h1>Lista de Películas</h1>

<form action="listaPeliculas" method="POST">
    <div class="combobox-container">


        <input type="hidden" name="action" value="filtrar">
        <button type="submit">Filtrar</button>
        <form action="listaPeliculas?action=listar" method="GET">
            <button type="submit">Limpiar</button>
        </form>
    </div>

</form>


<table border="1">
    <tr>

        <th></th>
        <th>Nombre</th>
        <th>Edad</th>
        <th>Posición</th>
        <th>Club</th>
        <th>Selección</th>

    </tr>
    <%
        for (Jugador i : listaJugadores) {
    %>
    <tr>

        <td></td>
        <td><%=i.getIdJugador()%></td>
        <td><%=i.getNombre()%></td>
        <td><%=i.getEdad()%>/10</td>
        <td><%=i.getPosicion()%></td>
        <td><%=i.getClub()%>/10</td>
        <td><%=i.getSeleccion()%></td>
        <td><a href="listaActores?idPelicula=<%= jugador.getIdJugador() %>">Ver Actores</a></td>
        <%
            if (1 == 1) {
        %>
        <td> <a href="listaPeliculas?action=borrar&idPelicula=<%= jugador.getIdJugador() %>" class="button-link">Borrar</a></td>
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