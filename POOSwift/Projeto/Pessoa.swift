class Pessoa {
    let nome: String
    let email: String

    func getDescricao() -> String {
        return "\(nome)\nEmail: \(email)"
    }

    init(nome: String, email: String) {
        self.nome = nome
        self.email = email
    }
}