import cosas.*

object camion {
	const property cosas = []
	var tara = 1000
	method cargar(unaCosa) {cosas.add(unaCosa)}
	method descargar(unaCosa){ cosas.remove(unaCosa)}// remove= para quitar de una lista
	method pesoTotal(){return cosas.sum {c => c.peso()} + tara}
	method exedidoDePeso(){ return self.pesoTotal() < 2500 }
	method objetosPeligrosos(nivel){cosas.filter{c => c.nivelPeligrosidad() < nivel}}
	method objetosMasPeligrososQue(unaCosa){cosas.filter{c => c.nivelPeligrosidad() < unaCosa.nivelPeligrosidad()}}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){cosas.all{c => c.nivelPeligrosidad() < nivelMaximoPeligrosidad}}
	
}
