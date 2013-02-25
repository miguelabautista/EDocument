package com.novatec.edocument


import grails.plugins.springsecurity.Secured
import grails.plugin.cache.Cacheable


@Secured(['IS_AUTHENTICATED_FULLY'])
class PrincipalController {

	def springSecurityService

    def respuesta(){
    	render template:'principal'
    }

    def actualizarPlan(){
    	def tipo = params.plan
    	if(tipo == "planBajo"){
    		render "<div class='alert alert-success'>Selecciono el plan ${tipo}</div>"
    	}else if(tipo == "planMedio"){
			render "<div class='alert alert-success'>Selecciono el plan ${tipo}</div>"
    	}else if(tipo == "planAlto"){
			render "<div class='alert alert-success'>Selecciono el plan ${tipo}</div>"
    	}
    	
    }
	
	def actualizarDatos(){        
        render "<p>hola</hola>"
    }

    def agregarUsuario(){
        def usuario1 = Usuario.get(springSecurityService.principal.id)

        def usuario = new Usuario(organizacion:usuario1.organizacion)

        usuario.with{
            nombre = params.nombre
            apellido = params.apellido
            username= params.username
            password = params.password
            enabled = true
            cedula_rif = params.cedula
            email = params.email
            direccion = params.direccion
            telefono = params.telefono                    
        }

        usuario.save()

        usuario1.organizacion.addToUsers(usuario)

        usuario1.save()

        def usuario2 = Usuario.get(springSecurityService.principal.id)

        render template:"/principal/datosUsuarios",model:[user:usuario2.organizacion.users]
    }

    def seleccionMenu(){
    	
    	def seleccion = params.seleccion

    	def usuario = Usuario.get(springSecurityService.principal.id)

    	if(seleccion == "registro"){
    		render template:"/principal/datosCuenta/datosCuenta",model:[user:usuario]
    	}else if(seleccion == "usuarios"){
    		render template:"/principal/datosUsuarios",model:[user:usuario.organizacion.users]
    	}else if(seleccion == "planes"){
    		render template:"datosPlan",model:[user:usuario.organizacion.plan]
    	}else if(seleccion == "pagos"){
            render template:"/principal/pagos"
    	}else if(seleccion == "gestor"){

    	}

    }

	
	def retornarDatos(){
		def datos = params.tipo
		
		def usuario = Usuario.get(springSecurityService.principal.id)
		if(datos == "organizacion"){
			render template:"datosOrganizacion",model:[user:usuario]
		}else if(datos == "cuenta"){
			render template:"datosUsuario",model:[user:usuario]
		}else if(datos == "plan"){
			
		}else if(datos == 'usuarios'){
			render template:"datosUsuarios",model:[user:usuario.organizacion.users]
		}
	}

    def modificar(){

        def tipo = params.tipo

        def usuario = Usuario.get(springSecurityService.principal.id)

        if (tipo == "passwordModificacion"){
            render template: "passwordModificacion"
        }  else if (tipo == "usuarioModificacion")  {
            render template: "datosModificacion",model:[user:usuario]
        }  else if(tipo == "organizacionModificacion"){
            render template:"/principal/datosModificacion/organizacionModificacion",model:[user:usuario]
        } else if(tipo == "planModificacion"){
            render template:"modificacionPlan"
        } else if(tipo == "usuariosModificacion"){
        	render template:"/principal/datosModificacion/usuariosModificacion"
        } else if(tipo == "usuarioAModificar"){

            def usu = User.get(params.id)

            render template:"/principal/datosModificacion/usuarioAModificar",model:[user:usu]

        } else if(tipo == "cuentaModificacion"){

            render template:"/principal/datosModificacion/cuentaModificacion",model:[user:usuario]
        }
    }
}
