import Foundation

class Cofre {
    private var saldo: Double

    init(depositoInicial: Double) {
        if depositoInicial > 0 {
            self.saldo = depositoInicial
        }else {
            self.saldo = 0.0
            print("[Erro] Depósito de valor negativo")
        }
    }

    public func depositar(quantia: Double) {
        if quantia >= 0 {
            self.saldo += quantia
        }else{print("[Erro] depósito de valor negativo")}
    }

    public func sacar(quantia: Double) {
        if quantia >= 0 {
            if quantia <= self.saldo {
                self.saldo -= quantia
            }else{print("Saldo insuficiente")}
        }else {print("[Erro] Saque de valor negativo")}
    }

    public func getSaldo() -> Double {
        return self.saldo
    }
}