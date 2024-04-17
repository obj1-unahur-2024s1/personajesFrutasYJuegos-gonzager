import frutas.*
import juegos.*
object martin {
	var energia = 80
	var cantidadActividades=0
	var tieneHambre = false
	var enLaDespensa = agua
	
	method estaFeliz()= energia > 80
	                 or (cantidadActividades >=2
	                 and not tieneHambre)
	                 
	method comprar(unaFruta) {
		enLaDespensa = unaFruta
	}
	
	method enLaDespensa() = enLaDespensa
	
	method alimentarse(){
		energia = energia + enLaDespensa.energia()
		tieneHambre = not enLaDespensa.calmaElHambre()
		enLaDespensa = agua 
	}
	
	method energia() = energia
	
	method tieneHambre() = tieneHambre
	                 
	method hacerDeporte(unDeporte) {
		energia = 0.max(energia + unDeporte.energia())
		cantidadActividades = cantidadActividades + 1
	}
	
	method cantidadActividades() = cantidadActividades
	
	method dormir() {
		energia = energia * 1.5
		enLaDespensa.efectoCambioDia()
	}
}
