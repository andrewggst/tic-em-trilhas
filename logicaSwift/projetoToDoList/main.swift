// As funções auxiliares (listar, adicionar, remover, etc.) estão em functions.swift

var lista: [String] = []
var opcao: String = "1"
repeat {
    print("""
        LISTA DE TAREFAS 
    
    1 - Listar
    2 - Adicionar
    3 - Remover
    4 - Editar
    5 - Prioridade
    0 - Encerrar
    """
    )
    print("Opção: ", terminator: "")
    guard let opcaoStr = readLine() else{
        print("\n[ERRO] Entrada inválida")
        print("")
        print("(Finalizando programa...)")
        break
    }
    opcao = opcaoStr
    switch opcao {
        case "0":
            print("(Finalizando programa...)")
            break
        case "1": 
            if lista.count == 0 {
                print("[ERRO] Lista vazia")
            }else {
                listar(lista: lista)
            }
            print("")
            break
        case "2":
            print("Digite a tarefa que você quer adicionar: ", terminator: "")
            guard let tarefa = readLine() else {
                print("[ERRO] Entrada inválida")
                continue
            }
            lista = adicionar(lista: lista, tarefa: tarefa) 
            print("(Tarefa '\(tarefa)' adicionada)")
            print("")
            break
        case "3":
            if lista.count == 0 {
                print("[ERRO] Lista vazia")
            }else {
                print("Digite a tarefa a ser excluída: ", terminator: "")
                guard let tarefa = readLine() else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                if lista.contains(tarefa) {
                    lista = remover(lista: lista, tarefa: tarefa) 
                    print("(Tarefa '\(tarefa)' removida)")
                }else {print("(Tarefa não encontrada)")}
            }
            print("")
            break
        case "4":
            if lista.count != 0 {
                print("Digite a tarefa a ser editada: ", terminator: "")
                guard let tarefa = readLine() else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                if lista.contains(tarefa) {
                    print("Digite a edição a ser feita: ", terminator: "")
                    guard let tarefaEditada = readLine() else {
                        print("[ERRO] Entrada inválida")
                        continue
                    }
                    lista = editar(lista: lista, tarefa: tarefa, tarefaEditada: tarefaEditada)
                    print("(Tarefa '\(tarefa)' editada para: \(tarefaEditada))")
                }else {print("(Tarefa não encontrada)")}
            }else {print("[ERRO] Lista vazia")}
            print("")
            break
        case "5":
            if lista.count != 0 {
                print("Digite o número da prioridade: ", terminator: "")
                guard let indiceStr = readLine(),
                      let indice = Int(indiceStr) else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                print("Digite o número da nova prioridade: ", terminator: "")
                guard let indiceStr = readLine(),
                      let indiceNovo = Int(indiceStr) else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                if (indiceNovo < 1 || indiceNovo > lista.count) ||
                   (indice < 1 || indice > lista.count) {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                lista = prioridade(lista: lista, indice: indice - 1, indiceNovo: indiceNovo - 1)
                print("(Tarefa '\(lista[indiceNovo - 1])' movida para a prioridade: \(indiceNovo))")
                print("")
            }else {
                print("[ERRO] Lista vazia")
                print("")
            }
            break
        default:
            print("[ERRO] Opção Inválida")
            print("")
    }
} while opcao != "0"
