<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="css/estilos.css" rel="stylesheet">
	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
</head>
<body class="bodyUsuarios">
	${alerta}
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
					<!--<td><input type="submit" value="Consultar" class="botonUsuarios" name="consultar"></td> -->
					<td><input type="submit" value="Crear" class="botonUsuarios" name="crear"></td>
					<!--<td><input type="submit" value="Actualizar" class="botonUsuarios" name="actualizar"></td>  -->
					<!--<td><input type="reset" value="Borrar" class="botonUsuarios" name="borrar"></td>  -->
				</tr>
			</table>
		</form>
	</section>
	<br>
	<section class="sectionUsuarios__table"><!--my-custom-scrollbar table-wrapper-scroll-y  table-responsive-->
        <table class="Usuarios_table" > <!-- table-hover table-striped -->
            <thead class="tablas">
                <tr>
                    <th>Id.</th>
                    <th>Cedula</th>
                    <th>Nombre</th>
                    <th>Correo Electronico</th>
                    <th>Usuario</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${listado}" var="x">
                <tr class="tablas">
                    <td>#</td>
                    <td>${x.cedula}</td>
                    <td>${x.nombre_usuario}</td>
                    <td>${x.email_usuario}</td>
                    <td>${x.usuario}</td>
                    <td class="table_action_buttons">
                        <a href= "usuarios/${x.cedula}" title="modalActualizar" class="btn btn-success">Actualizar</a>
                        <a href="usuarios/del/${x.cedula}"  title="modalEliminar" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            <tbody>
        </table>
    </section>
</body>
</html>