<g:form name="actualizarDatosUsuario"  class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="nombre">Nombre</label>
        <div class="controls">
            <g:textField name="nombre" id="nombre" value="${user?.nombre}" placeholder="Nombre"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="apellido">Apellido</label>
        <div class="controls">
            <g:textField name="apellido" id="apellido" value="${user?.apellido}" placeholder="apellido"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="cedula">Cedula</label>
        <div class="controls">
            <g:textField name="cedula" id="cedula" value="${user?.cedula_rif}" placeholder="Cedula"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="mail">Email</label>
        <div class="controls">
            <g:textField name="email" id="email" value="${user?.email}" placeholder="Email"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="direccion">Direccion</label>
        <div class="controls">
            <g:textField name="direccion" id="direccion" value="${user?.direccion}" placeholder="Direccion"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="telefono">Telefono</label>
        <div class="controls">
            <g:textField name="telefono" id="telefono" value="${user?.telefono}" placeholder="Telefono"/>
        </div>
    </div>

    <div style="display:inline;">
            <g:submitToRemote url="[controller: 'principal', action: 'actualizarDatos']" update="cambio" name="aceptar" value="Aceptar" class="btn"/>
            </g:form>           
            <g:remoteLink class="btn" controller="principal"
                                action="seleccionMenu" params="[seleccion:'registro']"
                                update="cambio" onSuccess="activar('cuentaLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cancelar</g:remoteLink>
    </div>
   


