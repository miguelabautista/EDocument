
<%@ page import="com.novatec.edocument.Organizacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organizacion.label', default: 'Organizacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-organizacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-organizacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list organizacion">
			
				<g:if test="${organizacionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="organizacion.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${organizacionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="organizacion.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${organizacionInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="organizacion.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${organizacionInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.fechaPago}">
				<li class="fieldcontain">
					<span id="fechaPago-label" class="property-label"><g:message code="organizacion.fechaPago.label" default="Fecha Pago" /></span>
					
						<span class="property-value" aria-labelledby="fechaPago-label"><g:formatDate date="${organizacionInstance?.fechaPago}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.monto}">
				<li class="fieldcontain">
					<span id="monto-label" class="property-label"><g:message code="organizacion.monto.label" default="Monto" /></span>
					
						<span class="property-value" aria-labelledby="monto-label"><g:fieldValue bean="${organizacionInstance}" field="monto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="organizacion.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${organizacionInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.pagos}">
				<li class="fieldcontain">
					<span id="pagos-label" class="property-label"><g:message code="organizacion.pagos.label" default="Pagos" /></span>
					
						<g:each in="${organizacionInstance.pagos}" var="p">
						<span class="property-value" aria-labelledby="pagos-label"><g:link controller="pago" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.plan}">
				<li class="fieldcontain">
					<span id="plan-label" class="property-label"><g:message code="organizacion.plan.label" default="Plan" /></span>
					
						<span class="property-value" aria-labelledby="plan-label"><g:link controller="plan" action="show" id="${organizacionInstance?.plan?.id}">${organizacionInstance?.plan?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.rif}">
				<li class="fieldcontain">
					<span id="rif-label" class="property-label"><g:message code="organizacion.rif.label" default="Rif" /></span>
					
						<span class="property-value" aria-labelledby="rif-label"><g:fieldValue bean="${organizacionInstance}" field="rif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="organizacion.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${organizacionInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="organizacion.users.label" default="Users" /></span>
					
						<g:each in="${organizacionInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${organizacionInstance?.vigencia}">
				<li class="fieldcontain">
					<span id="vigencia-label" class="property-label"><g:message code="organizacion.vigencia.label" default="Vigencia" /></span>
					
						<span class="property-value" aria-labelledby="vigencia-label"><g:formatBoolean boolean="${organizacionInstance?.vigencia}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${organizacionInstance?.id}" />
					<g:link class="edit" action="edit" id="${organizacionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
