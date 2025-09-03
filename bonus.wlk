import pepe.*

object sofia {
    var property categoria = cadete
    var property bonoResultado = resultadoFijo

    method sueldoNeto() {
        return categoria.neto() * 1.3
    }
    method extraResultado() {
        return bonoResultado.valor(self)
    }
    method sueldo() {
        return self.sueldoNeto() + self.extraResultado()
    }
 
}

object roque {
    var property bonoResultado = resultadoNulo
    method sueldoNeto() {
        return 28000
    }
    method extraResultado() {
        return bonoResultado.valor(self)
    }
    method sueldo() {
        return self.sueldoNeto() + self.extraResultado() + 9000
    }
}

object ernesto {
    var property bonoPresentismo = presentismoNulo
    var property compañero = roque
    
    method faltas() {
        return 0
    }
    method sueldoNeto() {
        return compañero.sueldoNeto()
    }
    method extraPresentismo() {
        return bonoPresentismo.valor(self)
    }
    method sueldo() {
        return self.sueldoNeto() + self.extraPresentismo()
    }
}

//categorias

object vendedor {
    var aumento = false
    method neto() {
        return 16000 * (1 + (if (aumento) 0.25 else 0))
    }
    method activarAumentoPorMuchasVentas() {
        aumento = true
    }
    method desactivarAumentoPorMuchasVentas() {
        aumento = false
    }
}
object medioTiempo {
    var property categoriaBase = cadete
    method neto() {
        return categoriaBase.neto() / 2
    }
}



