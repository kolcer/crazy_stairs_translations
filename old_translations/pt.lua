local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "SIM",
	["no"] = "NÃO",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "PADRÃO",
	["validate"] = "VALIDAR",
	["play"] = "JOGAR",
	["skip"] = "PULAR\nTUTORIAL",
	["loading"] = "CARREGANDO, POR FAVOR AGUARDE...",
	["mode"] = "%s\nMODE",
	["cd"] = "COOLDOWN\nFINAL",
}

module.gui.switcher = {

	["title"] = "MUDAR SERVIDOR",

	["public"] = "SERVIDOR PÚBLICO",
	["private"] = "SERVIDOR PRIVADO",
	["join"] = "ENTRAR",
	["friends"] = "AMIGOS ONLINE",
	["refresh"] = "atualizando...",
	["fail"] = "FALHA NA ATUALIZAÇÃO!",

}

module.gui.serversettings = {

	["title"] = "CONFIGURAÇÕES DO DONO",

	["Moderation"] = "MODERAÇÃO",
	["rules"] = "Seu servidor, suas regras",
	["temp"] = "Todas as pessoas silenciadas e banimentos são temporários",
	["kick"] = "EXPULSAR",
	["ban"] = "BANIR",
	["mute"] = "SILENCIAR",

	["Drones"] = "CONFIGURAÇÕES DO DRONE",
	["DronesReadOnly"] = "DRONE SETTINGS (read only)",
	["DroneEnabled"] = "Drones habilitados",
	["DroneFix"] = "Drones restauram escadas",
	["DroneRemove"] = "Drones removem interseções amaldiçoadas",
	["DroneUnCurse"] = "Drones restauram escadas amaldiçoadas",
	["DroneMove"] = "Drones movem escadas no modo padrão",
	["DroneSpin"] = "Drones rodam escadas no modo padrão",
	["DroneSpeed"] = "Velocidade do Drone(nível/segundo)",
	["DroneDelay"] = "Duração de rotação do Drone(segundos)",
	["DroneMax"] = "Quantidade máxima de escadas (drones destruirão exclusivamente acima deste limite)",
	["DroneMin"] = "Quantidade mínima de escadas (drones criarão exclusivamente abaixo deste limite)",
	["DroneBlock"] = "Chance de uma interseção amaldiçoada para cada encontro com uma interseção vazia (porcentagem)",
	["DroneCurse"] = "Chance de criação de uma escada amaldiçoada para cada encontro com uma escada normal (porcentagem)",

	["Tower"] = "CONFIGURAÇÕES DA TORRE",
	["TowerReadOnly"] = "TOWER SETTINGS (read only)",
	["InfMode"] = "Modo Infinito (não pode ser mudada durante uma corrida ou uma regeneração)",
	["CasualPlayers"] = "Jogadores casuais podem lançar feitiços",
	["Regeneration"] = "Regeneração automática da escadaria depois do expurgo do Wicked (não irá funcionar no modo infinito)",
	["EvenLevels"] = "Níveis Par Restritos",
	["OrbMoves"] = "Esfera no final do jogo muda de lugar",
	["InfRegeneration"] = "Regeneração automática quando em um servidor novo, níveis da torre mudam e depois da corrida infinita",
	["TowerLevels"] = "Níveis da torre (ou níveis ativos no modo infinito) não podem ser mudados durante uma corrida ou uma regeneração",
	["RaceDuration"] = "Duração Máxima De Uma Corrida. Não irá afetar a corrida atual. (segundos)",
	["InfStart"] = "Intervalo inicial da rodada do modo Infinito (2 níveis serão criados a cada round) (segundos)",
	["InfReduction"] = "Redução do intervalo do modo infinito (cada rodada é mais curta por) (segundos)",
	["InfMin"] = "Duração do intervalo mínimo do modo infinito (segundos)",
	["Cooldown"] = "Período de um cooldown de um evento ou equipamento (segundos)",


}

module.gui.shop = {

	["title"] = "LOJA DAS ESCADAS MALUCAS",

	["chameleon"] = "Chameleons podem mudar seu alinhamento durante uma subida.",
	["spectre"] = "Spectre é um alinhamento baseado em teletransporte, melhor para se jogar sozinho.",
	["mana"] = "Expanda sua capacidade de Mana em 10 pontos.",

	["3tokens"] = "Desbloqueie um feitiço ou lance 3 feitiços especiais",
	["30tokens"] = "Desbloqueie dez feitiços ou lance 30 feitiços especiais",
	["300tokens"] = "O suficiente para desbloquear todos os feitiços com 153 tokens de sobra.",

	--below messages apper on mouse hover
	["3TOKENS"] = "3 Multi Tokens (R$%d)",
	["30TOKENS"] = "30 Multi Tokens (R$%d)",
	["300TOKENS"] = "300 Multi Tokens (R$%d)",
	["SPECTRE PASS"] = "Passe de jogo do Spectre. (R$%d)",
	["MANA PASS"] = "Passe de jogo para capacidade de 20 de Mana. (R$%d)",
	["CHAMELEON PASS"] = "Passe de jogo do Chameleon. (R$%d)",

}

module.gui.spellbar = {

	["share"] = "COMPARTILHAR\nMANA",
	["nocasual"] = "APENAS PESSOAS QUE ESTÃO NA CORRIDA PODEM LANÇAR FEITIÇOS",

} 

module.gui.stats = {

	["total"] = "Escaladas totais: %d / Vitórias: %d",
	["class"] = "Escaladas como %s: %d",
	["best"] = "Melhor tempo como %s: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "POSSUÍDO! (ache Mana para se libertar)",
	["released"] = "LIBERADO",
	["timesup"] = "acabou o tempo...",

}


module.gui.activatecham = {

	["title"] = "ATIVAR CHAMELEON",
	["body"] = "Você quer ativar o modo Chameleon?\nVai ficar ativo pelo resto da escalada."

}

module.gui.caceltimed = {

	["title"] = "CANCELAR FEITIÇO TEMPORÁRIO",
	["body"] = "Você quer cancelar esse feitiço temporário? Tokens não serão reembolsados."

}

module.gui.climbtimer = {

	["prompt"] = "Escale as\nescadas!",
	["floor"] = "Andar",
	["last"] = "Última vez",

}

module.gui.codes = {

	["title"] = "INSIRA O CÓDIGO",
	["body"] = "Coloque seu código aqui:",
	["prompt"] = "(código)",
	["button"] = "VALIDAR",

}

module.gui.gauges = {

	["prompt"] = "Pule para prosseguir, clique de novo para cancelar.",

	["found"] = "%d escadas encontradas (%.1f%% fill)",
	["special"] = "%d são especiais (%.1f%%)",
	["affected"] = "%d escadas vão ser afetadas (%.1f%%)",
	["cursed"] = "%d interseções amaldiçoadas encontradas (%.1f%%)",
	["fill"] = "%d escadas vão ser criadas (%.1f%%)",
	["purge"] = "%d objetos vão ser destruídos (%.1f%%)",
	["normal"] = "%d já estão normais (%.1f%%)",
	["restore"] = "%d escadas vão ser restauradas (%.1f%%)",
	["bypass1"] = "%d maldições estão a caminho (%.1f%%)",
	["bypass2"] = "%d desvios já existem (%.1f%%)",
	["bypass3"] = "%d desvios vão ser criados (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "CAIXA DE MÚSICA",

	["master"] = "VOLUME MESTRE",
	["default"] = "(usando volume mestre)",
	["climb"] = "MÚSICA DA ESCALADA",
	["endgame"] = "MÚSICA DE FIM DE JOGO",
	["failed"] = "[erro ao carregar]",

}

module.gui.results = {

	["title"] = "RESULTADOS DA CORRIDA",

	["place"] = "LUGAR",
	["name"] = "NOME",
	["level"] = "NÍVEL MÁXIMO",
	["time"] = "TEMPO",
	["rank"] = "RANK",
	["not"] = "N/A",
	[1] = "GANHADOR",
	[2] = "2º",
	[3] = "3º",
	[4] = "4º",
	[5] = "5º",
	[6] = "6º",
	[7] = "7º",
	[8] = "8º",
	[9] = "9º",
	[10] = "10º",
	[11] = "11º",
	[12] = "12º",

}

module.gui.racetimer = {

	["gather"] = "Você não\nestá na corrida.",
	["race"] = "FIM DA\nCORRIDA!",
	["inf"] = "Eliminado!",
	["off"] = "CRONÔMETRO\nDA CORRIDA.",
	["wait"] = "Corrida em",
	["on"] = "Rank",

}

module.gui.ranks = {

	["title"] = "SEU RANK",

	--none
	["none_1"] = "Você não escolheu um alinhamento!",
	["none_2"] = "Você não terá acesso a nenhum feitiço!",
	["none_3"] = "Pule no morph (no meio no mapa) - para mudar seu alinhamento.",

	--shared
	["higher"] = "RANK MAIS ALTO ADQUIRIDO",
	["current"] = "SEU RANK ATUAL",
	["lower"] = "RANK NÃO ADQUIRIDO",

	["more"] = "Você precisa de %d mais escaladas como %s para obter esse rank.",
	["done"] = "Você já tem um rank alto. Todos os efeitos do rank inferior somam-se ao rank atual.",
	["max"] = "Esse é o rank mais alto. Você escalou %d vezes como %s.",



	["PATRON"] = {
		"Esse é o seu rank inicial PATRON.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo PATRON.",
		"Se alguém usar o feitiço INVOCADOR, sua Mana será recarregada.",
		"Suas ligações vão durar o dobro (120s).",
		"Seus portais vão durar o dobro (120s).",
		"O custo do feitiço Chamar Esfera será reduzido para 2 de Mana.",
		"Seu feitiço INVOCADOR vai durar 50% mais (90s).",
		"Se você não tem Mana, pule em uma plataforma para ser abençoado com 1 de Mana.",
		"Chamar Esfera vai aumentar de velocidade em dobro",
	}, 
	["JOKER"] = { 
		"Esse é o seu rank inicial JOKER.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo JOKER.",
		"Se alguém usar o feitiço VIRA-VIRA, sua Mana será recarregada.",
		"Escadas discoteca não tem efeito em você.",
		"Você agora pode ver escadas invisíveis. Você tem a opção de não revelar elas.",
		"Você agora pode detectar armadilhas em plataformas e escadas falsas.",
		"Seu feitiço VIRA-VIRA vai durar 50% mais (90s).",
		"Você agora pode andar em escadas falsas.", 
		"Você vai pegar Mana bônus sempre que alguém acionar alguma pegadinha. (apenas uma pegadinha por jogador)",
	},
	["WICKED"] = {
		"Esse é o seu rank inicial WICKED.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo WICKED.",
		"Se alguém usar o feitiço DOBRADURA, sua Mana será recarregada.",
		"Você agora pode andar em escadas quebradas, como escadas normais.",
		"O feitiço DESTRUIR ESCADA é de graça agora.",
		"Você irá ganhar Mana toda vez que você destruir alguma escada especial.",
		"Seu feitiço DOBRADURA vai durar 50% mais (90s).",
		"Você tem a opção de evitar acionar Rigs de Destruição.",
		"Você agora pode destruir escadas amaldiçoadas.",
	},
	["SPECTRE"] = { 
		"Esse é o seu rank inicial SPECTRE.",
		"Você irá receber Mana bônus, sempre que os drones estiverem do modo SPECTRE.",
		"Se alguém usar o feitiço CINTILANTE, sua Mana será recarregada.",
		"Você irá coletar 1 de Mana extra quando você pegar cristais com o seu fantasma.", 
		"Seu feitiço DES-FANTASMAR é de graça agora.",
		"Você agora pode terminar uma escalada quando você encosta na esfera no fim do jogo com seu fantasma.",
		"Seu feitiço CINTILANTE vai durar 50% mais (90s).",
		"Você tem a opção de evitar acionar Rigs de Eclipse.", 
		"Você agora pode andar em escadas fantasma.",
	},
	["CHAMELEON"] = { 
		"Esse é o seu rank inicial CHAMELEON. Os bônus reais de rank de alinhamento ainda se aplicam.",
		"EXCEÇÃO! Você só vai GANHAR Mana bônus, quando os drones estiverem no modo CHAMELEON",
		"Mudar o seu alinhamento agora é muito mais rápido",
		"Suas mãos agora irão brilhar roxo, disfarçando seus motivos.",
		"Os feitiços ESCADA FALSA e SUMONAR ESCADA agora tem um efeito roxo.",
		"Você agora pode lançar os feitiços MOVER ESCADAS PARA BAIXO, PONTE LEVADIÇA e ESCADAS CRUZADAS, anteriormente feitiços rejeitados.",
		"Você agora pode lançar os feitiços DEFORMAR ESCADAS e PONTE LEVADIÇA ACIMA, anteriormente feitiços rejeitados.",
		"A mudança de alinhamento é completamente perfeita agora.",
		"Você agora pode lançar o feitiço Rig de Mistério (precisará de multi tokens)",
	},
	["MUGGLE"] = { 
		"Esse é o seu rank inicial MUGGLE.",
		"O cooldown de seu pulo será reduzido em 0.125s.",
		"O cooldown de seu pulo será reduzido em 0.25s.",
		"O cooldown de seu pulo será reduzido em 0.375s.",
		"O cooldown de seu pulo será reduzido em 0.5s.",
		"Sua velocidade será aumentada em 10%.",
		"Sua velocidade será aumentada em 20%.",
		"Sua velocidade será aumentada em 30%.",
		"Seu poder de pulo será aumentado em 20%.",
	},
	["KEEPER"] = {
		"Esse é o seu rank inicial KEEPER.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo KEEPER.",
		"Se alguém usar o feitiço ASCENSÃO, sua Mana será recarregada.",
		"O feitiço MOVER ALEATORIAMENTE e Rigs de Movimento que você acionar, nunca fará as escadas irem para baixo.",
		"Você agora pode mover escadas viradas.",
		"Seu feitiço de restauração agora é de graça.", 
		"Seu feitiço ASCENSÃO vai durar 50% mais (90s).",
		"Você tem a opção de evitar acionar Rigs de Movimento.",
		"Você agora pode restaurar escadas amaldiçoadas ou interseções amaldiçoadas.",
	},
	["HACKER"] = { 
		"Esse é o seu rank inicial HACKER.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo HACKER.",
		"Se alguém usar o feitiço HACK DE VELOCIDADE, sua Mana será recarregada.",
		"Escada rolante descendente não irá funcionar quando você estiver nela.",
		"Seu feitiço horizontal DASH agora é 50% mais rápido.",
		"Seu feitiço PISCR de atravessar as escadas de cima agora é 50% mais rápido.",
		"Se você não tem Mana, pule em uma plataforma para se hackear 1 de Mana.", 
		"Você tem a opção de evitar acionar Rigs de Glitch.",
		"Se tem pelo menos uma interseção livre, lançar o feitiço de glitch no andar de cima  vai fazer as escadas rematerializarem perto da esfera.", 
	},
	["THIEF"] = {
		"Esse é o seu rank inicial THIEF.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo THIEF.",
		"Se alguém usar o feitiço ROUBO, sua Mana será recarregada.",
		"Seu feitiço PASSE DE CIMA agora vai durar o dobro (120s).",
		"Seu feitiço PASSE DE CIMA agora vai durar o dobro (120s).",
		"Você agora pode roubar todo o tipo de escadas, exceto as amaldiçoadas.",
		"Seu feitiço ROUBO vai durar 50% mais (90s).",
		"Se você não tem Mana, pule em uma plataforma para pegar 1 de Mana do seu esconderijo", 
		"Você agora pode manter 2 escadas ao mesmo tempo no seu inventário.",
	},
	["ARCHON"] = {
		"Esse é o seu rank inicial ARCHON.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo ARCHON.",
		"Se alguém usar o feitiço DIVISOR, sua Mana será recarregada.",
		"Você agora pode lançar o feitiço DESTRUIR DIVISÃO em plataformas.",
		"Seu feitiço DESTRUIR DIVISÃO agora é de graça.",
		"Divisões nunca irão te teleportar para baixo.",
		"Seu feitiço DIVISOR vai durar 50% mais (90s).",
		"Você agora pode lançar o feitiço de divisão em escadas divididas.",
		"Você tem a opção de evitar o teletransporte em todas as divisões, exceto para cima.",
	},
	["DRIFTER"] = {
		"Esse é o seu rank inicial DRIFTER.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo DRIFTER.",
		"Se alguém usar o feitiço ELEVADOR, sua Mana será recarregada.",
		"Seus drifts de plataforma vertical agora vão aparecer e se mover 50% mais rápido.",
		"Você agora pode girar escadas em drift.",
		"Você agora pode impulsionar os drifts do DRIFTS DE CIMA com os feitiços ELEVADOR e DRIFT ACIMA.",
		"Seu feitiço ELEVADOR vai durar 50% mais (90s)",
		"Você tem a opção de evitar acionar Rigs de Drift.",
		"Você agora pode impulsionar duplamente os drifts do DRIFTS DE CIMA com os feitiços ELEVADOR e DRIFT ACIMA.",
	},
	["HERETIC"] = {
		"Esse é o seu rank inicial HERETIC.",
		"Você irá receber Mana bônus, sempre que os drones estiverem no modo HERETIC.",
		"Se alguém usar o feitiço MALDIÇÃO, sua Mana será recarregada.",
		"Se você não tem Mana, pule em uma escada amaldiçoada para des-amaldicoar ela e ganhar 1 de Mana.",
		"Você agora é imune aos Rigs de Possessão.",
		"Você agora pode lançar o feitiço FLICKER para des-amaldicoar uma interseção.",
		"Seu feitiço Maldição vai durar 50% mais (90s)",
		"CRIAR ESCADA AMALDIÇOADA e feitiços MALDIÇÃO agora podem destruir escadas cruzadas amaldiçoadas.",
		"Você irá ganhar Mana bônus toda vez que alguém é possuído.",
	},


}

