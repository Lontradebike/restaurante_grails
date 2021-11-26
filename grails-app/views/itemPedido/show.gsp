
<%@ page import="projeto.base.grails2.ItemPedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemPedido.label', default: 'ItemPedido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-itemPedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-itemPedido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list itemPedido">
			
				<g:if test="${itemPedidoInstance?.quantidadePedido}">
				<li class="fieldcontain">
					<span id="quantidadePedido-label" class="property-label"><g:message code="itemPedido.quantidadePedido.label" default="Quantidade Pedido" /></span>
					
						<span class="property-value" aria-labelledby="quantidadePedido-label"><g:fieldValue bean="${itemPedidoInstance}" field="quantidadePedido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemPedidoInstance?.valorDaVenda}">
				<li class="fieldcontain">
					<span id="valorDaVenda-label" class="property-label"><g:message code="itemPedido.valorDaVenda.label" default="Valor Da Venda" /></span>
					
						<span class="property-value" aria-labelledby="valorDaVenda-label"><g:fieldValue bean="${itemPedidoInstance}" field="valorDaVenda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemPedidoInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="itemPedido.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${itemPedidoInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemPedidoInstance?.pedido}">
				<li class="fieldcontain">
					<span id="pedido-label" class="property-label"><g:message code="itemPedido.pedido.label" default="Pedido" /></span>
					
						<span class="property-value" aria-labelledby="pedido-label"><g:link controller="pedido" action="show" id="${itemPedidoInstance?.pedido?.id}">${itemPedidoInstance?.pedido?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemPedidoInstance?.produto}">
				<li class="fieldcontain">
					<span id="produto-label" class="property-label"><g:message code="itemPedido.produto.label" default="Produto" /></span>
					
						<span class="property-value" aria-labelledby="produto-label"><g:link controller="produto" action="show" id="${itemPedidoInstance?.produto?.id}">${itemPedidoInstance?.produto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemPedidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemPedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
