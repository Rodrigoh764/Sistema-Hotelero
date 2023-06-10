package Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import modelo.Reservacion;

class validaFechaReserva {

	@Test
	void testValidaFecha() {
		Reservacion usu = new Reservacion();
		boolean resul = usu.validaFecha("01/11/1995");
		assertEquals(true, resul);
	}

}
