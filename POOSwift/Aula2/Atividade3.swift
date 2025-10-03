import Foundation

enum StatusPedido {
    case recebido, processando, enviado, entregue
}

class Pedido {
    let id: Int
    let descricao: String
    var status: StatusPedido

    init(id: Int, descricao: String, status: StatusPedido) {
        self.id = id
        self.descricao = descricao
        self.status = status
    }

    func atualizarStatus(novoStatus: StatusPedido) -> String{
        self.status = novoStatus
        return "Status do pedido \(self.id) atualizado para: \(self.status)"
    }
}