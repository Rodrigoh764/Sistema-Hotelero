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

<!--  iconos -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- javascript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Font Awesome icons (free version) CREO NO SE USA-->
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
<link rel="stylesheet" href="css/detallesHabitacion.css">

</head>

<body style="background: #125B75">

	<div class="container" style="background: #7F8C8D; width: 73%;">
		<h2
			class="page-section-heading text-center text-uppercase text-secondary mb-0">Habitaciones
			disponibles</h2>
	</div>
	<!-- Busqueda rapida habitaciones -->
	<div class="container"
		style="background: #7F8C8D; margin-top: 30px; width: 73%;">
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
					<option value="8">Doble Executive</option>
				</select>
			</div>
			<div>
				<h6 style="text-align: center">Inicio</h6>
				<input type="Date" name="email"
					style="border-radius: 8px; font-size: 15px" />
			</div>
			<div>
				<button class="btn btn-success" type="submit"
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

		<!-- Habitaciones -->
		<div class="row gy-3">

			<div class="card" style="width: 18rem; margin: 0.5rem; margin-left: 50px">
				<a><img src="images/102A.jpg" class="card-img-top"></a>
				<div class="card-body">
					<h5 class="card-title text-center">Doble</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						2 personas</li>
				</ul>
				<%
				String usuario = request.getParameter("correo");
				int pase = Integer.parseInt(usuario);
				if (pase == 1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva315C.jsp" style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
				 
    			<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
			    
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<a href="javascript:abrir106A()"><img src="images/106A.jpg"
					class="card-img-top"></a>
				<div class="card-body">
					<h5 class="card-title text-center">Suite junior</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						2 personas</li>
				</ul>
				<%
				
				if (pase == 1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva106A.jsp"
							style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
				 
    				<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
			    
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<a><img src="images/201B.jpg" class="card-img-top"></a>
				<div class="card-body">
					<h5 class="card-title text-center">Doble executive</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						4 personas</li>
				</ul>
				<%
				
				if (pase == 1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva415D.jsp" style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
				 
    				<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
			    
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem; margin-left: 50px">
				<a href="javascript:abrir204B()"><img src="images/204B.jpg"
					class="card-img-top"></a>
				<div class="card-body">
					<h5 class="card-title text-center">Sencilla</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						2 personas</li>
				</ul>
				<%
				 
				if (pase==1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva204B.jsp"
							style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
				<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<a><img src="images/310C.jpg" class="card-img-top" alt="..."></a>
				<div class="card-body">
					<h5 class="card-title text-center">Master suite</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						4 personas</li>
				</ul>
				<%
				
				if (pase==1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva106A.jsp" style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
					<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<a href="javascript:abrir315C()"><img src="images/315C.jpg"
					class="card-img-top"></a>
				<div class="card-body">
					<h5 class="card-title text-center">Suite junior doble</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						4 personas</li>
				</ul>
				<%
				
				if (pase==1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva315C.jsp"
							style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
					<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem; margin-left: 50px">
				<a><img src="images/403D.jpg" class="card-img-top" alt="..."></a>
				<div class="card-body">
					<h5 class="card-title text-center">Suite principal</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						2 personas</li>
				</ul>
				<%
				
				if (pase==1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva315C.jsp" style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
					<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
				<%
				}
				%>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<a href="javascript:abrir415D()"><img src="images/415D.jpg"
					class="card-img-top"></a>
				<div class="card-body">
					<h5 class="card-title text-center">Suite presidencial</h5>
				</div>
				<ul class="list-group list-group-flush text-center"
					style="margin-top: -10px">
					<li class="list-group-item"><i class="fa-solid fa-users"></i>
						2 personas</li>
				</ul>
				<%
				
				if (pase==1) {
				request.getSession().setAttribute("servletMsg", correo);
				%>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="Reserva415D.jsp"
							style="text-decoration: none; color: white;">Reservar</a>
					</button>
				</div>
				<%
				} else {
				%>
					<div class="card-body text-center">
        			<button type="button" class="btn btn-dark">
        				<a href="Login.jsp" style="text-decoration: none; color: white;">Reservar</a>
        			</button>
			    </div>
				<%
				}
				%>
			</div>

		</div>
	</div>

<!-- Ventanas de informacion -->
	<div class="card" id="Vent1">
		<div id="cerrar">
			<a href="javascript:cerrar106A()"> <br> <i
				class="fa-solid fa-circle-xmark" id="cerrarLogo"></i>
			</a>
		</div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/106A.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/106A-2.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/106A-3.jpg" style="height: 190px">
				</div>
			</div>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">Detalles
						de la habitación</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<i class="fa-solid fa-expand"></i> 50 metros cuadrados <br> <i
							class="fa-solid fa-users"></i> 2 personas <br> <i
							class="fa-solid fa-bed"></i> 1 cama King size <br> <strong>Beneficios
							exclusivos</strong> <br> <i class="fa-solid fa-utensils"></i>
						Desayuno a la carta <br> <i class="fa-solid fa-tv"></i>
						Canales por cable <br> <i class="fa-solid fa-shower"></i>
						Baño privado <br> <i class="fa-solid fa-computer"></i>
						Escritorio grande
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="card" id="Vent2">
		<div id="cerrar">
			<a href="javascript:cerrar204B()"> <br> <i
				class="fa-solid fa-circle-xmark" id="cerrarLogo"></i>
			</a>
		</div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/204B.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/204B-2.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/204B-3.jpg" style="height: 190px">
				</div>
			</div>
		</div>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">Descripción</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<i class="fa-solid fa-expand"></i> 30 metros cuadrados <br> <i
							class="fa-solid fa-users"></i> 2 personas <br> <i
							class="fa-solid fa-bed"></i> 1 cama King size <br> <strong>Beneficios
							exclusivos</strong> <br> <i class="fa-solid fa-tv"></i> Canales por
						cable <br> <i class="fa-solid fa-shower"></i> Baño privado <br>
						Vistas a la ciudad
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="card" id="Vent3">
		<div id="cerrar">
			<a href="javascript:cerrar315C()"> <br> <i
				class="fa-solid fa-circle-xmark" id="cerrarLogo"></i>
			</a>
		</div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/315C.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/315C-2.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/315C-3.jpg" style="height: 190px">
				</div>
			</div>
		</div>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">Descripción</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<i class="fa-solid fa-expand"></i> 76 metros cuadrados <br> <i
							class="fa-solid fa-users"></i> 4 personas <br> <i
							class="fa-solid fa-bed"></i> 2 camas King size <br> <strong>Beneficios
							exclusivos</strong> <br> <i class="fa-solid fa-martini-glass-empty"></i>
						Desayunos <br> <i class="fa-solid fa-tv"></i> Canales por
						cable <br> Zona de estar
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="card" id="Vent4">
		<div id="cerrar">
			<a href="javascript:cerrar415D()"> <br> <i
				class="fa-solid fa-circle-xmark" id="cerrarLogo"></i>
			</a>
		</div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/415D.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/415D-2.jpg" style="height: 190px">
				</div>
				<div class="carousel-item">
					<img src="images/415D-3.jpg" style="height: 190px">
				</div>
			</div>
		</div>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">Descripción</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<i class="fa-solid fa-expand"></i> 280 metros cuadrados <br>
						<i class="fa-solid fa-users"></i> 2 personas <br> <i
							class="fa-solid fa-bed"></i> 1 cama King size <br> <strong>Beneficios
							exclusivos</strong> <br> <i class="fa-solid fa-martini-glass-empty"></i>
						Minibar <br> Acceso al lounge ejecutivo <br> <i
							class="fa-solid fa-shower"></i> Tina de hidromasaje <br>
						Sala de estar
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- Abrir y cerrar -->
	<script>
		function abrir106A() {
			document.getElementById("Vent1").style.display = "block";
		}
		function cerrar106A() {
			document.getElementById("Vent1").style.display = "none";
		}
		function abrir204B() {
			document.getElementById("Vent2").style.display = "block";
		}
		function cerrar204B() {
			document.getElementById("Vent2").style.display = "none";
		}
		function abrir315C() {
			document.getElementById("Vent3").style.display = "block";
		}
		function cerrar315C() {
			document.getElementById("Vent3").style.display = "none";
		}
		function abrir415D() {
			document.getElementById("Vent4").style.display = "block";
		}
		function cerrar415D() {
			document.getElementById("Vent4").style.display = "none";
		}
	</script>


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