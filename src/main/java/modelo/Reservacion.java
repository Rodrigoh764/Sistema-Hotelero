package modelo;

//import java.time.temporal.Temporal;
import java.time.temporal.ChronoUnit;



import java.time.format.DateTimeFormatter;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
import java.time.LocalDate;

public class Reservacion {
	
	private String nombre;
	private String habitacion;
	private String inicio;
	private String fin;
	private String total;
	
	private String rangoFecha;
	public String fechaInicio;
	public String fechaFinal;


	public String getNombre() {
		return nombre;
	}

	public String setNombre(String nombre) {
		return this.nombre = nombre;
	}

	public String getHabitacion() {
		return habitacion;
	}

	public String setHabitacion(String habitacion) {
		return this.habitacion = habitacion;
	}

	public String getInicio() {
		return inicio;
	}

	public String setInicio(String inicio) {
		return this.inicio = inicio;
	}

	public String getFin() {
		return fin;
	}

	public String setFin(String fin) {
		return this.fin = fin;
	}

	public String getTotal() {
		return total;
	}

	public String setTotal(String total) {
		return this.total = total;
	}

	public String mostrarDatos() {
		return total;
	}

	
	//-------------------------------------------------------------------------

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




	



}
