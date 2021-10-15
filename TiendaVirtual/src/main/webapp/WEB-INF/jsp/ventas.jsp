<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<link href="../css/estilos.css" rel="stylesheet">
</head>
<body>
	<form id="form_ventas"> <!-- .sectionControl -->
		<div class="form-inline" align="center">
			<label class="labelUsuarios"><b>Cedula cliente</b></label>
			<select class="inputIndex" id="selectCedulas">
					<option value="null">Seleccion cedula</option>
			</select>
			<label class="labelUsuarios" id="cliente"><b>Cliente:</b> Cliente no definido </label>
			<label class="labelUsuarios" id="consecutivo"><b>Consecutivo:</b> ##</label>
		</div>
		<br>
		<div class="form-inline" align="center">
			<label class="labelUsuarios"><b>Codigo Producto</b></label>
			<select class="inputIndex" id="f_CProducto"></select>
			<label class="labelUsuarios"><b>Cantidad</b></label>
			<input class="inputIndex" type="text" name="" id="f_Cantidad">
		</div>
		<section class="sectionVentas__table">
			<table class="tableControl"> <!-- tableControl sectionUsuarios__table-->
				<thead>
					<th>Codigo Producto</th>
					<th>Nombre Producto</th>
					<th>Cantidad</th>
					<th>Vlr Total</th>
				</thead>
				<tbody id="listProducts"></tbody>
			</table>
		</section>
		<button class="btnUsuarios" id="masProductos">+</button>
		<div id="total_section">
		</div>
		<br>
		<br>
		<br>
		<div class="btnUsuarios" id="confirmar" onclick="validar()">Confirmar</div>
	</form>
<<<<<<< HEAD
	<<script src="../js/entradas.js">
		/*
		 * Informacion proveniente de JAVA Clientes y Productos
		 * Data necesaria 
		 * let usuario = "admininicial" 
		 * let cedula_usuario = "###"
		 * let consecutivo_ventas = parseInt("##")
		 *
		 * let clientes = [
		 * <c:forEach items="${clienteJAVA}" var="x">
		 *		{cedula:"${x.cedula}", direccion:"${x.direccion_cliente}", email:"${x.email_cliente}", nombre:"${x.
		 * 		nombre_cliente}, telefono:"${x.telefono_cliente}"},
=======
	<script>
		//Informacion proveniente de JAVA Clientes y Productos
		//Data necesaria 
		let cedula_usuario = "${user_cc}"
		let consecutivo_ventas = parseInt("${consecutivo_ventas}")
		
		let clientes = [
			<c:forEach items="${clientes}" var="x">
				{id:"", cedula:"${x.cedula}", nombre:"${x.nombre}", email:"${x.email}", telefono:"${x.telefono}", direccion:"${x.direccion}"},
>>>>>>> branch 'master' of https://github.com/Grupo48Sb02/TiendaVirtual.git
			</c:forEach>
		]
		
		let productos = [
			<c:forEach items="${productos}" var="x">
				{codProducto:"${x.codigo_producto}", producto:"${x.nombre_producto}", nitProve:"${x.nit_Proveedor}", precio:"${x.precio_compra}", iva:"${x.iva_compra}", venta:'${x.precio_venta}'},
			</c:forEach>
		]
		
    </script>
    <script src="../js/rest.js"></script>
</body>
</html>