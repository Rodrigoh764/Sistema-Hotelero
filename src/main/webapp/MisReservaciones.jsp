<%@ page import="controlador.delectUpdete"%>

<%@ page import="java.sql.*"%>
<%
String variable = request.getParameter("variable");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mis reservaciones</title>

<!--  iconos -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body style="background: #125B75;">
	<div class="container" style="background: #7F8C8D; width: 73%;">
		<h2
			class="page-section-heading text-center text-uppercase text-secondary mb-0">Mis
			reservaciones</h2>
	</div>


	<div class="container" style="background: #7F8C8D; width: 90%;">
		<div class="divider-custom" style="padding-bottom: 0px">
			<div class="divider-custom-line"></div>
			<div class="divider-custom-icon">
				<i class="fas fa-star"></i>
			</div>
			<div class="divider-custom-line"></div>
		</div>

		<center>
			<form method="post" action="delectUpdete"
				style="margin-top: 0px; padding-top: 0px">
				<div class="table-responsive">
					<table border="2" class="table table-striped table-sm  text-center"
						style="background: #2a3132; width: 80%; color: white">


						<thead style="background: black; font-size: 20px">
							<tr>
								<th scope="col">Folio</th>
								<th scope="col">Habitación</th>
								<th scope="col">Check in</th>
								<th scope="col">Check out</th>
								<th scope="col">Total</th>
								<th scope="col">Estado</th>
								<td colspan="2"></td>
						</thead>


						<tbody style="font-size: 15px">

							<%
							PreparedStatement sentencia = null;
							ResultSet rs = null;

							Connection c;

							Class.forName("org.postgresql.Driver");
							c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/SistemaHotel", "postgres", "uacm123");

							String consulta = "select * from reservacion where telefono =?";
							String tel = "5564678927";
							sentencia = c.prepareStatement(consulta);
							sentencia.setString(1, tel);

							rs = sentencia.executeQuery();
							while (rs.next()) {
								String folio = rs.getString("telefono");
								String habitacion = rs.getString("habitacion");
								String fechainicio = rs.getString("fecini");
								String fechafin = rs.getString("fecfin");
								String total = rs.getString("total");
							%>

							<tr>
								<td>

									<div class="form-group">
										<input class="text-center" value="<%=folio%>" name="folio"
											style="background: white; width: 100px" />
									</div>
								</td>
								<td  >
									<div class="form-group">
										<select name="categoria" class="form-select"
											aria-label="Default select example">
											<option selected><%=habitacion%></option>
											<option value="Sencilla">Sencilla</option>
											<option value="Doble">Doble</option>
											<option value="Suite Junior">Suite Junior</option>
											<option value="Suite Junior Doble">Suite Junior Doble</option>
											<option value="Suite Principal">Suite Principal</option>
											<option value="Suite Presidencial">Suite Presidencial</option>
											<option value="Master Suite">Master Suite</option>
											<option value="Doble Executive">Doble Executive</option>
										</select>
									</div>
								</td>
								<td>
									<div class="form-group">
										<input class="text-center" value="<%=fechainicio%>"
											style="background: white; width: 130px" type="date"
											name="fechainicio" />
									</div>
								</td>
								<td>
									<div class="form-group">
										<input class="text-center" value="<%=fechafin%>"
											style="background: white; width: 130px" type="date"
											name="fechafinal" />
									</div>
								</td>
								<td>
									<div class="form-group">
										<input class="text-center" value="<%=total%>"
											style="background: white; width: 110px" disabled=disabled />
									</div>
								</td>
								<td>
									<div class="form-group">
										<input class="text-center" value="Próxima"
											style="background: white; width: 150px" disabled=disabled />
									</div>
								</td>
								<td style="margin-top: 0px; padding: 5px"><input
									style="width: 100%; margin-top: 0px;" type="submit"
									name="eliminar" id="signin" class="btn btn-success"
									value="Eliminar" /></td>
									
								<td style="padding: 5px; margin-top: 0px;"><input
									style="width: 100%; margin-top: 0px;" type="submit" name="actu"
									id="signin" class="btn btn-success" value="Actualizar" /></td>
							</tr>
							<%
							}
							%>
						</tbody>
						</form>
					</table>
				</div>
			</form>
		</center>
		<div class="form-group form-button" style="text-align: center">
			<a class="btn btn-primary" href="Index.jsp" role="button"
				style="font-size: 25px">Regresar</a>


		</div>

	</div>

</body>
</html>