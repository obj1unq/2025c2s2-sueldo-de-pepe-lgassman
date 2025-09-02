object pepe {

    var property categoria = cadete //Escribir "property" automaticamente construye el getter y setter de esa variable
    var property bonoResultado = resultadoNulo 

    method sueldo() {
        return self.sueldoNeto() + self.extraPorResultado() // + self.extraPorPresentismo()
    }

    method sueldoNeto() {
        return categoria.neto()
    }
    
    method extraPorResultado() {
        return bonoResultado.valor(self)
    }


}
//categorias
object cadete {
    method neto() {
        return 20000
    }
}

object gerente {
    method neto() {
        return 15000
    }
}

//bono resultado

object resultadoNulo {
    method valor(empleado) {
        return 0
    }
}

object resultadoFijo {
    method valor(empleado) {
        return 800
    }
}

object resultadoPorcentual {
    method valor(empleado) {
        return empleado.sueldoNeto() * 0.1
    }
}

