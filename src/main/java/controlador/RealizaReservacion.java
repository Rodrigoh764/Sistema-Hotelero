package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Reservacion;

@WebServlet({"/ReservarHabitacion"})
public class RealizaReservacion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean fechaFinal = false;

		boolean fechaInicial = false;


		RequestDispatcher dispatcher = null;

		Reservacion reservaFecha = new Reservacion();
		
		String ini = request.getParameter("entrada");
		
		String fin = request.getParameter("salida");
		
		
		fechaInicial = reservaFecha.setvalidaFechaInicial(ini);
		fechaFinal = reservaFecha.setvalidaFechaFinal(fin);
			
		

		if (fechaInicial) {
			if(fechaFinal) {
					request.setAttribute("status","exito");
					System.out.print(reservaFecha.getFechaFinal());
					dispatcher = request.getRequestDispatcher("ReservacionConfirmar.jsp?dato1="+ini+"&dato2="+fin);
					dispatcher.forward(request, response);
			}
			 
			request.setAttribute("status", "error");
			dispatcher = request.getRequestDispatcher("Reserva.jsp");
			dispatcher.forward(request, response);
		}
		request.setAttribute("status", "error");
		dispatcher = request.getRequestDispatcher("Reserva.jsp");
		dispatcher.forward(request, response);
	
	}
}
