package com.novatec.edocument

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_SUPER_ADMIN'])
class OrganizacionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [organizacionInstanceList: Organizacion.list(params), organizacionInstanceTotal: Organizacion.count()]
    }

    def create() {
        [organizacionInstance: new Organizacion(params)]
    }

    def save() {
        def organizacionInstance = new Organizacion(params)
        if (!organizacionInstance.save(flush: true)) {
            render(view: "create", model: [organizacionInstance: organizacionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), organizacionInstance.id])
        redirect(action: "show", id: organizacionInstance.id)
    }

    def show(Long id) {
        def organizacionInstance = Organizacion.get(id)
        if (!organizacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), id])
            redirect(action: "list")
            return
        }

        [organizacionInstance: organizacionInstance]
    }

    def edit(Long id) {
        def organizacionInstance = Organizacion.get(id)
        if (!organizacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), id])
            redirect(action: "list")
            return
        }

        [organizacionInstance: organizacionInstance]
    }

    def update(Long id, Long version) {
        def organizacionInstance = Organizacion.get(id)
        if (!organizacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (organizacionInstance.version > version) {
                organizacionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'organizacion.label', default: 'Organizacion')] as Object[],
                          "Another user has updated this Organizacion while you were editing")
                render(view: "edit", model: [organizacionInstance: organizacionInstance])
                return
            }
        }

        organizacionInstance.properties = params

        if (!organizacionInstance.save(flush: true)) {
            render(view: "edit", model: [organizacionInstance: organizacionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), organizacionInstance.id])
        redirect(action: "show", id: organizacionInstance.id)
    }

    def delete(Long id) {
        def organizacionInstance = Organizacion.get(id)
        if (!organizacionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), id])
            redirect(action: "list")
            return
        }

        try {
            organizacionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'organizacion.label', default: 'Organizacion'), id])
            redirect(action: "show", id: id)
        }
    }
}
