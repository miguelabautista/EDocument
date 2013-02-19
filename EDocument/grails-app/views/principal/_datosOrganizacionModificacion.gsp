<g:render template="/principal/menu"/>

<g:formRemote name="actualizarDatosUsuario" url="[controller:'principal',action:'actualizarDatos']" update="cambio" class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="nombre">Nombre</label>
        <div class="controls">
            <input type="text" id="nombre" placeholder="Nombre">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="apellido">Apellido</label>
        <div class="controls">
            <input type="text" id="apellido" placeholder="Apellido">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="cedula">Cedula</label>
        <div class="controls">
            <input type="text" id="cedula" placeholder="Cedula">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="mail">Email</label>
        <div class="controls">
            <input type="text" id="mail" placeholder="Email">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="direccion">Direccion</label>
        <div class="controls">
            <input type="text" id="direccion" placeholder="Direccion">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="telefono">Telefono</label>
        <div class="controls">
            <input type="text" id="telefono" placeholder="Telefono">
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <g:actionSubmit name="aceptar" value="Sign in" class="btn"/>
        </div>
        <div class="controls">
            <g:actionSubmit name="cancelar" value="Cancelar" class="btn"/>
        </div>
    </div>
</g:formRemote>

