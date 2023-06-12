<%@ page import="controlador.delectUpdete"%>

<%@ page import="java.sql.*"%>
<%
String variable = request.getParameter("variable");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body style="background: #7f7777">

	<center>
		<div class="table-responsive">
			<h2 class="form-title">Revisa los datos y confirma tu
				reservación</h2>
			<form method="post" action="delectUpdete"
				style="margin-top: 0px; padding-top: 0px">
				<table border="2" class="table table-striped table-sm text-center"
					style="background: #505160; width: 50%; color: white">

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
						String folio = rs.getString("folio");
						String habitacion = rs.getString("habitacion");
						String fechainicio = rs.getString("fecini");
						String fechafin = rs.getString("fecfin");
						String total = rs.getString("total");
					%>
					<tr>
						<td>

							<div class="form-group">
								<input class="text-center" value="1398<%=folio%>"
									style="background: white; width: 100px" disabled=disabled />
							</div>
						</td>
					
						<td>
							<div class="form-group">
								<input class="text-center" value="<%=fechainicio%>"
									style="background: white; width: 130px" disabled=disabled />
							</div>
						</td>
						<td>
							<div class="form-group">
								<input class="text-center" value="<%=fechafin%>"
									style="background: white; width: 130px" disabled=disabled />
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
								<input class="text-center" value="Proximo"
									style="background: white; width: 100px" disabled=disabled />
							</div>
						</td>
						
				
						<td style="padding: 0px; margin: 0px;">
								<div class="card-body">
									<input style="width: 80%" type="submit" name="signin"
								id="signin" class="btn btn-success" value="submit" />
								</div>
							</td>
							
					</tr>
					<%
					}
					%>
				</table>

			
			</form>
		</div>
	</center>
</body>
</html>