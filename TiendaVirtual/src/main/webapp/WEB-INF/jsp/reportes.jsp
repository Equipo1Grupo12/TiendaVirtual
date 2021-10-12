<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<link href="../css/estilos.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  
</head>
<body>


<br>
<br>


<div class="form-inline" align="center">
    <button value="btnusu" name="btnusu" id="mLu" class="btn btnUsuarios">Listado de Usuarios</button>
    <button value="btncli" name="btncli" id="mLc" class="btn btnUsuarios">Listado de Clientes</button>
    <button value="btncli" name="btnclivent" id="mLc" class="btn btnUsuarios">ventas por cliente</button>
    </div>

<!-- The Modal LISTADO USUARIOS -->
<div id="modListUsu" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <h2>Listado Usuarios</h2>
    </div>
    <div class="modal-body">
           <div class="  my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
	<table class="table table-hover table-striped" >
		<thead class="tablas">
		<tr>
			<th>Id.</th>
			<th>Cedula</th>
			<th>Nombre</th>
			<th>Correo Electronico</th>
            <th>Usuario</th>
        </tr>
        </thead>
        <c:forEach items="${lUsuarios}" var="x">
			<tr class="tablas">
				<td>#</td>
				<td>${x.cedula}</td>
	            <td>${x.nombre_usuario}</td>
	            <td>${x.email_usuario}</td>
	            <td>${x.usuario}</td>
			</tr>
		</c:forEach>
	</table>
</div>
    </div>
    <div class="modal-footer">
    <a href=reportes type="submit" class="btn btn-danger" >Salir</a>
    </div>
  </div>
</div>

<!-- The Modal LISTADO CLIENTES -->
<div id="modListCli" class="modal">
  <div class="modal-content">
    <div class="modal-header">
      <h2>Listado Clientes</h2>
    </div>
    <div class="modal-body">
    <div class="  my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
	<table class="table table-hover table-striped" >
		<thead class="tablas">
		<tr>
			<th>Id.</th>
			<th>Cedula</th>
			<th>Nombre</th>
			<th>Correo Electronico</th>
            <th>Telefono</th>
            <th>Direccion</th>
        </tr>
        </thead>
        <c:forEach items="${lClientes}" var="x">
			<tr class="tablas">
				<td>#</td>
				<td>${x.cedula}</td>
	            <td>${x.nombre}</td>
	            <td>${x.email}</td>
	            <td>${x.telefono}</td>
	            <td>${x.direccion}</td>
			</tr>
		</c:forEach>
	</table>
</div>
    </div>
    <div class="modal-footer">
    <a href=reportes type="submit" class="btn btn-danger" >Salir</a>
    </div>
  </div>

</div>


<script >
	var modal = document.getElementById("modListCli");
	
	var btn = document.getElementById("mLc");
	
	btn.onclick = function() {
	  modal.style.display = "block";
	}
	
	window.onclick = function(event) {
		  if (event.target == modal) {
		    modal.style.display = "none";
		  }
		}
</script>




<script>
	var modalu = document.getElementById("modListUsu");
	
	var btnu = document.getElementById("mLu");
	
	btnu.onclick = function() {
	  modalu.style.display = "block";
	  var lt =$(this).data('list');
	  
	}
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modalu) {
	    modalu.style.display = "none";
	  }
	}
</script>



</body>
</html>