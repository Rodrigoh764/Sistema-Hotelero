package Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import modelo.Reservacion;

class validaFechaReserva {

	@Test
	void testValidaFecha() {
		boolean  resul = false;
		Reservacion usu = new Reservacion();
		resul = usu.("2023-06-10");
		assertEquals(resul, true);
	}
	
	@Test
	void testValidaFechaFinal() {
		boolean  resul = false;
		Reservacion usu = new Reservacion();
		resul = usu.validaFechaFinal("2023-06-09");
		assertEquals(resul, false);
	}


	
	
}
