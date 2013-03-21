package com.novatec.edocument

import static org.junit.Assert.*

import grails.test.mixin.*
import grails.test.mixin.support.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(Usuario)
class UsuarioTests {

    void testValidacionDeUsuario() {
			def usuario1 = new Usuario(nombre:"miguel",apellido:"bautista",cedula_rif:"17935609")
			
			assertTrue usuario1.validate()
			assertNotNull usuario1.save()
			
			
			def usuario2 = new Usuario(nombre:"omar",apellido:"peralta",cedula_rif:"17935609")
			
			assertFalse usuario.validate()
	}
}
