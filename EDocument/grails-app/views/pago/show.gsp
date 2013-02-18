
<%@ page import="com.novatec.edocument.Pago" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pago.label', default: 'Pago')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pago" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pago" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pago">
			
				<g:if test="${pagoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="pago.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${pagoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoInstance?.monto}">
				<li class="fieldcontain">
					<span id="monto-label" class="property-label"><g:message code="pago.monto.label" default="Monto" /></span>
					
						<span class="property-value" aria-labelledby="monto-label"><g:fieldValue bean="${pagoInstance}" field="monto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoInstance?.nombreBanco}">
				<li class="fieldcontain">
					<span id="nombreBanco-label" class="property-label"><g:message code="pago.nombreBanco.label" default="Nombre Banco" /></span>
					
						<span class="property-value" aria-labelledby="nombreBanco-label"><g:fieldValue bean="${pagoInstance}" field="nombreBanco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoInstance?.numeroReferencia}">
				<li class="fieldcontain">
					<span id="numeroReferencia-label" class="property-label"><g:message code="pago.numeroReferencia.label" default="Numero Referencia" /></span>
					
						<span class="property-value" aria-labelledby="numeroReferencia-label"><g:fieldValue bean="${pagoInstance}" field="numeroReferencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoInstance?.organizacion}">
				<li class="fieldcontain">
					<span id="organizacion-label" class="property-label"><g:message code="pago.organizacion.label" default="Organizacion" /></span>
					
						<span class="property-value" aria-labelledby="organizacion-label"><g:link controller="organizacion" action="show" id="${pagoInstance?.organizacion?.id}">${pagoInstance?.organizacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoInstance?.tipoPago}">
				<li class="fieldcontain">
					<span id="tipoPago-label" class="property-label"><g:message code="pago.tipoPago.label" default="Tipo Pago" /></span>
					
						<span class="property-value" aria-labelledby="tipoPago-label"><g:fieldValue bean="${pagoInstance}" field="tipoPago"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pagoInstance?.id}" />
					<g:link class="edit" action="edit" id="${pagoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
