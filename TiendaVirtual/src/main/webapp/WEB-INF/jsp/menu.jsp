<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tienda Genérica</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<link href="../css/estilos.css" rel="stylesheet">
<link rel="stylesheet" href="css/navStyle.css">
</head>
<body class="">
	<section  class="sectionControl">
		<br>
		<div  class="divControl">
		<h1 class="tituloControl">Tienda Genérica</h1>	
			<div class="navbar">
  <!--a href="index" target="marcoUsuarios" ><i class="fa fa-fw fa-home"></i>Inicio</a--> 
  <a href="usuarios" target="marcoUsuarios" ><i class=" fa fa-fw fa-users"></i>Usuarios </a> 
  <a href="clientes" target="marcoUsuarios" ><i class="linkControl fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a href="proveedores" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-truck"></i> Proveedores</a> 
  <a  href="productos" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-cubes"></i> Productos</a>
  <a href="ventas" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href="reportes" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-file-text-o"></i> Reportes</a> 
  <li style="float:right" class="active" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
   <li style="float:right" ><a href="/"> <i class="fa fa-fw  fa-power-off"></i>Cerrar Sesion</a></li>  
</div>
			<h3 id="userSessionMessage">Bienvenido ${user}</h3>

			<iframe name="marcoUsuarios" class="frameControl" ></iframe>
		</div>
	</section>
	<script>
		let botonUsuarios = document.querySelector("#usuarios");
		let usuario = "${user}"
		if(usuario != "admininicial")
			botonUsuarios.classList.add("hide");
		else
			botonUsuarios.classList.remove("hide");
	</script>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tienda Genérica</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/png" href="recursos/t2.png">
<link href="css/estilos.css" rel="stylesheet">
<link rel="stylesheet" href="css/navStyle.css">
</head>
<body class="bodyControl">
	<section  class="sectionControl">
		<br>
		<div  class="divControl">
		<h1 class="tituloControl">Tienda Genérica</h1>	
			<div class="navbar">
  <!--a href="index" target="marcoUsuarios" ><i class="fa fa-fw fa-home"></i>Inicio</a--> 
  <a href="usuarios" target="marcoUsuarios" ><i class=" fa fa-fw fa-users"></i>Usuarios </a> 
  <a href="clientes" target="marcoUsuarios" ><i class="linkControl fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a href="proveedores" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-truck"></i> Proveedores</a> 
  <a  href="productos" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-cubes"></i> Productos</a>
  <a href="ventas" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href="reportes" target="marcoUsuarios"><i class="linkControl fa fa-fw fa-file-text-o"></i> Reportes</a> 
  <li style="float:right" class="active" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
  <li style="float:right" ><a href="/"> <i class="fa fa-fw  fa-power-off"></i>Cerrar Sesion</a></li>  
</div>
			<h3 id="userSessionMessage">Bienvenido ${user_name}</h3>

			<iframe name="marcoUsuarios" class="frameControl" ></iframe>
		</div>
	</section>
	<script>
		let botonUsuarios = document.querySelector("#usuarios");
		let usuario = "${user}"
		if(usuario != "admininicial")
			botonUsuarios.classList.add("hide");
		else
			botonUsuarios.classList.remove("hide");
	</script>
</body>
>>>>>>> branch 'master' of https://github.com/Grupo48Sb02/TiendaVirtual.git
</html>