package projeto.base.grails2

class Prato extends Produto {
    Integer quantidadeDePessoas


    static constraints = {
        quantidadeDePessoas min:1
    }
    static mapping = {
        discriminator value: "PRATO"
    }
}
