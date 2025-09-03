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

