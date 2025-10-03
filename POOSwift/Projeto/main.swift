import Foundation

//1.
let academiaPOO360 = Academia(nome: "MackenzieFit", alunosMatriculados: [:], instrutoresContratados: [:], aparelhos: [], aulasDisponiveis: [])

//2.
let planoMensal = PlanoMensal()
let planoAnual = PlanoAnual()

//3.
let instrutor1 = Instrutor(nome: "Carlos Silva", email: "carlosSilva@gmail.com", especialidade: .musculacao)
let instrutor2 = Instrutor(nome: "Maria Santos", email: "mariaSantos@gmail.com", especialidade: .nutricao)

academiaPOO360.contratarInstrutor(instrutor1)
academiaPOO360.contratarInstrutor(instrutor2)

//4.
let aluno1 = academiaPOO360.matricularAluno(nome: "João Gomes", email: "joaoGomes@gmail.com", matricula: "123", plano: planoMensal)
let aluno2 = academiaPOO360.matricularAluno(nome: "Ana Pereira", email: "anaPereira@gmail.com", matricula: "456", plano: planoAnual)

//5.
let aulaPersonal = AulaPersonal(nome: "Musculação", instrutor: instrutor1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Nutrição", instrutor: instrutor2, capacidadeMaxima: 3)

academiaPOO360.adicionarAula(aulaPersonal)
academiaPOO360.adicionarAula(aulaColetiva)

//6.
let inscricaoAluno1 = aulaColetiva.inscrever(aluno: aluno1)
let inscricaoAluno2 = aulaColetiva.inscrever(aluno: aluno2)

let aluno3 = academiaPOO360.matricularAluno(nome: "Pedro Alves", email: "pedroAlves@gmail.com", matricula: "789", plano: planoMensal)
let inscricaoAluno3 = aulaColetiva.inscrever(aluno: aluno3)

let aluno4 = academiaPOO360.matricularAluno(nome: "Lucas Lima", email: "lucasLima@gmail.com", matricula: "101", plano: planoAnual)
let inscricaoAluno4 = aulaColetiva.inscrever(aluno: aluno4)

academiaPOO360.listarAulas()
academiaPOO360.listarAlunos()

//7.
let aulas: [Aula] = [aulaPersonal, aulaColetiva]
for i in 0..<aulas.count {
    print(aulas[i].getDescricao() + "\n")
}

//8.
let pessoas: [Pessoa] = [instrutor1, aluno1]
for i in 0..<pessoas.count {
    print(pessoas[i].getDescricao() + "\n")
}

//9.
extension Academia {
    func gerarRelatorio(academia: Academia) -> (totalAlunos: Int, totalInstrutores: Int, totalaulas: Int) {
        return (academia.getTotalAlunos(), academia.getTotalInstrutores(), academia.getTotalAulas())
    }
}

let relatorio = academiaPOO360.gerarRelatorio(academia: academiaPOO360)
print("""
-------------------- Relátorio da Academia --------------------
Total de Alunos Matriculados: \(relatorio.totalAlunos)
Total de Instrutores Contratados: \(relatorio.totalInstrutores)
Total de Aulas Disponíveis: \(relatorio.totalaulas)

---------------------- Fim da listagem ------------------------
""")