module.gui.reshuffle = {

	["title"] = "MODO REMODELAÇÃO DE ESCADAS",

	["body"] = "Você quer que as escadas evitem colisões durante o movimento? Caso contrário, quaisquer escadas no caminho serão destruídas.",

}

module.gui.multitokens = {

	["title"] = "ESCOLHA SEUS TOKENS",

	["info"] = "Você precisa de 3 tokens para desbloquear um feitiço.",
	["notokens"] = "Você não tem multi tokens o suficiente",
	["nopass"] = "SEM PASSE DE JOGO",

}

module.gui.feedback = {

	["title"] = "ENVIAR FEEDBACK",

	["prompt"] = "Clique aqui para enviar uma mensagem aos desenvolvedores! (mínimo de 20 caracteres)",
	["send"] = "ENVIAR",
	["locked"] = "TRANCADO",

}

module.gui.settings = {

	["title"] = "CONFIGURAÇÕES DE JOGO",

	["ANIM1"] = "CONFIGURAÇÕES DE\nANIMAÇÃO",	
	["ANIM2"] = "CONFIGURAÇÕES EXTRAS\nDE ANIMAÇÃO",
	["MISC"] = "CONFIGURAÇÕES\nDIVERSAS",
	["INTERFACE"] = "CONFIGURAÇÕES DE \nINTERFACE",	

	["size"] = "Mostrar Animações de Tamanho",
	["color"] = "Mostrar Animações de Cores",
	["escalator"] = "Mostrar Animação da Escada Rolante",
	["sanctuary"] = "Mostrar Animações do Santuário",
	["list"] = "Mostrar lista de jogadores animada",
	["ghosts"] = "Animar fantasmas",
	["distance"] = "Aumentar distância da animação máxima",
	["morph"] = "Mostrar animação de metamorfose ao usar Deceiver ou Usurper",
	["billboard"] = "Mostrar seu próprio avatar no painel",
	["rank"] = "Mostrar seu próprio papel no painel",
	["switchback"] = "Voltar automaticamente para os feitiços básicos após executar o feitiço especial",
	["safecancel"] = "Mostrar janela de confirmação ao cancelar um feitiço especial temporário",
	["multi"] = "Mostrar a seleção da janela Multi Token após a escalada",
	["kchoices"] = "Mostrar janela de seleção de direção para o KEEPER (não irá funcionar no Xbox)",
	["achoices"] = "Mostrar janela de seleção de direção para o ARCHON (não irá funcionar no Xbox)",
	["stats"] = "Mostrar stats extras quando lançando um feitiço de Evento ou de Rig",


}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "SEU ALINHAMENTO",
	["time"] = "SEU TEMPO DE ESCALADA",
	["climbs"] = "ESCALADAS GANHAS",
	["tokens"] = "TOKENS GANHOS",
	["rank"] = "SEU RANK ATUAL",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"AJUDE, PROTEJA e CRIE",
		"Esses noobs precisam da nossa ajuda",
		"Não teria esperança sem nós, Patrons",
		"11 de 10 em uma escala de gentileza",
		"Compartilhar é se importar",
		"Você nunca pode ter escadas demais",
		"Não há eu na equipe, mas definitivamente tem um Patron",
		"Você não pode ter uma escadaria sem escadas",
		"Outro trabalho bem feito",
	},
	["JOKER"] = {
		"ENGANE, CONFUNDA e RIA",
		"Essa escadaria é uma piada",
		"Por que tão sério?",
		"HA! HA! HA!",
		"Relaxe e assista eles caírem",
		"Tá bravo mano?",
		"Você conhece as regras e eu também",
		"Ia ser tão sem graça sem mim",
		"Escadas falsas são reais",
	},
	["WICKED"] = {
		"PREVINIR, BLOQUEIE e DESTRUA",
		"Eu não sou do mal, é que tem escadas demais",
		"Essas escadas tem que ir",
		"Assista o mundo queimar",
		"Essa escadaria fica melhor sem escadas",
		"Eu vou destruir sua mente, alma e corpo (e escadas)",
		"1) Faça um obby 2)Assista os noobs caírem 3)Desfrute",
		"Todas as coisas morrem eventualmente",
		"Limpar sua mente - mas antes, limpar essas escadas",
	},
	["SPECTRE"] = {
		"DESAPAREÇA, ESCONDA e TELEPORTE",
		"Claro que teleportar é seguro",
		"Você não pode me alcançar",
		"A beleza das escadas fantasmas é incomparável",
		"Pessoas caindo? Por que eu me importaria?",

		"Você pode resolver todos seus problemas com teleportes",
		"Quando você começar a teleportar, você não vai conseguir parar",
		"Pelo menos eu não estou teleportando escadas",
		"Continuem seus noobs!",
	},
	["MUGGLE"] = {
		"ANDE, PULE e CAIA",
		"A gente não tinha esses feitiços chiques no estágio alfa",
		"Eu juro que aqueles drones estão manipulados",
		"Sempre tem um caminho",
		"Pular escadas é um talento",
		"Meu segredo? Pare e pense",
		"Eu não acredito em mágica",
		"Algumas vezes você precisa esperar por um drone - Tipo na vida real",
		"Pessoas usam feitiços? Noobs!",
	},
	["CHAMELEON"] = {
		"COPIE, IMITE e SURPREENDA",
		"Eu estou com preguiça de usar meus próprios feitiços",
		"Mais variedade - mais diversão",
		"Formar equipes é lento - Metamorfose é rápida",
		"A capacidade de adaptação é a base da sobrevivência",
		"EU SOU decisivo, eu sou gosto de mudar de idéia",
		"Você dominou uma classe? Eu dominei todas as classes",
		"Um alinhamento só? Tédio!",
		"Eu gosto do caos",
	},
	["KEEPER"] = {
		"MOVA, RODE e CONTROLE",
		"Para de estragar minha escadaria!",
		"Outro sucesso glorioso dos Keepers",
		"Missão completa!",
		"Eu gosto de ordem",
		"Caos domado",
		"Eu sou o único alinhamento real",
		"Um dia eu vou resolver essa torre",
		"Escadas consertadas - escadas felizes",
	},
	["THIEF"] = {
		"PEGUE, USE e RETORNE",
		"Na verdade, o nome é pedir emprestado",
		"Planícies são tão bonitas",
		"Pelo menos eu não roubo plataformas",
		"É só não andar nos Steal Rigs, aff",
		"Tipo, você me viu roubar alguma coisa?",
		"Eu sou tipo o Robin Hood - Roubar dos ricos e dar pra mim mesmo",
		"Não é como se fossem perceber uma escada faltando",
		"A redistribuição de escadas evita a anarquia",
	},
	["HACKER"] = {
		"TRAPACEAR, GLITCH e QUEBRE",
		"Jogar justo? Isso não existe",
		"Espera! Essa escadaria não é real... Será que estamos vivendo em uma simulação no Roblox?",
		"01000101 01010011 01000011 01000001 01000100 01000001 01010011 00100000 01001101 01000001 01001100 01010101 01000011 01000001 01010011",
		"Você viu algum painel de regras aqui?",
		"Eu estou trapaceando? Todo mundo aqui está",
		"Assim, alguns ajustes aqui e ali - Dificilmente é trapaça",
		"Velocidade é tudo que importa",
		"Escadas rolantes para vida",
	},
	["HERETIC"] = {
		"VOCÊ NÃO PASSARÁ",
		"Banir magia negra é tipo banir a diversão",
		"Possuir pessoas. Manter o Overmind satisfeito.",
		"Morte e decair",
		"Ritual negro completo",
		"Não devemos restringir nós mesmos",
		"Fique possuído",
		"Escolha o lado negro - É mais fácil que a Iluminação",
		"Por que eu me importaria se as pessoas ficarem encalhadas?",
	},
	["ARCHON"] = {
		"ABRA PORTAIS, ???, LUCRE",
		"Eu costumava governar essa escadaria",
		"Planeje com antecedência para ter sucesso",
		"Estude duro e você irá ter sucesso",
		"A habilidade de dividir escadas é uma forma de arte",
		"Desapareça você mesmo",
		"O bolo é uma mentira",
		"Tem uma divisão em todos os problemas",
		"Confundi todo mundo!",
	},
	["DRIFTER"] = {
		"SURFE, MONTE, e DESLIZE",
		"Quem precisa de escadas? Estamos no espaço!",
		"Voem, seus idiotas!",
		"Surfe no vento solar",
		"Não há para baixo no espaço - Pule sem se preocupar",
		"Drift em tudo - Pule para a vitória",
		"Não pare - Continue no drift",
		"Eu amo dirigir plataformas",
		"Continue surfando",
	},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Não deixar nenhum noob para trás",
	["IT"] = "Pegadinha é vida",
	["ANNIHILATOR"] = "Destruir tudo!",
	["AETHER"] = "Entre no reino inferior",
	["DABSFORLIF"] = "Feitiços são sobrestimados",
	["USURPER"] = "Eu só gosto de todos os feitiços",
	["ADMIRAL"] = "Ordem restaurada",
	["OUTLAW"] = "Meu, meu tudo MEU!",
	["ZERO"] = "Rootkit instalado",
	["EXILED"] = "Excomunhão",
	["ILLUMINATI"] = "Illuminati confirmado",
	["STRIDER"] = "Eu pego o elevador",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {

	"ESCADAS MALUCAS",
	"Jogo conceituado, projetado e roteirizado por Sleazel",
	"Ajuda com o design - cakegirlserina",
	"Modelos por ZielonyLeszek",
	"Skyboxes por @wwwtyro's generator",
	"Módulo de salvamento de data, DataStore2, por Kampfkarren",
	"Script de placar original por ThatTimothy",
	"TESTADORES:",
	"Roloversion",
	"Ondrik132",
	"dabsforlif",
	"iiBIuestar",
	"BertValkyrie",
	"TDtheTV",
	"waragency",
	"d4vvd",
	"portalgunner",
	"DragonMaster1707",
	"wf_sh",
	"Keysiries",
	"jakmat2",
	"blankeht",
	"ben10beg",
	"bash1234567888",
	"cakegirlserina",
	"TRADUÇÕES:",
	"English - Sleazel",
	"Polski - Sleazel",
	"Français - Alexnumbers",	
	"Italiano - Roloversion",	
	"Nederlandse - Sanderk35_2",
	"Romana - NoobMaster38271",
	"= ??? - ambronium",
	"Português - Cosmo",
	"???? - OZEPJAH",
	"??????? - NoobMaster38271",
	"Ceština - killerproXxgood",
	"bahasa Indonesia - echocentrical",
	"Español - TDtheTV",
	"Deutsch - 05_hallo",
	"Slovenský - Ondrik132",
	"Bosanski - xootynator",	"SPECIAL THANKS TO:",
	"kolcer",
	"ThatTimothy",
	"SerpentineKing",
	"WhereDidTheSunGo",
	"b3ntheplay3r2",
	"TehEpix2",
	"Narvog1",
	"shark66655",
	"MÚSICA (catálogo APM):",
	"Música da introdução - Allure by Martin Albert Sponticcia",
	"\"None\" música final - Deceived by Martin Albert Sponticcia",
	"Música do Muggle - Hyperdrive by Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Música final do Muggle - Reflections by Milan Pilar",
	"Música do Patron - Tranquilize by Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Música final do Patron - Dreamers by Joseph Alexander",
	"Música do Joker - Crosswind by Martin Albert Sponticcia",
	"Música final do Joker - Fender Stab by Steven Raymond Bush",
	"Música do Wicked - Wicked by Daniel Jay Nielsen, Nathan Duvall",
	"Música final do Wicked - Something Wicked by Cris Velasco",
	"Música do Spectre - Reflections by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música final do Spectre - Cosmic Dust by Milan Pilar",
	"Música do Keeper - Automotion by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música final do Keeper - Synth On The Highway by Richard Adrian Maxwell Preston",
	"Música do Hacker - Network by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música final do Hacker - Descending Into Oblivion by Richard Adrian Maxwell Preston",
	"Música do Thief - Reaching Out by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música final do Thief - Soaring by Richard Adrian Maxwell Preston",
	"Música do Archon - Aperture by Paul Emons, Richard Goodliff, Ian Robson",
	"Música final do Archon - Rendezvous by Paul Emons, Richard Goodliff, Ian Robson",
	"Música do Drifter - Communique by Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Música final do Drifter - Fragile by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música do Heretic - Mother by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música final do Heretic - Being Me by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música do Chameleon - Rah by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Música final do Chameleon - Midnight Runner by Richard Adrian Maxwell Preston",
	"música Ghost Union - Amber Garden by Paul Emons, Richard Goodliff, Ian Robso",
	"Música de Possessão - Dark Souls by David Arkenstone",
	"Música das escadas discoteca do Joker - To The Disco by Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Música da plataforma do Drifter - Radioactivity by Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Obrigado por jogar!",	
}



