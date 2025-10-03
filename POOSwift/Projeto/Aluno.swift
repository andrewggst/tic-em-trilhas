import Foundation

enum NivelAluno {
    case iniciante
    case intermediario
    case avancado
}

class Aluno: Pessoa {
    let matricula: String
    var nivel: NivelAluno = .iniciante
    private(set) var plano: Plano

    init(nome: String, email: String, matricula: String, plano: Plano) {
        self.matricula = matricula
        self.plano = plano
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return "Aluno(a): \(super.nome)\nMatrícula: \(self.matricula)\nPlano: \(plano.tipoPlano) - \(plano.duracaoPlano)\nMensalidade: R$\(plano.calcularMensalidade())"
    }
}
