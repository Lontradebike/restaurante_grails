<%@ page import="projeto.base.grails2.Prato" %>



<div class="fieldcontain ${hasErrors(bean: pratoInstance, field: 'quantidadeDePessoas', 'error')} required">
	<label for="quantidadeDePessoas">
		<g:message code="prato.quantidadeDePessoas.label" default="Quantidade De Pessoas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidadeDePessoas" type="number" min="1" value="${pratoInstance.quantidadeDePessoas}" required=""/>

</div>

