<g:render template="/principal/menu"/>

<h3>Gestion del Plan</h3>

<div>

    <form class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="datepicker">fecha del deposito</label>

            <div class="controls">
                <input type="text" id="datepicker" placeholder="fecha del deposito"/>
                <span class="help-inline">*</span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="nombre">Nombre</label>

            <div class="controls">
                <g:textField id="nombre" name="nombre" placeholder="Nombre"/>
                <span class="help-inline">*</span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="email">Email</label>

            <div class="controls">
                <g:textField id="email" name="email" placeholder="Email"/>
                <span class="help-inline">*</span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="deposito">Deposito</label>

            <div class="controls">
                <g:textField name="deposito" id="deposito" placeholder="Deposito"/>
                <span class="help-inline">*</span>
            </div>
        </div>

        <div class="control-group">

            <button class="btn btn-small btn-primary">Aceptar</button>
            <button class="btn btn-mini">Cancelar</button>

        </div>
    </form>

</div>
<g:javascript src="application.js"/>