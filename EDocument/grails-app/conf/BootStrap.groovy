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
			planBarato.errors.allErrors.each{ println it.rejectedValue }
		}

		def organ = new Organizacion()

		organ.with{
			nombre="Banco Exterior"
			nombreCorto="BE"
			rif="V-29313733-3"
			direccion="la candelaria"
			telefono="04127927884"
			email="miguel@novatec.com"
			monto=2323.23
			fechaPago=new Date()
			plan=planBarato
		}

		if(organ.validate()){
			organ.save(flush:true)
		}else{
			organ.errors.allErrors.each{ println it.rejectedValue }
		}

		def usuario = new Usuario(organizacion:organ)

		usuario.with{
			nombre = "jose"
			apellido = "mendoza"
			username="jose"
			password = "123"
			enabled = true
			cedula_rif = "17935634"
			email = "jose@novatec.com"
			direccion = "los ruices"
			telefono = "0412332323"
		}

		if(usuario.validate()){
			usuario.save()
		}else{
			usuario.errors.allErrors.each{ println it }
		}

		def usuario2 = new Usuario(organizacion:organ)

		usuario2.with{
			nombre = "pepe"
			apellido = "jose"
			username="juan"
			password = "123"
			enabled = true
			cedula_rif = "17935609"
			email = "jose@novatec.com"
			direccion = "los ruices"
			telefono = "0412332323"
		}

		if(usuario2.validate()){
			usuario2.save()
		}else{
			usuario2.errors.allErrors.each{ println it.rejectedValue }
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
