enum TipoPlano {
    case basico
    case intermediario
    case plus
    case premium
}

enum DuracaoPlano {
    case mensal
    case trimestral
    case semestral
    case anual
}

class Plano {
    var tipoPlano: TipoPlano
    var duracaoPlano: DuracaoPlano 
    var promocao: Bool = false
    var valorPromocao: Double
    var valorPlano: Double

    init(tipoPlano: TipoPlano, duracaoPlano: DuracaoPlano, promocao: Bool, valorPromocao: Double, valorPlano: Double) {
        self.tipoPlano = tipoPlano
        self.duracaoPlano = duracaoPlano
        self.promocao = promocao
        self.valorPromocao = valorPromocao
        self.valorPlano = valorPlano
    }

    func calcularMensalidade() -> Double {
        return self.valorPlano
    }
}