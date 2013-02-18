package com.novatec.edocument

import org.springframework.dao.DataIntegrityViolationException


import grails.plugins.springsecurity.Secured

@Secured(['ROLE_SUPER_ADMIN'])
class ConexionesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [conexionesInstanceList: Conexiones.list(params), conexionesInstanceTotal: Conexiones.count()]
    }

    def create() {
        [conexionesInstance: new Conexiones(params)]
    }

    def save() {
        def conexionesInstance = new Conexiones(params)
        if (!conexionesInstance.save(flush: true)) {
            render(view: "create", model: [conexionesInstance: conexionesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), conexionesInstance.id])
        redirect(action: "show", id: conexionesInstance.id)
    }

    def show(Long id) {
        def conexionesInstance = Conexiones.get(id)
        if (!conexionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), id])
            redirect(action: "list")
            return
        }

        [conexionesInstance: conexionesInstance]
    }

    def edit(Long id) {
        def conexionesInstance = Conexiones.get(id)
        if (!conexionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), id])
            redirect(action: "list")
            return
        }

        [conexionesInstance: conexionesInstance]
    }

    def update(Long id, Long version) {
        def conexionesInstance = Conexiones.get(id)
        if (!conexionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (conexionesInstance.version > version) {
                conexionesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'conexiones.label', default: 'Conexiones')] as Object[],
                          "Another user has updated this Conexiones while you were editing")
                render(view: "edit", model: [conexionesInstance: conexionesInstance])
                return
            }
        }

        conexionesInstance.properties = params

        if (!conexionesInstance.save(flush: true)) {
            render(view: "edit", model: [conexionesInstance: conexionesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), conexionesInstance.id])
        redirect(action: "show", id: conexionesInstance.id)
    }

    def delete(Long id) {
        def conexionesInstance = Conexiones.get(id)
        if (!conexionesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), id])
            redirect(action: "list")
            return
        }

        try {
            conexionesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'conexiones.label', default: 'Conexiones'), id])
            redirect(action: "show", id: id)
        }
    }
}
