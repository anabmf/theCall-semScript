import Foundation

class Opcao {
    let texto: String
    let continuacao: Dialogo
    
    init(texto: String, continuacao: Dialogo) {
        self.texto = texto
        self.continuacao = continuacao
    }
}

class Dialogo {
    let descricao: [String]  // Agora é uma lista de Strings
    var opcoes: [Opcao]?
    
    init(descricao: [String], opcoes: [Opcao]?) {
        self.descricao = descricao
        self.opcoes = opcoes
    }
    
    func efeitoColateral() {
        // Adicione aqui os efeitos colaterais desejados.
    }
    
    func escrever() {
        // Itera sobre a lista de descrições e imprime com um intervalo de tempo
        for texto in descricao {
            usleep(2000000) // Espera de 1 segundo entre as impressões
            let palavras = texto.split(separator: " ")
            for palavra in palavras {
                print(palavra, terminator: " ")
                usleep(100000)
            }
        }
        
        // Verifica se opcoes é nil e retorna caso seja
        guard let opcoes = opcoes else {
            return
        }

        // Espera de 1 segundo antes de imprimir as opções
        usleep(2000000)
        
        // Divisor de texto e opções
        print("\n\n\u{001B}[36m-----------------------------------\n")
        
        // Percorre e escreve a lista de opções
        for (indice, opcao) in opcoes.enumerated() {
            print("\(indice + 1) > \(opcao.texto)")
        }
        
        print("\n-----------------------------------\u{001B}[0m\n")
    }
}



class ElementoPista: Dialogo {
    let pista: Pista
    
    init(descricao: [String], opcoes: [Opcao]?, pista: Pista) {
        self.pista = pista
        
        super.init(descricao: descricao, opcoes: opcoes)
    }
    
    override func efeitoColateral() {
        EstadoJogo.atualizarPista(pista: pista, valor: true)
    }
}
