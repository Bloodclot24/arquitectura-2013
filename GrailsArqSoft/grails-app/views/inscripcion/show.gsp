
<%@ page import="grailsarqsoft.Inscripcion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inscripcion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inscripcion">
			
				<g:if test="${inscripcionInstance?.alumno}">
				<li class="fieldcontain">
					<span id="alumno-label" class="property-label"><g:message code="inscripcion.alumno.label" default="Alumno" /></span>
					
						<span class="property-value" aria-labelledby="alumno-label"><g:link controller="alumno" action="show" id="${inscripcionInstance?.alumno?.id}">${inscripcionInstance?.alumno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${inscripcionInstance?.curso}">
				<li class="fieldcontain">
					<span id="materia-label" class="property-label"><g:message code="inscripcion.curso.materia.label" default="Materia" /></span>
					
						<span class="property-value" aria-labelledby=""materia-label""><g:link controller="materia" action="show" id="${inscripcionInstance?.curso?.materia?.id}">${inscripcionInstance?.curso?.materia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${inscripcionInstance?.curso}">
				<li class="fieldcontain">
					<span id="curso-label" class="property-label"><g:message code="inscripcion.curso.label" default="Curso" /></span>
					
						<span class="property-value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${inscripcionInstance?.curso?.id}">${inscripcionInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${inscripcionInstance?.id}" />
					<!-- Sacamos el boton de edit..  -->
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