module.static = {

	--INTRODUCTION SCREENS

	["cla_1"] = "Como jogar?",
	["cla_2"] = "Primeiro, é altamente recomendado você completar o tutorial. Se você não terminou, por favor re-entre no jogo, pois a experiência pode ficar muito confusa.",
	["cla_3"] = "O objetivo do jogo é chegar no topo e coletar uma Esfera de Energia flutuante. Primeiro escolha seu alinhamento (classe) ao pular em alguns dos blocos brilhantes no meio do mapa.",
	["cla_4"] = "Quando você estiver feliz com sua escolha, colete cristais flutuantes para recarregar sua Mana e subir as escadas. Use os feitiços da sua classe para te ajudar na subida.",
	["cla_5"] = "Como lançar feitiços?",
	["cla_6"] = "Todo feitiço tem um custo de Mana que você precisa para lançar ele. Quando você tiver mana o suficiente, clique no feitiço. Suas mãos vão começar a brilhar, indicando um sucesso.",
	["cla_7"] = "Depois de preparar o feitiço, você precisa executar. Todos os feitiços são executados ao pular. Dependendo do feitiço, você precisará pular nas plataformas ou nas escadas. Setas guia irão aparecer, para te ajudar na execução.",
	["cla_8"] = "Quando você terminar a escalada, você irá receber 3 tokens de feitiço, que vai te ajudar a desbloquear um feitiço novo. Complete a escalada de novo para desbloquear mais feitiços. Você não pode usar tokens de uma classe para usar em outra.",
	["cla_9"] = "Como lançar feitiços especiais?",
	["cla_10"] = "Primeiro você precisa desbloquear todos os feitiços básicos antes de ter acesso aos feitiços especiais. Feitiços especiais não precisam de desbloqueio, mas eles precisam de Tokens invés de Mana.",
	["cla_11"] = "Complete a escalada o suficiente para desbloquear todos os feitiços básicos. Você talvez precise ganha uma corrida para ganhar Tokens extras. Há uma opção para comprar Tokens também. Depois de desbloqueado, clique no botão mais à esquerda ou pressione 'C'",
	["cla_12"] = "Alguns feitiços especiais são temporários, e não precisam de execução. Por favor leia mais informações nas Guildas dos Alinhamentos para aprender mais sobre um feitiço especial, antes de lançar. Cancelar um feitiço temporário não irá reembolsar Tokens.",

	["pro_1"] = "TORRE PRO",
	["pro_2"] = "Restrições dos níveis pares",
	["pro_3"] = "Na Torre Pro alguns feitiços de plataforma não podem ser lançados nos níveis pares. ARMADILHA, CRIAR PORTAL, TELEPORTE VERTICAL, ESCADA ESPIRAL e TELEPORTE ALEATÓRIO podem ser executados apenas em níveis ímpares.",
	["pro_4"] = "Drifters não podem driftar plataformas também. Plataformas afetadas estão marcadas com um círculo vermelho oco no meio.",
	["pro_5"] = "Escadas Amaldiçoadas",
	["pro_6"] = "Na Torre Pro, Drones vão aleatoriamente criar Escadas Amaldiçoadas ou tornar escadas normais em Amaldiçoadas. Tem 20% de chance de uma escada amaldiçoada aparecer. Setas guias não irão aparecer perto de Escadas Amaldiçoadas.",
	["pro_7"] = "Escadas Amaldiçoadas são imunes a maioria dos feitiços. Você não pode teleportar através delas ou usar o poder Piscar do Hacker. Além disso, todos os feitiços que causariam a destruição das Escadas Amaldiçoadas não funcionarão (como o Movimento do Keeper).",
	["pro_8"] = "Apenas Heretics ou Admirals podem restaurar Escadas Amaldiçoadas. O evento Expurgo ou Restauração vão fazer todas as escadas amaldiçoadas sumirem. Entretanto, Drones vão sempre criar mais na Torre Pro.",
	["pro_9"] = "Interseções Amaldiçoadas",
	["pro_10"] = "Na Torre Pro, Drones vão aleatoriamente criar Interseções Amaldiçoadas também. Quando os drones acham uma Interseção vazia, tem 20% de chance de ser uma maldição. Setas de guia irão virar um X em uma interseção amaldiçoada.",
	["pro_11"] = "Interseções Amaldiçoadas irão prevenir todos os feitiços de plataforma que são executados nas setas. Você não pode criar escadas, ligações nem teleportar diante de uma Interseção Amaldiçoada.",
	["pro_12"] = "Apenas Heretics, Admirals e Drones podem restaurar Interseções Amaldiçoadas. Como Escadas Amaldiçoadas, o Expurgo do Wicked irá remover todas as maldições, mas, novas irão aparecer durante a regeneração.",

	["inf_1"] = "TORRE INFINITA",
	["inf_2"] = "OBRIGAÇÃO A CORRIDA",
	["inf_3"] = "Na torre infinita, a corrida é obrigatória. Jogadores casuais não serão permitidos lançar feitiços e não irão receber nenhuma recompensa por escalar. Coletar a Esfera Final vai garantir apenas 10 de Mana.",
	["inf_4"] = "Para 'completar' a torre infinita, você deve entrar em uma corrida e tentar ficar nela o mais longo que você conseguir. Você irá receber suas recompensas (se tiver) depois da eliminação.",
	["inf_5"] = "Drone Caído",
	["inf_6"] = "Diferentemente da torre clássica ou pro, o Drone Caído tem uma tarefa especial na torre infinita.",
	["inf_7"] = "A cada intervalo de aumento, o Drone Caído criará 2 novos níveis. Cada nível par será restrito. Além disso, algumas escadas ou interseções podem até ficar amaldiçoadas.",
	["inf_8"] = "O primeiro intervalo dura 20 segundos. Cada nível criado irá reduzir o intervalo em meio segundo, até os níveis criados forem criados mais rápidos do que podem ser subidos.",
	["inf_9"] = "Apagador",
	["inf_10"] = "O Apagador é um campo de força especial que se eleva junto com a torre e remove os níveis inferiores. Ficar atrás do Apagador elimina os jogadores da rodada. Isso é semelhante a um aumento de lava em outros jogos.",
	["inf_11"] = "Assim como o Drone Caído, o Apagador irá acelerar. No entanto, aumentará de forma constante, invés de remover 2 níveis ao mesmo tempo.",
	["inf_12"] = "Escadas e plataformas que forem tocadas pelo Apagador irão evaporar. Tente evitar o Apagador pelo maior tempo que conseguir para garantir sua vitória.",

	["cus_1"] = "TORRE PERSONALIZADA",
	["cus_2"] = "VOCÊ DECIDE!",
	["cus_3"] = "Na torre personalizada, você pode ajustar a torre nas configurações do seu gosto.",
	["cus_4"] = "Recompensas na Torre Personalizada são divididos na metade. Você irá ganhar token a cada 12 níveis e qualificando a escalada a cada 30 níveis.",
	["cus_5"] = "Confirmações da Torre",
	["cus_6"] = "Ao alterar as configurações da Torre, você pode fazer do seu jeito. Escolha os níveis, restrinja os níveis pares ou até mesmo defina a torre para o modo infinito.",
	["cus_7"] = "Apenas o dono do servidor pode ajustar as configurações. Servidores públicos não são suportados na Torre Personalizada.",
	["cus_8"] = "Configurações do Drone",
	["cus_9"] = "Você também pode alterar a configuração dos drones. Ajuste a contagem máxima, a contagem mínima ou até mesmo desative-os completamente.",

	["vr_1"] = "Ao lançar Escadas Malucas no modo VR, você automaticamente vira um Architect.",
	["vr_2"] = "Diferentemente dos jogadores normais, o Architect não precisa subir a escadaria. Seu trabalho é ajudar ou prevenir outro jogadores de subirem a torre.",
	["vr_3"] = "A escolha é sua. Você será uma ameaça ou um salvador? Ou você quer simplesmente bagunçar? Se divirta!",
	["vr_4"] = "Como navegar?",
	["vr_6"] = "Use o controle direito para se mover para cima ou para baixo. Inclinar o controle direito para a direita ou para a esquerda irá resultar em um 'snap', virando a câmera.",
	["vr_7"] = "Tente ficar do lado de fora da escadaria, para ter uma visão melhor e facilitar a precisão.",
	["vr_8"] = "Como lançar feitiços?",
	["vr_9"] = "Para lançar um feitiço, aperte o orbe mágico com o botão de aperto. Aparecerá um ponteiro laser que o ajudará a direcionar escadas e plataformas para execução de feitiços.",
	["vr_10"] = "Execute o feitiço com o botão de gatilho, enquanto ainda segura o botão de aperto. Cada alinhamento no VR tem dois feitiços. Uma plataforma e a outra um feitiço de escadas. Dependendo do alvo, um feitiço adequado será escolhido.",
	["vr_11"] = "Para alterar um alinhamento no modo VR, pressione e segure o botão de disparo, sem o botão de empunhadura. Você pode então alterar o alinhamento com o polegar da mão correspondente.",

	--ROOMS DOOR TEXTS

	["home_1"] = "CASA DO MUGGLE",
	["home_2"] = "NOSSO LEMA:\nANDE\nPULE\nE\nCAIA",
	["home_3"] = "PRÓS:\nBônus de pulo e velocidade em ranks mais altos\nDireitos de se gabar\nCONTRAS:\nSem feitiços\nFica preso facilmente",
	["home_4"] = "'A gente não tinha esses feitiços chiques no estágio alfa.'\nfrase do nosso fundador",

	["oasis_1"] = "OÁSIS DO CHAMELEON",
	["oasis_2"] = "NOSSO LEMA:\nCOPIE\nIMITE\nE\nSURPREENDA",
	["oasis_3"] = "PRÓS:\nPode mudar de alinhamento a qualquer hora e em qualquer lugar\nCONTRAS:\nCusta Robux\nSubir de rank com todas as classes leva tempo",
	["oasis_4"] = "'Eu estou com preguiça de usar meus próprios feitiços.'\nfrase do nosso fundador",

	["nexus_1"] = "NEXO DO HERETIC",
	["nexus_2"] = "NOSSO LEMA:\nVOCÊ\nNÃO\nIRÁ\nPASSAR",
	["nexus_3"] = "PRÓS:\nMelhor na Torre Pro\nNão pode ser parado\nCONTRAS:\nFazer equipe é arriscado\nSempre buscando Mana",
	["nexus_4"] = "'Banir magia negra é tipo banir a diversão.'\nfrase do nosso fundador",

	["guild_1"] = "GUILDA DO THIEF",
	["guild_2"] = "NOSSO LEMA:\nPEGUE\nUSE\nE\nRETORNE",
	["guild_3"] = "PRÓS:\nEficiente em Mana\nVersátil\nCONTRAS:\nPrecisa roubar escadas\nNão consegue demolir cruzamentos de escadas",
	["guild_4"] = "'Na verdade, o nome é pedir emprestado.'\nfrase do nosso fundador",

	["nether_1"] = "REINO DO SPECTRE",
	["nether_2"] = "NOSSO LEMA:\nDESAPAREÇA\nESCONDA\nE\nTELEPORTE",
	["nether_3"] = "PRÓS:\nFeitiços rápidos\nPerfeito para se jogar sozinho\nCONTRAS:\nCusta Robux\nNão recomendado em times",
	["nether_4"] = "'Claro que teleportar é seguro.'\nfrase do nosso fundador (MIA)",

	["study_1"] = "ESTUDO DO ARCHON",
	["study_2"] = "NOSSO LEMA:\nABRA\nPORTAIS\n???\nLUCRE",
	["study_3"] = "PRÓS:\nRig útil\nConfunde oponentes\nCONTRAS:\nDifícil de se aprender\nRequer planejamento",
	["study_4"] = "'Eu costumava governar essa escadaria.'\nfrase do nosso fundador",

	["haven_1"] = "ABRIGO DO PATRON",
	["haven_2"] = "NOSSO LEMA:\nAJUDE\nPROTEJA\nE\nCRIE",
	["haven_3"] = "PRÓS:\nFácil de se aprender\nÓtimo para times\nCONTRAS:\nUsa muita Mana\nPode atrair pessoas más",
	["haven_4"] = "'Esses noobs precisam da nossa ajuda.'\nfrase do nosso fundador",

	["shelter_1"] = "SEGURANÇA DO DRIFTER",
	["shelter_2"] = "NOSSO LEMA:\nSURFE\nMONTE\nE\nDESLIZE",
	["shelter_3"] = "PRÓS:\nVersátil\nÓtimo para times\nCONTRAS:\nPrecisa de habilidades no parkour\nArriscado em Torre Pro",
	["shelter_4"] = "'Quem precisa de escadas? Estamos no espaço!'\nfrase do nosso fundador",

	["circus_1"] = "CIRCO DO JOKER",
	["circus_2"] = "NOSSO LEMA:\nENGANE\nCONFUNDA\nE\nRIA",
	["circus_3"] = "PRÓS:\nFeito para trollagens\nFlips são úteis\nCONTRAS:\nFeitiços são caros\nVocê talvez arruine uma amizade",
	["circus_4"] = "'Essa escadaria é uma piada.'\nfrase do nosso fundador",

	["base_1"] = "BASE DO KEEPER",
	["base_2"] = "NOSSO LEMA:\nMOVA\nRODE\nE\nCONTROLE",
	["base_3"] = "PRÓS:\nPode restaurar escadas\nPode re-usar escadas\nCONTRAS:\nPrecisa de parkour para ser usado corretamente\nInútil sem escadas",
	["base_4"] = "'Para de estragar minha escadaria!'\nfrase do nosso fundador",

	["chamber_1"] = "CÂMARA DO WICKED",
	["chamber_2"] = "NOSSO LEMA:\nPREVENIR\nBLOQUEIE\nE\nDESTRUA",
	["chamber_3"] = "PRÓS:\nPode destruir qualquer escada\nPode expurgar toda a escadaria\nCONTRAS:\nDependente demais das escadas",
	["chamber_4"] = "'Eu não sou do mal, é que tem escadas demais'\nfrase do nosso fundador",

	["backdoor_1"] = "FUNDO DO HACKER",
	["backdoor_2"] = "NOSSO LEMA:\nTRAPACEIE\nGLITCH\nE\nQUEBRE",
	["backdoor_3"] = "PRÓS:\nAlinhamento mais rápido\nDifícil de se seguir\nCONTRAS:\nDependente demais das escadas\nInútil em times",
	["backdoor_4"] = "'Jogar justo? Isso não existe.'\nfrase do nosso fundador",

	--LEADERBOARD DESCRIPTIONS

	--SHARED
	["leader_pro"] = "A Torre Pro conta como 2 Escaladas",	
	["leader_update"] = "Atualização em: ",	
	["leader_updating"] = "Atualizando...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "ESCALADAS REQUERIDAS",
	["leader_off"] = "Torre Personalizada não suporta o placar de líderes.",

	--OVERALL
	["over_title"] = "RANKS GERAIS",
	["over_desc"] = "Cada rank adquirido garante 1 ponto",
	["over_rank"] = "RANK",
	["over_req"] = "PONTOS REQUERIDOS",
	["emperor_req"] = "* Requer Chameleon OU Spectre",
	["overmind_req"] = "** Requer Chameleon E Spectre",
	["over_prefix"] = "PREFIXO",
	["over_passes"] = "PASSE DE JOGO\nREQUERIDO",
	["over_notgroup"] = "COR OLIVA - não está no grupo",
	["over_group"] = "COR CIANO - está no grupo",
	["over_mod"] = "MODERADOR - jogador é um moderador",
	["over_admin"] = "ADMIN - jogador é um admin",
	["over_owner"] = "ME CHUTE - Criador do jogo (sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLES APRESSADOS",
	["muggle_ranks"] = "RANKS DO MUGGLE",

	["hacker_lead"] = "HACKERS CRIPTOGRAFADOS",
	["hacker_ranks"] = "RANKS DO HACKER",

	["wicked_lead"] = "WICKEDS VIOLENTOS",
	["wicked_ranks"] = "RANKS DO WICKED",

	["keeper_lead"] = "KEEPERS PREPARADOS",
	["keeper_ranks"] = "RANKS DO KEEPER",

	["joker_lead"] = "JOKERS MALUCOS",
	["joker_ranks"] = "RANKS DO JOKER",

	["drifter_lead"] = "DRIFTERS RÁPIDOS",
	["drifter_ranks"] = "RANKS DO DRIFTER",

	["patron_lead"] = "PATRONS NOBRES",
	["patron_ranks"] = "RANKS DO PATRON",

	["archon_lead"] = "ARCHON ÁGEIS",
	["archon_ranks"] = "RANKS DO ARCHON",

	["spectre_lead"] = "SPECTRES VOADORES",
	["spectre_ranks"] = "RANKS DO SPECTRE",

	["thief_lead"] = "THIEVES SILENCIOSOS",

	["thief_ranks"] = "RANKS DO THIEF",

	["heretic_lead"] = "HERETICS IMPIEDOSOS",
	["heretic_ranks"] = "RANK DO HERETIC",

	["chameleon_lead"] = "CHAMELEONS VELOZES",
	["chameleon_ranks"] = "RANK DO CHAMELEON",

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Bem-vindo(a) as Escadas Malucas!",
	["tut_big_2"] = "Primeiro, aprenda a como fazer metamorfose.",
	["tut_big_3"] = "Você agora é um Patron, Patrons podem criar escadas.",
	["tut_big_4"] = "Todos os feitiços precisam ser executados ao pular.",
	["tut_big_5"] = "Legal, né? Agora troque para o Joker. Jokers podem virar escadas.",
	["tut_big_6"] = "Você agora é um Joker, use esse feitiço para virar as escadas.",
	["tut_big_7"] = "Alguns feitiços precisam ser usados em escadas.",
	["tut_big_8"] = "Agora troque para o Keeper. Keepers podem mover escadas.",
	["tut_big_9"] = "Você agora é um Keeper, use esse feitiço para mover as escadas.",
	["tut_big_10"] = "Pule na seta da frente para mover as escadas.",
	["tut_big_11"] = "Você irá encontrar muitas escadas que bloqueiam seu caminho neste jogo.",
	["tut_big_12"] = "Você agora é um Wicked, use esse feitiço para destruir as escadas que te bloqueiam.",
	["tut_big_13"] = "Você pode destruir as escadas de cima, pulando nas de baixo.",
	["tut_big_14"] = "Antes de começarmos, deixe eu lhe mostrar um alinhamento premium.",
	["tut_big_15"] = "Você agora é um Spectre, Spectre é um alinhamento premium, melhor para se jogar sozinho.",
	["tut_big_16"] = "Seu objetivo - chegar no topo e pegar a esfera. Boa sorte!",

	["tut_select"] = "Selecione este feitiço.",

	["tut_small_morph"] = "Pule no botão.",
	["tut_small_arrow"] = "Pule na seta.",
	["tut_small_stairs"] = "Pule na escada.",


}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

	["notground"] = "Não pode ser lançado no térreo.",
	["restore"] = "Só pode ser lançado no andar de cima.",
	["event"] = "Não pode ser lançado em outro Evento.",
	["drones"] = "Só pode ser lançado, quando os drones estão no modo padrão.",
	["oneover"] = "Você só pode ter uma Sobrecarga de Mana de uma vez.",
	["soft"] = "Não pode ser lançado em escadas cruzantes.",
	["flatten"] = "Escadas opostas necessárias no cruzamento escolhido.",
	["wickedaltevent"] = "Não pode ser lançado durante outro Evento nem Regeneração.",
	["confined"] = "Não é possível mover escadas para fora do jogo. Requer escolha de direção.",
	["onesteal"] = "Você só pode roubar uma escada por vez.",
	["softthief"] = "Requer Escadas Roubadas. Não pode ser lançado em cruzamentos de escadas.",
	["uppass"] = "Requer Escadas Roubadas. Só pode ser lançado nas plataformas externas acima do nível térreo.",
	["sidepass"] = "Requer Escadas Roubadas. Não pode ser lançado no térreo.",
	["noescape"] = "Outro portão deve estar na área de jogo.",
	["outdrift"] = "Só pode ser lançado nas plataformas externas acima do nível térreo.",
	["drifting"] = "A plataforma de destino não deve estar driftada. Não pode ser lançado no térreo.",
	["impostor"] = "Requer o rank mínimo de Impostor para acessar.",
	["charlatan"] = "Requer o rank mínimo de Charlatan para acessar.",
	["chameleonrigevent"] = "Não pode ser lançado durante outro Evento. Requer classificação de Usurper para acessar. Requer Multi Tokens não gastos. ", 

}

