import prenda.*
import estado.*
import venta.*

object registroVentas {
	var ventas = []	
	var fechaRequerida
	
	method ventasSegunFecha() = ventas.filter({ venta => venta.fueRealizadaEnEstaFecha(fechaRequerida) })
	
	method montoTotalDeVentas() = 
		self.ventasSegunFecha().sum({ venta => venta.montoTotalDeVentas() })
}
