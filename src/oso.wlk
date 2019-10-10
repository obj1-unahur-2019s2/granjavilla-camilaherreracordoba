import wollok.game.*
import direcciones.*

object oso {
	var property position = new Position(x = 3, y = 3)
	
	method image() = "oso.jpg"
	
	method moverEnDireccion(direccion) {
		self.position(direccion.siguientePosicion(self.position()))
	}
	method moverAlAzar() {
		var dado =  0.randomUpTo(5).truncate(0)
		//[1..1].map({n => 0.randomUpTo(5).truncate(0)})
		if (dado == 0) {
			self.mover(norte)
		} else if (dado == 1) {
			self.mover(sur)
		} else if (dado == 2) {
			self.mover(oeste)
		} else if (dado == 3) {
			self.mover(este)
		}
	}
	
	method mover(direccion) {
		position = direccion.siguientePosicion(position)
	}
}
