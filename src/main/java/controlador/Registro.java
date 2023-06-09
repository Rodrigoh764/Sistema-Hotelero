package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletResponse;
//import javax.servlet.ServletRequest;
//import modelo.ClienteRegistrados;
import modelo.Usuario;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/RegistroUsuario" })
public class Registro extends HttpServlet{

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

    
    protected void doPost( HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException {
        boolean confirmarEdad = false;
        boolean confirmarCorreo = false;
        boolean confirmarTelefono = false;
        boolean confirmaPassword = false;
        
        RequestDispatcher dispatcher = null;
        
        
        Usuario usuario = new Usuario();
        
        AgregarUsuario agregarU = new AgregarUsuario();
         
        
//         ClienteRegistrados cliRegistrados = new ClienteRegistrados();
        confirmarEdad = usuario.validaEdad(request.getParameter("edad"));
        confirmarCorreo = usuario.validaCorreo(request.getParameter("email"));
        confirmarTelefono = usuario.validaTelefono(request.getParameter("telefono"));
        confirmaPassword = usuario.validaContraseña(request.getParameter("contraseña"));
        usuario.setNombre(request.getParameter("name")); //DUDA
        usuario.setApellido(request.getParameter("apellidos")); //DUDA
        if (confirmarTelefono) {
        	System.out.print("tele");
            if (confirmarEdad) {
            	System.out.print("edad");
                if (confirmarCorreo) {
                	System.out.print("correo");
                    if (confirmaPassword) {
                    	System.out.print("contr");
                        agregarU.agregar(usuario);
                        request.setAttribute("status","exito");
                        dispatcher = request.getRequestDispatcher("Index.jsp");
                        dispatcher.forward(request, response);
                    }
                    System.out.print("falseContrase");
                    request.setAttribute("status","falseContraseña");
                    dispatcher = request.getRequestDispatcher("Registro.jsp");
                    dispatcher.forward(request, response);
                }
                System.out.print("falseCorreo");
                request.setAttribute("status","falseCorreo");
                dispatcher = request.getRequestDispatcher("Registro.jsp");
                dispatcher.forward(request, response);
            }
            System.out.print("falseEdad");
            request.setAttribute("status","falseEdad");
            dispatcher = request.getRequestDispatcher("Registro.jsp");
            dispatcher.forward(request, response);
        }
        System.out.print("falseTelefono");
        request.setAttribute("status", "falseTelefono");
        dispatcher = request.getRequestDispatcher("Registro.jsp");
        dispatcher.forward(request, response);
    }
}
