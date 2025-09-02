object pepe {

    var property categoria = cadete //Escribir "property" automaticamente construye el getter y setter de esa variable
     
    method sueldoNeto() {
        return categoria.neto()
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

