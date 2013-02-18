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
		 	cedula_rif = "17.935.634"
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

		def usuario2 = new Usuario(organizacion:organ)

		usuario2.with{
			nombre = "pepe"
			apellido = "jose"
			username="juan"
			password = "123"
			enabled = true
		 	cedula_rif = "17.935.609"
		  	email = "jose@novatec.com"
		 	direccion = "los ruices"
		 	telefono = "0412332323"
		 			
		}

		if(usuario2.validate()){
			usuario2.save()
		}else{
			usuario2.errors.allErrors.each{
				println it
			}
		}

		organ.addToUsers(usuario2)

		organ.save()

		//usuario.save()

		UserRole.create(usuario , role_admin)
		UserRole.create(usuario1, role_super)
		UserRole.create(usuario2 , role_user)

		//	createSample()
			
		//		break;
		//}
    }
    def destroy = {
    }

   
}
