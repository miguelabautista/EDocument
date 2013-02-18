package com.novatec.edocument

import static org.junit.Assert.*
import org.junit.*

class BootstrapTestTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testCreacionDeUsuarios() {
        def role_user = Role.findByAuthority("ROLE_USER") ?: new Role(authority:'ROLE_USER').save()
        def role_admin = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority:'ROLE_ADMIN').save()
        def role_super = Role.findByAuthority('ROLE_SUPER_ADMIN') ?: new Role(authority:'ROLE_SUPER_ADMIN').save()
        
    
        def usuario1 = new User(username:'miguel',password:'123',enabled:true).save()
            
        
        def planBarato = new Plan(tipo:"barato",usuarios:40,monto:500)

        if(planBarato.validate()){
            planBarato.save()
        }else if(planBarato.hasErrors()){
            def errores = planBarato.errors

           println errores
        }

        def organizacion = new Organizacion(nombre:"banco X",rif:"2332",direccion:"la candelaria",telofono:"04127927884",plan:planBarato)

        if(organizacion.validate()){
            organizacion.save()
        }else if(organizacion.hasErrors()){
           def errores = organizacion.errors

           println errores
           
           
        }

        def usuario = new Usuario()

        usuario.with{
            nombre = "Jose"
            apellido = "mendoza"
            username="jose"
            password = "123"
            enabled = true
            cedula_rif = "17.935.609"
            email = "jose@novatec.com"
            direccion = "los ruices"
            telefono = "0412332323"
            organizacion = organizacion     
        }

        if(usuario.validate()){
            usuario.save()
        }else if(usuario.hasErrors()){
            def errores = usuario.errors

           println errores
        }

        usuario.save()

        UserRole.create(usuario , role_user)
        UserRole.create(usuario1, role_super)
    }
}
