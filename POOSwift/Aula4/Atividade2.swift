class Veiculo2 {
    var marca: String
    var ano: Int

    func apresentar () {
        print("Marca: \(marca)")
        print("Ano: \(ano)")
    }
    func detalhes() {
        print("Este é um veículo")
    }

    init(marca: String, ano: Int){
        self.marca = marca
        self.ano = ano
    }
}

class Carro2: Veiculo2 {
    var numeroDePortas: Int

    override func detalhes() {
        print("Este é um carro de \(numeroDePortas) portas")
    }

    init(marca: String, ano: Int, numeroDePortas: Int) {
        self.numeroDePortas = numeroDePortas
        super.init(marca: marca, ano: ano)
    }
}

class Moto2: Veiculo2 {
    var cilindrada: Int

    override func detalhes() {
        print("Esta é uma moto de \(cilindrada)")
    }

    init(marca: String, ano: Int, cilindrada: Int) {
        self.cilindrada = cilindrada
        super.init(marca: marca, ano: ano)
    }
}