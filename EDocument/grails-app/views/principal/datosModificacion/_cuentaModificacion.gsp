<g:form name="actualizarDatosUsuario" class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="nombre">Username</label>

        <div class="controls">
            <g:textField name="nombre" id="nombre" value="${user?.username}" placeholder="Username"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="password">Ingrese clave actual</label>

        <div class="controls">
            <g:passwordField name="password" id="password" placeholder="Clave Actual"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="newPassword">Nueva Clave</label>

        <div class="controls">
            <g:textField name="newPassword" id="newPassword" placeholder="Nueva Clave"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="repeatPassword">Repita Nueva Clave</label>

        <div class="controls">
            <g:textField name="repeatPassword" id="repeatPassword" placeholder="Nueva Clave"/>
        </div>
    </div>

    <div style="display:inline;">
    <g:submitToRemote url="[controller: 'principal', action: 'actualizarDatos']" update="cambio" name="aceptar"
                      value="Guardar" class="btn"/>
</g:form>


<g:remoteLink class="btn" controller="principal"
              action="seleccionMenu" params="[seleccion: 'registro']"
              update="cambio" onSuccess="activar('cuentaLink');"
              onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cancelar</g:remoteLink>
</div>



