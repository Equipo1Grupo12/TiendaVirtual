<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tienda Generica</title>
<link href="css/estilos.css" rel="stylesheet">
</head>
<body class="bodyIndex">
	<section class="sectionIndex">
		<form class="divIndex" method="post" action="index">
			<table class="tableIndex">
				<caption class="tituloIndex">Tienda Genérica</caption>
				<tr>
					<td><label class="labelIndex" for="user">Usuario</label> </td>
					<td><input type="text" class="inputIndex" name="user" id="usuario"> </td>
				</tr>
				<tr>
					<td><label class="labelIndex" for="password">Contraseña</label> </td>
					<td><input type="password" class="inputIndex" name="pass" id="password"> </td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Aceptar" class="aceptarIndex" name="boton">			
		</form>
	</section>
</body>
</html>