module.executioninfo = {

	["arrows"] = "Precisa ser executado nas setas da plataforma.",
	--call the orb!
	["restore"] = "Precisa ser executado nas plataformas de cima apenas.",
	["below"] = "Precisa ser executado em escadas normais ou em escadas com rig.",
	["above"] = "Precisa ser executado em quaisquer escadas ou links com escadas normais ou rigged acima delas.",
	["centre"] = "Precisa ser executado na plataforma.",
	["arrowstimed"] = "Precisa ser executado (repetidamente) nas setas da plataforma.",
	["anywhere"] = "Pode ser executado em qualquer lugar.",
	["noexe"] = "Esse feitiço não requer execução.",
	["flip"] = "Precisa ser executado em escadas normais, invertidas ou rigged.",
	["flipabove"] = "Pode ser executado em quaisquer escadas ou links com escadas normais, invertidas ou rigged acima delas.",
	["flipper"] = "Precisa ser executado (repetidamente) nas escadas. Acima (ou abaixo) as escadas devem ser normais, viradas ou rigged.",
	["destroy"] = "Pode sem executado em qualquer escada não-amaldiçoada",
	["destroyabove"] = "Pode ser executado em qualquer escada ou links com escadas acima delas (qualquer não amaldiçoada).",
	["flatten"] = "Deve ser executado nas setas da plataforma com escadas normais e opostas bloqueando a interseção.",
	["bender"] = "Precisa ser executado (repetidamente) em escadas. Acima e/ou abaixo das escadas devem ser normais ou rigged.",
	--restore!!!
	["movedown"] = "Pode ser executado nas setas da plataforma ou em escadas especiais.",
	["ascension"] = "Deve ser executado (repetidamente) em escadas normais ou rigged (ou viradas em fileiras mais altas).",
	["blink"] = "Pode ser executado em qualquer escada ou links com qualquer bloqueio, escadas não amaldiçoadas acima delas.",
	["outer"] = "Deve ser executado apenas em plataformas externas.",
	["riser"] = "Precisa ser executado (repetidamente) em plataformas.",
	["curse"] = "Deve ser executado em escadas normais, amaldiçoadas ou rigged.",
	["curseabove"] = "Pode ser executado em qualquer escada ou links com escadas normais, amaldiçoadas ou rigged acima delas.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

	--PATRON
	["summon"] = "Criar Escada",
	["restore"] = "Chamar a Esfera", 
	["split"] = "Dividir Escada",
	["shrinkabove"] = "Encolher Escada de Cima",
	["link"] = "Criar Link",
	["portal"] = "Criar Portal",

	["summoner"] = "Invocador",
	["patronrigevent"] = "Rig Mana de Presente",
	["patronevent"] = "Sobrecarga de Escadas",
	["patronaltevent"] = "Evento de Encolher",
	["patronmode"] = "Drones no Modo Patron",
	["patronrefill"] = "Sobrecarga de Mana (Patron)",
	["patronunion"] = "União ao Fantasma (Patron)",

	--JOKER 
	["flip"] = "Virar Escada",
	["flipabove"] = "Virar Escada de Cima",
	["fake"] = "Criar Escada Falsa",
	["invisible"] = "Criar Escada Invisível",
	["disco"] = "Escada Discoteca",
	["trap"] = "Criar Armadilha",

	["flipper"] = "Vira-vira",
	["jokerrigevent"] = "Rig de Inversão",
	["jokerevent"] = "Evento Cloak",
	["jokeraltevent"] = "Evento de Virar Escadas",
	["jokermode"] = "Drones no Modo Joker",
	["jokerrefill"] = "Sobrecarga de Mana (Joker)",
	["jokerunion"] = "União ao Fantasma (Joker)",

	--WICKED
	["destroy"] = "Destruir Escada",
	["destroyabove"] = "Destruir Escada de Cima",
	["bend"] = "Dobrar Escada Para Cima",
	["damage"] = "Danificar Escada de Cima",
	["flatten"] = "Dobrar Escada Opostas Para Baixo",
	["wall"] = "Criar Parede" ,

	["bender"] = "Dobradura",
	["wickedrigevent"] = "Rig de Destruição",
	["wickedevent"] = "Evento de Destruição",
	["wickedaltevent"] = "Evento do Expurgo",
	["wickedmode"] = "Drones no Modo Wicked",
	["wickedrefill"] = "Sobrecarga de Mana (Wicked)",
	["wickedunion"] = "União ao Fantasma (Wicked)",

	--KEEPER
	["move"] = "Mover Escada",
	["rotate"] = "Rodar Escada",
	["moveup"] = "Mover Escada para Cima",
	["movedown"] = "Restaurar Escada",
	["moverandom"] = "Movimento Aleatório para Cima",
	["rig"] = "Movimento Aleatório",

	["ascension"] = "Ascenção",
	["keeperrigevent"] = "Rig de Movimentação",
	["keeperevent"] = "Evento de Remodelação",
	["keeperaltevent"] = "Restaurar Todas As Escadas",
	["keepermode"] = "Drones no Modo Keeper",
	["keeperrefill"] = "Sobrecarga de Mana (Keeper)",
	["keeperunion"] = "União ao Fantasma (Keeper)",

	--SPECTRE
	["phantom"] = "Criar Escada Fantasma",
	["ghost"] = "Fantasmar Escada de Cima",
	["shadow"] = "Des-fantasmar Escada",
	["horizontal"] = "Teleporte Horizontal",
	["random"] = "Teleporte Aleatório",
	["vertical"] = "Teleporte Vertical",

	["traveller"] = "Cintilante",
	["spectrerigevent"] = "Rig de Eclipse",
	["spectreevent"] = "Evento Fantasmagórico",
	["spectrealtevent"] = "Evento Fantasma",
	["spectremode"] = "Drones no Modo Spectre",
	["spectrerefill"] = "Sobrecarga de Mana (Spectre)",
	["spectreunion"] = "União ao Fantasma (Spectre)",

	--HACKER
	["dash"] = "Dash",
	["blink"] = "Piscar",
	["swap"] = "Trocar",
	["slide"] = "Escada Rolante para Baixo",
	["slideup"] = "Escada Rolante para Cima",
	["glitch"] = "Hackear Escada",

	["speedup"] = "Hack de velocidade",
	["hackerrigevent"] = "Rig de Glitch",
	["hackerevent"] = "Evento Escada Rolante",
	["hackeraltevent"] = "Evento de Violação",
	["hackermode"] = "Drones no Modo Hacker",
	["hackerrefill"] = "Sobrecarga de Mana (Hacker)",
	["hackerunion"] = "União ao Fantasma (Hacker)",

	--THIEF
	["steal"] = "Roubar Escada",
	["stealabove"] = "Roubar Escada de Cima",
	["place"] = "Colocar Escada",
	["uppass"] = "Escada Espiral",
	["sidepass"] = "Criar Desvio",
	["drop"] = "Escadas de Vala",

	["heist"] = "Roubo",
	["thiefrigevent"] = "Rig de Roubo de Mana",
	["thiefevent"] = "Evento da Planície",
	["thiefaltevent"] = "Desviar Todas As Escadas",
	["thiefmode"] = "Drones no Modo Thief",
	["thiefrefill"] = "Sobrecarga de Mana (Thief)",
	["thiefunion"] = "União ao Fantasma (Thief)",

	--ARCHON
	["splitup"] = "Criar Divisão para Cima",
	["splitrotate"] = "Criar Divisão Rotatória",
	["splitside"] = "Criar Divisão Reta",
	["splitrandom"] = "Criar Divisão Aleatória",
	["cancelsplit"] = "Destruir Divisão",
	["splitforward"] = "Criar Divisão na Plataforma",

	["splitter"] = "Divisor",
	["archonrigevent"] = "Rig de Phase",
	["archonevent"] = "Evento da Divisão",
	["archonaltevent"] = "Evento Divisório",
	["archonmode"] = "Drones no Modo Archon",
	["archonrefill"] = "Sobrecarga de Mana (Archon)",
	["archonunion"] = "União ao Fantasma (Archon)",

	--DRIFTER
	["indrift"] = "Surfar",
	["outdrift"] = "Criar Drift Externo",
	["updrift"] = "Elevação",
	["diagdrift"] = "Criar Drift Interno",
	["spin"] = "Girar Escada",
	["driftabove"] = "Elevar Escada de Cima",

	["riser"] = "Elevador",
	["drifterrigevent"] = "Rig do Drift",
	["drifterevent"] = "Evento do Drift",
	["drifteraltevent"] = "Evento da Elevação",
	["driftermode"] = "Drones no Modo Drifter",
	["drifterrefill"] = "Sobrecarga de Mana (Drifter)",
	["drifterunion"] = "União ao Fantasma (Drifter)",

	--HERETIC
	["createcursed"] = "Criar Escada Amaldiçoada",
	["curse"] = "Amaldicoar/Des-amaldicoar Escada",
	["curseabove"] = "Amaldicoar/Des-amaldicoar Escada de Cima",
	["curseinter"] = "Flicker",
	["autodown"] = "Esquema de Levantar",
	["autoup"] = "Esquema de Abaixar",

	["malediction"] = "Maldição",
	["hereticrigevent"] = "Rig de Possessão",
	["hereticevent"] = "Evento do Esquema",
	["hereticaltevent"] = "Evento da Maldição",
	["hereticmode"] = "Drones no Modo Heretic",
	["hereticrefill"] = "Sobrecarga de Mana (Heretic)",
	["hereticunion"] = "União ao Fantasma (Heretic)",

	--CHAMELEON
	["ditch"] = "Escadas Cruzadas",
	["warp"] = "Deformar Escada",
	["chamdown"] = "Mover Escada para Baixo",
	["chamdraw"] = "Ponte Levadiça Abaixo",
	["chamdrawabove"] = "Ponte Levadiça Acima",

	["chameleonrigevent"] = "Rig Misterioso",
	["chameleonmode"] = "Drones no Modo Chameleon",
	["chameleonrefill"] = "Sobrecarga de Mana (Chameleon)",
	["chameleonunion"] = "União ao Fantasma (Chameleon)",

}

