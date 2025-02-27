class EstadoJogo {
    // Instância única do Singleton, criada apenas quando necessário.
    static let atual = EstadoJogo()
    
    // Dicionário que descreve se cada pista foi encontrada ou não
    var pistasEncontradas: [Pista: Bool]
    
    // Inicializador privado para evitar a criação de outras instâncias
    private init() {
        self.pistasEncontradas = [:]
        for pista in Pista.allCases {
            self.pistasEncontradas[pista] = false
        }
    }
    
    // Método estático para atualizar o estado de uma pista,
    // de forma que EstadoJogo.atualizarPista atualize a única instância de EstadoJogo
    static func atualizarPista(pista: Pista, valor: Bool) {
        EstadoJogo.atual.pistasEncontradas[pista] = valor
    }
}
