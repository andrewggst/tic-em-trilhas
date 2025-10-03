import Foundation

//Atividade 1
print("Atividade 1")
let resultado = proporcoes([-4, 3, -9, 0, 4, 1])
print("Positivos: ", terminator: "")
print(String(format: "%.6f", resultado[0]))
print("Negativos: ", terminator: "")
print(String(format: "%.6f", resultado[1]))
print("Zeros: ", terminator: "")
print(String(format: "%.6f", resultado[2]))
print("")

//Atividade 2
print("Atividade 2")
let detalhesDoVoo: (String, String, Bool)  = obterDetalhesVoo()
print("O voo \(detalhesDoVoo.0) para \(detalhesDoVoo.1) está com status pontual: \(detalhesDoVoo.2)")
print("")

//Atividade 3
print("Atividade 3")
let relatorioDeHoje: (produtosVendidos : Int, valorTotal : Double, clienteDestaque : String) = calcularVendasDoDia()
print("""
--- Relatório de Vendas [30/08/2025] ---
Produtos Vendidos: \(relatorioDeHoje.produtosVendidos) unidades
Valor Total: R$ \(relatorioDeHoje.valorTotal)
Cliente Destaque do Dia: \(relatorioDeHoje.clienteDestaque)
------------------------------------
""")