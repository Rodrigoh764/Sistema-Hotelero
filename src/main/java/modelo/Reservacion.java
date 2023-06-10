package modelo;


//import java.time.temporal.Temporal;
import java.time.temporal.ChronoUnit;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

public class Reservacion {
	private String fecha;

	public String getFecha() {
		return fecha;
	}

	public boolean validaFecha( String fecha) {
		 
		
		System.out.print("Fecha resivida"+fecha);
		
        LocalDate fechaActual = LocalDate.now();
        System.out.print("  Fecha Actual"+fechaActual);
        
        LocalDate fechaReserva = LocalDate.parse(fecha, DateTimeFormatter.ISO_LOCAL_DATE);
        System.out.print("Operacion"+fechaReserva);
        
        long diff = ChronoUnit.YEARS.between(fechaReserva, fechaActual);
        System.out.print(diff);
       if (diff >= 1) {
    	   this.fecha = fecha;
           return true;
       }
       return false;
   }
	
	
}
