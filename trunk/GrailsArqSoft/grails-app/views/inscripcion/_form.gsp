<%@ page import="grailsarqsoft.Inscripcion" %>



<div class="fieldcontain ${hasErrors(bean: inscripcionInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="inscripcion.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<%--  el alumno se selecciona mediante el login y no se deberia poder modificar --%>
	<g:select id="alumno" name="alumno.id" from="${grailsarqsoft.Alumno.findById(inscripcionInstance?.alumno?.id)}" optionKey="id" required="" readonly="readonly" value="${inscripcionInstance?.alumno?.id}" class="many-to-one"/>
	
</div>

<div class="fieldcontain ${hasErrors(bean: inscripcionInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="inscripcion.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${grailsarqsoft.Curso.list()}" optionKey="id" required="" value="${inscripcionInstance?.curso?.id}" class="many-to-one"/>
</div>

