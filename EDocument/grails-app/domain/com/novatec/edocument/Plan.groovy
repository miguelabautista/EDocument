package com.novatec.edocument

class Plan {
	String tipo
	int usuarios
	double costo

    static constraints = {
        tipo blank: false
    }

    String toString(){
    	tipo
    }
}
