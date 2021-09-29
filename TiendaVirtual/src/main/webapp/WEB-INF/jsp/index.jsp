<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tienda Genérica</title>
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<link href="css/estilos.css" rel="stylesheet">
</head>
<body class="bodyIndex">
	${alerta}
	<section class="sectionIndex">
		<form class="divIndex" method="post" action="index">
			<table class="tableIndex">
				<caption class="tituloIndex">Tienda Genérica</caption>
				<tr>
					<td><label class="labelIndex" for="usuario">Usuario:</label> </td>
					<td><input type="text" class="inputIndex" name="user" id="usuario" size="20" placeholder="Escriba su usuario"> </td>
				</tr>
				<tr>
					<td><label class="labelIndex" for="password">Contraseña:</label> </td>
					<td><input type="password" class="inputIndex" name="pass" id="password" size="20" placeholder="Escriba su contraseña"> </td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Aceptar" class="aceptarIndex" name="boton">			
		</form>
	</section>
</body>
</html>