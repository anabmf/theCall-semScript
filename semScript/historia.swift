import Foundation

let texto_1 = "Policial: Detetive [nome]. Eu sou o Policial Azevedo. Vejo que veio prestigiar a venda dessas obras raras que infelizmente teve que ser adiada. Bom, já que é um entusiasta da arte, gostaria de pedir sua ajuda. A obra de Van Gogh que estava sendo leiloada pela família Cavalcanti, em meio a toda confusão, desapareceu. Você poderia nos ajudar com este caso?\n\nVocê pensa que poderia ter um final de semana tranquilo, mas o sumiço de uma obra tão valiosa, te causa inquietação.\nAjudar o policial Azevedo? Digite o número da opção desejada."

let texto_2 = "Você decidiu não ajudar o Policial Azevedo, afinal está no seu período de folga./nVocê percebe desapontamento nas expressões dele.\n\nPolicial: Compreendo, Detetive [nome], todos precisamos descansar. Tenha um bom dia.\n\nVocê se despede formalmente e se retira do local pensando o que fará de almoço, já que não haverá mais a refeição fornecida do local do leilão."



let opcoes1: [Opcao] = [
    Opcao(texto: "Sim", continuacao: Dialogo(descricao: "Beleza, valeu!", opcoes: nil)),
    Opcao(texto: "Nao", continuacao: Dialogo(descricao: texto_2, opcoes: nil)),
]

let inicio_historia = Dialogo(descricao: texto_1, opcoes: opcoes1)
