import Foundation

enum Especialidade {
    case musculacao
    case nutricao
    case hipertrofia
    case condicionamento
}

class Instrutor: Pessoa {
    var especialidade: Especialidade

    init(nome: String, email: String, especialidade: Especialidade) {
        self.especialidade = especialidade
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return "Instrutor(a): \(super.nome)\nEmail: \(super.email)\nEspecialidade: \(self.especialidade)"
    }
}