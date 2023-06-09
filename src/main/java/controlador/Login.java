package controlador;
import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({"/validar"})
public class Login extends HttpServlet{

private static final long serialVersionUID = 1L;
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final String correo = request.getParameter("email");
        final String contrase\u00f1a = request.getParameter("password");
        RequestDispatcher dispatcher = null;
        try {
            Class.forName("org.postgresql.Driver");
            final Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/SistemaHotel?useSSL=false", "postgres", "uacm123");
            final PreparedStatement pst = c.prepareStatement("select * from clientes where correo =? and contrase\u00f1a =?");
            pst.setString(1, correo);
            pst.setString(2, contrase\u00f1a);
            final ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                request.setAttribute("status", (Object)"exito");
                request.getSession().setAttribute("servletMsg", (Object)correo);
                dispatcher = request.getRequestDispatcher("Index.jsp");
                dispatcher.forward((ServletRequest)request, (ServletResponse)response);
            }
            else {
                request.setAttribute("status", (Object)"error");
                dispatcher = request.getRequestDispatcher("Login.jsp");
                dispatcher.forward((ServletRequest)request, (ServletResponse)response);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
