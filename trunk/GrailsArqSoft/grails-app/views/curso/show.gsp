
<%@ page import="grailsarqsoft.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.vacantes}">
				<li class="fieldcontain">
					<span id="vacantes-label" class="property-label"><g:message code="curso.vacantes.label" default="Vacantes" /></span>
					
						<span class="property-value" aria-labelledby="vacantes-label"><g:fieldValue bean="${cursoInstance}" field="vacantes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.docentes}">
				<li class="fieldcontain">
					<span id="docentes-label" class="property-label"><g:message code="curso.docentes.label" default="Docentes" /></span>
					
						<span class="property-value" aria-labelledby="docentes-label"><g:fieldValue bean="${cursoInstance}" field="docentes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.horarios}">
				<li class="fieldcontain">
					<span id="horarios-label" class="property-label"><g:message code="curso.horarios.label" default="Horarios" /></span>
					
						<span class="property-value" aria-labelledby="horarios-label"><g:fieldValue bean="${cursoInstance}" field="horarios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.inscriptos}">
				<li class="fieldcontain">
					<span id="inscriptos-label" class="property-label"><g:message code="curso.inscriptos.label" default="Inscriptos" /></span>
					
						<g:each in="${cursoInstance.inscriptos}" var="i">
						<!-- mostramos a los alumnos inscriptos -->
						<span class="property-value" aria-labelledby="inscriptos-label"><g:link controller="alumno" action="show" id="${i.alumno.id}">${i.alumno?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.materia}">
				<li class="fieldcontain">
					<span id="materia-label" class="property-label"><g:message code="curso.materia.label" default="Materia" /></span>
					
						<span class="property-value" aria-labelledby="materia-label"><g:link controller="materia" action="show" id="${cursoInstance?.materia?.id}">${cursoInstance?.materia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cursoInstance?.id}" />
					<g:link class="edit" action="edit" id="${cursoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
