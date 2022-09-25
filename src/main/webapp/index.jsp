<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.educacionit.entidades.Usuario"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio de Sesi�n</title>
</head>
<body>

	<h1>Inicio de Sesi�n</h1>


	<%
		String mensaje = (String) session.getAttribute("mensaje");
		Usuario usuario = (Usuario) session.getAttribute("usuario");
		String id = (String) session.getAttribute("id");
	
		if (usuario == null) {
			response.sendRedirect("formulario.jsp");
		} else {
	%>

	<h1><%=mensaje %></h1>
	<h2><%=usuario.getCorreo() %></h2>
	<h3><%="N�mero de la sesi�n: " +id%></h3>
	
	<%
	}
	%>
	<!-- Creo un ancla o referencia hacia el servlet login -->
	<a href="Login?=sesion=true">Cerrar Sesi�n</a>

</body>
</html>