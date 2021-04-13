object nueva{
	method precio(precioBase) = precioBase
}

object promocion{
	var property valor = 0
	
	method precio(precioBase) = precioBase - valor
}

object liquidacion{
	method precio(precioBase) = precioBase*0.5;
}
