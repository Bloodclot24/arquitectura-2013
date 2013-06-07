
<%@ page import="grailsarqsoft.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.padron}">
				<li class="fieldcontain">
					<span id="padron-label" class="property-label"><g:message code="alumno.padron.label" default="Padron" /></span>
					
						<span class="property-value" aria-labelledby="padron-label"><g:fieldValue bean="${alumnoInstance}" field="padron"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumno.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="alumno.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${alumnoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
			<%--  
					ocultamos el campo password
				<g:if test="${alumnoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="alumno.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${alumnoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			--%>
				<g:if test="${alumnoInstance?.inscripciones}">
				<li class="fieldcontain">
					<span id="inscripciones-label" class="property-label"><g:message code="alumno.inscripciones.label" default="Inscripciones" /></span>
						<!-- mostramos los cursos a los que esta inscripto -->
						<g:each in="${alumnoInstance.inscripciones}" var="i">
						<span class="property-value" aria-labelledby="inscripciones-label"><g:link controller="curso" action="show" id="${i.curso.id}">${i.curso.materia?.encodeAsHTML()} - ${i.curso?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${alumnoInstance?.id}" />
					<g:link class="edit" action="edit" id="${alumnoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
