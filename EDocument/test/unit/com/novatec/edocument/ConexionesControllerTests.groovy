package com.novatec.edocument



import org.junit.*
import grails.test.mixin.*

@TestFor(ConexionesController)
@Mock(Conexiones)
class ConexionesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/conexiones/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.conexionesInstanceList.size() == 0
        assert model.conexionesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.conexionesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.conexionesInstance != null
        assert view == '/conexiones/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/conexiones/show/1'
        assert controller.flash.message != null
        assert Conexiones.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/conexiones/list'

        populateValidParams(params)
        def conexiones = new Conexiones(params)

        assert conexiones.save() != null

        params.id = conexiones.id

        def model = controller.show()

        assert model.conexionesInstance == conexiones
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/conexiones/list'

        populateValidParams(params)
        def conexiones = new Conexiones(params)

        assert conexiones.save() != null

        params.id = conexiones.id

        def model = controller.edit()

        assert model.conexionesInstance == conexiones
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/conexiones/list'

        response.reset()

        populateValidParams(params)
        def conexiones = new Conexiones(params)

        assert conexiones.save() != null

        // test invalid parameters in update
        params.id = conexiones.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/conexiones/edit"
        assert model.conexionesInstance != null

        conexiones.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/conexiones/show/$conexiones.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        conexiones.clearErrors()

        populateValidParams(params)
        params.id = conexiones.id
        params.version = -1
        controller.update()

        assert view == "/conexiones/edit"
        assert model.conexionesInstance != null
        assert model.conexionesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/conexiones/list'

        response.reset()

        populateValidParams(params)
        def conexiones = new Conexiones(params)

        assert conexiones.save() != null
        assert Conexiones.count() == 1

        params.id = conexiones.id

        controller.delete()

        assert Conexiones.count() == 0
        assert Conexiones.get(conexiones.id) == null
        assert response.redirectedUrl == '/conexiones/list'
    }
}
