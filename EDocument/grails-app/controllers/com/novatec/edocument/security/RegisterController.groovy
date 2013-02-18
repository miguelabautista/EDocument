package com.novatec.edocument.security
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_SUPER_ADMIN'])
class RegisterController extends grails.plugins.springsecurity.ui.RegisterController {
}
