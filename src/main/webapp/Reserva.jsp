<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body style="background: #7f7777">

	<section class="sign-in" style="margin-top: 0px; padding-top: 0px;">

		<div class="signin-content">
			<div class="signin-image">
				<figure>
					<img src="images/102A.jpg" style="height: 500px">
				</figure>

			</div>

			<div class="signin-form">
				<h2 class="form-title">Reservar Habitación</h2>
				<form method="post" action="validar" style="margin-top: 0px; padding-top: 0px">
					
					<div class="form-group">
						<label for="username">Número de la HAbitacion:</label> 
						<input value="A102" style="background: #E2E2E2; margin-left: 200px; width: 300px" disabled=disabled/>
					</div>
					
					<div class="form-group">
						<label for="username">Capacidad de personas:</label> 
						<input value="2" style="background: #E2E2E2; margin-left: 200px; width: 300px" disabled=disabled/>
					</div>
					
					<div class="form-group">
						<label for="username">Categoria</label>
						<input value="Doble"style="background: #E2E2E2; margin-left: 200px; width: 300px" disabled=disabled/>
					</div>
					
					<div class="form-group">
						<label for="username">Entrada</label> 
					
						<input type="Date" name="Entrada"
							style="background: #E2E2E2; margin-left: 200px; width: 300px" />
					</div>
					
					<div class="form-group">
						<label for="username">Salida</label> 
					
						<input type="Date" name="salida"
							style="background: #E2E2E2; margin-left: 200px; width: 300px" />
					</div>

					<div class="form-group form-button" style="text-align: center">
					<a class="btn btn-primary" href="Index.jsp" role="button" style="font-size: 25px">Regresar</a>

						<input type="submit" name="signin" id="signin" class="form-submit"
							value="Reservar" />
					</div>

				</form>



			</div>
		</div>

	</section>


</body>
</html>