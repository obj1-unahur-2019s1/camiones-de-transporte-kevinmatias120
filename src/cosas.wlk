object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos {
	var property cantidad 
	method peso(){ return 2 * cantidad }
	method nivelPeligrosidad() { return 2 }
}

object arenaAGranel {
	var property elPeso
	method peso(){return elPeso}
	method nivelPeligrosidad(){return 1}
}

object bateriaAntiaerea {
	var tieneMisiles = true
	method peso(){return if (tieneMisiles){300}else{200}}
	method nivelPeligrosidad(){return if (tieneMisiles){100}else{0}}
}

object contenedorPortuario {
	var contenedor = []
	method peso(){return 100 + contenedor.sum{c => c.peso()}}
	method nivelPeligrosidad(){}
}
