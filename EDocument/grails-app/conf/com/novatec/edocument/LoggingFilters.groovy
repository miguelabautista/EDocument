package com.novatec.edocument

class LoggingFilters {
	
	def springSecurityService
	
    def filters = {
        all(controller:'principal', action:'*') {
            before = {
			
				
            }
            after = { Map model ->
				if(model && springSecurityService.isLoggedIn()){
					model['user'] = Usuario.get(springSecurityService.principal.id)
				}
            }
            afterView = { Exception e ->
            }
        }
    }
}
