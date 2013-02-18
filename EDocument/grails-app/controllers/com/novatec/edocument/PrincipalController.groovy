package com.novatec.edocument


import grails.plugins.springsecurity.Secured


@Secured(['IS_AUTHENTICATED_FULLY'])
class PrincipalController {

	def springSecurityService

    def respuesta(){
    	render template:'principal'
    }
	
	def informacion(){
			
		render template:"informacion"
	}
	def retornarDatos(){
		def datos = params.tipo
		
		def usuario = Usuario.get(springSecurityService.principal.id)
		if(datos == "organizacion"){
		render template:"datosOrganizacion",model:[user:usuario]
		}else if(datos == "cuenta"){
			render template:"datosUsuario",model:[user:usuario]
		}else if(datos == "plan"){

		}

	}
}
