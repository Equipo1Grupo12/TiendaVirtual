<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Productos</title>
	<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
	<link href="../css/estilos.css" rel="stylesheet">
<<<<<<< HEAD
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	
	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
=======
	
	<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
>>>>>>> branch 'master' of https://github.com/Grupo48Sb02/TiendaVirtual.git
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
				<button type="submit" class="btn btnUsuarios">Cargar</button>
			</div>
		</form>
	</div>
	<br>
	<br>
<div align="center"><button id="mta" class="btn btn-success">Ver Estructura.</button></div>
<br>
	<div align="center">
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
             <c:forEach items="${listado}" var="x">
             <tr class="tablas">
				<td>#</td>
				<td>${x.codigo_producto}</td>
	            <td>${x.nombre_producto}</td>
	            <td>${x.nit_Proveedor}</td>
	            <td>${x.precio_compra}</td>
	            <td>${x.iva_compra}</td>
	            <td>${x.precio_venta}</td>
			</tr>
             </c:forEach>
        </table>
    </section>
	</div>


<!-- The Modal LISTADO USUARIOS -->
<div id="modT" class="modal">
	<!-- Modal content -->
	 <div class="modal-content">
	  <div class="modal-header">
	  	<h2>Estructura del archivo.</h2>
	  </div>
	  <div class="modal-body">
	   <div class="my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
		<table class="table .table-bordered table-striped" >
			<thead class="tablas">
			<tr>
				<th>NOMBRE DEL DATO</th>
				<th>TIPO DE DATO</th>
				<th>LONGITUD</th>
	        </tr>
	        </thead>
				<tr class="tablas">
					<td>código_producto</td>
					<td>BIGINT</td>
		            <td>20</td>
				</tr>
				<tr class="tablas">
					<td>nombre_producto</td>
					<td>VARCHAR</td>
		            <td>50</td>
				</tr>
				<tr class="tablas">
					<td>nitproveedor</td>
					<td>BIGINT</td>
		            <td>20</td>
				</tr>
				<tr class="tablas">
					<td>precio_compra</td>
					<td>DOUBLE</td>
		            <td>N/A</td>
				</tr>
				<tr class="tablas">
					<td>ivacompra</td>
					<td>DOUBLE</td>
		            <td>N/A</td>
				</tr>
				<tr class="tablas">
					<td>precio_venta</td>
					<td>DOUBLE</td>
		            <td>N/A</td>
				</tr>
		</table>
		<br>
		<h3>El formato del archivo debe ser CSV separado por comas (,).</h3>
	</div>
	  </div>
	  <div class="modal-footer">
	  	<a href=productos type="submit" class="btn btn-danger" >Salir</a>
	  </div>
	 </div>
</div>

<script >
	var modalT = document.getElementById("modT");
	
	var btnT = document.getElementById("mta");
	
	btnT.onclick = function() {
	  modalT.style.display = "block";
	}
	
	window.onclick = function(event) {
		  if (event.target == modal) {
		    modal.style.display = "none";
		  }
		}
</script>
</body>
</html>