<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "PÁGINA PRINCIPAL" %>
</h1>
<h1><%= "Las selecciones, los estadios y los protagonistas del deporte rey en un solo lugar" %>
</h1>
<br/>
<p><a href="${pageContext.request.contextPath}/JugadorController?action=listar">Lista de jugadores</a></p>
<p><a href="${pageContext.request.contextPath}/EstadioController?action=listar">Lista de estadios</a></p>
</body>
</html>