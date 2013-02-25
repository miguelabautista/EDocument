<g:render template="/principal/menu"/>
<g:form name="actualizarDatosUsuario"  class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="nombre">Nombre</label>
        <div class="controls">
            <g:textField name="nombre" id="nombre"  placeholder="Nombre" value="${user?.nombre}"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="apellido">Apellido</label>
        <div class="controls">
            <g:textField name="apellido" id="apellido"  placeholder="apellido" value="${user?.apellido}"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="cedula">Cedula</label>
        <div class="controls">
            <g:textField name="cedula" id="cedula"  placeholder="Cedula" value="${user?.cedula_rif}"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="mail">Email</label>
        <div class="controls">
            <g:textField name="email" id="email"  placeholder="Email" value="${user?.email}"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="direccion">Direccion</label>
        <div class="controls">
            <g:textField name="direccion" id="direccion"  placeholder="Direccion" value="${user?.direccion}"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="telefono">Telefono</label>
        <div class="controls">
            <g:textField name="telefono" id="telefono"  placeholder="Telefono" value="${user?.telefono}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="telefono">Permisologia</label>
        <div class="controls">
            <g:textField name="permisologia" id="permisolofia"  placeholder="Permisologia" value="ROLE_USER"/>
        </div>
    </div>

    <div style="display:inline;">
            <g:submitToRemote url="[controller: 'principal', action: 'actualizarDatos']" update="cambio" name="aceptar" value="Aceptar" class="btn"/>
            </g:form>
            <g:remoteLink class="btn" controller="principal"
                                action="seleccionMenu" params="[seleccion:'usuarios']"
                                update="cambio" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cancelar</g:remoteLink>
    </div>
   