class PlanoMensal: Plano {
    init() {
        super.init(tipoPlano: .basico, duracaoPlano: .mensal, promocao: false, valorPromocao: 0.0, valorPlano: 120.0)
    }

    override func calcularMensalidade() -> Double{
        return self.valorPlano
    }
}