
<%@ page import="projeto.base.grails2.Bebida" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bebida.label', default: 'Bebida')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bebida" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bebida" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bebida">
			
				<g:if test="${bebidaInstance?.liquido}">
				<li class="fieldcontain">
					<span id="liquido-label" class="property-label"><g:message code="bebida.liquido.label" default="Liquido" /></span>
					
						<span class="property-value" aria-labelledby="liquido-label"><g:fieldValue bean="${bebidaInstance}" field="liquido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bebidaInstance?.unidade}">
				<li class="fieldcontain">
					<span id="unidade-label" class="property-label"><g:message code="bebida.unidade.label" default="Unidade" /></span>
					
						<span class="property-value" aria-labelledby="unidade-label"><g:fieldValue bean="${bebidaInstance}" field="unidade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bebidaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bebidaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
