class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno]
    var capacidadeMaxima: Int

    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int = 25, alunosInscritos: [String: Aluno] = [:]) {
        self.capacidadeMaxima = capacidadeMaxima
        self.alunosInscritos = alunosInscritos
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if alunosInscritos.count >= capacidadeMaxima {
            print("[Warning] A aula: \(super.nome), não possui mais vagas")
            return false
        }
        if alunosInscritos[aluno.matricula] != nil  {
            print("[Warning] Você já está inscrito na aula: \(super.nome)")
            return false
        }
        alunosInscritos[aluno.matricula] = aluno
        print("Inscrição do aluno(a) \(aluno.nome) na aula: \(super.nome), realizada\n")
        return true
    }

    override func getDescricao() -> String {
        return super.getDescricao() + "\nAlunos inscritos: \(self.alunosInscritos.count)/\(self.capacidadeMaxima)"
    }
}
