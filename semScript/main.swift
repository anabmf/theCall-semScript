import Foundation
// PRISM



print("\u{001B}[35m                _____ _                _           _             _   _  /\\/|         ______")
print("    /\\         |  __ (_)              | |         | |           | \\ | ||/\\/         |  ____|")
print("   /  \\   ___  | |__) | _ __   ___ ___| | __ _  __| | __ _ ___  |  \\| | __ _  ___   | |__   ___  __ _ _   _  ___  ___ ___ _ __ ___")
print("  / /\\ \\ / __| |  ___/ | '_ \\ / __/ _ \\ |/ _` |/ _` |/ _` / __| | . ` |/ _` |/ _ \\  |  __| / __|/ _` | | | |/ _ \\/ __/ _ \\ '_ ` _ \\")
print(" / ____ \\\\__ \\ | |   | | | | | (_|  __/ | (_| | (_| | (_| \\__ \\ | |\\  | (_| | (_) | | |____\\__ \\ (_| | |_| |  __/ (_|  __/ | | | | |")
print("/_/    \\_\\___/ |_|   |_|_| |_|\\___\\___|_|\\__,_|\\__,_|\\__,_|___/ |_| \\_|\\__,_|\\___/  |______|___/\\__, |\\__,_|\\___|\\___\\___|_| |_| |_|")
print("                                                                                                   | |")
print("                                                                                                   |_|\u{001B}[0m\n\n")

// Function to validate input
func inputIntervalo(a: Int, b: Int) -> Int {
    // Recebe um input no intervalo a, b com ambos inclusos
    while true {
        let input: String? = readLine()
        
        guard let inputValido = input, let numero = Int(inputValido), numero >= a, numero <= b else {
            //
            print("\u{001B}[31mEntrada inválida. Insira um número entre \(a) e \(b).\u{001B}[0m")
            continue
        }
        
        // Se a entrada é válida, retorna o número
        return numero
    }
    
    
}

var dialogoAtual: Dialogo? = dialogo1

while(dialogoAtual != nil) {
    dialogoAtual!.efeitoColateral()
    dialogoAtual!.escrever()

    // intervalo fixo para teste
    if dialogoAtual!.opcoes == nil {
        break
    }
    
    let escolha = inputIntervalo(a: 1, b: dialogoAtual!.opcoes!.count)
    dialogoAtual = dialogoAtual!.opcoes![escolha-1].continuacao
}


// 

