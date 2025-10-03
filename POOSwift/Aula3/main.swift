import Foundation

//Atividade 1
print("Criando um cofre válido:")
let meuCofre = Cofre(depositoInicial: 100.0)
print("Saldo inicial: \(meuCofre.getSaldo())") // Esperado: 100.0
print("\nTentando criar um cofre inválido:")
let cofreInvalido = Cofre(depositoInicial: -50.0) // Esperado: Mensagem de aviso
print("Saldo do cofre inválido: \(cofreInvalido.getSaldo())") // Esperado: 0.0
print("\n--- Transações ---")
meuCofre.depositar(quantia: 50.0) // Válido
print("Saldo após depósito: \(meuCofre.getSaldo())") // Esperado: 150.0
meuCofre.depositar(quantia: -20.0) // Inválido
print("Saldo após depósito falho: \(meuCofre.getSaldo())") // Esperado: 150.0
meuCofre.sacar(quantia: 30.0) // Válido
print("Saldo após saque: \(meuCofre.getSaldo())") // Esperado: 120.0
meuCofre.sacar(quantia: 200.0) // Inválido (saldo insuficiente)
print("Saldo após saque falho: \(meuCofre.getSaldo())") // Esperado: 120.0
//meuCofre.saldo = 5000.0
// Esta linha deve causar um ERRO, demonstrando que 'saldo' está seguro:

//Atividade2
let usuario = PerfilUsuario(nomeDeExibicao: "Alex", senha:"senhaSegura123")
print("Usuário \(usuario.nomeDeExibicao) criado com ID: \(usuario.id)")
print("\n--- Autenticação ---")
print("Login com senha correta: \(usuario.autenticar(senha:"senhaSegura123"))")
// Esperado: true
print("Login com senha incorreta: \(usuario.autenticar(senha:"senhaErrada"))")
// Esperado: false
print("\n--- Alteração de Senha ---")
let sucesso = usuario.alterarSenha(novaSenha: "novaSenhaForte456")
print("Alteração de senha bem-sucedida: \(sucesso)")
// Esperado: true
print("Login com senha antiga: \(usuario.autenticar(senha:"senhaSegura123"))")
// Esperado: false
print("Login com nova senha: \(usuario.autenticar(senha:"novaSenhaForte456"))")
// Esperado: true
let falha = usuario.alterarSenha(novaSenha: "fraca")
print("Alteração de senha bem-sucedida: \(falha)")
// Esperado: false & mensagem de erro
print("Login com nova senha (deve ser a antiga ainda): \(usuario.autenticar(senha: "novaSenhaForte456"))")
// Esperado: true