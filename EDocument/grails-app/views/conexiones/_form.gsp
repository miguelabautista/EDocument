<%@ page import="com.novatec.edocument.Conexiones" %>



<div class="fieldcontain ${hasErrors(bean: conexionesInstance, field: 'ip', 'error')} ">
	<label for="ip">
		<g:message code="conexiones.ip.label" default="Ip" />
		
	</label>
	<g:textField name="ip" value="${conexionesInstance?.ip}"/>
</div>

