import huevosDePascua.*

object ana{
    const property huevosComidos = []

    method comer(unHuevo){
        huevosComidos.add(unHuevo)
    } 

    method estaEnfermo(){
        return self.consumioMasDe5000() || self.consumioAlgoDeChocoBlanco()
    }

    method consumioMasDe5000(){
        return huevosComidos.sum({h => h.calorias()}) > 5000
    }

    method consumioAlgoDeChocoBlanco(){
        return huevosComidos.any({h => h.esDeChocolateBlanco()})
    }
}

object jose {
  var  ultimoHuevoComido = huevoMixto

  method comer(unHuevo){
    ultimoHuevoComido = unHuevo
  }

  method estaEnfermo(){
    return ultimoHuevoComido.esDeChocolateAmargo()
  }
}

object tito {
  method estaEnfermo(){
    false
  }

  method comer(unHuevo){}

}

