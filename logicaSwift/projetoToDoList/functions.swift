func listar (lista: [String]){
    print("")
    print("Suas tarefas:")
    for i in 0..<lista.count {
        print("\(i+1) - \(lista[i])")
    }
}

func adicionar (lista: [String], tarefa: String) -> [String] {
    var listaCopia = lista
    listaCopia.append(tarefa)
    return listaCopia
}

func remover(lista: [String], tarefa: String) -> [String] {
    var listaCopia = lista
    if let indice = listaCopia.firstIndex(of: tarefa) {
        listaCopia.remove(at: indice)
    }
    return listaCopia
}

func editar(lista: [String], tarefa: String, tarefaEditada: String) -> [String] {
    var listaCopia = lista
    if let indice = listaCopia.firstIndex(of: tarefa) {
        listaCopia[indice] = tarefaEditada
    }
    return listaCopia
}

func prioridade(lista: [String], indice: Int, indiceNovo: Int) -> [String] {
    var listaCopia = lista
    listaCopia.insert(listaCopia[indice], at: indiceNovo)
    if indiceNovo < indice {
        listaCopia.remove(at: indice + 1)
    }else {
        listaCopia.remove(at: indice)
    }
    return listaCopia
}
