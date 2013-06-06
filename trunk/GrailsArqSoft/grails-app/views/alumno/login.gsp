<%@ page import="grailsarqsoft.Alumno" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="Login al Sistema" />
        <title><g:message code="Login al Sistema de Inscripcion" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="logout"><g:message code="Logout" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="#create-alumno" class="content scaffold-create" role="main">
            <h1><g:message code="Login al Sistema de Inscripcion" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${alumnoInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${alumnoInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="authenticate" >
                <fieldset class="form">
                    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'padron', 'error')} ">
                        <label for="padron">
                            <g:message code="alumno.padron.label" default="Padrón" />
                            
                        </label>
                        <g:textField name="padron" value="${alumnoInstance?.padron}"/>
                    </div>
                    
                    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'password', 'error')} ">
                        <label for="password">
                            <g:message code="alumno.password.label" default="Password" />
                            
                        </label>
                        <g:field type="password" name="password" value="${alumnoInstance?.password}"/>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="login" class="save" value="Login" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>