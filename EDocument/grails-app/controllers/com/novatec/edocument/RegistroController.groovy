package com.novatec.edocument

class OrganizacionAndUserCommand implements Serializable {
    String organizacionNombre
    String organizacionNombreCorto
    String organizacionRif
    String organizacionDireccion
    String organizacionTelefono1


    String nombre
    String apellido
    String cedula
    String email
    String direccion

    static constraints = {
        organizacionNombre blank: false
        organizacionNombreCorto blank: false
        organizacionRif blank: false
        organizacionDireccion blank: false
        organizacionTelefono1 blank: false

        nombre blank: false
        apellido blank: false
        cedula blank: false

    }
}

class PlanCommand implements Serializable {
    String tipoPlan

    static constraints = {


    }

}

class CuentaCommand implements Serializable {
    String username
    String password
    String repeatPassword

    static constraints = {
        username(blank: false)
        password(blank: false)
        repeatPassword(blank: false)
    }
}

class RegistroController {
    // the pluginManager is used to check if the Grom
    // plugin is available so we can 'Grom' development
    // notifications to the unified notifications daemon
    // (see http://www.grails.org/plugin/grom)
    def pluginManager

    /**
     * index method, redirect to the webflow
     * @void
     */

    def index = {
        // Grom a development message
        if (pluginManager.getGrailsPlugin('grom')) "redirecting into the webflow".grom()

        /**
         * Do you believe it in your head?
         * I can go with the flow
         * Don't say it doesn't matter (with the flow) matter anymore
         * I can go with the flow (I can go)
         * Do you believe it in your head?
         */
        redirect(action: 'pages')
    }

    def pagesFlow = {
        // start the flow
        onStart {
            // Grom a development message
            if (pluginManager.getGrailsPlugin('grom')) "entering the WebFlow".grom()

            // define variables in the flow scope which is availabe
            // throughout the complete webflow also have a look at
            // the Flow Scopes section on http://www.grails.org/WebFlow
            //
            // The following flow scope variables are used to generate
            // wizard tabs. Also see common/_tabs.gsp for more information
            flow.page = 0
            flow.pages = [
                    [title: 'Afiliacion'],
                    [title: 'Cuenta'],
                    [title: 'Plan'],
                    [title: 'Confirmacion'],
                    [title: 'Listo']
            ]
            flow.cancel = true;
            flow.quickSave = true;

            success()
        }

        // render the main wizard page which immediately
        // triggers the 'next' action (hence, the main
        // page dynamically renders the study template
        // and makes the flow jump to the study logic)
        mainPage {
            render(view: "/registro/index")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) "rendering the main Ajaxflow page (index.gsp)".grom()

                // let the view know we're in page 1
                flow.page = 1
                success()
            }
            on("next").to "pageOne"
        }

        // first wizard page
        pageOne {
            render(view: "_page_one")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) ".rendering the partial: pages/_page_one.gsp".grom()

                flow.page = 1
                success()
            }
            on("next") { OrganizacionAndUserCommand om ->

                if (om.hasErrors()) {

                    flow.Organizacion = om
                    // or
                    //flow.errorMessages="this is an error"

                    return error()
                }
                flow.Organizacion = om

            }.to "pageTwo"

        }

        // second wizard page
        pageTwo {
            render(view: "_page_two")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) ".rendering the partial: pages/_page_two.gsp".grom()

                flow.page = 2
                success()
            }
            on("next") { CuentaCommand cm ->
                if (cm.hasErrors()) {
                    println "Error"
                }
                flow.Cuenta = cm


            }.to "pageThree"
            on("previous").to "pageOne"

        }

        // second wizard page
        pageThree {
            render(view: "_page_three")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) ".rendering the partial pages/_page_three.gsp".grom()

                flow.page = 3
                success()
            }
            on("next") { PlanCommand pc ->
                if (pc.hasErrors()) {
                    println "Error"
                }
                flow.Plan = pc

            }.to "pageFour"
            on("previous").to "pageTwo"

        }

        // second wizard page
        pageFour {
            render(view: "_page_four")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) ".rendering the partial pages/_page_four.gsp".grom()

                flow.page = 4
                success()
            }
            on("next") {
                // put some logic in here
                flow.page = 5
            }.to "save"
            on("previous").to "pageThree"

        }

        // save action
        save {
            action {
                // here you can validate and save the
                // instances you have created in the
                // ajax flow.
                try {
                    // Grom a development message
                    if (pluginManager.getGrailsPlugin('grom')) ".persisting instances to the database...".grom()
                    /*	def organizacion = new Organizacion(nombre:Organizacion.organizacionNombre,rif:Organizacion.organizacionRif,direccion:Organizacion.organizacionDireccion,telefono1:Organizacion.organizacionTelefono1,telefono2:Organizacion.organizacionTelefono2)

                         if(organizacion.validate() && organizacion.save()){

                             def usuario = new com.novatec.edocument.Usuario()
                             usuario.nombre = Usuario.nombre
                             usuario.apellido = Usuario.apellido
                             usuario.cedula = Usuario.cedula
                             usuario.email = Usuario.email
                             usuario.direccion = Usuario.direccion
                             usuario.organizacion = organizacion
                             usuario.username = Cuenta.username
                             usuario.password = Cuenta.repeatPassword
                             usuario.enabled = true

                             def role = com.novatec.edocument.Role.findByAuthority("ROLE_ADMIN")


                             if(usuario.validate() && usuario.save()){
                                 com.novatec.edocument.UserRole.create(usuario , role)

                             }else{
                                 usuario.errors.each {
                                println 'errores en 1 ' + it
                                }

                             }
                         }else{
                             organizacion.errors.each {
                                println 'errores en 2 '+ it
                                }

                         }*/
                    success()
                } catch (Exception e) {
                    // put your error handling logic in
                    // here
                    flow.page = 4
                    error()
                }
            }
            on("error").to "error"
            on(Exception).to "error"
            on("success").to "finalPage"
        }

        // render errors
        error {
            render(view: "_error")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) ".rendering the partial pages/_error.gsp".grom()
                println("hay errores")
                // set page to 4 so that the navigation
                // works (it is disabled on the final page)
                flow.page = 4
            }
            on("next").to "save"
            on("previous").to "pageFour"
            on("toPageOne").to "pageOne"
            on("toPageTwo").to "pageTwo"
            on("toPageThree").to "pageThree"
            on("toPageFour").to "pageFour"
            on("toPageFive").to "save"

        }

        // last wizard page
        finalPage {
            render(view: "_final_page")
            onRender {
                // Grom a development message
                if (pluginManager.getGrailsPlugin('grom')) ".rendering the partial pages/_final_page.gsp".grom()

                success()
            }
        }
    }

    def planSeleccionado() {
        def tipoPlan = params.plan

        if (tipoPlan == "planMedio") {
            render "<h3 class='alert alert-success'>Plan Medio Seleccionado</h3>"
        } else if (tipoPlan == "planAlto") {
            render "<h3 class='alert alert-success'>Plan Alto Seleccionado</h3>"
        } else if (tipoPlan == "planBajo") {
            render "<h3 class='alert alert-success'>Plan Bajo Seleccionado</h3>"
        }
    }
}
