import Foundation

//Atividade 1
let livro1: Livro = Livro(titulo: "O Guida do Mochileiro das Galáxias", autor: "Douglas Adams", anoPublicacao: 1979)
let livro2: Livro = Livro(titulo: "A Volta ao Mundo em 80 Dias", autor: "Júlio Verne", anoPublicacao: 1872)
print(livro1.exibirDetalhes() + "\n")
print(livro2.exibirDetalhes())
print("")

//Atividade 2
print(Calendario.getMensagem(para: .verao))
print("")

//Atividade 3
let pedido: Pedido = Pedido(id: 101, descricao: "Camiseta", status: .recebido)
print(pedido.atualizarStatus(novoStatus: .enviado))
print(pedido.atualizarStatus(novoStatus: .entregue))