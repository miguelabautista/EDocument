<%@ page import="com.novatec.edocument.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usuarioInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${usuarioInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cedula_rif', 'error')} required">
	<label for="cedula_rif">
		<g:message code="usuario.cedula_rif.label" default="Cedularif" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula_rif" pattern="${usuarioInstance.constraints.cedula_rif.matches}" required="" value="${usuarioInstance?.cedula_rif}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="usuario.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${usuarioInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'organizacion', 'error')} required">
	<label for="organizacion">
		<g:message code="usuario.organizacion.label" default="Organizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organizacion" name="organizacion.id" from="${com.novatec.edocument.Organizacion.list()}" optionKey="id" required="" value="${usuarioInstance?.organizacion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${usuarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'conexiones', 'error')} ">
	<label for="conexiones">
		<g:message code="usuario.conexiones.label" default="Conexiones" />
		
	</label>
	<g:select name="conexiones" from="${com.novatec.edocument.Conexiones.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.conexiones*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${usuarioInstance?.telefono}"/>
</div>

