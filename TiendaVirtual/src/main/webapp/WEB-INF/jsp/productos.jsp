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
		<form enctype="multipart/form-data">
			<div align="center">
				<div>
					<label for="inputEmail4">Nombre Archivo:</label> <br> <input
						type="file" name="archivosubido"> <br> <br> <br>
				</div>
			</div>
			<div class="form-inline" align="center">
				<button type="submit" class="btn btn-primary">Cargar</button>
			</div>

		</form>

	</div>




</body>
</html>