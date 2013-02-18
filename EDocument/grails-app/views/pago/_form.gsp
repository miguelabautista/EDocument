<%@ page import="com.novatec.edocument.Pago" %>



<div class="fieldcontain ${hasErrors(bean: pagoInstance, field: 'monto', 'error')} required">
	<label for="monto">
		<g:message code="pago.monto.label" default="Monto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="monto" value="${fieldValue(bean: pagoInstance, field: 'monto')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoInstance, field: 'nombreBanco', 'error')} ">
	<label for="nombreBanco">
		<g:message code="pago.nombreBanco.label" default="Nombre Banco" />
		
	</label>
	<g:textField name="nombreBanco" value="${pagoInstance?.nombreBanco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoInstance, field: 'numeroReferencia', 'error')} ">
	<label for="numeroReferencia">
		<g:message code="pago.numeroReferencia.label" default="Numero Referencia" />
		
	</label>
	<g:textField name="numeroReferencia" value="${pagoInstance?.numeroReferencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoInstance, field: 'organizacion', 'error')} required">
	<label for="organizacion">
		<g:message code="pago.organizacion.label" default="Organizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organizacion" name="organizacion.id" from="${com.novatec.edocument.Organizacion.list()}" optionKey="id" required="" value="${pagoInstance?.organizacion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoInstance, field: 'tipoPago', 'error')} ">
	<label for="tipoPago">
		<g:message code="pago.tipoPago.label" default="Tipo Pago" />
		
	</label>
	<g:textField name="tipoPago" value="${pagoInstance?.tipoPago}"/>
</div>

