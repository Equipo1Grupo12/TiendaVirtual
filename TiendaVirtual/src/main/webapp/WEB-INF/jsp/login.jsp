<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
 <link rel="shortcut icon" type="image/png" href="recursos/iconBot.png">
	
	<link rel="stylesheet" href="css/navStyle.css">
	<link rel="stylesheet" href="css/loginStyle.css">
  <link href="bootstrap.min.css" rel="stylesheet">
  
   <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body> 
 
 <div class="navbar">
  <a class="active" href="#"><i class="fa fa-fw fa-user"></i> Login</a>
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contacto</a> 
  
</div>

 ${alerta}
 
 <div class="login-box ">
      <div align="center"><img src="recursos/J.gif" class="avatar" alt="Avatar Image" width="30%"></div>
      <h1 align="center">INICIO DE SESION</h1>
      <br>
      
      <form action="bot" method="post">

        <!-- USERNAME INPUT -->
        <label for="user">Usario</label>
        <input  type="text" name="user">
        <!-- PASSWORD INPUT -->
        <label for="contraseña">Contraseña</label>
        <input  type="password" name="pass" >
        <div class="form-group"></div>
        <br>
        
        <input type="submit" value="Ingresar" name="ingresar">
        <a href="#olvido">Olvido su contraseña?</a><br>
        <!--a href=Registro.php>No tiene una cuenta?</a´-->
      </form>
    </div>
   
</body>
</html>