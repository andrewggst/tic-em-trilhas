import Foundation

struct Livro {
    let titulo: String
    let autor: String
    let anoPublicacao: Int

    func exibirDetalhes() -> String {
        return "Título: \(self.titulo)\nAutor: \(self.autor)\nAno Publicação: \(self.anoPublicacao)"
    }
}