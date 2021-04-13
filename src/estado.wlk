object nueva{
	method precio(precioBase) = precioBase
}

object promocion{
	var valor
	
	method precio(precioBase) = precioBase - valor
}

object liquidacion{
	method precio(precioBase) = precioBase*0.5;
}
