//Atividade 1
print("Atividade 1")
let meuCarro: Carro = Carro(marca: "Toyota", ano: 2020, numeroDePortas: 4)
meuCarro.apresentar()
print("")

//Atividade 2
print("Atividade 2")
let array: [Veiculo2] = [Carro2(marca: "Toyota", ano: 2020, numeroDePortas: 4), Moto2(marca: "Honda", ano: 2020, cilindrada: 800)]
for i in 0..<array.count {
    array[i].detalhes()
}
print("")

//Atividade 3
print("Atividade 3")
let array3: [Veiculo3] = [Carro3(marca: "Fiat", ano: 2021, numeroDePortas: 2), Moto3(marca: "Yamaha", ano: 2021, cilindrada: 1000)]
for i in 0..<array.count {
    array3[i].detalhes()
}
print("")