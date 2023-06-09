package modelo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
//import java.time.temporal.Temporal;
import java.time.temporal.ChronoUnit;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

public class Usuario {

	private String nombre;
    private String edad;
    private String apellido;
    private String telefono;
    private String correo;
    private String contraseña;
    
    public boolean validaEdad( String edad) {
         LocalDate fechaActual = LocalDate.now();
         LocalDate fecha = LocalDate.parse(edad, DateTimeFormatter.ISO_LOCAL_DATE);
         long diff = ChronoUnit.YEARS.between(fecha, fechaActual);
        if (diff >= 18) {
            this.edad = edad;
            return true;
        }
        return false;
    }
    
    public String getEdad() {
        return this.edad;
    }
    
    public boolean validaCorreo( String correo) {
         Pattern pat = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
         Matcher mat = pat.matcher(correo);
        if (mat.find()) {
            this.correo = correo;
            return true;
        }
        return false;
    }
    
    public String getCorreo() {
        return this.correo;
    }
    
    public boolean validaTelefono( String telefono) {
         Pattern pat = Pattern.compile("(55)[ -]*([0-9][ -]*){8}$");
         Matcher mat = pat.matcher(telefono);
        if (mat.find()) {
            this.telefono = telefono;
            return true;
        }
        return false;
    }
    
    public String getTelefono() {
        return this.telefono;
    }
    
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(final String nombre) {
        this.nombre = nombre;
    }
    
    public String getApellido() {
        return this.apellido;
    }
    
    public void setApellido( String apellido) {
        this.apellido = apellido;
    }
    
    public boolean validaContraseña( String contraseña) {
         Pattern pat = Pattern.compile("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@_$!%#?&])[A-Za-z\\d_.@$!%#?&]{8,15}$");
         Matcher mat = pat.matcher(contraseña);
        if (mat.find()) {
            this.contraseña = contraseña;
            return true;
        }
        return false;
    }
    
    public String getContraseña() {
        return this.contraseña;
    }
}
