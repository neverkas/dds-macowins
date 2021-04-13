import estado.*

class Prenda{
	var property precioBase
	var estado
	
	method precio() = 
		estado.precio(precioBase)
}

class Pantalon inherits Prenda{
}

class Saco inherits Prenda{
}

class Camisa inherits Prenda{
}
