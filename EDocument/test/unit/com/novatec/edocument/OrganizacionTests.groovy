package com.novatec.edocument



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Organizacion)
class OrganizacionTests {

	void testConstraints() {
		def organizacion = new Organizacion()

		organizacion.with{
			nombre="Banco Exterior"
			nombreCorto="BE"
			rif="V-29313733-3"
			direccion="la candelaria"
			telefono="04127927884"
			email="miguel@novatec.com"
			monto=2323.23
			fechaPago=new Date()
			plan= new Plan(tipo:"barato",usuarios:46,costo:450000)
		}

		assertNull organizacion.save()
		assertFalse organizacion.validate()
		assertTrue organizacion.hasErrors()


		def errores = organizacion.errors
		
		errores.allErrors.each{ 
			println "code ${it.code} rejected value ${it.rejectedValue}" 
	    }

		assertEquals "matches.invalid", errores.getFieldError("rif").code

	//	assertEquals "j-2991733-3", errores.getFieldError("rif").rejectedValue

	}
}
