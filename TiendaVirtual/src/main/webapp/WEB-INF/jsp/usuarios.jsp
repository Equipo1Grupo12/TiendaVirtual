<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/estilos.css" rel="stylesheet">
</head>
<body class="bodyUsuarios">
	<section class="sectionUsuarios">
		<form class="divUsuarios" method="post" action="./tv_servlet">
			<table class="camposUsuarios">
				<tr>
					<td><label class="labelUsuarios" for="cedula">Cédula</label> </td>
					<td><input type="text" class="datoUsuarios" id="cedula"></td>
					<td><label class="labelUsuarios" for="usuario">Usuario</label> </td>
					<td><input type="text" class="datoUsuarios" id="usuario"></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="nombre">Nombre Completo</label> </td>
					<td><input type="text" class="datoUsuarios" id="nombre"></td>
					<td><label class="labelUsuarios" for="password">Contraseña</label> </td>
					<td><input type="text" class="datoUsuarios" id="password"></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="correo">Correo Electrónico</label> </td>
					<td><input type="text" class="datoUsuarios" id="correo"></td>
				</tr>
			</table>
			<table>
				<tr>
					<td><input type="submit" value="Consultar" class="botonUsuarios"></td>
					<td><input type="submit" value="Crear" class="botonUsuarios"></td>
					<td><input type="submit" value="Actualizar" class="botonUsuarios"></td>
					<td><input type="submit" value="Borrar" class="botonUsuarios"></td>
				</tr>
			</table>
		</form>
	</section>	
</body>
</html>