<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/iconBot.png">
<link rel="stylesheet" href="css/navStyle.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/RegisterStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>

<div class="navbar">
  <a  href=menu ><i class="fa fa-fw fa-home"></i>Inicio</a> 
  <a href=usuarios><i class="fa fa-fw fa-users"></i> Usuarios </a> 
  <a href=clientes><i class="fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a class="active" href=proveedores><i class="fa fa-fw fa-truck"></i> Proveedores</a> 
  <a href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>

<div class="form-group" >
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
       <label  for="inputEmail4">Nit:</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="Nit">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Telefono:</label>
      <input type="text" class="form-control" id="inputPassword4" placeholder="Telefono">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Nombre Proveedor:</label>
      <input type="text" class="form-control" id="inputCity" placeholder="Nombre Proveedor">
    </div>
    <div class="form-group col-md-6">
      <label for="inputState">Ciudad:</label>
      <input type="text" class="form-control" id="inputCity" placeholder="Ciudad">
      <br>
    </div>
  </div>
  <div class="form-group col-md-12 ">
      <label for="inputState">Direccion:</label>
      <input type="email" class="form-control" id="inputCity" placeholder="Direccion">
      <br>
    </div>
    
    <div class="form-inline" align="center">
    <button type="submit" class="btn btn-primary">Consultar</button>
    <button type="submit" class="btn btn-primary">Crear</button>
    <button type="submit" class="btn btn-primary">Actualizar</button>
    <button type="submit" class="btn btn-primary">Borrar</button>
    </div>
    
</form>

</div>

</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/iconBot.png">
<link rel="stylesheet" href="css/navStyle.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/RegisterStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>

<div class="navbar">
  <a  href=menu ><i class="fa fa-fw fa-home"></i>Inicio</a> 
  <a href=usuarios><i class="fa fa-fw fa-users"></i> Usuarios </a> 
  <a href=clientes><i class="fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a class="active" href=proveedores><i class="fa fa-fw fa-truck"></i> Proveedores</a> 
  <a href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>

<div class="form-group" >
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
       <label  for="inputEmail4">Nit:</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="Nit">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Telefono:</label>
      <input type="text" class="form-control" id="inputPassword4" placeholder="Telefono">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Nombre Proveedor:</label>
      <input type="text" class="form-control" id="inputCity" placeholder="Nombre Proveedor">
    </div>
    <div class="form-group col-md-6">
      <label for="inputState">Ciudad:</label>
      <input type="text" class="form-control" id="inputCity" placeholder="Ciudad">
      <br>
    </div>
  </div>
  <div class="form-group col-md-12 ">
      <label for="inputState">Direccion:</label>
      <input type="email" class="form-control" id="inputCity" placeholder="Direccion">
      <br>
    </div>
    
    <div class="form-inline" align="center">
    <button type="submit" class="btn btn-primary">Consultar</button>
    <button type="submit" class="btn btn-primary">Crear</button>
    <button type="submit" class="btn btn-primary">Actualizar</button>
    <button type="submit" class="btn btn-primary">Borrar</button>
    </div>
    
</form>

</div>

</body>
>>>>>>> 1dd3c1370f090a1553c7a6c5fc27f9af1b53e8e4
</html>