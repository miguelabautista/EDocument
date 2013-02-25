package com.novatec.edocument

class TipoRegistroController {

    def index() {
    	render template:'tipoDeRegistro'
    }

    def validar(){
    	def tipo = params.tipoRegistro

    	if(tipo == "Persona Juridica"){
    		redirect controller:'registro', action:'index'
    	}else if(tipo == "Persona Natural"){
    		redirect controller:'registroNatural', action:'index'
    	}

    }
}
