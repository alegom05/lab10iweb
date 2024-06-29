

<%@page import="java.util.ArrayList"%>

<%@page import="java.text.NumberFormat"%>
<%@page import="com.example.lab10.entidad.Jugador" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Jugador jugador = new Jugador();
    ArrayList<Jugador> listaJugadores = (ArrayList) request.getAttribute("listar");
    String searchTerm = request.getParameter("searchTerm");
    NumberFormat formatter = NumberFormat.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Jugadores</title>
</head>
<body>

<h1>Lista de Jugadores</h1>

<form action="listar" method="POST">
    <div class="combobox-container">


        <input type="hidden" name="action" value="filtrar">
        <button type="submit">Filtrar</button>
        <form action="JugadorController?action=listar" method="GET">
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
        <td><%=i.getEdad()%></td>
        <td><%=i.getPosicion()%></td>
        <td><%=i.getClub()%>/10</td>
        <td><%=i.getSeleccion()%></td>
        <td><a href="listaJugadores?idJugador=<%= jugador.getIdJugador() %>">Ver Jugadores</a></td>
        <%
            if (1 == 1) {
        %>
        <td> <a href="JugadorController?action=borrar&idPelicula=<%= jugador.getIdJugador() %>" class="button-link">Borrar</a></td>
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