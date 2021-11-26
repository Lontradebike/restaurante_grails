<%@ page import="projeto.base.grails2.Sobremesa" %>



<div class="fieldcontain ${hasErrors(bean: sobremesaInstance, field: 'calorias', 'error')} required">
	<label for="calorias">
		<g:message code="sobremesa.calorias.label" default="Calorias" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calorias" type="number" min="0" value="${sobremesaInstance.calorias}" required=""/>

</div>

