object pepe {
    var presentismo = bonoNulo
    var resultado = bonoNulo
    var categoria = cadete
    var faltas = 0
	method sueldoNeto (){
        return categoria.sueldoNeto() 
    }

    method sueldo() {
        return self.sueldoNeto() + resultado.valor(self) + presentismo.valor(self)
    }
     method categoria() {
        return categoria
  }

    method categoria(_categoria) {
        categoria = _categoria
      
    }
    method presentismo(_presentismo) {
        presentismo = _presentismo
    }
    method presentismo() {
        return presentismo
    }
    method faltas(_faltas) {
        faltas = _faltas
    }
    method faltas() {
       return faltas
  } 

    method resultado(_resultado) {
      resultado = _resultado
    }

    method resultado() {
      return resultado
    }
}

object cadete {
  method sueldoNeto() {
    return 20000
  }
}

object gerente {
  method sueldoNeto(){
    return 15000
  }
}

object porcentaje {
  method valor(empleado){
    return empleado.sueldoNeto() * 0.1 
  }
}

object montoFijo {
  method valor(empleado){
    return 800
  } 
}

object bonoNulo {
  method valor(empleado){
    return 0
  } 
}

object normal {
  method valor(empleado) {
    if (empleado.faltas() == 0) {
      return 2000
    } else if (empleado.faltas() == 1) {
      return 1000
    } else {
      return 0
    }
  }
}

object ajuste {
  method valor(empleado) {
    return if (empleado.faltas() == 0) 100 else 0
  }
}

object demagogico {
  method valor(empleado) {
    return if (empleado.sueldoNeto() < 18000) 500 else 300
  }
}

object moria {
  var resultado = bonoNulo
  var categoria = cadete
  

  method sueldo() {
    return self.sueldoNeto() + resultado.valor(self) 
  }

  method sueldoNeto() {
    return categoria.sueldoNeto() * 1.30
  }

  
  method categoria(_categoria) {
    categoria = _categoria
  }

  method categoria() {
    return categoria
  }
  method resultado(_resultado) {
    resultado = _resultado
    
  }
 method resultado() {
  return resultado
 }
}

object vendedor {
 var sueldoNeto = 16000
 method activarAumentoPorMuchasVentas() {
    self.sueldoNeto(self.sueldoNeto() * 1.20)
  }
 method sueldoNeto() {
    return sueldoNeto
  }

 method sueldoNeto(_sueldoNeto) {
    sueldoNeto = _sueldoNeto
  }
method desactivarAumentoPorMuchasVentas() {
  self.sueldoNeto(16000)
  }

}

object medioTiempo {
  var sueldoNeto = 0
  method sueldoNeto() {
    return sueldoNeto
  }
  method sueldoNeto(_sueldoNeto) {
    sueldoNeto = _sueldoNeto
  }
  method categoriaBase(categoria){
    self.sueldoNeto(categoria.sueldoNeto() / 2) 
  }
}

object roque {
  var resultado = bonoNulo

  method resultado(_resultado) {
    resultado = _resultado
  }
  method resultado() {
    return resultado
  }

  method sueldoNeto() {
    return 28000 
  }
  
  method sueldo() {
    return self.sueldoNeto() + resultado.valor(self) + 9000
  }
}

object ernesto {
  var categoria = cadete
  var presentismo = bonoNulo

  method faltas() {
    return 0
  }

  method sueldoNeto() {
    return categoria.sueldoNeto()
  }

  method sueldo() {
    return self.sueldoNeto() + presentismo.valor(self)
  }

  method categoria(_categoria) {
    categoria = _categoria
  }

  method categoria() {
    return categoria
  }

  method presentismo(_presentismo) {
    presentismo = _presentismo
  }

  method presentismo() {
    return presentismo
  }
}