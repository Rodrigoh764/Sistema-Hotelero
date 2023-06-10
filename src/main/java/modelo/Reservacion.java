package modelo;

//import java.time.temporal.Temporal;
import java.time.temporal.ChronoUnit;

import bdconexion.conexion;

import java.time.format.DateTimeFormatter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

public class Reservacion {
	private String rangoFecha;
	public String fechaInicio;
	public String fechaFinal;
	private double costoReservacion;
	private String numHabitacion;
	private String folio;
	private String categoria;
	private String costoNoche;
	private int diasReservados;

	public boolean setvalidaFechaInicial(String fechaInicio) {
		LocalDate fechaActual = LocalDate.now();
		LocalDate dAfter = LocalDate.parse(fechaInicio, DateTimeFormatter.ISO_LOCAL_DATE);
		var diff = fechaActual.until(dAfter, ChronoUnit.DAYS);
		if (diff >= 1) {
			this.fechaInicio = fechaInicio;
			System.out.print(fechaInicio);
			return true;
		}

		return false;
	}

	public String getFechaInicio() {
		return fechaInicio;
	}

	// ---------------------------------------------------------------------------------------

	public boolean setvalidaFechaFinal(String fechaFinal) {
		LocalDate fechaActual = LocalDate.now();

		LocalDate fecha = LocalDate.parse(fechaFinal, DateTimeFormatter.ISO_LOCAL_DATE);

		long dias = fechaActual.until(fecha, ChronoUnit.DAYS);

		System.out.print(dias);

		if (dias > 1) {
			this.fechaFinal = fechaFinal;
			return true;
		}
		return false;
	}

	public String getFechaFinal() {
		return fechaFinal;
	}

	// ---------------------------------------------------------------------------------------

	public void rangoFecha() {
	Reservacion fecha = new Reservacion();
		
		String inicio = fecha.getFechaInicio();
		String fin = fecha.getFechaFinal();
		
		System.out.print("inicio"+inicio);
		System.out.print("fin"+fin);

		
	}

	public String getrangoFecha() {
		return rangoFecha;
	}
	
	//----------------------------------------------------------------------------------------

	public int getdiasReservados() {
		return diasReservados;
	}

	private Connection c;

	public Reservacion() {
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
			pst.setString(6, usuario.getContrase\u00f1a());
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e);
		}
	}

	



}
