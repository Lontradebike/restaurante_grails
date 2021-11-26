<%@ page import="projeto.base.grails2.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${clienteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="cliente.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" maxlength="10" required="" value="${clienteInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'pedidos', 'error')} ">
	<label for="pedidos">
		<g:message code="cliente.pedidos.label" default="Pedidos" />
		
	</label>
	<g:select name="pedidos" from="${projeto.base.grails2.Pedido.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.pedidos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'produtosPreferidos', 'error')} ">
	<label for="produtosPreferidos">
		<g:message code="cliente.produtosPreferidos.label" default="Produtos Preferidos" />
		
	</label>
	<g:select name="produtosPreferidos" from="${projeto.base.grails2.Produto.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.produtosPreferidos*.id}" class="many-to-many"/>

</div>

