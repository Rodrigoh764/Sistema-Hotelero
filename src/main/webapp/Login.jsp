<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Iniciar Sesión</title>

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">
</head>


<body style="background: #125B78">


	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

	<div class="main" style="background: #125B78">
		<section class="sign-in">
			<div class="container" style="background: #E2E2E2">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/5.jpg" alt="sing up image">
						</figure>
						<a href="Registro.jsp" class="signup-image-link" style="font-size: 1.5rem">Crear cuenta</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Iniciar Sesión</h2>
						<form method="post" action="validar" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="email" id="username"
									placeholder="email" style="background: #E2E2E2"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" style="background: #E2E2E2"/>
							</div>
					
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Entrar" />
							</div>
						</form>
						
					
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

	if(status == "error"){
		swal("¡Fallido!", "La cuenta ó contraseña son incorrectas, vuelve a intentar");
	}

		
	
	</script>

</body>

</html>