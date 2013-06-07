<%@ page import="grailsarqsoft.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'vacantes', 'error')} required">
	<label for="vacantes">
		<g:message code="curso.vacantes.label" default="Vacantes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="vacantes" type="number" value="${cursoInstance.vacantes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'docentes', 'error')} required">
	<label for="docentes">
		<g:message code="curso.docentes.label" default="Docentes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="docentes" required="" value="${cursoInstance?.docentes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horarios', 'error')} ">
	<label for="horarios">
		<g:message code="curso.horarios.label" default="Horarios" />
		
	</label>
	<g:textField name="horarios" value="${cursoInstance?.horarios}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'inscriptos', 'error')} ">
	<label for="inscriptos">
		<g:message code="curso.inscriptos.label" default="Inscriptos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.inscriptos?}" var="i">
	<!-- mostramos a los alumnos inscriptos -->
    <li><g:link controller="alumno" action="show" id="${i.alumno.id}">${i.alumno?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inscripcion" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inscripcion.label', default: 'Inscripcion')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'materia', 'error')} required">
	<label for="materia">
		<g:message code="curso.materia.label" default="Materia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="materia" name="materia.id" from="${grailsarqsoft.Materia.list()}" optionKey="id" required="" value="${cursoInstance?.materia?.id}" class="many-to-one"/>
</div>

