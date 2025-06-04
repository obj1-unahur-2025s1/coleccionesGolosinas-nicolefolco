class Golosina {
  var property precio
  const property sabor 
  var peso
  method contieneGluten() {}

}

class Bombon {
  var peso = 15

  method precio() = 5
  method gusto() = "frutilla"
  method esLibreDeGluten() = true
  method recibeUnMordisco(){
   peso = (peso * 0.8) - 1
  }
}

class Alfajor {
  var peso = 300

  method precio() = 12
  method gusto() = "chocolate"
  method esLibreDeGluten() = false
  method recibeUnMordisco() {
   peso = peso * 0.8
  }
}

class Caramelo {
  var peso = 5

  method precio() = 1
  method gusto() = "frutilla"
  method esLibreDeGluten() = true
  method recibeUnMordisco(){
    peso = peso - 1
  }
}

class Chupetin {
  var peso = 7

  method precio() = 2
  method gusto() = "naranja"
  method esLibreDeGluten() = true
  method recibeUnMordisco() {
    if(peso > 2 ){
      peso = peso * 0.9
    }
  }
}

class Oblea {
  var peso = 250

  method precio() = 5
  method gusto() = "vainilla"
  method esLibreDeGluten() = false

  method recibeUnMordisco(){
    if(peso > 70){
      peso = peso * 0.5
    }
    else {
     peso = peso - (peso * 25 / 100)
  }
  }
}

class Chocolatin {
  const pesoInicial 

  method precio() = 0.50 * pesoInicial
  method esLibreDeGluten() = false
  method gusto() = "chocolate"
  method recibeUnMordisco(){
    var pesoNuevo = pesoInicial
    pesoNuevo = pesoNuevo - 2
  }
} 
 