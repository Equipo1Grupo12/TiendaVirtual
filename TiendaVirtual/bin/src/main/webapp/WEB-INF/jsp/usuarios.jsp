<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
					<td><label class="labelUsuarios" for="cedula">Cédula:</label> </td>
					<td><input type="text" class="datoUsuarios" id="cedula" name="ced" size="42"placeholder="Escriba su cédula sin puntos ni comas" ></td>
					<td><label class="labelUsuarios" for="usuario">Usuario:</label> </td>
					<td><input type="text" class="datoUsuarios" id="usuario" name="user" size="40"placeholder="Escriba su usuario" ></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="nombre">Nombre Completo:</label> </td>
					<td><input type="text" class="datoUsuarios" id="nombre" name="nom_comp" size="42" placeholder="Escriba su nombre completo"></td>
					<td><label class="labelUsuarios" for="password">Contraseña:</label> </td>
					<td><input type="password" class="datoUsuarios" id="password" name="contra" size="40" placeholder="Escriba su contraseña"></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="correo">Correo Electrónico:</label> </td>
					<td><input type="email" class="datoUsuarios" id="correo" name="correo" size="42" placeholder="Escriba su correo electrónico. Ej: tu@correo.com"></td>
				</tr>
			</table>
			<table>
				<tr>
					<td><input type="submit" value="Consultar" class="botonUsuarios" name="consultar"></td>
					<td><input type="submit" value="Crear" class="botonUsuarios" name="crear"></td>
					<td><input type="submit" value="Actualizar" class="botonUsuarios" name="actualizar"></td>
					<td><input type="reset" value="Borrar" class="botonUsuarios" name="borrar"></td>
				</tr>
			</table>
		</form>
	</section>	
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
					<td><label class="labelUsuarios" for="cedula">Cédula:</label> </td>
					<td><input type="text" class="datoUsuarios" id="cedula" name="ced" size="42"placeholder="Escriba su cédula sin puntos ni comas" ></td>
					<td><label class="labelUsuarios" for="usuario">Usuario:</label> </td>
					<td><input type="text" class="datoUsuarios" id="usuario" name="user" size="40"placeholder="Escriba su usuario" ></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="nombre">Nombre Completo:</label> </td>
					<td><input type="text" class="datoUsuarios" id="nombre" name="nom_comp" size="42" placeholder="Escriba su nombre completo"></td>
					<td><label class="labelUsuarios" for="password">Contraseña:</label> </td>
					<td><input type="password" class="datoUsuarios" id="password" name="contra" size="40" placeholder="Escriba su contraseña"></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="correo">Correo Electrónico:</label> </td>
					<td><input type="email" class="datoUsuarios" id="correo" name="correo" size="42" placeholder="Escriba su correo electrónico. Ej: tu@correo.com"></td>
				</tr>
			</table>
			<table>
				<tr>
					<td><input type="submit" value="Consultar" class="botonUsuarios" name="consultar"></td>
					<td><input type="submit" value="Crear" class="botonUsuarios" name="crear"></td>
					<td><input type="submit" value="Actualizar" class="botonUsuarios" name="actualizar"></td>
					<td><input type="reset" value="Borrar" class="botonUsuarios" name="borrar"></td>
				</tr>
			</table>
		</form>
	</section>	
</body>
>>>>>>> 1dd3c1370f090a1553c7a6c5fc27f9af1b53e8e4
</html>