import chicos.*
import huevosDePascua.*

object caceria {
    const property huevosEncontrados = []
    const property huevosNoEncontrados = []

    method inicializarJuego(){
        flor.cambiarPetalos(7)
        blisterHuevitos.cambiarCantidadDeHuevitos(14)
        matrioshka.decoracion(flor)
        matrioshka.cambiarHuevoInterior(blisterHuevitos)
        huevosNoEncontrados.addAll([matrioshka, huevoRepostero, conejo, huevoMixto])
    }

    method cantidadPorEncontrar(){
        return huevosNoEncontrados.size()
    }

    method cuantosConChocoBlanco(){
        return huevosNoEncontrados.count({h => h.esDeChocolateBlanco()})
    }

    method aunNoFueEncontrado(unHuevo){
        return huevosNoEncontrados.contains(unHuevo)
    }

    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo) 
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }

    method encontrarElPrimero(unChico){
        self.encontrarUnHuevoPor(unChico, huevosNoEncontrados.first())
    }

    method encontrarLosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => self.encontrarUnHuevoPor(unChico, h)})
    }

    method huevosNoEncontradosBlancos() {
        return huevosNoEncontrados.filter({h => h.esDeChocolateBlanco()})
    }

    method noEncontradoDeMayorCalorias(){
        return huevosNoEncontrados.max({h => h.calorias()}) 
    }


}