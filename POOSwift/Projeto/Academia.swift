import Foundation

class Academia {
    private let nome: String
    private var alunosMatriculados: [String: Aluno]
    private var instrutoresContratados: [String: Instrutor]
    private var aparelhos: [Aparelho]
    private var aulasDisponiveis: [Aula]

    init(nome: String, alunosMatriculados: [String: Aluno], instrutoresContratados:[String: Instrutor], aparelhos: [Aparelho], aulasDisponiveis: [Aula]) {
        self.nome = nome
        self.alunosMatriculados = alunosMatriculados
        self.instrutoresContratados = instrutoresContratados
        self.aparelhos = aparelhos
        self.aulasDisponiveis = aulasDisponiveis
    }

    func getTotalAlunos() -> Int {
        return alunosMatriculados.count
    }

    func getTotalInstrutores() -> Int {
        return instrutoresContratados.count
    }

    func getTotalAulas() -> Int {
        return aulasDisponiveis.count
    }

    func adicionarAparelho(_ aparelho: Aparelho) {
        self.aparelhos.append(aparelho)
    }

    func adicionarAula(_ aula: Aula) {
        self.aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(_ instrutor: Instrutor) {
        self.instrutoresContratados["\(instrutor.email)"] = instrutor
    }

    func matricularAluno(_ aluno: Aluno) {
        if alunosMatriculados[aluno.matricula] == nil {
            self.alunosMatriculados[aluno.matricula] = aluno
        } else {
            print("[Warning] Aluno já cadastrado, matrícula: \(aluno.matricula)\n")
        }
    }

    func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        let aluno: Aluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(aluno)
        return aluno
    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        return alunosMatriculados[matricula]
    }

    func listarAlunos() {
        print("\n---------------- Lista de Alunos Matriculados ----------------")
        if alunosMatriculados.isEmpty {
            print("Nenhum aluno matriculado")
        }else {
            for chave in alunosMatriculados.keys.sorted() {
                if let aluno = alunosMatriculados[chave] {
                    print(aluno.getDescricao() + "\n")
                }
            }
            print("---------------------- Fim da listagem ----------------------")
        }
    }

    func listarAulas() {
        print("\n------------------ Lista de Aulas Cadastradas ------------------")
        if aulasDisponiveis.count <= 0 {
            print("Nenhuma aula cadastrada")
        }else {
            for i in 0..<aulasDisponiveis.count {
                print(aulasDisponiveis[i].getDescricao() + "\n")
            }
            print("---------------------- Fim da listagem ----------------------")
        }
    }
}