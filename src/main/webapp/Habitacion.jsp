<% String correo = (String) session.getAttribute("servletMsg");

%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="modelo.ClienteRegistrados"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Habitaciones</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">
</head>

<body style="background: #125B75">
	<div class="container" style="background: #7F8C8D; width: 73%;">


		<h2
			class="page-section-heading text-center text-uppercase text-secondary mb-0">Habitaciones
			disponibles</h2>
</div>
		
		<div class="container" style="background: #7F8C8D; margin-top: 30px; width: 73%;">
		<h2 style="text-align: center">Busqueda Rapida</h2>

			<form class="d-flex" style="padding-bottom: 15px">
				<div style="margin-left: 70px">
					<h6 style="text-align: center">Precio</h6>
					<select name="precio" class="form-select"
						aria-label="Default select example">
						<option selected>$500</option>
						<option value="200">$200</option>
						<option value="250">$250</option>
						<option value="500">$500</option>
						<option value="800">$800</option>
						<option value="1100">$1100</option>

					</select>
				</div>
				<div>
					<h6 style="text-align: center">Personas</h6>
					<select name="Personas" class="form-select"
						aria-label="Default select example">
						<option selected>1</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>

					</select>
				</div>
				<div>
					<h6 style="text-align: center">Categoria</h6>
					<select name="Categoria" class="form-select"
						aria-label="Default select example">
						<option selected>Sencilla</option>
						<option value="1">Sencilla</option>
						<option value="2">Doble</option>
						<option value="3">Suite Junior</option>
						<option value="4">Suite Junior Doble</option>
						<option value="5">Suite Principal</option>
						<option value="6">Suite Presidencial</option>
						<option value="7">Master Suite</option>
						<option value="8">Doble Ejecutive</option>

					</select>
				</div>
				<div>
					<h6 style="text-align: center">Inicio</h6>
					<input type="Date" name="email"
						style="border-radius: 8px; font-size: 15px" />
				</div>
				<div>
					<button class="btn btn-outline-success" type="submit"
						style="width: 300px; margin-top: 27px">Buscar</button>
				</div>
			</form>

		</div>
		
		
		<div class="container" style="background: #7F8C8D; width: 73%;">

		<div class="divider-custom">
			<div class="divider-custom-line"></div>
			<div class="divider-custom-icon">
				<i class="fas fa-star"></i>
			</div>
			<div class="divider-custom-line"></div>
		</div>


		<div class="row gy-3">
			<div class="card"
				style="width: 18rem; margin: 0.5rem; margin-left: 50px">
				<img src="images/102A.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Doble</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<%
				String usuario = request.getParameter("correo");

				int pase = Integer.parseInt(usuario);
				if (pase == 1) {
					 request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body">
					<a href="Reserva.jsp" class="card-link">Reservar</a> <a href="#"
						class="card-link">Detalles</a>
				</div>

				<%
				} else {
				%>
				<div class="card-body">
					<a href="Login.jsp" class="card-link">Reservar</a> <a href="#"
						class="card-link">Detalles</a>
				</div>
				<%
				}
				%>




			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/106A.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Suite junior</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/201B.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Doble executive</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>

			<div class="card"
				style="width: 18rem; margin: 0.5rem; margin-left: 50px">
				<img src="images/204B.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Sencilla</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>


			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/310C.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Master suite</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/315C.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Suite junior doble</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/403D.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Suite principal</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/415D.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Suite presidencial</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#"
						class="card-link">Another link</a>
				</div>
			</div>

		</div>
	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "seccess") {
			swal("¡Exitoso!", "Registro realizado");
		}
	</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>