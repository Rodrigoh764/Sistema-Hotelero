<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Registro</title>


<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">


<link rel="stylesheet" href="css/style.css">
</head>
<body style="background: #125B78">

	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

	<div class="main" style="background: #125B78">


		<section class="signup">
			<div class="container" style="background: #E2E2E2">
				<div class="signup-content" style="margin-bottom: 10 px">
					<div class="signup-form">
						<h2 class="form-title" style="text-align: center">Registro</h2>

						<form method="post" action="RegistroUsuario" class="register-form"
							id="register-form">

							<div class="form-group">
								<label for="name"></label> <input type="text"
									required="required" name="name" id="name"
									placeholder="Nombre(S)" style="background: #E2E2E2" />
							</div>
							<div class="form-group">
								<label for="name"></label> <input type="text"
									required="required" name="apellidos" id="apellido"
									placeholder="Apellido(S)" style="background: #E2E2E2" />
							</div>

							<div class="form-group">
								<label style="margin-left: 80px">Fecha de nacimiento</label><br><br><br>
								<br> <input type="date" required="required" name="edad"
									id="edad" style="background: #E2E2E2" />
							</div>
							<div class="form-group">
								<label for="telefono"></label> <input type="number"
									required="required" name="telefono" id="telefono"
									placeholder="Telefono" style="background: #E2E2E2" />
							</div>
							<div class="form-group">
								<label for="email"></label> <input type="email"
									required="required" name="email" id="email"
									placeholder="Correo" style="background: #E2E2E2" />

							</div>

							<div class="form-group">
								<label for="contraseña"></label> <input type="password"
									required="required" name="contraseña" id="contraseña"
									placeholder="Contraseña" style="background: #E2E2E2" />
							</div>
							<div class="form-group form-button" style="text-align: center">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Registrarse" />
							</div>

						</form>

					</div>

					<div class="signup-image">
						<figure>
							<img src="images/registro.jpg" alt="sing up image">
						</figure>
						<a href="Login.jsp" class="signup-image-link">Ya tengo una
							cuenta</a>
					</div>
				</div>
			</div>
		</section>

	</div>

	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "exito"){
		swal("¡Exitoso!", "Registro realizado");
	}
	if(status == "falseCorreo"){
		swal("¡Fallido!", "El correo no es correcto");
	}
	if(status == "falseEdad"){
		swal("¡Fallido!", "Fecha de nacimiento incorrecto");
	}
	if(status == "falseTelefono"){
		swal("¡Fallido!", "El telefono es incorrecto");
	}
	if(status == "falseContraseña"){
		swal("¡Fallido!", "La contraseña debe tener ocho a 15 caracteres, al menos una letra, un número y un carácter especial");
	}
		
	
	</script>
		</body>
		</html>
