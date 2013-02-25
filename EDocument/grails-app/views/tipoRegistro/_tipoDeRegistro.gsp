<div>
	<h3>Seleccione el Tipo de Registro</div>
	<select id="tipoDeRegistro" onchange="${remoteFunction(controller:'tipoRegistro',action:'validar',update:'cambio',params:'\'tipoRegistro=\' +this.value')}">
		<option></option>
		<option>Persona Juridica</option>
		<option>Persona Natural</option>
	</select>
</div>