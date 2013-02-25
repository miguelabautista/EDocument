<%
    /**
     * second wizard page / tab
     *
     * @author Jeroen Wesbeek <work@osx.eu>
     * @package AjaxFlow
     */
%>
<af:page>
    <h1>Cuenta Usuario</h1>
    <br/>

    <div class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="username">Nombre Usuario</label>

            <div class="controls">
                <g:textField name="username" id="username" required="" value="${Cuenta?.username}"/>
                <span class="help-inline">*</span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="password">Contraseña</label>

            <div class="controls">
                <g:passwordField name="password" id="password" required="" value="${Cuenta?.password}"/>
                <span class="help-inline">*</span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="password">Repetir Contraseña</label>

            <div class="controls">
                <g:passwordField name="password" id="password" required="" value="${Cuenta?.repeatPassword}"/>
                <span class="help-inline">*</span>
            </div>
        </div>
    </div>

    <div class="alert alert-info">* campos requeridos</div>
</af:page>