--translate these too!!!
local union = "União ao Fantasma é um feitiço temporário. Quando você está no modo União ao Fantasma, você pode atravessar escadas que estão te bloqueando e andar no fantasma, obstáculos e escadas falsas. Escadas especiais não terão efeito em você, e não irão acionar seus Rigs. Entretanto, você não pode lançar feitiços nesse modo."
local overload = "Esse é um feitiço de Sobrecarga. Irá garantir Mana para você a cada 6 segundos no próximo minuto (10 no total). Você só pode ter uma Sobrecarga ativa por vez."

module.spells.descriptions = {

	--PATRON
	["summon"] = "Esse feitiço permite você criar uma única escada na direção escolhida. Se tem alguma escada no caminho, ela será demolida.",
	["restore"] = "Esse feitiço chama a esfera no andar de cima para a plataforma escolhida. Chegue no Rank do Defender para reduzir o custo para 2 de Mana. Chegue no Rank Savior para dobrar a velocidade que a esfera vem até você.",
	["shrinkabove"] = "Esse feitiço encolhe a escada acima, permitindo assim, você andar através delas.",
	["link"] = "Esse feitiço cria uma ponte de energia entre duas plataformas por 60 segundos. Apenas um lado da lacuna será coberto, permitindo você andar ao redor. Chegue no Rank Creator para extender esse tempo para 120 segundos.",
	["split"] = "Esse feitiço divide as escadas em duas escadas opostas, permitindo você acessar 4 plataformas.",
	["portal"] = "Esse feitiço cria um portal que irá teleportar todos os jogadores uma plataforma acima. O portal dura 60 segundos. Chegue no Rank Protector para extender esse tempo para 120 segundos.",

	["summoner"] = "Esse feitiço é temporário. Ele permite você criar quantas escadas que você quiser por um minuto. Continue pulando nas setas para criar escadas. Chegue no Rank de Guardian para extender esse tempo para 90 segundos. Lançar esse feitiço irá recarregar sua Mana para todos os Patrons com pelo menos o rank de Friend.",
	["patronrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com Presente de Mana. Escadas, quando acionadas, irão dar um de Mana ao jogador. Se o jogador está cheio de Mana, as escadas não irão acionar. Depois de acionadas, as escadas voltarão ao normal.",
	["patronevent"] = "Esse é um feitiço de Evento. Ele irá criar escadas em cada interseção não amaldiçoada vazia.",
	["patronaltevent"] = "Esse é um feitiço de Evento. Ele irá encolher todas as escadas normais, uma por uma.",
	["patronmode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Patron. Drones Patron, se a contagem de escadas estiver dentro dos limites, lançará aleatoriamente o feitiço Encolher Escada e Rig Presente em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones criarão e destruirão, respectivamente.",
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Esse feitiço vira a escada, então o topo vira o fundo e vice versa. Quando viradas, as escadas são imunes a feitiços, exceto destruição, roubo em rank maior e movimentação em rank maior. Você pode virar as escadas de novo.",
	["flipabove"] = "Esse feitiço vira a escada de cima, então o topo vira o fundo e vice versa. Quando viradas, as escadas são imunes a feitiços, exceto destruição, roubo em rank maior e movimentação em rank maior. Você pode virar as escadas de novo.",
	["fake"] = "Esse feitiço permite você criar escadas falsas na direção escolhida. Se tem alguma escada cruzantes no caminho, elas vão ser demolidas. Qualquer jogador (incluindo você) que tentar subir essa escada irá atravessar e cair ela, com exceção de Tricksters, ITs e jogadores no modo União ao Fantasma..",
	["invisible"] =  "Esse feitiço cria escadas invisíveis. Entretanto, esse feitiço não irá demolir escadas cruzantes como o feitiço do Patron, então você só pode colocar essas escadas em uma interseção vazia. Chegue no rank Jester para ver todas as escadas invisíveis, e ter opção de não revelar elas.",
	["disco"] = "Esse feitiço deixa as escadas no modo discoteca. Qualquer jogador (incluindo você) irá parar e dançar elas por 5 segundos (geralmente duas vezes). Chegue no Rank Comic para ser imune a escadas discoteca.",
	["trap"] = "Esse feitiço torna uma plataforma em um alçapão por 60 segundos. Qualquer jogador (incluindo você) que tentar andar na armadilha irá cair uma plataforma abaixo. Chegue no Rank Jokester para detectar armadilhas em plataformas.",

	["flipper"] = "Esse feitiço é temporário. Ele permite você criar quantas escadas viradas que você quiser por um minuto. Escadas acima sempre serão viradas, se encontradas. Se não, escadas abaixo serão viradas. Esse feitiço irá recarregar a Mana de todos Jokers com pelo menos o rank de Fool.",
	["jokerrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o Rig de Virar. Escadas, quando acionadas, irão virar automaticamente.",
	["jokerevent"] = "Esse é um feitiço de Evento. Ele irá tornar todas as escadas normais em invisíveis. Mensagens encontradas não irão aparecer para evitar spam.",
	["jokeraltevent"] = "Esse é um feitiço de Evento. Ele irá virar todas as escadas normais.",
	["jokermode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Joker. Drones Joker, se a contagem de escadas estiver dentro dos limites, lançará aleatoriamente o feitiço Escadas Invisíveis e Rig de Virar em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones criarão e destruirão, respectivamente.",
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Esse feitiço destrói escadas. Diferentemente de outros feitiços, esse irá funcionar em qualquer escada. Chegue no Rank Vicious para ganhar 1 de Mana toda vez que você destruir alguma escada especial. Chegue no Rank Annihilator para destruir escadas amaldiçoadas.",
	["destroyabove"] = "Esse feitiço destrói escadas de cima. Diferentemente de outros feitiços, esse irá funcionar em qualquer escada. Chegue no Rank Vicious para ganhar 1 de Mana toda vez que você destruir alguma escada especial. Chegue no Rank Annihilator para destruir escadas amaldiçoadas.",
	["bend"] = "Esse feitiço irá dobrar as escadas para cima. Use esse feitiço para ganhar acesso a plataforma acima.",
	["damage"] = "Esse feitiço irá transformar a escada acima em um parkour, removendo a maioria dos ladrilhos. Antes de tentar, se lembre do tempo de pulo. Chegue no Rank Destroyer para andar nessas escadas como se fossem escadas normais.",
	["flatten"] = "Esse feitiço irá dobrar a escada oposta para baixo. Use esse feitiço para ganhar acesso a plataforma oposta.",
	["wall"] = "Esse feitiço cria uma parede de energia na plataforma mais uma ligação com a plataforma oposta por 60 segundos. Apenas Wickeds podem atravessar a parede e andar na ligação. Parede pode ser forçada pelo teleporte de um Spectre, dash do Hacker ou União ao Fantasma.",

	["bender"] = "Esse feitiço é temporário. Ele permite você criar quantas escadas dobradas que você quiser por um minuto. As escadas abaixo e acima serão dobradas ao mesmo tempo se os requisitos forem atendidos. Chegue no Rank de Nemesis para aumentar a duração para 90 segundos. Esse feitiço também recarrega sua Mana e todos os Wickeds com pelo menos o Rank de Mean.",
	["wickedrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o feitiço de destruição. Escadas, quando acionadas, irão se destruir automaticamente. Chegue no Rank Devil para andar nos Destroy Rigs sem acionar.",
	["wickedevent"] = "Esse é um feitiço de Evento. Ele irá destruir todas as escadas normais no jogo. Regeneração não será acionada.",
	["wickedaltevent"] = "Esse é um feitiço de Evento. Ele irá destruir todas as escadas e maldições no jogo. Sem exceções. Regeneração será acionada.",
	["wickedmode"] =  "Esse é um feitiço de Drone.Ele irá mudar o modo do Drone para Wicked. Drones no Modo Wicked, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Dobradura aleatoriamente e Rigs de Destruição em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Esse feitiço irá mover as escadas horizontalmente, destruindo escadas no caminho. Depois de lançado, uma janela irá aparecer na tela, permitindo você escolher uma direção. Escadas não podem sair para fora do jogo. Chegue no rank Controller para mover escadas viradas.",
	["rotate"] = "Esse feitiço irá rodar as escadas de forma horizontal, destruindo qualquer escada no caminho. Depois de lançado, uma janela irá aparecer na tela, permitindo você escolher uma direção. Escadas não podem ser rodadas para fora do jogo. Chegue no rank Controller para mover escadas viradas.",
	["moveup"] = "Esse feitiço irá mover as escadas para cima, destruindo qualquer escada no caminho. Escadas não podem ser movidas no último andar. Chegue no rank Controller para mover escadas viradas.",
	["movedown"] = "Esse feitiço restaura qualquer escada especial. Se as escadas já estão normais, esse feitiço não irá funcionar. Chegue no rank Captain para lançar esse feitiço de graça. Chegue no rank Admiral para restaurar escadas amaldiçoadas e Interseções amaldiçoadas.",
	["moverandom"] = "Esse feitiço irá mover ou rodar as escadas de cima em uma direção aleatória, destruindo escadas no caminho. Chegue no rank Operator para evitar que as escadas vão para baixo. Chegue no rank Controller para mover escadas viradas.",
	["rig"] = "Esse feitiço irá mover ou rodar as escadas em uma direção aleatória, destruindo escadas no caminho.Chegue no rank Operator para evitar que as escadas vão para baixo. Chegue no rank Controller para mover escadas viradas.",

	["ascension"] = "Esse feitiço é temporário. Ele permite você lançar quantos feitiços de Mover Escada Para Cima que você quiser por um minuto. Chegue no rank Commander para aumentar a duração para 90 segundos. Esse feitiço irá recarregar a Mana de todos os Keepers com pelo menos o rank de Handler.",
	["keeperrigevent"] = "Esse um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o Rig de Movimento Aleatório. Escadas, quando acionadas, irão mover ou rodar em alguma direção aleatória. Chegue no rank Operator, para quando acionar esse rig, não causar as escadas irem para baixo. Chegue no rank Sentinel para andar nos Rigs do Keeper sem acionar eles.",
	["keeperevent"] = "Esse é um feitiço de Evento. Antes de executar, você pode escolher o modo Macio ou o modo Forçado. No modo Macio, esse feitiço irá mover ou rodar todas as escadas normais em uma direção aleatória, sem destruir nada no processo. No modo Forçado, esse feitiço irá mover ou rodar todas as escadas normais em uma direção aleatória, destruindo escadas no processo.",
	["keeperaltevent"] = "Esse é um feitiço de Evento. Ele irá restaurar todas as escadas no jogo, incluindo as amaldiçoadas. Diferentemente do Expurgo, não irá remover Interseções amaldiçoadas.",
	["keepermode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Keeper. Drones no Modo Keeper, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Movimentação Forçada e Rodar Escada e Rig de Movimento em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Esse feitiço irá criar escadas \"fantasmas\" na direção escolhida. Se tem alguma escada no cruzamento, elas serão demolidas. Escadas Fantasma irão rapidamente sumir depois de um tempo, desaparecendo completamente.",
	["ghost"] = "Esse feitiço irá fantasmar as escadas de cima. Você pode atravessar elas, mas não pode andar nelas se seu rank não for Aether ou maior.",
	["shadow"] = "Esse feitiço deixa você des-fantasmar escadas, deixando elas normais de novo. Chegue no rank Phantom para deixar esse feitiço de graça.",
	["horizontal"] = "Esse feitiço deixa você teleportar horizontalmente na direção escolhida. Você pode atravessar escadas que estão no caminho também.",
	["random"] = "Esse feitiço irá te teleportar para uma plataforma aleatória no mesmo nível.",
	["vertical"] = "Esse feitiço irá te teleportar para cima, uma plataforma acima.",

	["traveller"] = "Esse é um feitiço temporário. Ele permite você lançar quantos Teleportes Horizontais que você quiser, por um minuto. Chegue no rank Shadow para aumentar a duração para 90 segundos. Esse feitiço também irá recarregar a Mana para todos os Spectres com pelo menos o rank de Shade.",
	["spectrerigevent"] = "Esse é um feitiço  Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o feitiço de Eclipse. Escadas, quando acionadas, tem 50% de fantasmar. Chegue no rank Vision para andar em Rigs do Spectre sem acionar eles.",
	["spectreevent"] = "Esse é um feitiço de Evento. Antes de executar, você pode escolher o modo Macio ou o modo Forçado. No modo Macio, esse feitiço irá mover ou rodar todas as escadas normais em uma direção aleatória, sem destruir nada. o processo. No modo Forçado, esse feitiço irá mover ou rodar todas as escadas normais em uma direção aleatória, destruindo escadas no processo.",
	["spectrealtevent"] = "Esse é um feitiço de Evento. Ele irá fantasmar todas as escadas normais. Chegue no rank Aether para andar em escadas Fantasmadas. União ao Fantasma pode ser usado para andar em escadas fantasmadas..",
	["spectremode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Spectre. Drones no Modo Spectre, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Movimentação Fantasma Soft e Rodar Escadas e Rig de Eclipse em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Esse feitiço irá te teleportar na direção escolhida. Diferentemente do feitiço do Spectre, você não pode atravessar escadas com esse feitiço. Chegue no rank Cracker para aumentar a velocidade deste feitiço em 50%.",
	["blink"] = "Esse feitiço irá te teleportar ao redor das escadas cruzantes acima. Escadas devem estar na direção oposta da escada que você está para isso funcionar. Chegue no rank Exploiter para aumentar a velocidade deste feitiço em 50%.",
	["swap"] = "Esse feitiço irá te teleportar no lugar onde está seu fantasma.  Diferentemente de outros feitiços, esse pode ser lançado em qualquer lugar.",
	["slide"] = "Esse feitiço irá tornar as escadas em uma escada rolante para baixo. Escada rolante só irá funcionar quando há jogadores nela. Chegue no rank Scripter para pausar escadas rolantes para baixo automaticamente.",
	["slideup"] = "Esse feitiço irá tornar as escadas em uma escada rolante para cima. Escadas rolante só irá funcionar quando há jogadores nela.",
	["glitch"] = "Esse feitiço irá bugar as escadas, teleportando você e as escadas para um lugar diferente no mesmo andar. Chegue no rank Zero, para teleportar as escadas perto da Esfera Final, se você já está no último andar.",

	["speedup"] = "Esse é um feitiço temporário. Ele não requer execução, ele irá aumentar sua velocidade da sua caminhada em 50% por um minuto. Você não pode lançar feitiços nesse modo. Esse feitiço irá recarregar Mana para todos os Hackers com pelo menos o rank de Geek.",
	["hackerrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um rig em todas as escadas normais, uma por uma, com o feitiço de Glitch. Quando acionadas, elas irão teleportar você e as escadas para um lugar diferente no mesmo andar. Apenas um jogador será teleportado. Chegue no rank Reaper para andar nos rigs do Hacker sem acionar eles.",
	["hackerevent"] = "Esse é um feitiço de Evento. Ele irá tornar todas as escadas normais, uma por uma, em escadas rolantes para cima ou para baixo.",
	["hackeraltevent"] = "Esse é um feitiço de Evento. Ele irá tornar todas as escadas normais, uma por uma, em escadas rolantes para cima.",
	["hackermode"] =  "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Hacker. Drones no Modo Hacker, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Escadas Rolantes e Rigs de Glitch em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Esse feitiço permite você roubar uma escada normal ou escadas rigged. Esse feitiço e Roubar Acima são necessários para executar os feitiços básicos do Thief. Chegue no rank Hijacker para roubar qualquer escada. Chegue no rank Outlaw para roubar duas escadas ao mesmo tempo.",
	["stealabove"] = "Esse feitiço permite você roubar as escadas acimas normais ou escadas rigged. Esse feitiço e Roubar Acima são necessários para executar os feitiços básicos do Thief. Chegue no rank Hijacker para roubar qualquer escada. Chegue no rank Outlaw para roubar duas escadas ao mesmo tempo",
	["place"] = "Esse feitiço permite você colocar as escadas de volta na direção escolhida. Entretanto, esse feitiço não irá demolir escadas no caminho que nem no Feitiço do Patron, então você só pode colocar escadas em uma Interseção vazia.",
	["uppass"] = "Esse feitiço permite você criar uma escada em espiral de escadas roubadas. Só pode ser lançado em plataformas externas e irão durar um minuto. Escadas espirais são invulnerável a todos os feitiços. Chegue no rank Bandit para fazer essa escada durar dois minutos.",
	["sidepass"] = "Esse feitiço permite você criar um desvio dobrado de escadas roubadas. Ele será criado na direção escolhida e durará um minuto. Desvios são invulnerável a todos os feitiços. Chegue no rank Robber para fazer o desvio durar dois minutos.",
	["drop"] = "Esse feitiço deixa você planificar escadas de graça. Você terá que achar uma Interseção vazia também. Essas escadas são planas.",

	["heist"] = "Esse feitiço é temporário. Ele permite você lançar Colocar Escadas o tanto de vezes que você desejar. Diferentemente do feitiço original, esse feitiço pode ser lançado em escadas cruzantes, já que escadas vão ser automaticamente roubadas nesse modo. Esse feitiço vai restaurar Mana para todos os Thieves com pelo menos o rank de Crook.",
	["thiefrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um rig em todas as escadas normais, uma por uma, com o rig de Roubar Mana. Escadas quando acionadas, irão roubar um de Mana do jogador que acionou e adicionar para você na sua Mana. Você não irá receber Mana se sua Mana estiver no máximo. Você também não irá receber Mana se você mudar de alinhamento.",
	["thiefevent"] = "Esse é um feitiço de Evento. Ele irá tornar todas as escadas normais, uma por uma, em escadas planas.",
	["thiefaltevent"] = "Esse é um feitiço de Evento. Ele irá criar um desvio no norte e no sul de uma interseção. Se uma Interseção estiver amaldiçoada, desvios não serão criados.",
	["thiefmode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Thief. Drones no Modo Thief, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Roubar/Colocar Escadas e Rigs de Roubo em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitup"] = "Esse feitiço irá conectar as escadas com as escadas acima com um portal. Se não há escadas, elas serão criadas. Chegue no rank Prodigy para sobrepor uma conexão existente. Chegue no rank Sage para ignorar uma conexão para baixo.",
	["splitrotate"] = "Esse feitiço irá conectar as escadas com uma outra em uma direção rodada horizontal da sua escolha com um portal. Se não há escadas, elas serão criadas. Chegue no rank Prodigy para sobrepor uma conexão existente. Chegue no rank Illuminati para andar através de portais.",
	["splitside"] = "Esse feitiço irá conectar as escadas com uma outra em uma direção horizontal da sua escolha com um portal. Se não há escadas, elas serão criadas. Chegue no rank Prodigy para sobrepor uma conexão existente. Chegue no rank Illuminati para andar através de portais.",
	["splitrandom"] = "Esse feitiço irá conectar as escadas em alguma interseção valida no mesmo andar. Se não há escadas, elas serão criadas. Chegue no rank Illuminati para andar através de portais.",
	["cancelsplit"] = "Esse feitiço irá descartar qualquer portal nas escadas. Chegue no rank Disciple para remover divisões nas plataformas. Chegue no rank Scholar para lançar esse feitiço de graça.",
	["splitforward"] = "Esse feitiço irá conectar duas plataformas em uma direção horizontal da sua escolha com um portal. Chegue no rank Disciple para remover divisões de plataforma. Escadas ocupantes não irão bloquear a conexão. Chegue no rank Illuminati para andar através de portais.",

	["splitter"] = "Esse feitiço é temporário. Ele permite você criar quantas divisões de plataformas que você quiser por um minuto. Chegue no rank Savant para extender esse tempo para 90 segundos. Lançar esse feitiço irá recarregar a Mana de todos os Archons com pelo menos o rank de Adept.",
	["archonrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o rig de Phase. Escadas, quando acionadas, irão teleportar o jogador para a direção que ele estava andando, cruzando escadas bloqueantes. Depois de acionadas, escadas irão voltar ao normal.",
	["archonevent"] = "Esse é um feitiço de Evento. Ele irá criar divisões aleatórias em todas as escadas normais.",
	["archonaltevent"] = "Esse é um feitiço de Evento. Ele irá criar divisões verticais em todas as escadas normais apenas.",
	["archonmode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Archon. Drones no Modo Archon, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Divisão Aleatória e Rigs de Phase em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["outdrift"] = "Esse feitiço irá circular a escada ao redor de toda a área de jogo no mesmo andar. Só pode ser lançado em plataformas externas. Chegue no rank Strider para ganhar mana bônus enquanto estiver no elevador.",
	["indrift"] = "Esse feitiço irá criar uma prancha temporária, movendo você para uma plataforma na direção que você está escolhendo. Chegue no rank Strider para conseguir Mana bônus enquanto estiver no elevador.",
	["updrift"] = "Esse feitiço irá criar um elevador a plataforma que você está e a plataforma acima. As plataformas serão restauradas depois de um período dado de tempo. Chegue no rank Vagabond para aumentar a velocidade do movimento. Chegue no rank Traveller para impulsionar a elevação para o segundo andar. Chegue no rank Strider para impulsionar o elevador para o terceiro andar.",
	["diagdrift"] = "Esse feitiço irá criar um elevador lateralmente usando a plataforma abaixo e uma plataforma na diagonal. As plataformas serão restauradas depois de um período de tempo.",
	["spin"] = "Esse feitiço irá rodar as escadas abaixo 180 degraus. Chegue no rank Nomad para rodar escadas driftadas.",
	["driftabove"] = "Esse feitiço irá elevar as escadas acima, então você por andar abaixo delas e subir elas, escolha o quê você quiser.",

	["riser"] = "Esse é um feitiço temporário. Ele permite você criar quantas plataformas verticais elevadores que você quiser por um minuto. Você pode impulsionar essa elevação enquanto você usar esse feitiço, se seu rank for o suficiente. Chegue no rank Wayfarer para extender esse tempo para 90 segundos. Lançar esse feitiço irá recarregar a Mana de todos os Drifters com pelo menos o rank de Wanderer.",
	["drifterrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o Rig do Drift. Escadas, quando acionadas, irão girar. Chegue no rank Voyager para ganhar imunidade a esse rig.",
	["drifterevent"] = "Esse é um feitiço de Evento. Ele irá rodar aleatoriamente todas as escadas normais.",
	["drifteraltevent"] =  "Esse é um feitiço de Evento. Ele irá elevar todas as escadas normais, permitindo você cruzar abaixo delas.",
	["driftermode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Drifter. Drones no Modo Drifter, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Drift e Rigs de Rodar em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Esse feitiço permite você criar escadas amaldiçoadas na direção escolhida. Qualquer escada cruzante será demolida. Chegue no rank Banished para demolir escadas amaldiçoadas cruzantes.",
	["curse"] = "Esse feitiço irá amaldiçoar ou des-amaldicoar escadas abaixo, dependendo se elas já estão ou não amaldiçoadas.",
	["curseabove"] = "Esse feitiço irá amaldiçoar ou des-amaldicoar as escadas acima, dependendo se elas já estão ou não amaldiçoadas. Escadas irão levantar por um momento, permitindo você cruzar elas.",
	["curseinter"] = "Esse feitiço permite você flicar através da plataforma oposta, se não há escadas no caminho. Interseção irá ficar amaldiçoada depois desse feitiço, então outros jogadores não podem usar mais. Chegue no rank Infidel para lançar esse feitiço para des-amaldicoar uma Interseção.",
	["autodown"] = "Use esse feitiço para criar e elevar uma seção especial espelhada na parte de baixo da escada. Apenas União ao Fantasma e Heretics podem andar nessa seção.",
	["autoup"] = "Use esse feitiço para criar uma seção especial espelhada na parte de cima da escada. Caminhadas regulares serão levadas para baixo. Apenas União ao Fantasma e Heretics podem andar nessa seção.",

	["malediction"] = "Esse é um feitiço temporário. Ele permite você criar quantas escadas amaldic que você quiser por um minuto. Chegue no rank Accursed para extender esse tempo para 90 segundos. Lançar esse feitiço irá recarregar mana para todos os Heretics com pelo menos o rank de Stranger.",
	["hereticrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um Rig em todas as escadas normais, uma por uma, com o Rig de Possessão. Escadas, quando acionadas, irão possuir o jogador que acionou. Eles terão que achar Mana para se libertarem. Jogadores possuídos não podem lançar feitiços. Chegue no rank Unbeliever para ganhar imunidade a esse rig. Chegue no rank Exiled para ganhar 1 de mana toda vez que alguém é possuído.",
	["hereticevent"] = "Esse é um feitiço de Evento. Ele irá tornar todas as escadas normais em esquemas baixos ou altos.",
	["hereticaltevent"] = "Esse é um feitiço de Evento. Ele irá amaldiçoar todas as escadas normais.",
	["hereticmode"] = "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Heretic. Drones no Modo Heretic, se a contagem de escadas estiver dentro dos limites, lançará feitiços de Escadas Esquemas e Rigs de Possessão em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--CHAMELEON
	["ditch"] = "Esse costumava ser um feitiço do Thief, mas foi rejeitado. Ele irá tornar escadas normais ou rigged em uma escada cruzada.",
	["warp"] = "Esse costumava ser um feitiço do Wicked. Ele irá deformar escadas normais ou rigged de volta para a plataforma.",
	["chameleonrigevent"] = "Esse é um feitiço de Rig. Ele irá causar um rig em todas as escadas normais, uma por uma, com o Rig de Mistério. Escadas quando acionadas, irão executar um rig aleatório de todos os outros rigs.",
	["chamdown"] = "Esse costumava ser um feitiço do Keeper, mas foi rejeitado. Ele irá mover qualquer escada normal ou rigged para baixo. Se você chegar no rank Captain do Keeper, você poderá movr escadas viradas.",
	["chamdraw"] = "Esse costumava ser um feitiço do Heretic, mas foi rejeitado. Ele irá tornar as escadas em uma ponte levadiça, descer é impossível a não ser que o feitiço seja lançado de baixo.",
	["chamdrawabove"] = "Esse costumava ser um feitiço do Heretic, mas foi recusado. Ele irá tornar as escadas acima em uma ponte levadiça, permitindo você passar. Subir é impossível a não ser que é o jogador ative a escada de cima. Rank Unbeliever não estará mais ativo e auto ativação por baixo não é mais possível.",
	["chameleonmode"] =  "Esse é um feitiço de Drone. Ele irá mudar o modo do drone para Chameleon. Drones no Modo Chameleon, se a contagem de escadas estiver dentro dos limites, lançará feitiços aleatórios de outros modos e Rigs de Mistério em escadas normais. Escadas especiais serão restauradas. Fora dos limites, os drones irão criar e destruir respectivamente.",
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}

--do not remove the unused ones, for compatibility
module.spells.manacosts = {
	"0 Mana",
	"1 Mana",
	"2 Mana",
	"3 Mana",
	"4 Mana", 
	"0 Mana + escadas",
	"1 Mana + escadas",
	"2 Mana + escadas",
	"3 Mana + escadas", 
	"", 
	"10 Mana" 
}

module.spells.tokencosts = {

	"1 Token",
	"2 Tokens",
	"3 Tokens",

	["chameleonrigevent"] = "2 Multi Tokens",
	["unlock"] = "(desbloqueie por 3 tokens)",
}

module.serverfeedback = {

	["scancel"] = "Cancele o feitiço para mudar de alinhamento",
	["morph"] = "Pule aqui para virar o %s",
	["raceclosed"] = "Corrida está fechada.",
	["stay"] = "Fique no círculo para participar da corrida!",
	["falsestart"] = "Começo falso",
	["secret"] = "Segredo encontrado!",
	["traveller"] = "Chegue no rank Traveller para impulsionar Drifts de Cima.",

	["noboost"] = "Não pode ser impulsionado, não há plataformas acima.",
	["platformlocked"] = "Plataforma alvo está trancada.",
	["strider"] = "Chegue no rank Strider para impulsionar o dobro nos Drifts de Cima.",
	["noupplatform"] = "Não pode ser impulsionado, não há plataformas acima.",
	["boosted"] = "Drift impulsionado!",
	["wrongdirection"] = "Você não pode lançar um feitiço nessa direção.",
	["cursed"] = "Escadas amaldiçoadas estão no caminho!",
	["banished"] = "Chegue no rank Banished para destruir escadas amaldiçoadas cruzantes.",
	["blocked"] = "Essa interseção está amaldiçoada.",
	["infidel"] = "Chegue no rank Infidel para des-amaldicoar interseções.",
	["admiral"] = "Chegue no rank Admiral para des-amaldicoar interseções.",
	["nostairs"] = "Não há escadas aqui.",
	["noground"] = "Esse feitiço não pode ser lançado no térreo.",
	["oddonly"] = "Esse feitiço não pode ser lançado nesse andar.",
	["reveal"] = "Você revelou escadas invisíveis!",
	["keeperrig"] = "Escadas estão se movendo!",
	["hackerrig"] = "Escadas estão bugando!",
	["jokerrig"] = "Escadas estão virando!",
	["wickedrig"] = "Escadas estão colapsando!",
	["spectrerig"] = "Escada fantasmou!",
	["notspectrerig"] = "Escada NÃO fantasmou!",
	["patronrig"] = "Você recebeu 1 de Mana, cortesia de %s!",
	["notpatronrig"] = "Você recebeu 1 de Mana, cortesia de (jogador saiu)!",
	["thiefrig"] = "%s tirou 1 de Mana!",
	["mythiefrig"] = "Você roubou 1 de Mana de %s",
	["notthiefrig"] = "%s não é um Thief mais - sem mana roubada.",
	["leftthiefrig"] = "Thief saiu do jogo -  sem mana roubada.",
	["hereticrig"] = "Você foi possuído!",
	["archonrig"] = "Teleporte de Phase!",
	["drifterrig"] = "Escadas estão rodando!",
	["noabove"] = "Não foram encontradas escadas acima.",
	["noblink"] = "Você só pode Piscar em escadas que estão te bloqueando.",
	["noblink2"] = "Você não pode Piscar em pontes ou escadas dobradas para baixo.",
	["linklimit"] = "Apenas \"feitiços de Acima\" podem ser executados em ligações.",
	["new20pass"] = "Limite de Mana aumentado!",
	["newchampass"] = "Você agora pode mudar de alinhamento durante uma escalada!",
	["newspectrepass"] = "Você agora pode virar um SPECTRE!",
	["charreset"] = "Reset do personagem eliminação.",
	["chamtutorial"] = "Você não pode usar o CHAMELEON no tutorial!",
	["champossessed"] = "Você não pode usar o Chameleon enquanto estiver possuído.",
	["chamspell"] = "Por favor execute ou cancele o feitiço selecionado primeiro.",
	["morphpossessed"] = "Você não pode mudar de alinhamento enquanto estiver possuído.",
	["nocode"] = "Por favor insira o código primeiro.",
	["invalid"] = "Esse código é inválido.",
	["old"] = "Esse código não está válido mais.",
	["accepted"] = "Código aceito.",
	["tryspectre"] = "Spectre está desbloqueado por 10 minutos! Não saia do servidor.",
	["endspectre"] = "Demonstração do Spectre irá terminar em 1 minuto!",
	["trycham"] = "Chameleon está desbloqueado por 10 minutos! Não saia do servidor.",
	["endcham"] = "Demonstração do Chameleon irá terminar em 1 minuto!",
	["trymana"] = "Maior armazenamento desbloqueado por 10 minutos! Não saia do servidor.",
	["endmana"] = "Demonstração do maior armazenamento irá terminar em 1 minuto!",
	["used"] = "Código já foi usado por você.",
	["tooshort"] = "Sua mensagem é curta demais e não será enviada.",
	["sent"] = "Sua mensagem foi enviada com sucesso, obrigado.",
	["noreshuffle"] = "Escolha o modo de Remodelação primeiro!",
	["oneoverload"] = "Você não pode ter mais de uma Sobrecarga de Mana ao mesmo tempo.",
	["overstarted"] = "Você ativou a Sobrecarga de Mana!",
	["overended"] = "Sobrecarga de Mana terminou.",
	["2minshare"] = "Pelo menos 2 de Mana requeridos...",
	["noshare"] = "Não há jogadores perto para você receber Mana...",
	["noinf"] = "Você não pode compartilhar Mana Infinita!",
	["toomuch"] = "%s tem o máximo de Mana!",
	["shared"] = "Mana compartilhada com %s!",
	["received"] = "%s compartilhou Mana com você!",
	["muted"] = "% está silenciado.",
	["unmuted"] =  "%s está des-silenciado.",
	["kicked"] = "%s foi expulso!",
	["banned"] = "%s foi banido!",
	["mekicked"] = "%s expulsou você do servidor.",
	["mebanned"] = "%s baniu você do servidor.",
	["permban"] = "%s baniu você desse jogo.",
	["kick"] = "%s expulsou você desse jogo.",
	["48ban"] = "%s baniu você por 48 horas.",
	["exiled"] = "Você foi banido desse servidor privado! VOCÊ NÃO ESTÁ BANIDO DO JOGO!",
	["permbanned"] = "Você foi banido desse jogo.",
	["timeout"] = "Seu banimento terminará em: %02i horas e %02i minutos.",
	["notinrace"] = "Você não pode mudar para o Modo Infinito durante uma corrida!",
	["notinreg"] = "Você não pode mudar para o Modo Infinito durante uma regeneração!",
	["infinite"] = "Servidor está agora no Modo Infinito!",
	["classic"] = "Servidor está agora no Modo Clássico!",
	["casual"] = "Jogadores casuais podem lançar feitiços agora!",
	["nocasual"] = "Jogadores casuais não podem mais lançar feitiços",
	["purge"] = "Expurgo agora irá causar uma regeneração no modo clássico!",
	["nopurge"] = "Expurgo não irá causar uma regeneração no modo clássico!",
	["noevens"] = "Níveis Par agora são restritos",
	["evens"] = "Níveis Par agora estão totalmente habilitados",
	["orbmoves"] = "Esfera Final agora irá se mexer aleatoriamente!",
	["orbstopped"] = "Esfera Final não irá se mexer aleatoriamente!",
	["infreg"] = "Escadaria irá se regenerar depois do modo infinito!",
	["noinfreg"] = "Escadaria não irá se regenerar depois do modo infinito!",
	["drones"] = "Drones pequenos habilitados!",
	["nodrones"] = "Drones pequenos desabilitados!",
	["dronefix"] = "Drones irão restaurar escadas!",
	["nodronefix"] = "Drones não irão restaurar escadas!",
	["droneunlock"] = "Drones irão remover interseções amaldiçoadas!",
	["nodroneunlock"] = "Drones não irão remover interseções amaldiçoadas!",
	["droneuncurse"] = "Drones irão restaurar escadas amaldiçoadas!",
	["nodroneuncurse"] = "Drones não irão restaurar escadas amaldiçoadas",
	["dronemove"] = "Drones irão mover escadas no modo padrão!",
	["nodronemove"] = "Drones não irão mover escadas no modo padrão!",
	["dronespin"] = "Drones irão rodar escadas no modo padrão!",
	["nodronespin"] = "Drones não irão rodar escadas no modo padrão!",
	["noinput"] = "Por favor insira um valor!",
	["nonumber"] = "Por favor insira um número!",
	["notrace"] = "Você não pode mudar os andares da escada durante uma corrida!",
	["notultimate"] = "Você não pode mudar os andares da escada durante um feitiço especial!",
	["notregen"] = "Você não pode mudar os andares da escada durante uma regeneração!",
	["wait"] = "Andares da torre estão mudando, por favor aguarde...",
	["duration"] = "Duração da corrida alterada (não irá afetar a corrida atual)",
	["init"] = "Intervalo inicial de tempo no modo infinito alterados",
	["reduction"] = "Redução de tempo do modo infinito alterados",
	["mininf"] = "Intervalo mínimo do modo infinito alterado",
	["cooldown"] = "Evento e rig tempo de espera alterados",
	["speed"] = "Velocidade dos drones pequenos alterados",
	["spin"] = "Tempo lançamento dos drones pequenos alterados",
	["max"] = "Alvo máximo de escadas alteradas",
	["min"] = "Alvo mínimo de escadas alteradas",
	["curse"] = "Mudança de escadas amaldiçoadas dos Drones alterados",
	["block"] = "Chance de interseção amaldiçoada do drone alterada",
	["lock"] = "Você não pode lançar feitiços agora",
	["ultwait"] = "Há outro feitiço especial em progresso. Por favor aguarde.",
	["regwait"] = "Você não pode causar Rigs ou Eventos, enquanto a escadaria está se regenerando.",
	["coolwait"] = "Você não pode causar Rigs ou Eventos agora, por favor aguarde.",
	["notfound"] = "Escadas não encontradas.",
	["normalrig"] = "Esse feitiço só funciona em escadas normais ou em escadas Rigged.",
	["locked"] = "Essas escadas estão trancadas.",
	["nocursedblink"] = "Você não pode Piscar através de escadas amaldiçoadas.",
	["isblocked"] = "Essa interseção já está amaldiçoada.",
	["cantblock"] = "Não pode amaldiçoar, há escadas aqui. (podem estar invisíveis)",
	["cantblock2"] = "Não pode amaldiçoar, há escadas cruzantes no caminho. (podem estar invisíveis)",
	["noway"] = "Há escadas no caminho. (podem estar invisíveis)",
	["noway2"] = "Há escadas cruzantes no caminho. (podem estar Invisíveis)",
	["noplatform"] = "Nenhuma plataforma encontrada nessa direção.",
	["nopass"] = "Passe só pode ser criado em plataformas externas.",
	["pass"] = "Já tem um Passe aqui.",
	["link"] = "Já tem uma Ligação aqui.",
	["outdrift"] = "Drift externo só pode ser executado em plataformas externas.",
	["cantgate"] = "Essa direção está bloqueada.",
	["wall"] = "Já tem uma Parede aqui.",
	["nocurse"] = "Apenas escadas normais, amaldiçoadas ou rigged podem ser amaldiçoadas/des-amaldicoadas.",
	["nogate"] = "Essas escadas estão portadas.",
	["noghost"] = "Apenas escadas fantasmadas podem ser des-fantasmadas.",
	["noflip"] = "Apenas escadas normais, viradas ou rigged podem ser viradas.",
	["prodigy"] = "Chegue no rank Prodigy para sobrepor portões.",
	["wrongsplit"] = "Outro portão deve estar na área de jogo.",
	["blockedplit"] = "Não pode criar divisão, interseção selecionada está amaldiçoada.",
	["cursedtarget"] = "Tem escadas amaldiçoadas naquele destino.",
	["lockedsplit"] = "Não pode criar divisão ainda, outras escadas estão trancadas.",
	["failedgate"] = "Criação de Divisão falhou.",
	["nomove"] = "Apenas escadas normais, viradas ou rigged podem ser movidas.",
	["controller"] = "Chegue no rank Controller, para mover escadas viradas.",
	["wrongmove"] = "Escadas não podem ser movidas para fora do jogo.",
	["blockedmove"] = "Não pode mover escadas, interseção selecionada está amaldiçoada.",
	["lockedmove"] = "Não pode mover escadas, escadas cruzantes estão trancadas.",
	["normal"] = "Essas escadas estão normais.",
	["nomad"] = "Chegue no rank Nomad para rodar escadas driftadas.",
	["hijacker"] = "Chegue no rank Hijacker para roubar qualquer escada.",
	["nocursesteal"] = "Escadas amaldiçoadas não podem ser roubadas.",
	["lockedinter"] = "Essa interseção está trancada.",
	["possessed"] = "Você não pode usar feitiços enquanto está amaldiçoado.",
	["lockedspell"] = "Esse feitiço está trancado!",
	["unlocked"] = "Feitiço desbloqueado!",
	["nomana"] = "Não há Mana o suficiente!",
	["spelllock"] = "Você não pode lançar feitiços agora",
	["notokens"] = "Não há Tokens o suficiente!",
	["nothere"] = "Você não pode usar esse feitiço no tutorial.",
	["onlyracers"] = "Apenas jogadores que estão na corrida podem lançar feitiços.",
	["cancelfirst"] = "Você precisa cancelar o feitiço atual primeiro...",
	["stashfull"] = "Seu armazenamento de escadas está cheio.",
	["stashempty"] = "Você deve roubar escadas primeiro antes de lançar esse feitiço.",
	["notdefault"] = "Drones precisam estar no modo Padrão primeiro. Por favor aguarde.",
	["cooldownwait"] = "Você não pode lançar Eventos ou Rigs agora, por favor aguarde %d segundos.",
	["nospellsnow"] = "Você não pode lançar feitiços agora.",

	["unknown"] = "Erro desconhecido.",

}

module.serverbroadcast = {
	["pranked"] = "%s trollou %s!",
	["found"] = "%s achou as escadas invisíveis de %s!",
	["disco"] = "%s está curtindo a música discoteca de %s.",
	["obby"] = "%s está tentando o parkour de %s.",
	["default"] = "Drones estão no modo padrão novamente.",
	["regen"] = "Escadaria está se regenerando.",
	["done"] = "Regeneração completa.",
	["union"] = "%s se uniu com seu fantasma!",
	["eliminated"] = "%s foi eliminado(a).",
	["won"] = "%s ganhou a corrida!",
	["falsestart"] = "Começo Falso",
	["countdown"] = "Corrida em %d segundos!",
	["2min"] = "Mínimo de 2 jogadores necessários para uma corrida clássica!",
	["noplayers"] = "Não há jogadores na corrida, modo infinito não irá começar!",
	["nojoin"] = "Corrida está fechada - jogadores não podem entrar.",
	["allfalse"] = "Todos os jogadores tiveram um Começo Falso!",
	["safety"] = "Andares da torre mudaram, essa corrida não irá começar.",
	["leader"] = "%s está na liderança!",
	["toolate"] = "Ninguém chegou no topo no tempo!",

}

module.localfeedback = {

	["cancel"] = "Cancele o outro feitiço primeiro!",
	["nomana"] = "Não há Mana o suficiente!",
	["notokens"] = "Não há Tokens o suficiente!",
	["unlocked"] = "Feitiço desbloqueado!",
	["maxmana"] = "Sua Mana já está no máximo!",
	["nopurchase"] = "Você não precisa comprar Mana no tutorial!",
	["hascham"] = "Você já tem o passe de jogo do Chameleon!",
	["hasspectre"] = "Você já tem o passe de jogo do Spectre!",
	["hasmana"] = "Você já tem o passe de jogo do Armazenamento Maior!",
	["nomuggle"] = "Você achou que teria algum feitiço secreto especial do Muggle, mas não tem.",
	["nocham"] = "Você achou que teria algum feitiço secreto especial do Chameleon, mas não tem.",
	["nonone"] = "Você achou que teria algum feitiço secreto especial do None, mas não tem.",
	["nounlocks"] = "Desbloqueie todos os feitiços básicos para ter acesso aos feitiços especiais!",
	["onetoken"] = "Você foi premiado com um %s Feitiço de Token!",
	["moretokens"] = "Você foi premiado com alguns %s Feitiço de Token!",
	["music"] = "Música alterada com sucesso.",
	["nomusic"] = "Música falhou ao carregar.",
	--this is teleport to other tower
	["noteleport"] = "Teleporte falhou!", 
	["norefresh"] = "Você não pode atualizar ainda.",

}

module.switchon = {

	["JOKER"] = "Você não irá mais revelar escadas invisíveis.",
	["WICKED"] = "Você não irá mais acionar Rigs do Wicked.",
	["KEEPER"] = "Você não irá mais acionar Rigs do Keeper.",
	["SPECTRE"] = "Você não irá mais acionar Rigs do Spectre.",
	["HACKER"] = "Você não irá mais acionar Rigs do Hacker.",
	["ARCHON"] = "Apenas divisões de cima irão te teleportar.",
	["DRIFTER"] = "Você não irá mais acionar Rigs do Drifter.",

}

module.switchoff = {

	["JOKER"] = "Você agora irá revelar escadas invisíveis.",
	["WICKED"] = "Você agora irá acionar Rigs do Wicked.",
	["KEEPER"] = "Você agora irá acionar Rigs do Keeper.",
	["SPECTRE"] = "Você agora irá acionar Rigs do Spectre.",
	["HACKER"] = "Você agora irá acionar Rigs do Hacker.",
	["ARCHON"] = "Todas as exceções da divisão para baixo irão te teleportar para baixo.",
	["DRIFTER"] = "Você agora irá acionar Rigs do Drifter.",
}

module.events = {
	["patronrigevent"] = "RIG DO PATRON EM PROGRESSO",
	["patronevent"] = "SOBRECARGA DE ESCADAS EM PROGRESSO",
	["patronaltevent"] = "EVENTO DE ENCOLHIMENTO",
	["jokerrigevent"] = "RIG DO JOKER EM PROGRESSO",
	["jokeraltevent"] = "EVENTO DO VIRA-VIRA",
	["jokerevent"] = "EVENTO CAPA",
	["wickedrigevent"] = "RIG DO WICKED EM PROGRESSO",
	["wickedaltevent"] = "EVENTO DO EXPURGO",
	["wickedevent"] = "EVENTO DA DESTRUIÇÃO",
	["keeperrigevent"] = "RIG DO KEEPER EM PROGRESSO",
	["keeperevent"] = "EVENTO DA REMODELAÇÃO",
	["keeperaltevent"] = "EVENTO DA RESTAURAÇÃO",
	["spectrerigevent"] = "RIG DO SPECTRE EM PROGRESSO",
	["spectreevent"] = "EVENTO FANTASMAGÓRICO",
	["spectrealtevent"] = "EVENTO DO FANTASMA",
	["hackerrigevent"] = "RIG DO HACKER EM PROGRESSO",
	["hackerevent"] = "EVENTO DA ESCADA ROLANTE",
	["hackeraltevent"] = "EVENTO DA ESCAPATÓRIA",
	["thiefrigevent"] = "RIG DO THIEF EM PROGRESSO",
	["thiefevent"] = "EVENTO DA PLANÍCIE",
	["thiefaltevent"] = "EVENTO DO DESVIO",
	["hereticrigevent"] = "RIG DO HERETIC EM PROGRESSO",
	["hereticevent"] = "EVENTO DO ESQUEMA",
	["hereticaltevent"] = "EVENTO DA MALDIÇÃO",
	["archonrigevent"] = "RIG DO ARCHON EM PROGRESSO",
	["archonevent"] = "EVENTO DA DIVISÃO",
	["archonaltevent"] = "EVENTO DIVISÓRIO",
	["drifterevent"] = "EVENTO DO DRIFT",
	["drifteraltevent"] = "EVENTO DO ELEVADOR",
	["drifterrigevent"] = "RIG DO DRIFTER EM PROGRESSO",
	["chameleonrigevent"] = "RIG DO CHAMELEON EM PROGRESSO",

}

module.finished = {

	["patronrigevent"] = "RIG DO PATRON COMPLETO",
	["patronevent"] = "SOBRECARGA DE ESCADAS CONCLUÍDA",
	["patronaltevent"] = "EVENTO DE ENCOLHIMENTO CONCLUÍDO",
	["jokerrigevent"] = "RIG DO JOKER COMPLETO",
	["jokeraltevent"] = "EVENTO VIRA-VIRA CONCLUÍDO",
	["jokerevent"] = "EVENTO CAPA CONCLUÍDO",
	["wickedrigevent"] = "RIG DO WICKED COMPLETO",
	["wickedaltevent"] = "EVENTO DO EXPURGO CONCLUÍDO",
	["wickedevent"] = "EVENTO DA DESTRUIÇÃO COMPLETO",
	["keeperrigevent"] = "RIG DO KEEPER COMPLETO",
	["keeperevent"] = "EVENTO DA REMODELAÇÃO CONCLUÍDO",
	["keeperaltevent"] = "EVENTO DA RESTAURAÇÃO CONCLUÍDO",
	["spectrerigevent"] = "RIG DO SPECTRE COMPLETO",
	["spectreevent"] = "EVENTO FANTASMAGÓRICO CONCLUÍDO",
	["spectrealtevent"] = "EVENTO DO FANTASMA CONCLUÍDO",
	["hackerrigevent"] = "RIG DO HACKER COMPLETO",
	["hackerevent"] = "EVENTO DA ESCADA ROLANTE CONCLUÍDO",
	["hackeraltevent"] = "EVENTO DA ESCAPATÓRIA CONCLUÍDO",
	["thiefrigevent"] = "RIG DO THIEF COMPLETO",
	["thiefevent"] = "EVENTO DA PLANÍCIE CONCLUÍDO",
	["thiefaltevent"] = "EVENTO DO DESVIO CONCLUÍDO",
	["hereticrigevent"] = "RIG DO HERETIC COMPLETO",
	["hereticevent"] = "EVENTO DO ESQUEMA CONCLUÍDO",
	["hereticaltevent"] = "EVENTO DA MALDIÇÃO CONCLUÍDO",
	["archonrigevent"] = "RIG DO ARCHON COMPLETO",
	["archonevent"] = "EVENTO DA DIVISÃO CONCLUÍDO",
	["archonaltevent"] = "EVENTO DIVISÓRIO CONCLUÍDO",
	["drifterevent"] = "EVENTO DO DRIFT CONCLUÍDO",
	["drifteraltevent"] = "EVENTO DO ELEVADOR CONCLUÍDO",
	["drifterrigevent"] = "RIG DO DRIFTER COMPLETO",
	["chameleonrigevent"] = "RIG DO CHAMELEON COMPLETO",

}

module.timedspells = {
	["summoner"] = "%s acabou de lançar o feitiço INVOCADOR!",
	["flipper"] = "%s acabou de lançar o feitiço VIRA-VIRA!",
	["bender"] = "%s acabou de lançar o feitiço DOBRADURA!",
	["ascension"] = "%s acabou de lançar o feitiço ASCENSÃO!",
	["traveller"] = "%s acabou de lançar o feitiço CINTILANTE!",
	["speedup"] = "%s acabou de lançar o feitiço HACK DE VELOCIDADE!",
	["heist"] = "%s acabou de lançar o feitiço ROUBO!",
	["splitter"] = "%s acabou de lançar o feitiço DIVISOR!",
	["riser"] = "%s acabou de lançar o feitiço ELEVADOR!",
	["malediction"] = "%s acabou de lançar o feitiço MALDIÇÃO!",

}

module.eventspells = {

	["patronrigevent"] = "%s acabou de causar um rig em todas as escadas normais com PRESENTE DE MANA",
	["patronaltevent"] = "%s acabou de encolher todas as escadas!",
	["patronevent"] = "%s acabou de sobrecarregar essa torre de escadas!",
	["jokeraltevent"] = "%s acabou de virar todas as escadas!",
	["jokerrigevent"] = "%s acabou de causar um rig em todas as escadas normais com o rig de Virar!",
	["jokerevent"] = "%s acabou de esconder todas as escadas normais!",
	["wickedrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de Destruição!",
	["wickedaltevent"] = "%s acabou de destruir TODAS as escadas!",
	["wickedevent"] = "%s acabou de destruir todas as escadas normais!",
	["keeperrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de Movimento Aleatório!",
	["keeperevent"] = "%s acabou de mover aleatoriamente todas as escadas!",
	["keeperaltevent"] = "%s acabou de restaurar todas as escadas!",
	["spectrerigevent"] = "%s acabou de causar um rig em todas as escadas normais com 50% de chance de fantasmar!",
	["spectreevent"] = "%s acabou de mover no modo fantasma todas as escadas!",
	["spectrealtevent"] = "%s acabou de fantasmar todas as escadas normais!",
	["hackerrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de GLITCH!",
	["hackerevent"] = "%s acabou de tornar todas as escadas normais em escadas rolantes!",
	["hackeraltevent"] = "%s acabou de tornar todas as escadas normais em escadas rolantes para cima!",
	["thiefrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de ROUBAR MANA!",
	["thiefevent"] = "%s acabou de planificar todas as escadas!",
	["thiefaltevent"] = "%s acabou de criar um desvio em todas as escadas!",
	["newmode"] = "%s acabou de mudar os drones para o modo %s !",
	["archonrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de PHASE!",
	["archonevent"] = "%s acabou de dividir aleatoriamente todas as escadas normais!",
	["archonaltevent"] = "%s acabou de dividir verticalmente todas as escadas normais!",
	["drifterrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de GIRAR!",
	["drifterevent"] = "%s acabou de driftar aleatoriamente todas as escadas normais!",
	["drifteraltevent"] = "%s acabou de levantar todas as escadas normais!",
	["hereticrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de possessão!",
	["hereticevent"] = "%s acabou de esquematizar todas as escadas normais!",
	["hereticaltevent"] = "%s acabou de amaldiçoar todas as escadas normais!",
	["patronrefill"] = "",
	["jokerrefill"] = "",
	["wickedrefill"] = "",
	["keeperrefill"] = "",
	["spectrerefill"] = "",
	["hackerrefill"] = "",
	["thiefrefill"] = "",
	["archonrefill"] = "",
	["drifterrefill"] = "",
	["hereticrefill"] = "",
	["swap"] = "",
	["chameleonrigevent"] = "%s acabou de causar um rig em todas as escadas normais com rig de mistério!"
}

--ERRATA

--stuff that was wrong
module.gui.settings["rank"] = "Mostrar o seu Rank geral no placar"
module.spells.descriptions["link"] = "Esse feitiço cria uma ponte de energia em plataformas por 60 segundos. Links são intangíveis se tocados de baixo. Chegue no rank Creator para extender esse tempo para 120 segundos"
module.spells.descriptions["outdrift"] = "Esse feitiço irá circular a plataforma abaixo em torno de toda a área de jogo no mesmo nível. Só pode ser lançado em plataformas externas."
module.spells.descriptions["indrift"] = "Esse feitiço irá criar uma prancha de surfe temporária, movendo você a uma plataforma da sua escolha."
module.spells.descriptions["move"] = "Esse feitiço irá mover as escadas em uma direção horizontal, destruindo qualquer escada no caminho. Depois de lançada, setas irão aparecer nas escadas, permitindo você escolher uma direção. Escadas não podem ser movidas para fora da área de jogo. Chegue no rank Controller para mover escadas viradas."
module.spells.descriptions["rotate"] = "Esse feitiço irá rodar as escadas em uma direção horizontal, destruindo qualquer escada no caminho. Depois de lançada, setas irão aparecer nas escadas, permitindo você escolher uma direção. Escadas não podem ser rodadas para fora da área de jogo. Chegue no rank Controller para rodar escadas viradas."

--stuff that was missing
module.static["vr_5"] = "Use seu thumbstick esquerdo para se mover para frente ou para trás. Rodar o thumbstick para os lados irão fazer você se mexer para a direita ou esquerda."
module.gui.ranks["next"] = "Clique na seta da direita para checar os requisitos para a próxima classificação."
module.serverfeedback["admiral2"] = "Chegue no rank Admiral para des-amaldicoar escadas"
module.serverfeedback["annihilator"] = "Chegue no rank Annihilator para destruir Escadas Amaldiçoadas."
module.serverfeedback["disciple"] = "Chegue no rank Disciple para destruir Divisões de Plataforma."
module.serverfeedback["toponly"] = "'Chamar a Esfera' só pode ser usado no último andar."
module.serverbroadcast["go"] = "JÁ!"
module.serverbroadcast["over"] = "Fim da corrida!"
module.tutorial["tut_small_init"] = "Pule para sumonar o tutorial"

module.static["dailies"] = "RECORDES DE HOJE"
module.static["most_climbs"] = "MAIS ESCALADAS"
module.static["most_wins"] = "MAIS VITÓRIAS NA CORRIDA" 

module.events["regen"] = "Escadaria está se regenerando"
module.finished["regen"] = "Regeneração completa"

module.spells.extras = {

	["Prompt"] = "Clique em um feitiço abaixo para aprender como usá-lo",
	["Title1"] = "Feitiços básicos",
	["Title2"] = "Feitiços especiais únicos",
	["Title3"] = "Feitiços especiais compartilhados",
	["ManaCost"] = "Custo de Mana: %s", 
	["TokenCost"] = "Custo de Token: %s", 
	["Special"] = "Requisitos especiais: %s",
	["Execution"] = "Execução: %s",
	["Description"] = "Descrição: %s",
	["basic"] = "Básico",
	["ultimate"] = "Especial",
	["unlock"] = "0 (3 para desbloquear)",
	["none"] = "Sem requisitos especiais",
}

module.gui.basic.jumpdelay = "delay no pulo"
module.gui.basic.dancetime = "HORA DE DANÇAR!"

--mana bar and mana messages - those will appear on the mana bars
module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "FANTASMA",
	["spirit"] = "SPIRIT", --only for spirit spectres
	["welcome"] = "BEM-VINDO(A)",
	["drones"] = "DRONES",
	["orb"] = "ESFERA",
	["refill"] = "REABASTECER", --for all 2nd rank bonuses
	["overload"] = "SOBRECARGA",
	["steal"] = "ROUBO",
	["gift"] = "PRESENTE",
	["share"] = "COMPARTILHAR",
	["prank"] = "PEGADINHA",
	["possession"] = "POSSESSÃO",
	["ritual"] = "RITUAL",
	["purge"] = "EXPURGO",
	["blessing"] = "BÊNÇÃO",
	["hack"] = "HACK",
	["stash"] = "ESCONDERIJO",
	["backdoor"] = "PORTA DOS FUNDOS",
	["chamber"] = "CÂMARA",
	["base"] = "BASE",
	["circus"] = "CIRCO",
	["shelter"] = "ABRIGO",
	["haven"] = "REFÚGIO",
	["study"] = "ESTUDE",
	["nether"] = "NETHER",
	["guild"] = "GUILDA",
	["nexus"] = "NEXO",
	["oasis"] = "OÁSIS",
}

module.gui.hints = {
	["bcancel"] = "Pressione B para cancelar", --xbox b
	["acancel"] = "Clique novamente para cancelar",
	["ocancel"] = "Cancele o outro feitiço primeiro", 
}

module.gui.gameover.extras = {

	["noobs"] = "Tutoriais são para noobs!",
	["possessed"] = "Aqueles Heretics irritantes!",
	["new"] = "Nova classificação adquirida - %s",
	["none1"] = "ESPERA! O QUÊ?",
	["none2"] = "Esse jogo",
	["none3"] = "tem feitiços?"

}

module.gui.gameover.raceplacements = {
	"VOCÊ GANHOU A CORRIDA!",
	"SEGUNDO LUGAR!",
	"TERCEIRO LUGAR!",
	"Você ficou em quarto lugar.",
	"Você ficou em quinto lugar.",
	"Você ficou em sexto lugar.",
	"Você ficou em sétimo lugar.",
	"Você ficou em oitavo lugar.",
	"Você ficou em nono lugar.",
	"Você ficou em décimo lugar.",
	"Você ficou em décimo primeiro lugar.",
	"Você ficou em décimo segundo lugar.",
}

return module

