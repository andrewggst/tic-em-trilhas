class Aula {
    let nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return "Aula: \(self.nome)\nInstrutor(a): \(self.instrutor.nome) - \(self.instrutor.especialidade)"
    }
}