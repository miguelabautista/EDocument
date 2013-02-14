package com.novatec.edocument


import grails.plugins.springsecurity.Secured


@Secured(['IS_AUTHENTICATED_FULLY'])
class PrincipalController {

	def springSecurityService

    def respuesta(){
    	render template:'principal'
    }
	
	def informacion(){
		println springSecurityService.principal.id
		def lista = Usuario.list()
		println lista.size()
		def usuario = Usuario.get(springSecurityService.principal.id)
		println usuario
		render template:"informacion" , model:[user:usuario]
	}
}
