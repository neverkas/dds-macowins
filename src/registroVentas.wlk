import prenda.*
import estado.*
import venta.*

object registroVentas {
	const property ventas = []	
	
	method ventasSegunFecha(fechaRequerida) = 
		ventas.filter({ venta => venta.fueRealizadaEnEstaFecha(fechaRequerida) })
	
	method montoTotalDeVentasSegunFecha(fechaRequerida) = 
		self.ventasSegunFecha(fechaRequerida).sum({ venta => venta.montoTotalDeVenta() })
		
	method agregarVenta(unaVenta) = ventas.add(unaVenta)
	
	method agregarVariasVentas(variasVentas) = ventas.addAll(variasVentas)
}
