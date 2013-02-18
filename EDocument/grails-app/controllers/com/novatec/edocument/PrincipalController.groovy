package com.novatec.edocument


import grails.plugins.springsecurity.Secured
import grails.plugin.cache.Cacheable


@Secured(['IS_AUTHENTICATED_FULLY'])
class PrincipalController {

	def springSecurityService

    def respuesta(){
    	render template:'principal'
    }
	
	//TODO:posible eliminacion
	/*def informacion(){
		render template:"informacion"
	}       */

	
	def retornarDatos(){
		def datos = params.tipo
		
		def usuario = Usuario.get(springSecurityService.principal.id)
		if(datos == "organizacion"){
			render template:"datosOrganizacion",model:[user:usuario]
		}else if(datos == "cuenta"){
			render template:"datosUsuario",model:[user:usuario]
		}else if(datos == "plan"){
			render template:"datosPlan",model:[user:usuario.organizacion.plan]
		}else if(datos == 'usuarios'){
			render template:"datosUsuarios",model:[user:usuario.organizacion.users]
		}
	}

    def modificar(){

        def tipo = params.tipo

        println "valor de user " + params.user

        if (tipo == "passwordModificacion"){
            render template: "passwordModificacion"
        }  else if (tipo == "usuarioModificacion")  {
            render template: "datosModificacion"
        }
    }
}
