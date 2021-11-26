<%@ page import="projeto.base.grails2.ItemPedido" %>



<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'quantidadePedido', 'error')} required">
	<label for="quantidadePedido">
		<g:message code="itemPedido.quantidadePedido.label" default="Quantidade Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidadePedido" type="number" min="0" value="${itemPedidoInstance.quantidadePedido}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'valorDaVenda', 'error')} required">
	<label for="valorDaVenda">
		<g:message code="itemPedido.valorDaVenda.label" default="Valor Da Venda" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorDaVenda" value="${fieldValue(bean: itemPedidoInstance, field: 'valorDaVenda')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'observacao', 'error')} ">
	<label for="observacao">
		<g:message code="itemPedido.observacao.label" default="Observacao" />
		
	</label>
	<g:textField name="observacao" value="${itemPedidoInstance?.observacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="itemPedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${projeto.base.grails2.Pedido.list()}" optionKey="id" required="" value="${itemPedidoInstance?.pedido?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="itemPedido.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${projeto.base.grails2.Produto.list()}" optionKey="id" required="" value="${itemPedidoInstance?.produto?.id}" class="many-to-one"/>

</div>

