import UIKit

//Define a Class Fornecedor - Pai

class Fornecedor {
    var nomeF: String
    var enderecoF: String
    var telefoneF: String
    var cnpjF: String
    var produtoF: String
    var estoqueF: Float
    var valorF: Float
    
    init(nomeF: String, enderecoF: String, telefoneF: String, cnpjF: String, produtoF: String, estoqueF: Float, valorF: Float) {
       
        self.nomeF = nomeF
        self.enderecoF = enderecoF
        self.telefoneF = telefoneF
        self.cnpjF = cnpjF
        self.produtoF = produtoF
        self.estoqueF = estoqueF
        self.valorF = valorF
    }

    //Venda do produto ao Mercado
    func Pedido(qtdsolicitada: Float){
        if (self.estoqueF >= qtdsolicitada)
        {
            self.valorF = self.valorF * qtdsolicitada
            print("Pagamento recebido, separar \(produtoF) no estoque")
            self.estoqueF = self.estoqueF - qtdsolicitada
            print("Estoque atualizado, a quantidade atual é \(estoqueF)")

          //Se não tiver em estoque
        } else {
            print("Quantidade solicitada não tem em estoque")
        }
    }
}

//Define a Class Mercado - Herda de Fornecedor

class Mercado: Fornecedor {
    var nomeM: String
    var enderecoM: String
    var telefoneM: String
    var cnpjM: String
    var delivery: Bool
    var horarioM: String
    
    init(nomeF: String, enderecoF: String, telefoneF: String, cnpjF: String, produtoF: String, estoqueF: Float, valorF: Float, nomeM: String, enderecoM: String, telefoneM: String, cnpjM: String, delivery: Bool, horarioM: String) {
       
        self.nomeM = nomeM
        self.enderecoM = enderecoM
        self.telefoneM = telefoneM
        self.cnpjM = cnpjM
        self.delivery = delivery
        self.horarioM = horarioM

        super.init(nomeF: nomeF, enderecoF: enderecoF, telefoneF: telefoneF, cnpjF: cnpjF, produtoF: produtoF, estoqueF: estoqueF, valorF: valorF)
    } 
}

//Define a Class Produto - Herda de Mercado - Herda de Fornecedor

class Produto: Mercado {
    
    var nomeP: String
    var valorP: Float
    var codigoP: String
    var categoriaP: String
    var validadeP: String
    var emEstoque: Bool
    
    
    init(nomeF: String, enderecoF: String, telefoneF: String, cnpjF: String, produtoF: String, estoqueF: Float, valorF: Float, nomeM: String, enderecoM: String, telefoneM: String, cnpjM: String, delivery: Bool, horarioM: String, nomeP: String, valorP: Float, codigoP: String, categoriaP: String, validadeP: String, emEstoque: Bool){
        self.nomeP = nomeP
        self.valorP = valorP
        self.codigoP = codigoP
        self.categoriaP = categoriaP
        self.validadeP = validadeP
        self.emEstoque = emEstoque
        
        
        super.init(nomeF: nomeF, enderecoF: enderecoF, telefoneF: telefoneF, cnpjF: cnpjF, produtoF: produtoF, estoqueF: estoqueF, valorF: valorF, nomeM: nomeM, enderecoM: enderecoM, telefoneM: telefoneM, cnpjM: cnpjM, delivery: delivery, horarioM: horarioM)
    }

    //Métodos do Produto
    func venderProduto(){
        print("Venda de produto efetuada com sucesso, atualizar estoque")
    }
    func verificarEstoque(){
        print("Produto com baixo estoque ou em falta no Mercado, solicitar ao fornecedor.")
    }
    func solicitarFornecedor(){
        print("Verificar preço do produto no fornecedor e efetuar a compra.")
    }
    func receberProdutoFornecedor(){
        print("Conferir nota fiscal e produto, arrumar estoque e repor na prateleira.")
    }
    func entregarDelivery(){
        print("Produto entregue com sucesso.")
    }
}

let BomLuar = Produto(nomeF: "Fortex", enderecoF: "Rua A", telefoneF: " 7133147788", cnpjF: "854470001-78", produtoF: "Leite Long", estoqueF: 1547, valorF: 3.78, nomeM: "Bom Luar", enderecoM: "Rua da Zebra", telefoneM: "8165447788", cnpjM: "5778510001-35", delivery: true, horarioM: "07:00 às 22:00", nomeP: "Leite Long", valorP: 5.25, codigoP: "100", categoriaP: "Laticinios", validadeP: "01/04/2022", emEstoque: true)