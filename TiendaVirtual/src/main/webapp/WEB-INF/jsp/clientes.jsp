<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Clientes</title>
	<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
	<link href="../css/estilos.css" rel="stylesheet">
	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
</head>
<body class="bodyUsuarios">
	${alerta}
	<!-- <div class='alert alert-danger alert-dismissable' role='alert'>No agregado.</div> -->
	<!-- <div class='alert alert-success alert-dismissable' role='alert'>Agregado.</div> -->
	<!-- <div class='alert alert-danger alert-dismissable' role='alert'>Eliminado.</div> -->
	<section class="sectionUsuarios">
		<form class="divUsuarios" method="post" action="" name="userForm">
			<table class="camposUsuarios">
				<tr>
					<td><label class="labelUsuarios" for="cedula">Cédula:</label> </td>
					<td><input type="text" class="datoUsuarios" value="${olldC}" name="ced" size="42"placeholder="Escriba su cédula sin puntos ni comas" required="required" ></td>
					<td><label class="labelUsuarios" for="usuario">Teléfono:</label> </td>
					<td><input type="text" class="datoUsuarios"value="${olldN}" name="telefono" size="40"placeholder="Escriba su teléfono" required="required" ></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="nombre">Nombre Completo:</label> </td>
					<td><input type="text" class="datoUsuarios" value="${olldE}" name="nom_comp" size="42" placeholder="Escriba su nombre completo" required="required"></td>
					<td><label class="labelUsuarios" for="password">Correo Electrónico:</label> </td>
					<td><input type="email" class="datoUsuarios" value="${olldU}" name="correo" size="40" placeholder="Escriba su correo electrónico. Ej: tu@correo.com" required="required"></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="correo">Dirección:</label> </td>
					<td><input type="text" class="datoUsuarios" value="${olldP}" name="direccion" size="42" placeholder="Escriba su dirección" required="required"></td>
				</tr>
			</table>
			<div class="botonesUsuarios">
				${btncrear}
				<!-- "btncrear", "<button type=\"submit\" id=\"btn botonCrear\" class=\"btn btnUsuarios\" name=\"crear\">Crear</button>" -->
                ${btnact}
                <!-- <button type="submit" class="btn btn-warning"  name="crear">Actualizar usuario</button> -->
                ${btncancel}
                <!-- <button type="submit" class="btn btn-danger"  name="crear">Cancelar</button> -->
			</div>
		</form>
	</section>
    <section id="buscador">
			<label class="labelUsuarios">Buscar cliente</label>
			<input type="text" class="datoUsuarios" id="formulario">
    </section>
	<section class="sectionUsuarios__table"><!--my-custom-scrollbar table-wrapper-scroll-y  table-responsive-->
        <table class="Usuarios_table" > <!-- table-hover table-striped -->
            <thead class="tablas">
                <tr>
                    <th>#</th>
                    <th>Cedula</th>
                    <th>Nombre</th>
                    <th>Correo Electronico</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
					<th>Acciones</th>
                </tr>
            </thead>
            <tbody id="info_table"><tbody>
        </table>
    </section>
    <script>
		let elementos = [
			<c:forEach items="${listado}" var="x">
				{id:"", cedula:"${x.cedula}", nombre:"${x.nombre}", email:"${x.email}", telefono:"${x.telefono}", direccion:"${x.direccion}"},
			</c:forEach>
		]
		/*let elementos = [
			{id:"", cedula:"${x.cedula}", nombre:"${x.nombre_usuario}", email:"${x.email_usuario}", telefono:"${x.telefono}", direccion:"${x.direccion}"},
			{id:"", cedula:"${x.cedula}", nombre:"${x.nombre_usuario}", email:"${x.email_usuario}", telefono:"${x.telefono}", direccion:"${x.direccion}"},
		]*/
		let tipo = "cliente"
    </script>
    <script src="../js/filtro.js"></script>
</body>
</html>