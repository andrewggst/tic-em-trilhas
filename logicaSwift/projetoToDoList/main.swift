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
    guard let opcaoOptinal = readLine() else{
        print("\n[ERRO] Entrada inválida")
        print("")
        print("(Finalizando programa...)")
        break
    }
    opcao = opcaoOptinal
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
                print("Digite a tarefa à ser exluída: ", terminator: "")
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
                print("Digite a tarefa à ser editada: ", terminator: "")
                guard let tarefa = readLine() else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                if lista.contains(tarefa) {
                    print("Digite a edição à ser feita: ", terminator: "")
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
                guard let indiceOptinal = readLine(),
                      let indice = Int(indiceOptinal) else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                if indice < 1 || indice - 1 > lista.count {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                print("Digite o número da nova prioridade: ", terminator: "")
                guard let indiceOptinal = readLine(),
                      let indiceNovo = Int(indiceOptinal) else {
                    print("[ERRO] Entrada inválida")
                    continue
                }
                if indiceNovo < 1 || indiceNovo - 1 > lista.count {
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
