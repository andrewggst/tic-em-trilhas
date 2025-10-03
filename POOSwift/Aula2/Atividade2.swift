import Foundation

enum EstadoDoAno {
    case primavera, verao, outono, inverno
}
class Calendario {
    static func getMensagem(para estacao: EstadoDoAno) -> String{
        switch estacao {
            case .primavera:
                return "Primavera"
            case .verao:
                return "Verão"
            case .outono:
                return "Outono"
            case . inverno:
                return "Inverno"
        }
    }
}