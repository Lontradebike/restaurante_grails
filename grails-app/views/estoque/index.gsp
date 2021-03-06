
<%@ page import="projeto.base.grails2.Estoque" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estoque.label', default: 'Estoque')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estoque" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estoque" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="quantidade" title="${message(code: 'estoque.quantidade.label', default: 'Quantidade')}" />
					
						<g:sortableColumn property="quantidadeMinima" title="${message(code: 'estoque.quantidadeMinima.label', default: 'Quantidade Minima')}" />
					
						<th><g:message code="estoque.produto.label" default="Produto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estoqueInstanceList}" status="i" var="estoqueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estoqueInstance.id}">${fieldValue(bean: estoqueInstance, field: "quantidade")}</g:link></td>
					
						<td>${fieldValue(bean: estoqueInstance, field: "quantidadeMinima")}</td>
					
						<td>${fieldValue(bean: estoqueInstance, field: "produto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estoqueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
