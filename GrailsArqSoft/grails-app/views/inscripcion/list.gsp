
<%@ page import="grailsarqsoft.Inscripcion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inscripcion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="inscripcion.alumno.label" default="Alumno" /></th>
					
						<th><g:message code="inscripcion.curso.materia.label" default="Materia" /></th>
						
						<th><g:message code="inscripcion.curso.label" default="Curso" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inscripcionInstanceList}" status="i" var="inscripcionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inscripcionInstance.id}">${fieldValue(bean: inscripcionInstance, field: "alumno")}</g:link></td>
					
						<td>${fieldValue(bean: inscripcionInstance.curso, field: "materia")}</td>
						
						<td>${fieldValue(bean: inscripcionInstance, field: "curso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inscripcionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
