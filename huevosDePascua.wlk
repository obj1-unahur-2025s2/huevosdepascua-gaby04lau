object huevoRepostero {


    method esDeChocolateBlanco(){
        return true
    }

    method esDeChocolateAmargo(){
        return false
    }

    method calorias(){
        return 750
    }
}

object huevoMixto {
    method esDeChocolateBlanco(){
        return true
    }

    method esDeChocolateAmargo(){
        return false
    }

    method calorias(){
        return 900
    }
}

object conejo {
    var peso = 10

    method cambiarPeso(unValor){
        peso = unValor
    }

    method peso(){
        return peso
    }

      method esDeChocolateBlanco(){
        return false
    }

    method esDeChocolateAmargo(){
        return true
    }

    method calorias(){
        return peso * 10
    }


}

object blisterHuevitos {
    var huevitos = 3

    method cambiarCantidadDeHuevitos(nuevaCantidad){
        huevitos = nuevaCantidad
    }

    method cantidad(){
        return huevitos
    }

    method calorias(){
        return huevitos * 100 + huevitos.div(5)*150
    }

        method esDeChocolateAmargo(){
        return false 
    }

    method esDeChocolateBlanco(){
        return huevitos >= 5
    }
}

object matrioshka {
    var huevoEnInterior = huevoMixto
    var property decoracion = flor 

    method cambiarHuevoInterior(nuevoHuevo){
        huevoEnInterior = nuevoHuevo
    }

    method huevoEnSuInterior(){
        return huevoEnInterior
    }

    method calorias(){
        return 3000 + huevoEnInterior.calorias() + decoracion.calorias()
    }

    method esDeChocolateBlanco(){
        return huevoEnInterior.esDeChocolateBlanco()
    }

    method esDeChocolateAmargo(){
        return true
    }
}

object flor {
    var petalos = 2

    method cambiarPetalos(nuevaCantidadDePetalos){
        petalos = nuevaCantidadDePetalos
    }

    method cantidadDePetalos(){
        return petalos
    }

    method calorias(){
        return 100 * petalos
    }
}

object arbol {
    method calorias(){
        return 150
    }
}


