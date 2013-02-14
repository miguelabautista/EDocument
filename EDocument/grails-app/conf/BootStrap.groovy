import com.novatec.edocument.*
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
    	//switch (Environment.current) {
		//	case Environment.DEVELOPMENT:
			
		def role_user = Role.findByAuthority("ROLE_USER") ?: new Role(authority:'ROLE_USER').save()
		def role_admin = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority:'ROLE_ADMIN').save()
		def role_super = Role.findByAuthority('ROLE_SUPER_ADMIN') ?: new Role(authority:'ROLE_SUPER_ADMIN').save()
    	
	
		def usuario1 = new User(username:'miguel',password:'123',enabled:true).save()
			
		
		def planBarato = new Plan(tipo:"barato",usuarios:40,monto:500)

		if(planBarato.validate()){
			planBarato.save(flush:true)
		}else{
			planBarato.errors.allErrors.each{
				println it
			}
			
		}

		def organ = new Organizacion(nombre:"banco X",rif:"2332",direccion:"la candelaria",plan:planBarato,email:"banco@novate.com",telefono:"04148501853",fechaPago:new Date())

		if(organ.validate()){
			organ.save(flush:true)
		}else{
			organ.errors.allErrors.each{
				println it
			}
			
		}

		def usuario = new Usuario(organizacion:organ)

		usuario.with{
			nombre = "jose"
			apellido = "mendoza"
			username="jose"
			password = "123"
			enabled = true
		 	cedula_rif = "17.935.609"
		  	email = "jose@novatec.com"
		 	direccion = "los ruices"
		 	telefono = "0412332323"
		 			
		}

		if(usuario.validate()){
			usuario.save()
		}else{
			usuario.errors.allErrors.each{
				println it
			}
		}

		usuario.save()

		UserRole.create(usuario , role_user)
		UserRole.create(usuario1, role_super)

		//	createSample()
			
		//		break;
		//}
    }
    def destroy = {
    }

   
}
