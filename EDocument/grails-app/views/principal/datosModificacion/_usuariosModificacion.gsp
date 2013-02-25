<g:render template="/principal/menu"/>
<g:form name="actualizarDatosUsuario"  class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="nombre">UserName</label>
        <div class="controls">
            <g:textField name="username" id="username"  placeholder="UserName"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="nombre">Password</label>
        <div class="controls">
            <g:textField name="password" id="password"  placeholder="Password"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="nombre">Repeat Password</label>
        <div class="controls">
            <g:textField name="repeatPassword" id="repeatPassword"  placeholder="Repeat Password"/>
        </div>
    </div>
    <hr/>
    <div class="control-group">
        <label class="control-label" for="nombre">Nombre</label>
        <div class="controls">
            <g:textField name="nombre" id="nombre"  placeholder="Nombre"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="apellido">Apellido</label>
        <div class="controls">
            <g:textField name="apellido" id="apellido"  placeholder="apellido"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="cedula">Cedula</label>
        <div class="controls">
            <g:textField name="cedula" id="cedula"  placeholder="Cedula"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="email">Email</label>
        <div class="controls">
            <g:textField name="email" id="email"  placeholder="Email"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="direccion">Direccion</label>
        <div class="controls">
            <g:textField name="direccion" id="direccion"  placeholder="Direccion"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="telefono">Telefono</label>
        <div class="controls">
            <g:textField name="telefono" id="telefono"  placeholder="Telefono"/>
        </div>
    </div>

    <div style="display:inline;">
            <g:submitToRemote url="[controller: 'principal', action: 'agregarUsuario']" update="cambio" name="aceptar" value="Aceptar" class="btn"/>
            </g:form>
            <g:remoteLink class="btn" controller="principal"
                                action="seleccionMenu" params="[seleccion:'registro']"
                                update="cambio" onSuccess="activar('cuentaLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cancelar</g:remoteLink>
    </div>
   