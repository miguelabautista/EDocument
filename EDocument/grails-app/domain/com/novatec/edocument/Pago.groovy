package com.novatec.edocument

class Pago {
	String tipoPago
	double monto
	String nombreBanco
	String numeroReferencia
	Date dateCreated

	static belongsTo = [organizacion:Organizacion]

    static constraints = {
    }
}