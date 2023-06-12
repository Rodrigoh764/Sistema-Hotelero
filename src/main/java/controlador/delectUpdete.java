package controlador;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Reservacion;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;


	@WebServlet({"/delectUpdete"})
	public class delectUpdete extends HttpServlet{
	

		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			Statement stmt = null;

			try {
				RequestDispatcher dispatcher = null;

				String update = request.getParameter("actu");
				String eliminar = request.getParameter("eliminar");
				String folio = request.getParameter("folio");
				String inicio = request.getParameter("fechainicio");
				String fin = request.getParameter("fechafinal");
				String categoria = request.getParameter("categoria");
			
				String driver = "org.postgresql.Driver";
				String url = "jdbc:postgresql://localhost:5433/SistemaHotel";
				String user = "postgres";
				String password = "uacm123";
				Class.forName(driver);
				
				System.out.print("LOQUE ENVIA");
				System.out.print(eliminar);
				System.out.print(update);

				
				
				
				
				Connection c = DriverManager.getConnection(url, user, password);
				int valor = 5;
		
				if(update !=null) {
				
					

					String sql = "UPDATE reservacion SET  habitacion =?, fecini =?, fecfin = ? WHERE telefono = ?";
							
					System.out.print("Actualizando-----");
					System.out.print(categoria);
					System.out.print(inicio);
					System.out.print(fin);
					System.out.print(folio);
					PreparedStatement ps = c.prepareStatement(sql);
					
					ps.setString(1, categoria);
					ps.setString(2, inicio);
					ps.setString(3, fin);
					ps.setString(4, folio);
				

					ps.executeUpdate();
					
					request.setAttribute("status", "modi");
					dispatcher = request.getRequestDispatcher("Index.jsp");
					dispatcher.forward(request, response);
				}
				if(eliminar !=null) {
					String sql = "DELETE FROM reservacion WHERE telefono =?";

					PreparedStatement ps = c.prepareStatement(sql);

					ps.setString(1, folio);
				

					ps.executeUpdate();
					
					request.setAttribute("status", "eliminado");
					dispatcher = request.getRequestDispatcher("Index.jsp");
					dispatcher.forward(request, response);
				}
				
				

			

			} catch (Exception e) {
				e.printStackTrace();
				System.out.print(e);
			}

			

		}
}
