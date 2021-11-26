package projeto.base.grails2

class Pedido {
    Date datahora
    Double valorTotal
    Cliente cliente

    static hasMany = [clientes: Cliente, itens: ItemPedido]

    static belongsTo = [Cliente]



    static constraints = {
        valorTotal min: new Double(0)
        cliente nullable:false
    }
    static mapping = {
        cliente column: "id_Cliente"
    }
}
