import Foundation
// PRISM


// Function to validate input
func inputIntervalo(a: Int, b: Int) -> Int {
    // Recebe um input no intervalo a, b com ambos inclusos
    while true {
        let input: String? = readLine()
        
        guard let inputValido = input, let numero = Int(inputValido), numero >= a, numero <= b else {
            //
            print("Entrada inválida. Insira um número entre \(a) e \(b).")
            continue
        }
        
        // Se a entrada é válida, retorna o número
        return numero
    }
    
    
}

var dialogoAtual: Dialogo? = inicio_historia

while(dialogoAtual != nil) {
    dialogoAtual!.escrever()
    dialogoAtual!.efeitoColateral()

    // intervalo fixo para teste
    if dialogoAtual!.opcoes == nil {
        break
    }
    
    let escolha = inputIntervalo(a: 1, b: 2)
    dialogoAtual = dialogoAtual!.opcoes![escolha-1].continuacao
}

