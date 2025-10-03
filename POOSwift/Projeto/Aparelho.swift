import Foundation

class Aparelho: Manutencao {
    let nomeItem: String
    private (set) var dataUltimaManutencao: String = "Nenhuma"

    init(nomeItem: String) {
        self.nomeItem = nomeItem
    }

    func realizarManutencao() -> Bool {
        print("Manutenção iniciada -> Manutenção em andamento -> Manutenção concluída")
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let dataAtual = formatter.string(from: Date())
        self.dataUltimaManutencao = dataAtual
        return true
    }
}