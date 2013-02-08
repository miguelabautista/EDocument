import com.novatec.edocument.*
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
    	//switch (Environment.current) {
		//	case Environment.DEVELOPMENT:
				createUsers()
		//		break;
		//}
    }
    def destroy = {
    }

    private createUsers(){
		def usuario1 = User.findByUsername("miguel")

		if(!usuario1){
			usuario1 = new User(username:'miguel',password:'123',enabled:true).save()
			def role_user = Role.findByAuthority("ROLE_USER") ?: new Role(authority:'ROLE_USER').save()
			def role_admin = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority:'ROLE_ADMIN').save()
		
			UserRole.create(usuario1, role_user)

		}
	}
}
