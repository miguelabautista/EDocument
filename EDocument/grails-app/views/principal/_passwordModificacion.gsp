<g:render template="/principal/menu"/>

<form class="form-horizontal">
    <div class="control-group">
        <label class="control-label" for="password">Password</label>
        <div class="controls">
            <input type="password" id="password" placeholder="Password">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="repeatPassword">Repeat Password</label>
        <div class="controls">
            <input type="password" id="repeatPassword" placeholder="Repeat Password">
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <g:submitToRemote action="submitData" update="cambio" class="btn" name="submit" value="Aceptar"/>
        </div>
    </div>
</form>

