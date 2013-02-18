
<%@ page import="com.novatec.edocument.Plan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plan.label', default: 'Plan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="costo" title="${message(code: 'plan.costo.label', default: 'Costo')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'plan.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="usuarios" title="${message(code: 'plan.usuarios.label', default: 'Usuarios')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planInstanceList}" status="i" var="planInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planInstance.id}">${fieldValue(bean: planInstance, field: "costo")}</g:link></td>
					
						<td>${fieldValue(bean: planInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: planInstance, field: "usuarios")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
