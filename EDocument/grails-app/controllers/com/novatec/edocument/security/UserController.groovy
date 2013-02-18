package com.novatec.edocument.security
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_SUPER_ADMIN'])
class UserController extends grails.plugins.springsecurity.ui.UserController {
}
