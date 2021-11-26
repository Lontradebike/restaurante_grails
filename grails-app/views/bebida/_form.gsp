<%@ page import="projeto.base.grails2.Bebida" %>



<div class="fieldcontain ${hasErrors(bean: bebidaInstance, field: 'liquido', 'error')} required">
	<label for="liquido">
		<g:message code="bebida.liquido.label" default="Liquido" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="liquido" value="${fieldValue(bean: bebidaInstance, field: 'liquido')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: bebidaInstance, field: 'unidade', 'error')} required">
	<label for="unidade">
		<g:message code="bebida.unidade.label" default="Unidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="unidade" from="${bebidaInstance.constraints.unidade.inList}" required="" value="${bebidaInstance?.unidade}" valueMessagePrefix="bebida.unidade"/>

</div>

