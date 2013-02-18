<%@ page import="com.novatec.edocument.Organizacion" %>



<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="organizacion.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${organizacionInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="organizacion.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${organizacionInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'fechaPago', 'error')} required">
	<label for="fechaPago">
		<g:message code="organizacion.fechaPago.label" default="Fecha Pago" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaPago" precision="day"  value="${organizacionInstance?.fechaPago}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'monto', 'error')} required">
	<label for="monto">
		<g:message code="organizacion.monto.label" default="Monto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="monto" value="${fieldValue(bean: organizacionInstance, field: 'monto')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="organizacion.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${organizacionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'pagos', 'error')} ">
	<label for="pagos">
		<g:message code="organizacion.pagos.label" default="Pagos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${organizacionInstance?.pagos?}" var="p">
    <li><g:link controller="pago" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pago" action="create" params="['organizacion.id': organizacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pago.label', default: 'Pago')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'plan', 'error')} required">
	<label for="plan">
		<g:message code="organizacion.plan.label" default="Plan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plan" name="plan.id" from="${com.novatec.edocument.Plan.list()}" optionKey="id" required="" value="${organizacionInstance?.plan?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'rif', 'error')} ">
	<label for="rif">
		<g:message code="organizacion.rif.label" default="Rif" />
		
	</label>
	<g:textField name="rif" value="${organizacionInstance?.rif}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="organizacion.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${organizacionInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="organizacion.users.label" default="Users" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${organizacionInstance?.users?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['organizacion.id': organizacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: organizacionInstance, field: 'vigencia', 'error')} ">
	<label for="vigencia">
		<g:message code="organizacion.vigencia.label" default="Vigencia" />
		
	</label>
	<g:checkBox name="vigencia" value="${organizacionInstance?.vigencia}" />
</div>

