object pepe {
    var presentismo = null
    var resultado = null 
    var categoria = cadete
	method sueldo(){
        return categoria.sueldoNeto() + resultado.bonoResultado(categoria.sueldoNeto())
    }
    method categoria(_categoria) {
        categoria = _categoria
      
    }
    method presentismo(_presentismo) {
        presentismo = _presentismo
    }

    method resultado(_resultado) {
      resultado = _resultado
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
  method bonoResultado(neto){
    return neto * 1.10
  }
}

object montoFijo {
  
}