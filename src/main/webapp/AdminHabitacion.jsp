<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="modelo.ClienteRegistrados"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Modificar: Habitaciones</title>

<!--  iconos -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

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
			class="page-section-heading text-center text-uppercase text-secondary mb-0">Modificar
			disponibilidad</h2>
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
		<div class="row gy-3" style="margin-left: 30px">
			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/102A.jpg" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title text-center">Doble</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="102A" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$3,500" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/106A.jpg" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title text-center">Suite junior</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="106A" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$4,300" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/201B.jpg" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title text-center">Doble executive</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="201B" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$3,000" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/204B.jpg" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title text-center">Sencilla</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="204B" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$2,800" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/310C.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title text-center">Master suite</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="310C" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$6,900" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/315C.jpg" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title text-center">Suite junior doble</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="315C" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$5,300" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/403D.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title text-center">Suite principal</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="403D" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$6,000" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
				</div>
			</div>

			<div class="card" style="width: 18rem; margin: 0.5rem;">
				<img src="images/415D.jpg" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title text-center">Suite presidencial</h5>
				</div>
				<ul class="list-group list-group-flush" style="margin-top: -10px; font-size: 15px">
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-hashtag"></i> Número habitación:</label> <input
						value="415D" class="text-center"
						style="background: white; margin-left: 120px; width: 100px"
						disabled=disabled /></li>
					<li class="list-group-item"><label for="username"><i
							class="fa-solid fa-money-bills"></i> Precio:</label> <input
						value="$10,200" class="text-center"
						style="background: white; margin-left: 55px; width: 170px"
						disabled=disabled /></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Selecciona disponibilidad</option>
							<option value="true">No disponible</option>
							<option value="false">Disponible</option>
					</select></li>
					<li class="list-group-item"><select class="form-select"
						aria-label="Default select example">
							<option selected>Motivo</option>
							<option value="true">Mantenimiento</option>
							<option value="false">Ocupada</option>
							<option value="false">Fuera de servicio</option>
					</select></li>
				</ul>
				<div class="card-body text-center">
					<button type="button" class="btn btn-dark">
						<a href="#" style="text-decoration: none; color: white;">Guardar cambios</a>
					</button>
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