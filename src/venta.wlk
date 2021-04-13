import prenda.*
import estado.*

class Venta {	
	var medioDePago
	var fechaDeVenta
	const property prendas = []
	
	method cantidadPrendas() 	= prendas.size()	
	method montoTotalDeVentas() = medioDePago.precioVenta(prendas)
	
	method fueRealizadaEnEstaFecha(fecha){
		return fechaDeVenta == fecha
	}
}

object efectivo{
	method precioVenta(prendas) = prendas.sum({ prenda => prenda.precio() })
}

object tarjeta{
	var cuotas
	var coeficiente
	

	method precioVenta(prendas){
		return prendas.sum({
			prenda => self.recargo(prenda.precio())
		})		
	}
		
	method recargo(precio){		
		cuotas*coeficiente + 0.01*precio
	} 
}
