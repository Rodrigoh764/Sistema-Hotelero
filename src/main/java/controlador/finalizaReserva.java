package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Reservacion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

@WebServlet({ "/confirmarRecervacion" })
public class finalizaReserva extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Statement stmt = null;

		try {
			RequestDispatcher dispatcher = null;

			Reservacion reservar = new Reservacion();
			String nombre = request.getParameter("nombre");
			String habitacion = request.getParameter("habitacion");
			String fechainicio = request.getParameter("fechaini");
			String fechafin = request.getParameter("fechafin");
			String total = request.getParameter("totalpagar");
			String telefono = request.getParameter("telefono");
			String driver = "org.postgresql.Driver";
			String url = "jdbc:postgresql://localhost:5433/SistemaHotel";
			String user = "postgres";
			String password = "uacm123";
			Class.forName(driver);
			
			
			System.out.print("------------------------");
			System.out.print(nombre);
			System.out.print(habitacion);
			System.out.print(fechainicio);
			System.out.print(fechafin);
			System.out.print(total);
			
			Connection c = DriverManager.getConnection(url, user, password);


			String sql = "INSERT INTO reservacion (nombre,habitacion, fecini, fecfin, total, telefono) VALUES (?,?,?,?,?,?)";

			PreparedStatement ps = c.prepareStatement(sql);

			ps.setString(1, nombre);
			ps.setString(2, habitacion);
			ps.setString(3, fechainicio);
			ps.setString(4, fechafin);
			ps.setString(5, total);
			ps.setString(6, telefono);

			ps.executeUpdate();
			
			request.setAttribute("status", "reserva");
			dispatcher = request.getRequestDispatcher("Index.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e);
		}

		

	}
}