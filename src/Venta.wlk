import prenda.*
import estado.*

class Venta {	
	var medioDePago
	const prendas = []
	
	method fechaVendida() 		= fechaActual.fecha()
	method cantidadPrendas() 	= prendas.size()	
	method totalDeVentas() 		= medioDePago.precioVenta(prendas)
}

object fechaActual{
	method fecha() = new Date().shortDescription()
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
