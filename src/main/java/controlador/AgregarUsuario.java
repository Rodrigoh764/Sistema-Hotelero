package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bdconexion.conexion;
import modelo.Usuario;

public class AgregarUsuario {

private Connection c;
    
    public AgregarUsuario() {
        this.c = conexion.getConnection();
    }
    
    public void agregar( Usuario usuario) {
        try {
             String sql = "INSERT INTO clientes (nombre, apellidos, fecnac, telefono, correo, contrase\u00f1a ) VALUES (?,?,?,?,?,?)";
             PreparedStatement pst = this.c.prepareStatement(sql);
            pst.setString(1, usuario.getNombre());
            pst.setString(2, usuario.getApellido());
            pst.setString(3, usuario.getEdad());
            pst.setString(4, usuario.getTelefono());
            pst.setString(5, usuario.getCorreo());
            pst.setString(6, usuario.getContrase\u00f1a());
            pst.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e);
        }
    }
}
