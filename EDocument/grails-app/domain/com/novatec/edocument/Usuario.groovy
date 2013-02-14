package com.novatec.edocument

class Usuario extends User{

    String nombre
	String apellido
	String cedula_rif
	String email
	String direccion
	String telefono
	Organizacion organizacion
	Date dateCreated

	static hasMany = [conexiones:Conexiones]

	static constraints = { 
		nombre blank:false
		apellido blank:false
		cedula_rif blank:false , matches: /\d{1,2}.\d{3,3}.\d{3,3}/
		direccion()
		organizacion()
		email email:true
	}

	String toString(){
		"${nombre} ${apellido}"
	}
}
