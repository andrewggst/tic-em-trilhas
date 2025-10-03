import Foundation

class PerfilUsuario {
    public let id: UUID
    public let dataDeCadastro: Date
    public var nomeDeExibicao: String
    private var hashDaSenha: String

    init(nomeDeExibicao: String, senha: String) {
        self.id = UUID()
        self.dataDeCadastro = Date()
        self.nomeDeExibicao = nomeDeExibicao
        self.hashDaSenha = senha + "_hashed"
    }

    public func alterarSenha(novaSenha: String) -> Bool{
        if novaSenha.count >= 8 {
            self.hashDaSenha = novaSenha + "_hashed"
            return true
        }else {
            print("Senha precisa ter no mínimo 8 caracteres")
            return false
        }
    }

    public func autenticar(senha: String) -> Bool{
        let hashDeEntrada: String = senha + "_hashed"
        if hashDeEntrada == self.hashDaSenha {
            return true
        }else {return false}
    }
}