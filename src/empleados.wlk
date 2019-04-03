object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var dinero=0
	var deuda=0
	var sueldo = 15000
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }

// tenes que pensar que no se acumula el sueldo, pero tampoco hacer algo que no tenga sentido. Vale usar lo de la deuda? SI
//
	
	method cobrarSueldo() {
		dinero += sueldo
		if (deuda !== 0 && dinero >= deuda){self.pagarDeuda()}
	}

	method gastar(cuanto){
		
		if (dinero <=0) { deuda+=cuanto } 
			else dinero -= cuanto
	}
	
	method totalDeuda(){
		return deuda
	}
	
	method totalDinero(){ 
		return dinero
	}

	method pagarDeuda(){
		//Esto esta como el orto
		
		deuda = (deuda - dinero).abs()
		dinero -= deuda
		
	}
		

}

object baigorria {
	
	var totalCobrado=0
	
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	//Esto probalo a ver si hay que agregarle un return o no
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()	
	}
	
	method totalCobrado(){ return totalCobrado }
	
}

object galvan {
	var dinero = 300000
	
	method dinero() { return dinero }
	
	method pagarA(empleado) {
	    dinero -= empleado.sueldo()
	    empleado.cobrarSueldo()
	}
}
