import Foundation

//Atividade 1
let carroDeEntrega: CarroDeEntrega = CarroDeEntrega(placa: "123", localizacao: "São Paulo", velocidade: 55.5)
print(carroDeEntrega.velocidade)
carroDeEntrega.acelerar()
print("Nova velocidade: \(carroDeEntrega.velocidade)")
print(carroDeEntrega.obterLocalizacao())
print("")

//Atividade 2
print("Livro Físico:")
let livroFisico: LivroFisico = LivroFisico(titulo: "Harry Potter", autor: "J. K. Rowling", preco: 150.0, pesoEmGramas: 500)
print("Livro: \(livroFisico.titulo), Autor: \(livroFisico.autor), Preço: \(livroFisico.preco), Peso em gramas: \(livroFisico.pesoEmGramas)")
print(livroFisico.adicionarAoCarrinho())
print("Valor do frete: \(livroFisico.calcularCustoEnvio())")
print("")

print("Curso Online:")
let cursoOnline: CursoOnline = CursoOnline(nome: "Swift", instrutor: "Thomas", preco: 0.0)
print("Curso: \(cursoOnline.nome), Instrutor: \(cursoOnline.instrutor), Preço: \(cursoOnline.preco)")
print(cursoOnline.adicionarAoCarrinho())