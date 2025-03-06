
import Foundation

let narrador_1 = "\n\n Jóias cintilando. Champanhe nas taças. Risadas estridentes. Estamos na Pinacoteca de São Paulo, para o leilão de uma obra cobiçada, que antes pertencia à coleção particular de Benedito Cavalcanti, um grande curador de arte.\n\n"
let policial_1 = "\u{001B}[33mPolicial:\u{001B}[0m Olá Detetive Ana Lise. Eu sou o Policial Azevedo. Vejo que veio prestigiar a venda dessas obras raras que infelizmente teve que ser adiada. Bom, já que é um entusiasta da arte, gostaria de pedir sua ajuda. A obra de Van Gogh que estava sendo leiloada pela família Cavalcanti, em meio a toda confusão, desapareceu. Você poderia nos ajudar com este caso?\n\n"
let narrador_2 = "Você pensa que poderia ter um final de semana tranquilo, mas o sumiço de uma obra tão valiosa, te causa inquietação.\n\n"
let narrador_3 = "Ajudar o policial Azevedo? Digite o número da opção desejada."

let texto_2 = "Você decidiu não ajudar o Policial Azevedo, afinal está no seu período de folga./nVocê percebe desapontamento nas expressões dele.\n\nPolicial: Compreendo, Detetive [nome], todos precisamos descansar. Tenha um bom dia.\n\nVocê se despede formalmente e se retira do local pensando o que fará de almoço, já que não haverá mais a refeição fornecida do local do leilão."



let opcoes1: [Opcao] = [
    Opcao(texto: "Sim", continuacao: Dialogo(descricao: ["Beleza, valeu!"], opcoes: nil)),
    Opcao(texto: "Nao", continuacao: Dialogo(descricao: [texto_2], opcoes: nil)),
]

let inicio_historia = Dialogo(descricao: [narrador_1,policial_1, narrador_2, narrador_3], opcoes: opcoes1)
