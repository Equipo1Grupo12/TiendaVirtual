<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link href="css/estilos.css" rel="stylesheet">
</head>
<body class="bodyControl">
	<section  class="sectionControl">
		<br>
		<div  class="divControl">
			<table  class="tableControl">
				<caption class="tituloControl">Tienda Genérica</caption>
				<tr>
					<td class="botonControl"><a href="usuarios" target="marcoUsuarios" class="linkControl">Usuarios</a></td>
					<td class="botonControl"><a href="clientes" target="marcoUsuarios" class="linkControl">Clientes</a></td>
					<td class="botonControl"><a href="proveedores" target="marcoUsuarios" class="linkControl">Proveedores</a></td>
					<td class="botonControl"><a href="productos" target="marcoUsuarios" class="linkControl">Productos</a></td>
					<td class="botonControl"><a href="ventas" target="marcoUsuarios" class="linkControl">Ventas</a></td>
					<td class="botonControl"><a href="reportes" target="marcoUsuarios" class="linkControl">Reportes</a></td> 
				</tr>				
			</table>
			<iframe name="marcoUsuarios" class="frameControl"></iframe>
		</div>
	</section>
</body>
</html>