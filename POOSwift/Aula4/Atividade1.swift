import Foundation

class Veiculo {
    var marca: String
    var ano: Int

    func apresentar () {
        print("Marca: \(marca)")
        print("Ano: \(ano)")
    }

    init(marca: String, ano: Int){
        self.marca = marca
        self.ano = ano
    }
}

class Carro: Veiculo {
    var numeroDePortas: Int

    init(marca: String, ano: Int, numeroDePortas: Int) {
        self.numeroDePortas = numeroDePortas
        super.init(marca: marca, ano: ano)
    }
}