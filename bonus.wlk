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