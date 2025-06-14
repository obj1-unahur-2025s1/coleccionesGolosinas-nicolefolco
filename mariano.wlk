import golosinas.*

object mariano {
    const golosinas = []

    method comprar(unaGolosina) {
        golosinas.add(unaGolosina)
    }

    method desechar(unaGolosina) {
        golosinas.remove(unaGolosina)
    }

    method cantidadDeGolosinas() {
        return golosinas.size()
    }

    method tieneLaGolosina(unaGolosa) {
        return golosinas.find({g => unaGolosa})
    }

    method probarGolosinas() {
       golosinas.forEach({ g => g.recibeUnMordisco()})
    }

    method hayGolosinaSinTACC() {
      return golosinas.any({ g => not g.contieneGluten()})
    }

    method preciosCuidados() {
        return golosinas.all({ g => g.precio() <= 10})
    }

    method tieneGolosinaDeSabor(unSabor) {
        return golosinas.find({ g => g.sabor() == unSabor})
    }

    method tieneGolosinasDeSabor(unSabor) {
       return golosinas.filter({ g => g.sabor() == unSabor})
    }

    method sabores() {
        return golosinas.map({ g => g.sabor()}).asSet()
    }

    method golosinaMasCara() {
        return golosinas.max({ g => g.precio()})
    }

    method pesoGolosinas() {
        return golosinas.sum({ g => g.peso()})
    }

    method golosinasFaltantes(golosinasDeseadas) { 
       return golosinasDeseadas.difference(golosinas)
    }
	
    method saboresFaltantes(_saboresDeseados) {
		return _saboresDeseados.filter({_saborDeseado => ! self.tieneGolosinaDeSabor(_saborDeseado)})	
	}

}