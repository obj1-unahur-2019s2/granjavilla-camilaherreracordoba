class Maiz {
	var property position 
	var property esAdulta = false
	method image() { 
		if 
		(esAdulta) {
		return "corn_adult.png"
	} else {
		return "corn_baby.png"
	}
		// TODO: hacer que devuelva la imagen que corresponde
	}
	method regate() {
		if (not esAdulta) {
			esAdulta = true
		}
	}
	method chocoElOso(){
		self.regate()
	}
}

class Trigo {
	var property position
	var property etapaEvolutiva = 0
	
	method image() {
		if (etapaEvolutiva == 0) {return "wheat_0.png"}
		else if (etapaEvolutiva == 1 ) { 
			return "wheat_1.png"
		}
		else if (etapaEvolutiva == 2) { 
			return "wheat_2.png"
		}
		else {
			return "wheat_3.png"
		}
	}
	method regate() {
		if (etapaEvolutiva.between(0, 2) ) {
			etapaEvolutiva += 1
		} else {
			etapaEvolutiva = 0
		}
	} 
	method chocoElOso() { 
		if (position.x() > 0 ) {
			position = position.left(1)
		}
	}
}

class Tomaco {
	var property position 
	var property esAdulta = false
	/*
	 * Se mueve a la celda de arriba. 
	*Si ya está en el borde de arriba, 
	* no hace nada (o pasa abajo de todo :D)
	* */
	method image() {
		
	}
	method regate() {
		if (not esAdulta) {
			esAdulta = true
		}
	}
	method chocoElOso(){
		
	}
}