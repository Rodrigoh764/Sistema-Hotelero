package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bdconexion.conexion;
import modelo.Reservacion;
import modelo.Usuario;

public class AgregarUsuario {

	private Connection c;

	public AgregarUsuario() {
		this.c = conexion.getConnection();
	}

	public void agregar(Usuario usuario) {
		try {
			String sql = "INSERT INTO clientes (nombre, apellidos, fecnac, telefono, correo, contraseña ) VALUES (?,?,?,?,?,?)";
			PreparedStatement pst = this.c.prepareStatement(sql);
			pst.setString(1, usuario.getNombre());
			pst.setString(2, usuario.getApellido());
			pst.setString(3, usuario.getEdad());
			pst.setString(4, usuario.getTelefono());
			pst.setString(5, usuario.getCorreo());
			pst.setString(6, usuario.getContraseña());
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e);
		}
	}

	public void agregarReservacion(Reservacion reservar) {
		try {
			System.out.print("--------------------dentro del query");
			System.out.print("mi nombre" + reservar.getNombre());
			System.out.print(" Habitacion " + reservar.getHabitacion());
			System.out.print(" inicio " + reservar.getFechaInicio());
			System.out.print(" fin " + reservar.getFechaFinal());
			System.out.print(" total " +  reservar.getTotal());
			String sql = "INSERT INTO reservacion (nombre,habitacion, fecini, fecfin, total) VALUES (?,?,?,?,?)";
			PreparedStatement pst1 = this.c.prepareStatement(sql);
			pst1.setString(1, reservar.getNombre());
			pst1.setString(2, reservar.getHabitacion());
			pst1.setString(3, reservar.getFechaInicio());
			pst1.setString(4, reservar.getFechaFinal());
			pst1.setString(5, reservar.getTotal());

			pst1.executeUpdate();

		

		} catch (

		Exception e) {
			e.printStackTrace();
			System.out.print(e);
		}

	}

}
