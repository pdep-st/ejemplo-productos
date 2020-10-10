class Libro {
 	var property precio = 100
	method esCaro() = precio > 3500
	method aumentar(aumento) { precio = precio + aumento }
}

/*
 * En el caso de los DVD el precio de venta 
 * es el precio por minuto * cantidad de minutos del dvd. 
 * Además, se sabe que es caro si la cantidad de minutos 
 * es mayor a 100
 */
 
 class DVD {
 	var precioPorMinuto
 	var minutos
 	
	method precio() {
		return precioPorMinuto * minutos
	}
	
	method esCaro() = minutos > 100
 }
 
 // En cambio en las láminas el precio es el ancho * alto * precio base del material 
 // con el cual está pintada (ej.: acuarela, óleo, crayón, etc). Y se sabe que es cara si 
 // el precio base del material es mayor a 50 pesos
 
 class Lamina {
 	var property ancho = 10
 	var property alto = 10
 	var property material
 	
 	method precio() = alto * ancho * material.precioBase()
 	method esCaro() = material.precioBase() > 2
 }
 
 class Material {
 	var property precioBase
 }
 
 class Compra {
	const producto
	const property precio
	 	
 }
 
 class Comprador {
 	const comprados = []
 	
 	method comprar(producto) {
 		if (!producto.esCaro()){
 			comprados.add(new Compra(
 				producto = producto, 
 				precio = producto.precio()
 			))
 		}
 	}
 	
 	method gastosDeCompras() {
 		return comprados.sum({ compra => compra.precio() })
 	}
 }
 
 object calculadora {
 	method dividir(a, b) {
 		if (b == 0) {
 			throw new Exception(message = "no se puede dividir por 0")
 		}
 		return a / b
 	}
 }
 
 
 