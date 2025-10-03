class PlanoAnual: Plano {
    init() {
        super.init(tipoPlano: .basico, duracaoPlano: .anual, promocao: true, valorPromocao: 20.0, valorPlano: 120.0)
    }

    override func calcularMensalidade() -> Double {
        let custoTotal = 12 * self.valorPlano
        return (custoTotal - (custoTotal * (valorPromocao / 100))) / 12
    }
}