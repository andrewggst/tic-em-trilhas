import Foundation
protocol VendaOnline {
    var preco: Double {get set}

    func adicionarAoCarrinho() -> String
}

protocol Enviavel {
    var pesoEmGramas: Int {get set}

    func calcularCustoEnvio() -> Double
}

class LivroFisico: VendaOnline, Enviavel {
    let titulo: String
    let autor: String
    var preco: Double
    var pesoEmGramas: Int

    init(titulo: String, autor: String, preco: Double, pesoEmGramas: Int) {
        self.titulo = titulo
        self.autor = autor
        self.preco = preco
        self.pesoEmGramas = pesoEmGramas
    }

    func adicionarAoCarrinho() -> String {
        return "O livro \(titulo) foi adicionado ao carrinho"
    }

    func calcularCustoEnvio() -> Double {
        return (Double(pesoEmGramas)/100) * 2.5
    }
}

struct CursoOnline: VendaOnline {
    let nome: String
    var instrutor: String
    var preco: Double

    func adicionarAoCarrinho() -> String {
        return "Inscrição para o curso \(nome) realizada com sucesso"
    }
}