<g:form name="actualizarDatosUsuario"  class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="nombre">Nombre Organizacion</label>
        <div class="controls">
            <g:textField name="nombre" id="nombre" value="${user.organizacion?.nombre}" placeholder="Nombre"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="nombreCorto">Alias</label>
        <div class="controls">
            <g:textField name="nombreCorto" id="nombreCorto" value="${user.organizacion?.nombreCorto}" placeholder="alias"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="cedula">Cedula</label>
        <div class="controls">
            <g:textField name="rif" id="cedula" value="${user.organizacion?.rif}" placeholder="Rif"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="email">Email</label>
        <div class="controls">
            <g:textField name="email" id="email" value="${user.organizacion?.email}" placeholder="Email"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="direccion">Direccion</label>
        <div class="controls">
            <g:textField name="direccion" id="direccion" value="${user.organizacion?.direccion}" placeholder="Direccion"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="telefono">Telefono</label>
        <div class="controls">
            <g:textField name="telefono" id="telefono" value="${user?.organizacion?.telefono}" placeholder="Telefono"/>
        </div>
    </div>    
    <div style="display:inline;">
            <g:submitToRemote url="[controller:'principal',action:'actualizarDatos']" update="cambio" name="aceptar" value="Guardar" class="btn"/>
</g:form>
        
        
            <g:remoteLink class="btn" controller="principal"
                                action="seleccionMenu" params="[seleccion:'registro']"
                                update="cambio" onSuccess="activar('cuentaLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cancelar</g:remoteLink>
        </div>



