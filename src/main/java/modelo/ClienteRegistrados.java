package modelo;

public class ClienteRegistrados {

	public String nombre;
    public String correo;
    
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(final String nombre) {
        this.nombre = nombre;
    }
    
    public String getCorreo() {
        return this.correo;
    }
    
    public void setCorreo(final String correo) {
        System.out.print("Correo es: " + correo);
        this.correo = correo;
    }
}
