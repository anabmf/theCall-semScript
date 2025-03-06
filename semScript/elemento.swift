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
    var descricao: [String]  // Agora é uma lista de Strings
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
                fflush(stdout)
                usleep(50000)
            }
            print("\n")
            fflush(stdout)
        }
        
        // Verifica se opcoes é nil e retorna caso seja
        guard let opcoes = opcoes else {
            return
        }

        // Espera de 1 segundo antes de imprimir as opções
        usleep(1500000)
        
        // Divisor de texto e opções
        print("\n\u{001B}[36m----------------------------------------------------------------------\n")
        
        // Percorre e escreve a lista de opções
        for (indice, opcao) in opcoes.enumerated() {
            print("\u{001B}[1m\(indice + 1)\u{001B}[0m\u{001B}[36m > \(opcao.texto)")
        }
        
        print("\n----------------------------------------------------------------------\u{001B}[0m\n")
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

class EfeitoCustomizado: Dialogo {
    let efeito: (EfeitoCustomizado) -> Void
    
    init(descricao: [String], opcoes: [Opcao]?, efeito: @escaping (EfeitoCustomizado) -> Void) {
        self.efeito = efeito
        
        super.init(descricao: descricao, opcoes: opcoes)
    }
    
    override func efeitoColateral() {
        efeito(self)
    }
}
