import Foundation

protocol Rastreavel {
    func obterLocalizacao() -> String
}

class Veiculo {
    var velocidade: Double

    func acelerar() {
        self.velocidade += 10
    }

    init(velocidade: Double) {
        self.velocidade = velocidade
    }
}

class CarroDeEntrega: Veiculo, Rastreavel {
    var placa: String
    var localizacao: String

    override func acelerar() {
        super.velocidade += 5
    }

    func obterLocalizacao() -> String {
        return "Localização: \(localizacao), Placa: \(placa)"
    }

    init(placa: String, localizacao: String, velocidade: Double) {
        self.placa = placa
        self.localizacao = localizacao
        super.init(velocidade: velocidade)
    }
}