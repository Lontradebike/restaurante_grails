package projeto.base.grails2

class ItemPedido {
Integer quantidadePedido
    Double valorDaVenda
    String observacao

    Produto produto
    Pedido pedido

    static belongsTo = [Pedido]

    static constraints = {
        quantidadePedido min: 0
        valorDaVenda min: new Double(0)
        observacao nullable:true, blank:true
    }
}
