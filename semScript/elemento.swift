//
//  elemento.swift
//  semScript
//
//  Created by Aluno 02 on 27/02/25.
//

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
    let descricao: String
    let opcoes: [Opcao]?
    
    init(descricao: String, opcoes: [Opcao]?) {
        self.descricao = descricao
        self.opcoes = opcoes
    }
    
    func efeitoColateral() {}
    
    func escrever() {
        print(descricao)
        
        // Verifica se opcoes é nil e retorna caso seja
        guard let opcoes = opcoes else {
            return
        }

        // Divisor de texto e opções
        print("-----------------------------------")
        
        // Percorre e escreve a lista de opções
        for (indice, opcao) in opcoes.enumerated() {
            print("\(indice) > \(opcao.texto)")
        }
    }
}

class ElementoPista: Dialogo {
    let pista: Pista
    
    init(descricao: String, opcoes: [Opcao]?, pista: Pista) {
        self.pista = pista
        
        super.init(descricao: descricao, opcoes: opcoes)
    }
    
    override func efeitoColateral() {
        EstadoJogo.atualizarPista(pista: pista, valor: true)
    }
}
