<%@ page import="java.sql.*"%>

<%
String correo = (String) session.getAttribute("servletMsg");
%>

<!DOCTYPE html>

<%@ page import="modelo.ClienteRegistrados"%>


<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Hoteleria</title>
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
</head>
<body id="page-top">

	<%
ClienteRegistrados registrado = new ClienteRegistrados();
%>

	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top "
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="Index.jsp">El "Paraiso"</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1">
						<%
						PreparedStatement sentencia = null;
						ResultSet rs = null;

						Connection c;

						Class.forName("org.postgresql.Driver");
						c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/SistemaHotel", "postgres", "uacm123");

						String consulta = "select * from clientes where correo =?";

						sentencia = c.prepareStatement(consulta);
						sentencia.setString(1, correo);

						rs = sentencia.executeQuery();
						while (rs.next()) {
							String nomUsuario = rs.getString("nombre");
						%> 
					

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<%=nomUsuario%></a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="Registro">Cerrar Sessión</a></li>
				            <li><a class="dropdown-item" href="#">Reservaciones</a></li>
							
						</ul>
						</li>
						<%}%>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Servicios</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">Acerca</a></li>
						<%if(correo == null){ %>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Login.jsp">Iniciar
							sesión</a></li>
							<%} %>


				</ul>
			</div>
		</div>
	</nav>



	<header class=" bg-secondary text-white text-center mt-4 pt-4"
		style="padding-bottom: 1rem">
		<img class="" src="images/portada2.jpg"
			style="width: 100%; height: 555px;" alt="..." />





		<div class="divider-custom divider-light mt-0 pt-0 mb-0 pb-0">
			<div class="divider-custom-line"></div>
			<div class="divider-custom-icon">
				<i class="fas fa-star"></i>
			</div>
			<div class="divider-custom-line"></div>
		</div>
	</header>




	<section class="page-section portfolio" id="portfolio">
		<div class="container">

			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Servicios</h2>

			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>



			<div class="row justify-content-center">



				<!--Servicio 1 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<a href="Habitacion.jsp">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal1">

							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">

								<div class="portfolio-item-caption-content">

									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="images/habitacion.jpg"
								alt="..." />
						</div>

					</a>
					<h2 style="text-align: center">Habitaciones</h2>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<a href="login.jsp">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal2">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div class="portfolio-item-caption-content ">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid"
								src="images/entretenimiento.jpg" alt="..." />
						</div>
					</a>
					<h2 style="text-align: center">Entretenimineto</h2>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<a href="login.jsp">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal3">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div class="portfolio-item-caption-content ">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="images/comida.jpg"
								alt="..." />
						</div>
					</a>
					<h2 style="text-align: center">Comida</h2>
				</div>
				<!-- Portfolio Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<a href="login.jsp">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal4">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div class="portfolio-item-caption-content ">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="images/lavandaria.jpg"
								alt="..." />
						</div>
					</a>
					<h2 style="text-align: center">Lavanderia</h2>
				</div>
				<!-- Portfolio Item 5-->
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<a href="login.jsp">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal5">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div class="portfolio-item-caption-content ">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="images/red.jpg"
								alt="..." />
						</div>
					</a>
					<h2 style="text-align: center">Red</h2>
				</div>
				<!-- Portfolio Item 6-->
				<div class="col-md-6 col-lg-4">
					<a href="login.jsp">
						<div class="portfolio-item mx-auto" data-bs-toggle="modal"
							data-bs-target="#portfolioModal6">
							<div
								class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
								<div class="portfolio-item-caption-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div>
							<img class="img-fluid" src="images/seguridad.jpg"
								alt="..." />
						</div>
					</a>
					<h2 style="text-align: center">Seguridad</h2>
				</div>
			</div>
		</div>
	</section>




	<section class="bg-secondary text-white mb-0" id="about">
		<div class="container">

			<h2
				class="page-section-heading text-center text-uppercase text-white mt-3 pt-3">Acerca</h2>

			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>

			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Este hotel se encuentra frente al aeropuerto
						internacional de Ciudad de México y ofrece un servicio de enlace
						gratuito 24 horas con las 2 terminales del aeropuerto cada 30
						minutos.El "Paraiso" está a solo unos minutos del centro de la
						ciudad y de la Zona Rosa, famosa por sus restaurantes, tiendas y
						ocio nocturno. También se encuentra cerca de los centros de
						deportes y conciertos Foro Sol y Palacio de los Deportes.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">El "Paraiso" cuenta con zonas verdes y piscina
						al aire libre. Además, los huéspedes podrán degustar la cocina
						mexicana en el Cafe La Fiesta, que sirve desayunos, almuerzos y
						cenas de tipo buffet o a la carta. El bar del vestíbulo sirve
						bebidas nacionales y de importación, así como aperitivos
						mexicanos. También se ofrece servicio de habitaciones las 24 horas
					</p>
				</div>
			</div>

		</div>
	</section>



	<footer class="footer text-center bg-dark">
		<div class="container">
			<div class="row">

				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Localización</h4>
					<p class="lead mb-0">
						Boulevard Puerto Aereo Numero 502 Colonia Moctezuma <br />2a
						Seccion, Venustiano Carranza, 15530 Ciudad de México
					</p>
				</div>

				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Siguenos en nuestras redes</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-instagram-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-snapchat"></i></a>
				</div>

				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">Contactanos</h4>
					<p class="lead mb-0">
						+52-5564678927 <br> +52-5555553717 <br> <a
							href="http://gmail.com">hotelPA@paraiso.com</a>
					</p>
				</div>
			</div>
		</div>
	</footer>


	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Derechos reservados 2021</small>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script src="js/scripts.js"></script>

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>


	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;

		if (status == "exito") {
			swal("¡Bienvenido!", "Has iniciado sessión");
		}
		if (status == "close") {
			swal("¡Cerraste Sessión!");
		}
	</script>

</body>
</html>
