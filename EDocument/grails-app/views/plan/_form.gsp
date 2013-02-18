<%@ page import="com.novatec.edocument.Plan" %>



<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'costo', 'error')} required">
	<label for="costo">
		<g:message code="plan.costo.label" default="Costo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="costo" value="${fieldValue(bean: planInstance, field: 'costo')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="plan.tipo.label" default="Tipo" />
		
	</label>
	<g:textField name="tipo" value="${planInstance?.tipo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'usuarios', 'error')} required">
	<label for="usuarios">
		<g:message code="plan.usuarios.label" default="Usuarios" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="usuarios" type="number" value="${planInstance.usuarios}" required=""/>
</div>

