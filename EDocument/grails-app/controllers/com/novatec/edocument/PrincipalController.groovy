package com.novatec.edocument


import grails.plugins.springsecurity.Secured


@Secured(['IS_AUTHENTICATED_FULLY'])
class PrincipalController {

    def respuesta(){
    	render template:'principal'
    }
	
	def informacion(){
		render template:"informacion"
	}
}
