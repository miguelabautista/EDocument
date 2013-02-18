
<%@ page import="com.novatec.edocument.Pago" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pago.label', default: 'Pago')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pago" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pago" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'pago.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="monto" title="${message(code: 'pago.monto.label', default: 'Monto')}" />
					
						<g:sortableColumn property="nombreBanco" title="${message(code: 'pago.nombreBanco.label', default: 'Nombre Banco')}" />
					
						<g:sortableColumn property="numeroReferencia" title="${message(code: 'pago.numeroReferencia.label', default: 'Numero Referencia')}" />
					
						<th><g:message code="pago.organizacion.label" default="Organizacion" /></th>
					
						<g:sortableColumn property="tipoPago" title="${message(code: 'pago.tipoPago.label', default: 'Tipo Pago')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pagoInstanceList}" status="i" var="pagoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pagoInstance.id}">${fieldValue(bean: pagoInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: pagoInstance, field: "monto")}</td>
					
						<td>${fieldValue(bean: pagoInstance, field: "nombreBanco")}</td>
					
						<td>${fieldValue(bean: pagoInstance, field: "numeroReferencia")}</td>
					
						<td>${fieldValue(bean: pagoInstance, field: "organizacion")}</td>
					
						<td>${fieldValue(bean: pagoInstance, field: "tipoPago")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pagoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
