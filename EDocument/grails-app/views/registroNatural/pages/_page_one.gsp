<af:page>
	 <div class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="nombre">Nombre</label>
			<div class="controls">
				<g:textField name="nombre" required="" placeholder="Nombre" value="${Organizacion?.nombre}"/>
                <span class="help-inline">*</span>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="apellido">Apellido</label>
			<div class="controls">
				<g:textField name="apellido" placeholder="Apellido" value="${Organizacion?.apellido}"/>
                <span class="help-inline">*</span>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="cedula">Cedula</label>
			<div class="controls">
				<g:textField name="cedula" required="" placeholder="Cedula" value="${Organizacion?.cedula}"/>
                <span class="help-inline">*</span>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<g:textField name="email" placeholder="Email" value="${Organizacion?.email}"/>
                <span class="help-inline">*</span>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="direccion">Direccion</label>
			<div class="controls">
				<g:textField name="direccion" placeholder="Direccion" value="${Organizacion?.direccion}"/>
                <span class="help-inline">*</span>
			</div>
		</div>
	</div>
    <div class="alert alert-info">* campos requeridos</div>
</af:page>
