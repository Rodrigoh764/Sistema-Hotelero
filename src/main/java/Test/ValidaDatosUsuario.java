package Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import modelo.Usuario;

class ValidaDatosUsuario {
	
	

	@Test
	void testValidaEdad() {
		Usuario usu = new Usuario();
		boolean resul = usu.validaEdad("01/11/2015");
		assertEquals(false, resul);
	}

	@Test
	void testValidaCorreo() {
		Usuario usu = new Usuario();
		boolean resul = usu.validaCorreo("rodrigoh2@gmail.com");
		assertEquals(true, resul);
	}

	@Test
	void testValidaTelefono() {
		Usuario usu = new Usuario();
		boolean resul = usu.validaTelefono("5564678927");
		assertEquals(true, resul);
	}

	@Test
	void testValidaContraseña() {
		Usuario usu = new Usuario();
		boolean resul = usu.validaContraseña("rodrigo_123");
		assertEquals(true, resul);
	}

}
