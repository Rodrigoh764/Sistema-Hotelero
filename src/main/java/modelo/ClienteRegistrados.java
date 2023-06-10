package modelo;

public class ClienteRegistrados {
//GUARDAMOS EL CORREO QUE YA INICIO SESION PARA HACER LAS CONSULTAS SOLO MANDARLO A LLAMAR
	
	public int puerta;
    public String correo;
    
    
    
	public int getPuerta() {
		return puerta;
	}
	public void setPuerta(int puerta) {
		this.puerta = puerta;
	}
	public String getCorreo() {
		System.out.print("El correo que mando es:"+correo);
		return correo;
	}
	public void setCorreo(String correo) {
		String nombre = correo;
		 this.correo = nombre;
		 
	}
    
    

    
 

}
