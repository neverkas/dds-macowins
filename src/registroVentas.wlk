import prenda.*
import estado.*
import venta.*

object registroVentas {
	const property ventas = []	
	var fechaRequerida
	
	method ventasSegunFecha() = ventas.filter({ venta => venta.fueRealizadaEnEstaFecha(fechaRequerida) })
	
	method montoTotalDeVentasSegunFecha() = 
		self.ventasSegunFecha().sum({ venta => venta.montoTotalDeVentas() })
}
