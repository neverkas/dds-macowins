object nueva{
	method precio(precioBase) = precioBase
}

object promocion{
	var property precio
	
	method precio(precioBase) = precioBase - precio
}

object liquidacion{
	method precio(precioBase) = precioBase*0.5;
}
