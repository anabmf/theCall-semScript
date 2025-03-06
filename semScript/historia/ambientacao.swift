import Foundation

let texto1_1 = "\n\n Jóias cintilando, champanhe nas taças, risadas estridentes. Estamos na Pinacoteca de São Paulo para o leilão de “Passeio ao Crepúsculo”, de Van Gogh, que pertenceu a Benedito Cavalcanti, grande curador de arte. Como detetive, você sempre teve uma paixão por pinturas. Agora, espera para ver quem dará o maior lance.\n"
let texto1_2 = "De repente, o alarme de incêndio! O salão explode em caos, com segurança tentando guiar os convidados para fora. Você permanece calmo, mas se pergunta de onde veio o fogo enquanto deixa o museu com os outros. \nFora do salão, o policial Azevedo e o leiloeiro se aproximam."
let texto1_3 = "\u{001B}[33mPolicial Azevedo:\u{001B}[0mBoa tarde, Detetive Ana Lise. A obra de Van Gogh desapareceu no meio da confusão. Podemos contar com sua ajuda? \nVocê, incomodada pela interrupção, pondera. O sumiço de uma obra tão valiosa te inquieta.\n\n"
let opcao1_1 = "Aceitar ajudar o policial Azevedo."
let opcao1_2 = "Negar a ajuda e seguir seu caminho"


let texto2_1 = "Você decide ajudar o Policial Azevedo com o caso do quadro perdido. O leiloeiro, visivelmente aliviado, parece estar realmente preocupado com sua reputação."
let texto2_2 = "Policial Azevedo: O alarme disparou às 12h37 de hoje. O incêndio foi causado intencionalmente na lixeira do banheiro do Salão de Eventos, onde o leilão acontecia. Os funcionários retiraram os quadros do palco e os levaram para o estoque, uma sala mais segura. Após a confusão, Passeio ao Crepúsculo sumiu. A lata de lixo queimada foi encontrada no banheiro. Nenhuma investigação foi iniciada, mas a família Cavalcanti estava perto do banheiro e do estoque, o que pode indicar algo. Eles estão na casa do falecido Benedito Cavalcanti. Conversar com eles é fundamental."
let texto2_3 = "Policial Azevedo te fornece os acessos necessários e recomenda falar com duLance, o leiloeiro. Você se aproxima de duLance, que te olha com expressão de alívio."
let texto2_4 = "Leiloeiro duLance: Ah, Detetive Ana Lise, uma tragédia! Incêndio e agora uma obra-prima sumida! Agradeço por aceitar o caso, minha reputação está em jogo! Eu estava no palco quando a sirene disparou. O estoque fica à direita do salão. Só eu e alguns funcionários temos acesso."
let texto2_5 = "Você: E por que a família Cavalcanti está leiloando este quadro?"
let texto2_6 = "Leiloeiro duLance: A família tem grande histórico com arte. O quadro era de Benedito Cavalcanti, o famoso curador. A neta dele, Dalila Cavalcanti, trabalha comigo e trouxe a obra para o leilão sem dificuldades. Fique à vontade para investigar."
let texto2_7 = "Você agradece e decide investigar."
let opcao2_1 = "Investigar banheiro"
let opcao2_2 = "Investigar estoque"
let opcao2_3 = "Ir para a casa de Benedito Cavalcanti"


let texto3_1 = "Você encontra um banheiro com marcas de queimado ao redor do lixo praticamente destruído. Você percebe que aquele foi um trabalho meio amador. Também, pelo material utilizado, houve um bom período de tempo entre o início da queima e o início do incêndio."
let texto3_2 = "Você também encontra um isqueiro com o brasão dos Cavalcanti."

let texto4_1 = "Você entra no estoque e percebe a segurança do local. Seria muito improvável alguém sem acesso entrar durante a confusão"
let texto4_2 = "As obras acabaram de ser retiradas para outro local, mas onde estava a obra procurada, você encontra gotas secas de tinta preta."


let texto5_1 = "Você sente que já investigou o suficiente no local e parte para a casa."
let texto5_2 = "Ao chegar, repara que o lugar é bem requintado. Você conhece essa família porque já viu diversas vezes nos jornais. Você sabe que todos aqui são suspeitos e um deles sabe o que aconteceu com a obra."
let opcao5_1 = "Conversa com Cynthia Cavalcanti"
let opcao5_2 = "Conversa com Dalila Cavalcanti"
let opcao5_3 = "Conversa com César Cavalcanti"
let opcao5_4 = "Conversa com Cristiano Cavalcanti"
let opcao5_5 = "Explorar Casa"
let opcao5_6 = "Acusar suspeito Final"


let texto6_1 = "Com uma postura confiante, você, a renomada detetive Ana Lise, aponta o verdadeiro culpado:"
let opcao6_1 = "Cristiano"
let opcao6_2 = "Dálila"
let opcao6_3 = "Cynthia"
let opcao6_4 = "César"
let opcao6_5 = "DuLance"


let texto7_1 = "Você explora a casa e encontra uma carta escondida entre livros antigos. Ela está um pouco amassada, mas ainda legível. O conteúdo diz:"
let texto7_2 = "Já tomei minha decisão. Não vou mais seguir nesse caminho. A obra de Van Gogh, 'Passeio ao Crepúsculo', pode parecer tentadora, mas é uma falsificação. Não importa o quanto ela valha, não posso continuar nesse esquema.\nEstou prestes a ser pai e, quando meu filho nascer, quero que ele tenha uma vida limpa, sem os erros que cometi. Não vou vender a obra, nem me envolver em mais nada disso. Vou deixar esse negócio para trás, por minha família e pelo que é certo.\nNão me procure mais, não voltarei atrás."
let texto7_3 = "– Benedito"
let texto7_4 = "Essa carta deixa claro que a obra em questão, 'Passeio ao Crepúsculo', foi parte do esquema de falsificação, mas o avô decidiu não vendê-la, focando na sua nova vida como pai."


// ARVORE

let dialogo7 = Dialogo(
    descricao: [
        texto7_1,
        texto7_2,
        texto7_3,
        texto7_4
    ],
    opcoes: nil
)

let dialogo6 = Dialogo(
    descricao: [texto6_1],
    opcoes: nil
)

let dialogo5 = Dialogo(
    descricao: [texto5_1, texto5_2],
    opcoes: nil
)

let dialogo4 = Dialogo(
    descricao: [texto4_1, texto4_2],
    opcoes: [
        Opcao(texto: opcao2_3, continuacao: dialogo5),
    ]
)

let dialogo3 = Dialogo(
    descricao: [texto3_1, texto3_2],
    opcoes: [
        Opcao(texto: opcao2_3, continuacao: dialogo5),
    ]
)

let opcao_investigar_estoque = Opcao(texto: opcao2_2, continuacao: dialogo4)
let opcao_investigar_banheiro = Opcao(texto: opcao2_3, continuacao: dialogo3)
//dialogo3.opcoes!.append(opcao_investigar_estoque)
//dialogo4.opcoes!.append(opcao_investigar_banheiro)


let dialogo2 = Dialogo(
    descricao: [texto2_1, texto2_2, texto2_3, texto2_4, texto2_5, texto2_6, texto2_7],
    opcoes: [
        opcao_investigar_banheiro,
        opcao_investigar_estoque,
        Opcao(texto: opcao2_3, continuacao: dialogo5),
    ]
)

let dialogo1 = Dialogo(
    descricao: [texto1_1, texto1_2, texto1_3],
    opcoes: [
        Opcao(texto: opcao1_1, continuacao: dialogo2),
        // TODO ADICIONAR O OUTRO FIM
    ]
)
