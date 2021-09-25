<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Productos</title>
	<link href="../css/estilos.css" rel="stylesheet">
	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
</head>
<body>
${alerta}
	<br>
	<br>
	<br>
	<div>
		<form enctype="multipart/form-data" method="post">
			<div align="center">
				<div>
					<label for="inputEmail4">Nombre Archivo:</label> <br> <input
						type="file" name="arch"> <br> <br> <br>
				</div>
			</div>
			<div class="form-inline" align="center">
				<button type="submit" class="btn btn-primary">Cargar</button>
			</div>
		</form>
	</div>
	
	<section class="sectionUsuarios__table"><!--my-custom-scrollbar table-wrapper-scroll-y  table-responsive-->
        <table class="Usuarios_table" > <!-- table-hover table-striped -->
            <thead class="tablas">
                <tr>
                    <th>#</th>
                    <th>codigo_producto</th>
                    <th>nombre_producto</th>
                    <th>nit_Proveedor</th>
                    <th>precio_compra</th>
                    <th>iva_compra</th>
                    <th>precio_venta</th>
                </tr>
            </thead>
            <tbody id="info_table"><tbody>
        </table>
    </section>
    <script>
		let elementos = [
			<c:forEach items="${listado}" var="x">
				{id:"", cp:"${x.codigo_producto}", np:"${x.nombre_producto}", nitp:"${x.nit_Proveedor}", pc:"${x.precio_compra}",ic:"${x.iva_compra}",pv:"${x.precio_venta}"},
			</c:forEach>
		]
		/*
		let elementos = [
			{id:"", cedula:"${x.cedula}", nombre:"${x.nombre_usuario}", email:"${x.email_usuario}", usuario:"${x.usuario}"},
			{id:"", cedula:"${x.cedula}", nombre:"${x.nombre_usuario}", email:"${x.email_usuario}", usuario:"${x.usuario}"},
		]
		*/
		let tipo = "producto"
    </script>




</body>
</html>