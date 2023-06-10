<%@ page import="java.sql.*"%>
<%@ page import="modelo.Reservacion"%>
<%
String correo = (String) session.getAttribute("servletMsg");

Reservacion mostrar = new Reservacion();

String fechaini = request.getParameter("dato1");
String fechafin = request.getParameter("dato2");



%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="modelo.ClienteRegistrados"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmar reservación</title>
<link rel="stylesheet" href="css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body style="background: #7f7777">

	<center>
		<div class="table-responsive">
			<h2 class="form-title">Revisa los datos y confirma tu
				reservación</h2>
			<form method="post" action="RegistroReservacion"
				style="margin-top: 0px; padding-top: 0px">
				<table border="2" class="table table-striped table-sm text-center"
					style="background: #505160; width: 50%; color: white">
					<thead>
						<tr>
							<th scope="col" colspan="2">Datos personales</th>
						</tr>
					</thead>
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
						String apellido = rs.getString("apellidos");
						String telef = rs.getString("telefono");
						String corre = rs.getString("correo");
					%>
					<tbody>
						<tr>
							<td>

								<div class="form-group">
									
									<label for="username"><i class="fa-solid fa-user"></i>
										Nombre completo:</label> <input value="<%=nomUsuario%> <%=apellido%>"
										style="background: #E2E2E2; margin-left: 200px; width: 280px"
										disabled=disabled />
								
								</div>
								<div class="form-group">
									<label for="username"><i class="fa-solid fa-envelope"></i>
										Correo electrónico:</label> <input value="<%=corre%>"
										style="background: #E2E2E2; margin-left: 200px; width: 250px"
										disabled=disabled />
								</div>
								<div class="form-group">
									<label for="username"><i class="fa-solid fa-phone"></i>
										Número de celular:</label> <input value="<%=telef%>"
										style="background: #E2E2E2; margin-left: 200px; width: 150px"
										disabled=disabled />
								</div>
							</td>
						<tr>
					</tbody>
						<%
									}
									%>
				</table>

				<table border="2" class="table table-striped table-sm text-center"
					style="background: #68829e; width: 50%">
					<thead>
						<tr>
							<th scope="col" colspan="2">Datos de la habitación</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="form-group">
									<label for="username"><i class="fa-solid fa-house"></i>
										Categoría:</label> <input value="Doble"
										style="background: #E2E2E2; margin-left: 200px; width: 250px"
										disabled=disabled />
								</div>
								<div class="form-group">
									<label for="username"><i class="fa-solid fa-hashtag"></i>
										Número habitación:</label> <input value="102A"
										style="background: #E2E2E2; margin-left: 200px; width: 100px"
										disabled=disabled />
								</div>
								<div class="form-group">
									<label for="username"><i
										class="fa-solid fa-money-bills"></i> Precio:</label> <input
										value="$3,500"
										style="background: #E2E2E2; margin-left: 200px; width: 150px"
										disabled=disabled />
								</div>
							</td>
						<tr>
					</tbody>
				</table>

				<table border="2" class="table table-striped table-sm text-center"
					style="background: #003b46; width: 50%; color: white">
					<thead>
						<tr>
							<th scope="col" colspan="2">Datos de la reservación</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="form-group">
									<label for="username"><i
										class="fa-solid fa-calendar-days"></i> Check-in:</label> <input
										value="<%=fechaini%>"
										style="background: #E2E2E2; margin-left: 200px; width: 150px"
										disabled=disabled />
								</div>
								<div class="form-group">
									<label for="username"><i
										class="fa-solid fa-calendar-days"></i> Check-out:</label> <input
										value="<%=fechafin %>"
										style="background: #E2E2E2; margin-left: 200px; width: 150px"
										disabled=disabled />
								</div>
								<div class="form-group">
									<label for="username"><i
										class="fa-solid fa-money-bills"></i> Total a pagar:</label> <input
										value="$7,000"
										style="background: #E2E2E2; margin-left: 200px; width: 150px"
										disabled=disabled />
								</div>
								<div class="form-group">
									<label for="username"><i class="fa-solid fa-ticket"></i>
										Folio:</label> <input value="17189"
										style="background: #E2E2E2; margin-left: 200px; width: 150px"
										disabled=disabled />
								</div> <input style="width: 80%" type="submit" name="signin"
								id="signin" class="btn btn-success" value="Confirma reservación" />
							</td>
						<tr>
					</tbody>
				</table>
			</form>
		</div>
	</center>
</body>
</html>