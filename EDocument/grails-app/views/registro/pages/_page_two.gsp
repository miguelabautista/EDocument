
<%
/**
 * second wizard page / tab
 *
 * @author	Jeroen Wesbeek <work@osx.eu>
 * @package AjaxFlow
 */
%>
<af:page>
	<h1>Datos del usuario</h1>
	<div class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="nombre">Nombre</label>
			<div class="controls">
				<g:textField name="nombre" placeholder="Nombre" value="${Usuario?.nombre}"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="apellido">Apellido</label>
			<div class="controls">
				<g:textField name="apellido" placeholder="Apellido" value="${Usuario?.apellido}"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="cedula">Cedula</label>
			<div class="controls">
				<g:textField name="cedula" required="" placeholder="Cedula" value="${Usuario?.cedula}"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<g:textField name="email" placeholder="Email" value="${Usuario?.email}"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="direccion">Direccion</label>
			<div class="controls">
				<g:textField name="direccion" placeholder="Direccion" value="${Usuario?.direccion}"/>
			</div>
		</div>
	</div>
</af:page>
