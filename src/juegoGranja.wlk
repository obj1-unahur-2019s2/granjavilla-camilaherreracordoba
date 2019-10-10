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
		game.onTick(1000, "movimientoOso", {oso.moverAlAzar()})
	}
	
	method configurarMovimentos(){
		keyboard.up().onPressDo({hector.mover(norte)})
		keyboard.down().onPressDo({ hector.mover(sur) })
		keyboard.left().onPressDo({ hector.mover(oeste) })
		keyboard.right().onPressDo({ hector.mover(este)})
		
		keyboard.s().onPressDo({game.say(personajeActual, "hola gente")})
		keyboard.o().onPressDo({personajeActual.position( new Position( x = 0, y =0 ))})
		keyboard.m().onPressDo({personajeActual.plantarMaiz()})
		keyboard.i().onPressDo({personajeActual.plantarTrigo()})
		keyboard.r().onPressDo({personajeActual.regarPlanta()})
		keyboard.c().onPressDo({personajeActual.cosecharPlanta()})
		keyboard.t().onPressDo({personajeActual.plantarTomaco()})
		keyboard.v().onPressDo({personajeActual.vender()})
}
}



