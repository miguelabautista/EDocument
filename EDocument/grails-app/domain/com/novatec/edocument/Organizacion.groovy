package com.novatec.edocument

class Organizacion {

	String nombre
	String rif
	String direccion
	String telefono
	String email
	double monto
	Date fechaPago
	boolean vigencia
	Date dateCreated
	Plan plan
		
	
	static hasMany = [users:Usuario,pagos:Pago]


    static constraints = {
    }

    String toString(){
    	nombre
    }
}
