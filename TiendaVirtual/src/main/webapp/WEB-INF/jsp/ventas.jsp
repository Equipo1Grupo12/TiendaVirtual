<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<link href="../css/estilos.css" rel="stylesheet">
</head>
<body>
	<form method="post" .sectionControl>
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
		<table class="tableControl">
			<thead>
				<th>Codigo Producto</th>
				<th>Nombre Producto</th>
				<th>Cantidad</th>
				<th>Vlr Total</th>
			</thead>
			<tbody id="listProducts"></tbody>
		</table>
		<button class="btnUsuarios" id="masProductos">+</button>
		<div id="total_section">
		</div>
		<br>
		<br>
		<br>
		<button class="btnUsuarios" id="confirmar" onclick="validar()">Confirmar</button>
	</form>
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
			</c:forEach>
		 * ]

		 *  let productos = [
		 *		{codProducto:"1", producto:"Melocotones", nitProve:"1", precio:"25505", iva:"19", venta:'30351'},
		 *		{codProducto:"2", producto:"Manzanas", nitProve:"3", precio:"18108", iva:"19", venta:'21549'},
		 * 		{codProducto:"3", producto:"Plátanos", nitProve:"4", precio:"29681", iva:"19", venta:'35320'},
		 *		{codProducto:"4", producto:"Lechuga", nitProve:"3", precio:"29788", iva:"19", venta:'35448'},
		 *		{codProducto:"5", producto:"Tomates", nitProve:"1", precio:"12739", iva:"19", venta:'15159'},
		 * 		{codProducto:"6", producto:"Calabaza", nitProve:"1", precio:"21315", iva:"19", venta:'25365'},
		 *  ]
		*/
    </script>
    <script src="../js/rest.js"></script>
</body>
</html>