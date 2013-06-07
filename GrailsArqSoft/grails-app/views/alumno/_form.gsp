<%@ page import="grailsarqsoft.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'padron', 'error')} required">
	<label for="padron">
		<g:message code="alumno.padron.label" default="Padron" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="padron" type="number" value="${alumnoInstance.padron}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="alumno.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${alumnoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="alumno.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${alumnoInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'inscripciones', 'error')} ">
	<label for="inscripciones">
		<g:message code="alumno.inscripciones.label" default="Inscripciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alumnoInstance?.inscripciones?}" var="i">
	<!-- mostramos los cursos a los que se inscribio -->
    <li><g:link controller="curso" action="show" id="${i.curso.id}">${i.curso.materia?.encodeAsHTML()} -${i.curso?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inscripcion" action="create" params="['alumno.id': alumnoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inscripcion.label', default: 'Inscripcion')])}</g:link>
</li>
</ul>

</div>

