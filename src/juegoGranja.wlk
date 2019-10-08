import wollok.game.*
import hector.*
import oso.*
import direcciones.*

object juegoGranja {
	var personajeActual = hector
//  var elOsoSeMueve = false
	
	method configurarPersonajes() {
		game.addVisual(hector)
		game.addVisual(oso)
	}
	method configurarColisiones() {
		game.whenCollideDo(oso, { objeto => objeto.chocoElOso()})
	}
	
	method configurarTeclado() {
		keyboard.s().onPressDo({game.say(hector, "hola gente")})
	self.configurarMovimentos()
	}
	method configurarAcciones() {
		game.onTick(1000, "movimientoOso", {oso.moverEnDireccion(este)})
		
		var dado = [1..1].map({n => 0.randomUpTo(4).truncate(0)})
		if (dado == 0 and oso.position().y() < game.height() -1 ) {
			oso.position(oso.position().up(1))
		} else if (dado == 1 and oso.position().y() > 0) {
			oso.position(oso.position().down(1))
		} else if (dado == 2 and oso.position().x() > 0) {
			oso.position(oso.position().left(1))
		} else if (dado == 3 and oso.position().x() < game.width() - 1) {
			oso.position(oso.position().right(1))
		}
	}
	
	method configurarMovimentos(){
		keyboard.up().onPressDo({
			if (personajeActual.position().y() < game.height() - 1){
				personajeActual.position(personajeActual.position().up(1))
			}
		keyboard.down().onPressDo({
			if (personajeActual.position().y() > 0 ) {
				personajeActual.position(personajeActual.position().down(1))
			}
		})
		keyboard.left().onPressDo({
			if (personajeActual.position().x() > 0 ){
				personajeActual.position(personajeActual.position().left(1))
			} 
		})
		keyboard.right().onPressDo({
			if (personajeActual.position().x() < game.width() - 1){
				personajeActual.position(personajeActual.position().right(1))
			}
		})
		keyboard.s().onPressDo({game.say(personajeActual, "hola gente")})
		keyboard.o().onPressDo({personajeActual.position( new Position( x = 0, y =0 ))})
		keyboard.m().onPressDo({personajeActual.plantarMaiz()})
		keyboard.i().onPressDo({personajeActual.plantarTrigo()})
		keyboard.r().onPressDo({personajeActual.regarPlanta()})
		keyboard.c().onPressDo({personajeActual.cosecharPlanta()})
		keyboard.t().onPressDo({personajeActual.plantarTomaco()})
		keyboard.v().onPressDo({personajeActual.vender()})
}
)
}
//		keyboard.p().onPressDo({game.say(hector, "tengo cosechadas " + hector.cantidadDePlantasCosechadas()+" plantas ")})




}