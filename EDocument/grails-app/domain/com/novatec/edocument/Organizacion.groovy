package com.novatec.edocument

class Organizacion {

    String nombre
    String nombreCorto
    String rif
    String direccion
    String telefono
    String email
    double monto
    Date fechaPago
    boolean vigencia
    Date dateCreated
    Plan plan

    static hasMany = [users: Usuario, pagos: Pago]


    static constraints = {
        nombre blank: false
        nombreCorto blank: false, size: 1..10
        rif blank: false , matches: /[gjvGJV]?-\d{8}-\d{1}/
        direccion blank:false
        telefono blank: false, matches: /0\d+/
        email email: true
        monto blank: false , matches: /\d*/
    }

    String toString() {
        nombre
    }
}
