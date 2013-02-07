<af:page>
	<h1>Organizacion</h1>

	<div class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="organizacionNombre">Organizacion</label>
			<div class="controls">
				<g:textField name="organizacionNombre" required="" placeholder="Organizacion" value="${Organizacion?.organizacionNombre}" />
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="organizacionRif">R.I.F</label>
			<div class="controls">
				<g:textField name="organizacionRif" placeholder="R.I.F" value="${Organizacion?.organizacionRif}"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="organizacionDireccion">Direccion</label>
			<div class="controls">
				<g:textField name="organizacionDireccion" placeholder="Direccion" value="${Organizacion?.organizacionDireccion}"/>
			</div>
		</div>


		<div class="control-group">
			<label class="control-label" for="organizacionTelefono1">Telefono1</label>
			<div class="controls">
				<g:textField name="organizacionTelefono1" placeholder="Telefono1" value="${Organizacion?.organizacionTelefono1}"/>
			</div>
		</div>


		<div class="control-group">
			<label class="control-label" for="organizacionTelefono2">Telefono2</label>
			<div class="controls">
				<g:textField name="organizacionTelefono2" placeholder="telefono2" value="${Organizacion?.organizacionTelefono2}"/>
			</div>
		</div>
	</div>
</af:page>
