package com.novatec.edocument



import org.junit.*
import grails.test.mixin.*

@TestFor(OrganizacionController)
@Mock(Organizacion)
class OrganizacionControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/organizacion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.organizacionInstanceList.size() == 0
        assert model.organizacionInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.organizacionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.organizacionInstance != null
        assert view == '/organizacion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/organizacion/show/1'
        assert controller.flash.message != null
        assert Organizacion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/organizacion/list'

        populateValidParams(params)
        def organizacion = new Organizacion(params)

        assert organizacion.save() != null

        params.id = organizacion.id

        def model = controller.show()

        assert model.organizacionInstance == organizacion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/organizacion/list'

        populateValidParams(params)
        def organizacion = new Organizacion(params)

        assert organizacion.save() != null

        params.id = organizacion.id

        def model = controller.edit()

        assert model.organizacionInstance == organizacion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/organizacion/list'

        response.reset()

        populateValidParams(params)
        def organizacion = new Organizacion(params)

        assert organizacion.save() != null

        // test invalid parameters in update
        params.id = organizacion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/organizacion/edit"
        assert model.organizacionInstance != null

        organizacion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/organizacion/show/$organizacion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        organizacion.clearErrors()

        populateValidParams(params)
        params.id = organizacion.id
        params.version = -1
        controller.update()

        assert view == "/organizacion/edit"
        assert model.organizacionInstance != null
        assert model.organizacionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/organizacion/list'

        response.reset()

        populateValidParams(params)
        def organizacion = new Organizacion(params)

        assert organizacion.save() != null
        assert Organizacion.count() == 1

        params.id = organizacion.id

        controller.delete()

        assert Organizacion.count() == 0
        assert Organizacion.get(organizacion.id) == null
        assert response.redirectedUrl == '/organizacion/list'
    }
}
