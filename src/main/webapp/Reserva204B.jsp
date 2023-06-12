<%String correo = (String) session.getAttribute("servletMsg");

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Información habitación: Sencilla</title>
<link rel="stylesheet" href="css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body style="background: #7f7777">

<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
		
	<section class="sign-in" style="margin-top: 0px; padding-top: 0px;">
		<div class="signin-content">
			<div class="signin-image">
				<div id="carouselExampleControls" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="images/204B.jpg" style="height: 400px">
						</div>
						<div class="carousel-item">
							<img src="images/204B-2.jpg" style="height: 400px">
						</div>
						<div class="carousel-item">
							<img src="images/204B-3.jpg" style="height: 400px">
						</div>
					</div>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
<% request.getSession().setAttribute("servletMsg", correo); %>
			<div class="signin-form">
				<h2 class="form-title">Reservar Habitación</h2>
				<form method="post" action="ReservarHabitacion"
					style="margin-top: 0px; padding-top: 0px">

<div class="form-group">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item" style="background: #E2E2E2;">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne" style="background: #E2E2E2;">
										Descripción</button>
								</h2>
								<div id="flush-collapseOne" class="accordion-collapse collapse"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<i class="fa-solid fa-expand"></i> 30 metros cuadrados <br>
										<i class="fa-solid fa-users"></i> 2 personas <br>
										<i class="fa-solid fa-bed"></i> 1 cama King size <br>
										<strong>Beneficios exclusivos</strong> <br>
										<i class="fa-solid fa-tv"></i> Canales por cable <br>
										<i class="fa-solid fa-shower"></i> Baño privado <br>
										Vistas a la ciudad
									</div>
								</div>
							</div>				
						</div>
					</div>
					<div class="form-group">
						<label for="username"><i class="fa-solid fa-hashtag"></i> Número de habitación</label> <input
							value="204B"
							style="background: #E2E2E2; margin-left: 200px; width: 300px"
							disabled=disabled />
					</div>

					<div class="form-group">
						<label for="username">Categoría</label> <input
							value="Sencilla"
							style="background: #E2E2E2; margin-left: 200px; width: 300px"
							disabled=disabled />
					</div>

					
					
					<div class="form-group">
						<label for="username"><i class="fa-solid fa-money-bills"></i> Precio</label> <input
							value="$2,800"
							style="background: #E2E2E2; margin-left: 200px; width: 300px"
							disabled=disabled />
					</div>

					<div class="form-group">
						<label for="username">Check-in</label> <input type="Date"
							name="entrada"
							style="background: #E2E2E2; margin-left: 200px; width: 300px" />
					</div>

					<div class="form-group">
						<label for="username">Check-out</label> <input type="Date"
							name="salida"
							style="background: #E2E2E2; margin-left: 200px; width: 300px" />
					</div>

					<div class="form-group form-button" style="text-align: center">
						<a class="btn btn-primary" href="Index.jsp" role="button"
							style="font-size: 25px">Regresar</a> <input type="submit"
							name="signin" id="signin" class="form-submit" value="Reservar" />
					</div>
				</form>
			</div>
		</div>
	</section>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status = document.getElementById("status").value;

	if(status == "error"){
		swal("¡Fallido!", "Hay un error en la fecha, vuelve a intentarlo");
	}
	

		
	
	</script>
</body>
</html>