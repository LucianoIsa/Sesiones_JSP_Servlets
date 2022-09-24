<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Inicio de Sesion</h1>
	<form action="Login" method="POST">
		<div>
			<label for="correo">Usuario: </label> <input type="email"
				id="correo" name="correo" placeholder="usuario@dominio.ext"
				required="required">
		</div>
		<div>
			<label for="clave">Clave: </label>
			<input type="password"
				id="clave" name="clave"  
				placeholder="Digite su contraseña" required="required">
		</div>
		<div>
			<button type="submit">Enviar</button>
			<button type="reset">Limpiar</button>
		</div>
	</form>



</body>
</html>