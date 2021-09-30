<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<!-- <link rel="stylesheet" href="css/navStyle.css">
<link rel="stylesheet" href="css/RegisterStyle.css"> -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>

<div class="navbar">
  <a  href=menu ><i class="fa fa-fw fa-home"></i>Inicio</a> 
  <a href=usuarios><i class="fa fa-fw fa-users"></i> Usuarios </a> 
  <a href=clientes><i class="fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a href=proveedores><i class="fa fa-fw fa-truck"></i> Proveedores</a> 
  <a href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a class="active" href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>

<br>
<br>
<div class="form-inline" >
<form>
    <div class="" align="center">
       <label  for="inputEmail4">Cedula:</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="Cedula">
      <button type="submit" class="btn btn-primary">Consultar</button>
      <label  for="inputEmail4">Cliente:</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="Cliente" disabled="true" >
      <label  for="inputEmail4">Consecutivo:</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="Consecutivo" disabled="true">
    </div>
    
    
    <br>
<br>
    <div class="" align="center">
    <button type="submit" class="btn btn-primary">Confirmar</button>
    </div>
    
</form>

</div>
	<script>
		let usuario = "${user}"
		let cedula_usuario = "${user_cc}"
		let consecutivo_ventas = parseInt("${consecutivo_ventas}")
		
		let clientes = [
			<c:forEach items="${clientes}" var="cliente">
				{cedula:"${cliente.cedula}", direccion:"${cliente.direccion}", email:"${cliente.email}", nombre:"${cliente.nombre}", telefono:"${cliente.telefono}"},
			</c:forEach>
		]
		let productos = [
			<c:forEach items="${productos}" var="producto">
				{codProducto:"${producto.codigo_producto}", producto:"${producto.nombre_producto}", nitProve:"${producto.nit_Proveedor}", precio:"${producto.precio_compra}", iva:"${producto.iva_compra}", venta:"${producto.precio_venta}"},
			</c:forEach>
		]
		console.log(productos)
	</script>
</body>
</html>