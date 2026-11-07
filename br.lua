--UNFINISHED
--BRAZILIAN PORTUGUESE

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["default"] = "PADRÃO",
	["validate"] = "VALIDAR",
}

module.gui.switcher = {

	["join"] = "ENTRAR",
	["friends"] = "AMIGOS ONLINE",
	["refresh"] = "recarregando…",
	["fail"] = "FALHA AO RECARREGAR!",

  	["refreshbutton"] = "REFRESH", --HERE
	["failed"] = "Teleport failed!",
	["classic"] = "Normal Tower",
	["pro"] = "Pro Tower",
	["custom"] = "Custom Tower",
	["basic"] = "Basic Tower",

}

module.gui.serversettings = {

	["Drones"] = "CONFIGURAÇÕES DO DRONE",
	["DronesReadOnly"] = "CONFIGURAÇÕES DO DRONE (apenas para leitura)",
	["DroneEnabled"] = "Drones ativados",
	["DroneFix"] = "Drones restauram escadas",
	["DroneRemove"] = "Drones removem intercessões amaldiçoadas",
	["DroneUnCurse"] = "Drones restauram escadas amaldiçoadas",
	["DroneMove"] = "Drones movem escadas no modo padrão",
	["DroneSpin"] = "Drones giram escadas no modo padrão",
	["DroneSpeed"] = "Velocidade de movimento do Drone (nível/segundo)",
	["DroneDelay"] = "Duração de giro do Drone (segundos)",
	["DroneMax"] = "Quantia máxima de escadas (Drones vão exclusivamente destruir acima deste limite)",
	["DroneMin"] = "Quantia mínima de escadas (Drones vão exclusivamente criar abaixo deste limite)",
	["DroneBlock"] = "Chance de intercessão amaldiçoada a cada intercessão normal (por cento)",
	["DroneCurse"] = "Chance para criação de escadas amaldiçoadas e escadas normais (por cento)",

	["Tower"] = "CONFIGURAÇÕES DE TORRE",
	["TowerReadOnly"] = "CONFIGURAÇÕES DE TORRE (apenas para leitura)",
	["InfMode"] = "Modo Infinito (não pode ser alterado durante uma corrida ou regeneração)",
	["CasualPlayers"] = "Jogadores casuais podem usar feitiços",
	["Regeneration"] = "Geração automática de escadas após expurgo do Wicked (não funcionará no Modo Infinito)",
	--["EvenLevels"] = "Níveis pares restritos",
    ["TowerSize"] = "Tower grid size (experimental)", --HERE
	["OrbMoves"] = "Esfera no fim do jogo muda de lugar",
	["InfRegeneration"] = "Geração automática de escadaria após entrar no servidor, mudança de níveis na torre ou uma Corrida Infinita",
	["TowerLevels"] = "Níveis de torre (ou níveis ativos no modo infinito). Não podem ser mudados durante uma corrida ou regeneração",
	["RaceDuration"] = "Tempo máximo de uma corrida. Não vai afetar a corrida atual (segundos)",
	["InfStart"] = "Intervalo de rounds iniciais no Modo Infinito (2 níveis por round) (segundos)",
	["InfReduction"] = "Redução de intervalo do Modo Infinito (cada round é menor em) (segundos)",
	["InfMin"] = "Intervalo mínimo do Modo Infinito (segundos)",
	["CooldownTime"] = "Período de espera de Eventos e Rigs (segundos)",

}

module.gui.shop = {

  	["architect"] = "The Architect game pass allows you to become an Architect without a VR headset.", --HERE
	["chameleon"] = "Chameleons podem mudar de Alinhamento no meio de escaladas.",
	["spectre"] = "Spectre é focado em teletransporte e é o melhor para jogar sozinho.",
	["mana"] = "Expande o seu limite de Mana por 10.",

	["3tokens"] = "Desbloqueie um feitiço ou use até 3 feitiços supremos.",
	["30tokens"] = "Desbloqueie dez feitiços ou use até 30 feitiços supremos.",
	["300tokens"] = "Suficiente para desbloquear todos os feitiços, sobrando 93 tokens.",

	["3TOKENS"] = "3 Multi Tokens (R$%d)",
	["30TOKENS"] = "30 Multi Tokens (R$%d)",
	["300TOKENS"] = "300 Multi Tokens (R$%d)",
	["SPECTRE PASS"] = "Game Pass do Spectre (R$%d)",
	["MANA PASS"] = "20 Mana Storage Game Pass (R$%d)",
	["CHAMELEON PASS"] = "Game Pass do Chameleon (R$%d)",
  	["ARCHITECT"] = "Game Pass do Architect (R$%d)",

}

module.gui.nospellbar = {

    ["nocasual"] = "APENAS PESSOAS QUE ESTÃO NA CORRIDA PODEM USAR FEITIÇOS",
    ["possessed"] = "POSSUÍDO! (Encontre mana para se livrar)",

    ["permanent"] = "POSSUÍDO! (permanent mode)", --HERE
    ["cancelled"] = "CANCELLED...", --timed spell cancelled
} 

module.gui.stats = { --HERE

	["badges"] = "YOUR BADGES",
	["climbs"] = "YOUR CLIMBS",
	["total"] = "TOTAL CLIMBS/WINS",
	["best"] = "BEST TIME OVERALL",
	["norecord"] = "[no record]",

	["2124486274"] = "Prank the Creator",
	["1803533030753957"] = "Black Hole",
	["2124480173"] = "Wicked's Treason",
	["2124480172"] = "Joker's Trick",
	["2124637294"] = "Drifter's Voyage",
	["2124517579"] = "Thief's Heist",
	["4464785885277417"] = "Splicer's Twist",
	["2124480174"] = "Keeper's Order",
	["2124637293"] = "Archon's Connection",
	["2124517578"] = "Hacker's Exploit",
	["707445818894757"] = "Gremlin's Spiral",
	["2124480171"] = "Patron's Pride",
	["1407551481032773"] = "Reaver's Reflection",
	["2124637295"] = "Heretic's Curse",
	["1885715582646280"] = "Necromancer's Rite",
	["2124480175"] = "Muggle's Logic",
	["2124826874"] = "Full Circle",
	["2124529966"] = "None's Nothing",
	["2124826880"] = "Possessed Fate",
	["3731010929572663"] = "Hypnotised Dream",
	["840574993122888"] = "Perspective Reflected",
	["2124913225"] = "Architect's Design",
	["2124702954"] = "Rootkit instalado",
	["2124702945"] = "Destruir tudo!",
	["2124702946"] = "Ordem restaurada",
	["128721686760593"] = "Você me faz girar e girar.",
	["2124702952"] = "Eu vou pegar o elevador",
	["3121101516427751"] = "The Entanglement",
	["2124702942"] = "Deixar nenhum noob para trás",
	["2124702950"] = "Illuminati Confirmado",
	["2124702951"] = "Meu, meu, tudo MEU!",
	["1165646024608180"] = "Nós somos um.",
	["2303731210592278"] = "Rise, Rise, RISE!",
	["2124702949"] = "Excommunication",
	["2124702943"] = "Fazer pegadinhas é viver",
	["2124702948"] = "Feitiços são superestimados",
	["2124826876"] = "Perfect Circle",
	["2124645341"] = "Secret Badge",
	["2126893403"] = "Super Secret Badge",
	["2126893411"] = "Mega Secret Badge",

}


module.gui.questions = { --here
	["cancel"] = "Você quer cancelar este feitiço cronometrado? Os Tokens não serão reembolsados.",
	["tutorial"]= "Would you like to play the tutorial?",
	["skip"] = "Would you like to skip the tutorial?",
	["reshuffle"] = "Você quer que as escadas evitem colisões enquanto se movem? Se não, quaisquer escadas no caminho serão destruídas.",
	["tonormal"] = "%s alignment is not available in the Basic Tower. Would you like to teleport to the Normal Tower?",
	["raceconfirm"] = "Are you sure you want to join the race? You will be teleported to the bottom of the tower.",
	["notenough"] = "You need to complete at least %d climbs to be able to teleport to other towers.",

	--new
	["gift"] = "Do you want to gift %s Game Pass to another player?",
	["choose"] = "Choose a player to receive %s Game Pass", 
	["confirm"] = "Do you want to gift %s Game Pass to %s?", --second %s is the chosen player
	["received"] = "You have received %s Game Pass, courtesy of %s!",

	["architect"] = "Architect",
	["mana"] = "+10 Mana Storage",
	["spectre"] = "Spectre",
	["chameleon"] = "Chameleon",

	--end new
	--new
	["race"] = "Join race?",
	["racein"] = "Race in:",
	["go"] = "GO!",
	["raceoff"] = "Race cancelled",
	--end new
}

module.gui.codes = {

	["title"] = "INSIRA O CÓDIGO",
	["body"] = "Coloque o seu código aqui:",
	["prompt"] = "(código)",
	["button"] = "VALIDAR",

}

module.gui.jukebox = {

	["title"] = "CAIXA DE SOM",

	["master"] = "VOLUME PRINCIPAL",
	["default"] = "(usando volume principal)",
	["climb"] = "MÚSICA DE ESCALADA",
	["endgame"] = "MÚSICA DO FIM DE JOGO",
	["failed"] = "[falha ao carregar]",
    ["off"] = "MUTED", --HERE

}

module.gui.results = { --HERE

	["title"] = "RESULTADOS DA CORRIDA",

	["place"] = "LUGAR",
	["name"] = "NOME",
	["level"] = "NÍVEL MÁXIMO",
	["time"] = "TEMPO",
	["rank"] = "RANK",
	["not"] = "N/A",
	[1] = "VENCEDOR",
	[2] = "Segundo lugar",
	[3] = "Terceiro lugar",
	[4] = "Quarto lugar",
	[5] = "Quinto lugar",
	[6] = "Sexto lugar",
	[7] = "Sétimo lugar",
	[8] = "Oitavo lugar",
	[9] = "Nono lugar",
	[10] = "Décimo lugar",
	[11] = "Décimo primeiro lugar",
	[12] = "Décimo segundo lugar",

}

module.gui.menu = { --HERE

	["Codes"] = "Code entry",
	["Feedback"] = "Send game feedback",
	["Language"] = "Change game language",
	["Music"] = "Music Jukebox",
	["RaceResults"] = "Last race results",
	["ServerSettings"] = "Tower Settings (Custom Tower)",
	["Settings"] = "Game settings",
	["Shop"] = "Buy game passes and tokens",
	["Spectate"] = "Spectate other players",
	["Stats"] = "Your badges and achievements",
	["SwitchServer"] = "Switch Tower",
	["Tokens"] = "Your tokens",
	["Tutorial"] = "Play the Tutorial",

}

--NEW
--end screen tutorial
module.gui.tutorial = {

	["complete"] = "CLIMB COMPLETED!",
	["choose"] = "Please choose your first alignment! (jump on a morph pad)",
	["collect"] = "COLLECT THE ORB TO CONTINUE",
	["difficulty"] = "Difficulty:",

}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "Rig do %s",
	["mode"] = "Drones %s Mode",
	["refill"] = "Sobrecarga de Mana (%s)",
	["union"] = "União com o Fantasma (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Criar Escada",
	["restore"] = "Chamar a Esfera", 
	["split"] = "Reconstruir o Oposto",
	["shrinkabove"] = "Encolher Escada Acima",
	["link"] = "Criar Link",
	["portal"] = "Criar Portal",

	["summoner"] = "Sumonar",
	["patronevent"] = "Sobrecarga de Escadas",
	["patronaltevent"] = "Encolhimento",

	--JOKER 
	["flip"] = "Virar Escada",
	["flipabove"] = "Girar Escada de Cima",
	["fake"] = "Criar Escada Falsa",
	["invisible"] = "Criar Escada Invisivel",
	["disco"] = "Escada Discoteca",
	["trap"] = "Criar Armadilha",

	["flipper"] = "Girador",
	["jokerevent"] = "A Capa",
	["jokeraltevent"] = "Vire Todas Elas",

	--WICKED
	["destroy"] = "Destruir Escadas",
	["destroyabove"] = "Destruir Escadas de Cima",
	["bend"] = "Dobrar Escada para Cima",
	["damage"] = "Danificar Escada de Cima",
	["flatten"] = "Dobrar Escada Oposta para Baixo",
	["wall"] = "Criar Parede" ,

	["bender"] = "Curvador",
	["wickedevent"] = "Destruição",
	["wickedaltevent"] = "Expurgo",

	--KEEPER
	["move"] = "Mover Escada",
	["rotate"] = "Rotacionar Escada",
	["moveup"] = "Mover Escada para Cima",
	["movedown"] = "Restaurar Escada",
	["moverandom"] = "Mover Aleatoriamente a Escada Acima",
	["rig"] = "Mover Aleatoriamente",

	["ascension"] = "Ascensão",
	["keeperevent"] = "Re-embaralhar",
	["keeperaltevent"] = "Restauração",

	--SPECTRE
	["phantom"] = "Criar Escada Fantasma",
	["ghost"] = "Fantasmagorizar Escada de Cima",
	["shadow"] = "Fantasmagorizar Escada",
	["horizontal"] = "Teleporte Horizontal",
	["random"] = "Teleporte Aleatório",
	["vertical"] = "Teleporte Vertical",

	["traveller"] = "Cintilante",
	["spectreevent"] = "Embaralhamento Fantasma",
	["spectrealtevent"] = "Reino Æther",

	--HACKER
	["dash"] = "Dash",
	["blink"] = "Piscar",
	["swap"] = "Trocar",
	["slide"] = "Escada Rolante",
	["slideup"] = "Hackear Escada",
	["glitch"] = "Bugar Escada",

	["hack"] = "Hack de Velocidade",
	["hackerevent"] = "Escalação",
	["hackeraltevent"] = "Violação",

	--THIEF
	["steal"] = "Roubar Escada",
	["stealabove"] = "Roubar Escada de Cima",
	["place"] = "Colocar Escada",
	["uppass"] = "Escada em Espiral",
	["sidepass"] = "Criar Atalho",
	["drop"] = "Abandonar Escada",

	["heist"] = "Roubo",
	["thiefevent"] = "Terra Plana",
	["thiefaltevent"] = "Mega Atalho",

	--ARCHON
	["splitup"] = "Criar Portão para Cima",
	["splitrotate"] = "Criar Portão Rotacionado",
	["splitside"] = "Criar Portão Reto",
	["splitrandom"] = "Criar Portão Aleatório",
	["cancelsplit"] = "Destruir Portão",
	["splitforward"] = "Criar Portão de Plataforma",

	["splitter"] = "Portalmania",
	["archonevent"] = "Portão de Escada-1",
	["archonaltevent"] = "Divisão",

	--DRIFTER
	["indrift"] = "Surfar",
	["outdrift"] = "Drift Aleatório",
	["updrift"] = "Elevador",
	["diagdrift"] = "Drift Diagonal",
	["spin"] = "Girar Escada",
	["driftabove"] = "Levantar Escada de Cima",

	["riser"] = "Levantador",
	["drifterevent"] = "Driftagem",
	["drifteraltevent"] = "Levantamento",

	--HERETIC
	["createcursed"] = "Criar Escada Amaldiçoada",
	["curse"] = "Amaldiçoar Escada",
	["curseabove"] = "Amaldiçoar Escada de Cima",
	["curseinter"] = "Oscilar",
	["autodown"] = "Cisma para Cima",
	["autoup"] = "Schism Opposite Down", --HERE

	["malediction"] = "Maldição",
	["hereticevent"] = "Desunião",
	["hereticaltevent"] = "Vingança",

	--SPLICER
	["twistup"] = "Emendar Escadas para Cima",
	["twistside"] = "Emendar Escadas Paralelas",
	["twistrotate"] = "Emendar Escadas Adjacentes",
	["canceltwist"] = "Restaurar Escadas Emendadas",
	["split2"] = "Partir Escadas",
	["splitalt"] = "Partir Escadas para Frente",

	["twister"] = "Distorcedor",
	["splicerevent"] = "Entrelaçar",
	["spliceraltevent"] = "Bissectar",
	
	--NECROMANCER
	["createdual"] = "Criar Escada Dupla",
	["copyplatform"] = "Copiar Plataforma do Fantasma",
	["soulbridge"] = "Criar Ponte de Alma",
	["undeadabove"] = "Remover Alma Acima",
	["revival"] = "Ponto de Renascimento",
	["regen"] = "Regenerar Mana",

	["duality"] = "Dualidade",
	["necromancerevent"] = "Ressureição",
	["necromanceraltevent"] = "Colheita de Almas",
	
	--REAVER
	["createmirrored"] = "Criar Escada Espelhada",
	["bigmirror"] = "Espelho Gigante",
	["smallmirror"] = "Espelho Pequeno",
	["outermirror"] = "Espelho para Fora",
	["merge"] = "Combinação do Reaver",
	["oneway"] = "Glass Stairs", --HERE

	["reflection"] = "Reflexão",
	["reaverevent"] = "Encruzilhada",
	["reaveraltevent"] = "Vitrification", --HERE
	
	
	--GREMLIN
	["tram"] = "Criar Escada Metrô",
	["screwup"] = "Random Above Crazy Stairs", --HERE
	["revolve"] = "Girar Escada",
	["trapstairs"] = "Escada de Alçapão",
	["screwdown"] = "Crazy Stairs", --HERE
	["spinplatform"] = "Girar Plataforma",

	["tramway"] = "Caminho de Metrô",
	["gremlinevent"] = "Revolução",
	["gremlinaltevent"] = "Impasse",

	--CHAMELEON
	["cork"] = "Corkscrew Stairs", --HERE
	["warp"] = "Dobrar Escada",
	["chamdown"] = "Mover Escada para Baixo",
	["chamdraw"] = "Ponte de Dobra para Baixo",
	["oneways"] = "Escada de Sentido Único",
	["chamdrawabove"] = "Ponte de Dobra para Cima",

	--MISC (compatibility) HERE
	["mugglereg"] = "Escadaria está regenerando",
	["mugglecd"] = "Events and Rigs Cooldown",
	["share"] = "Share mana (requires 2 Mana minimum)",

	--ARCHITECT HERE
	["archpatron"] = "Create or shrink",
	["archarchon"] = "Gate stairs or platform",
	["archthief"] = "Steal or place",
	["archnecro"] = "Dual or Undead stairs",
	["archhacker"] = "Escalator or Hack-in",
	["archkeeper"] = "Move or Restore",
	["archsplicer"] = "Splice or Split",
	["archwicked"] = "Wall or Destroy",
	["archgremlin"] = "Revolve stairs or a platform",
	["archjoker"] = "Fake or Flip stairs",
	["archdrifter"] = "Drift or Elevator",
	["archspectre"] = "Phantom or Ghost stairs",
	["archreaver"] = "Mirrored or One-way stairs",
	["archheretic"] = "Curse intersection or stairs",

}

-- common description stuff
local union = "Este é um feitiço de União de Fantasma cronometrado. Quando estiver no modo União de Fantasma, você pode passar por escadas que bloqueiam seu caminho e andar em escadas fantasmas, falsas e obby. Escadas especiais não terão efeitos em você, e você não pode ativar Rigs. Porém, você não pode usar feitiços neste modo."
local overload = "Este é um feitiço de Sobrecarga. Ele vai te dar Mana a cada 6 segundos por 1 minuto (10 no total). Você só pode ter uma Sobrecarga ativa por vez."
local timed = "Este feitiço é cronometrado. "  -- do not remove space
local rig = "Este é um feitiço de Rig. Ele vai aplicar o Rig em todas as escadas normais, uma por uma, com " -- do not remove space
local event = "Este é um feitiço de Evento. Ele vai afetar todas as escadas normais com " -- do not remove space
local fill = "Este é um feitiço de Preenchimento. Ele vai criar escadas em todas as intercessões não amaldiçoadas numa direção aleatória. " -- do not remove spaces
local mode = "Este é um feitiço de Drone. Ele vai mudar o modo do Drone para %s. Neste modo os Drones vão usar %s ou %s em escadas normais. Escadas especias serão restauradas. Fora dos limites, os Drones vão criar e destruir respectivamente."
local timedExtra = " Evolua para %s para aumentar o limite para 90s. Usar este feitiço também vai regenerar a Mana de todos os %s com pelo menos o Rank %s." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Este feitiço te permite criar uma escada na direção escolhida. Caso haja alguma escada no caminho, ela será destruída.",
	["restore"] = "Este feitiço chama a Esfera no topo para a plataforma escolhida. Evolua para DEFENDER para diminuir o custo para 2. Evolua para SAVIOUR para dobrar a velocidade que a Esfera vem até você.",
	["split"] = "Este feitiço recria a escada abaixo na direção oposta. A escada recriada será normal independentemente do tipo original da escada. Rank up to PROTECTOR to be able to rebuild any un-cursed stairs.", --here
	["shrinkabove"] = "Este feitiço encolhe a escada acima, deixando você andar em volta dela.",
	["link"] = "Este feitiço cria uma ponte de energia entre duas plataformas por 60 segundos. Links não são tocáveis por baixo. Evolua para CREATOR to cast Link in any direction.", --here
	["portal"] = "Este feitiço cria um portal que leva os jogadores uma plataforma para cima. O portal dura 60 segundos.",

	["summoner"] = timed ..  "Deixa você criar quantas escadas quiser por 1 minuto. Continue pulando nas setas para criar escadas." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."o Patron Rig. Patron Rig, quando ativado, vai aumentar a Mana de quem ativar por 1. Se o jogador tiver o máximo de Mana, as escadas não serão ativadas. Após a ativação, as escadas voltarão ao normal.",
	["patronevent"] = fill ..  "Escadas criadas serão normais.",
	["patronaltevent"] = event .. "o feitiço de encolhimento.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Feitiço de Diminuição"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Este feitiço gira a escada de cabeça para baixo, ou seja, a parte superior vira a inferior e vice-versa. Você também pode virar as escadas de volta.",
	["flipabove"] = "Este feitiço gira a escada de cima, ou seja, a parte superior vira a inferior e vice-versa. Você também pode girar as escadas de volta.",
	["fake"] = "Este feitiço te permite criar escadas falsas na direção escolhida. Se houvér uma escada no caminho, ela será destruída. Qualquer jogador (incluindo você) que tentar passar por elas irá cair, com excessão de TRICKSTERS, ITS e jogadores com a União Fantasma.",
	["invisible"] =  "Este feitiço cria escadas invisíveis. Porém, isso não destruirá escadas no caminho, o que significa que você tem que colocá-las em intercessões vazias. Evolua para JESTER para poder ver as escadas invisíveis e ter a opção de não as revelar.",
	["disco"] = "Este feitiço coloca a escada no modo discoteca. Qualquer jogador (incluindo você) vai parar pra dançar nelas por 5 segundos (normalmente 2 vezes). Evolua para COMIC para ser imune a escadas discoteca.",
	["trap"] = "Este feitiço transforma a plataforma em uma armadilha por 60 segundos. Qualquer jogador (incluindo você) vai cair para a plataforma de baixo após pisar na armadilha. Evolua para JOKESTER para poder detectar armadilhas. Evolua para TRICKSTER para ser imune a armadilhas.",

	["flipper"] = timed ..  "Permite você usar quantos feitiços de Girar Escada que quiser por 1 minuto. Se houver escadas acima, ela será girada. Se não, as escadas de baixo serão giradas."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "o Joker Rig. Escadas, quando ativadas, vão girar automaticamente.",
	["jokerevent"] = event .. "a invisibilidade.",
	["jokeraltevent"] = event .. "o feitiço de Girar.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Invisible Spell"), --here
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Este feitiço destrói escadas. Diferente de outros feitiços, ele vai funcionar em qualquer escada. Evolua para VILE para usar este feitiço de graça. Evolua para VICIOUS para ganhar 1 de Mana toda vez que destrói uma escada especial. Evolua para ANNIHILATOR para destruir escadas amaldiçoadas.",
	["destroyabove"] = "Este feitiço destrói a escada de cima. Diferente de outros feitiços, ele vai funcionar em qualquer escada. Evolua para VICIOUS para ganhar 1 de Mana toda vez que destrói uma escada especial. Evolua para ANNIHILATOR para destruir escadas amaldiçoadas.",
	["bend"] = "Este feitiço dobra a escada. Use ele novamente para ganhar acesso a plataforma de cima. It can also be used on below stairs for trolling purposes.", --HERE
	["damage"] = "Este feitiço transforma a escada de cima em um obby, quebrando a maioria de seus degraus. Antes de tentar, lembre-se que você tem tempo de espera no pulo. Evolua para DESTROYER para andar em escadas obby como se fossem normais.",
	["flatten"] = "Este feitiço dobra a escada para baixo. Use ele para ganhar acesso a plataforma oposta.",
	["wall"] = "Este feitiço cria uma parede com um link para a plataforma oposta por 60 segundos. Apenas Wicked e Uniões Fantasma podem passar por essas paredes e links.",

	["bender"] = timed .. "Te permite usar quantos dobrar escada para cima você quiser por 1 minuto. Tanto a escada de baixo e de cima serão dobradas caso os requisitos sejam atendidos."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "o Wicked Rig. Escadas quando ativadas vão se destruir automaticamente. Evolua para DEVIL para andar em Wicked Rigs sem os ativar.",
	["wickedevent"] = event .. "o feitiço de Destruir. Regeneração não será ativada.",
	["wickedaltevent"] = "Este é um feitiço de evento. Ele vai destruir todas as escadas e maldições no jogo. Sem exceções. Regeneração vai ser ativada.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","Feitiço de Dobrar"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Este feitiço move escadas no estilo horizontal, destruindo qualquer escada em seu caminho. Após equipar, setas aparecerão na escada para você escolher a direção. Escadas não podem ser movidas para fora da área do jogo. Evolua para CONTROLLER para mover qualquer escada não amaldiçoada.",
	["rotate"] = "Este feitiço vai rotacionar a escada no sentido horizontal, destruindo qualquer escada no caminho. Após equipar, setas aparecerão na escada para você escolher a direção. Escadas não podem ser rotacionadas para fora da área do jogo. Evolua para CONTROLLER para rotacionar qualquer escada não amaldiçoada.",
	["moveup"] = "Este feitiço vai mover as escadas para cima, destruindo qualquer escada no caminho. Escadas não podem ser movidas acima do topo. Evolua para CONTROLLER para mover qualquer escada não amaldiçoada.",
	["movedown"] = "Este feitiço restaura qualquer escada especial. Se as escadas já estiverem normal, este feitiço não será executado. Evolua para CAPTAIN para usar este feitiço de graça. Evolua para ADMIRAL para consertar escadas e intercessões amaldiçoadas.",
	["rig"] = "Este feitiço move ou rotaciona a escada em um sentido aleatório, destruindo qualquer escada no seu caminho. Evolua para OPERATOR para evitar escadas indo para baixo. Evolua para CONTROLLER para mover qualquer escada não amaldiçoada.",
	["moverandom"] = "Este feitiço vai mover a escada acima em uma direção aleatória, destruindo qualquer escada no seu caminho. Evolua para OPERATOR para evitar escadas indo para baixo. Evolua para CONTROLLER para mover qualquer escada não amaldiçoada.",

	["ascension"] = timed .. "Te permite usar quantos feitiços de mover escada para cima quiser por um minuto."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "o Keeper Rig. Escadas, quando ativadas, vão se mover para uma direção aleatória. Evolua para OPERATOR para evitar que estas escadas te levem para baixo. Evolua para SENTINEL para ter a opção de evitar estes Rigs.",
	["keeperevent"] = event .. "o feitiço de movimento aleatório. Antes de executar você pode escolher entre o modo fraco e o modo forte. No modo fraco, este feitiço vai mover ou rotacionar escadas em um sentido aleatório, sem destruir nenhuma no caminho. No modo forte, este feitiço vai mover ou rotacionar escadas em um sentido aleatório, destruindo qualquer escada no caminho.",
	["keeperaltevent"] = "Este é um feitiço de evento. Ele vai restaurar todas as escadas do jogo, incluindo as amaldiçoadas. Diferente do Expurgo, ele não vai destruir intercessões amaldiçoadas.",
	["keepermode"] =  "Este é um feitiço de Drone. Ele vai mudar o modo do Drone para Keeper. Neste modo os Drones vão usar Keeper Rig ou Random Move Spell on any un-cursed stairs. Escadas especias serão restauradas. Fora dos limites, os Drones vão criar e destruir respectivamente.", --HERE
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Este feitiço vai criar uma escada fantasma na direção escolhida. Se tiver alguma escada no caminho, ela será destruída. Escadas Fantasma vão desaparecer rapidamente após serem criadas, sumindo completamente.",
	["ghost"] = "Este feitiço te permite fantasmagorizar a escada acima. Você pode passar por escadas fantasmagorizadas, mas não pode andar nelas a não ser que você tenha o Rank Aether. Use este feitiço novamente para desfantasmagorizar as escadas.",
	["shadow"] = "Este feitiço te permite fantasmagorizar escadas. Você pode passar por escadas fantasmagorizadas, mas não pode andar nelas a não ser que você tenha o Rank Aether. Evolua para PHANTOM para usar este feitiço de graça. Use este feitiço novamente para desfantasmagorizar as escadas.",
	["horizontal"] = "Este feitiço te permite teletransportar horizontalmente na direção escolhida. Você pode teletransportar por qualquer escada não amaldiçoada.",
	["random"] = "Este feitiço te teleporta para uma plataforma aleatória no mesmo nível.",
	["vertical"] = "Este feitiço te teleporta para a plataforma de cima.",

	["traveller"] = timed ..  "Te permite usar quantos feitiços de teletransporte horizontal quiser por um minuto."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "o Spectre Rig. Escadas, quando ativadas, vão ter 50% de chance de se fantasmagorizar. Evolua para VISION para ter a opção de andar em Rigs do Spectre sem os ativar.",
	["spectreevent"] = event .. "o feitiço de Movimento Aleatório Fantasmagorizado. Antes de executar, você pode escolher entre o modo fraco e o modo forte. No modo fraco, este feitiço vai mover ou rotacionar escadas em uma direção aleatória sem destruir nenhuma no caminho. No modo forte, este feitiço vai mover ou rotacionar as escadas em um sentido aleatório destruindo qualquer escada em seu caminho.",
	["spectrealtevent"] = "Este é um feitiço de evento. Ele vai fantasmagorizar todas as escadas normais. Evolua para AETHER para andar em escadas fantasmagorizadas. União Fantasma também pode ser usado para andar neste tipo de escada.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Soft Ghosted Random Move Spell"), --here
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Este feitiço vai te teletransportar na direção escolhida. Você não pode passar por escadas bloqueantes. Evolua para CRACKER para aumentar a velocidade deste feitiço em 50%.",
	["blink"] = "Este feitiço vai te teletransportar em volta de uma escada não amaldiçoada em cima de você. Se a escada de cima não bloquear diretamente o caminho, o feitiço não irá funcionar. Evolua para EXPLOITER para aumentar a velocidade deste feitiço em 50%.",
	["swap"] = "Este feitiço vai te trocar de lugar com o seu fantasma. Diferente de outros feitiços básicos, Trocar pode ser usado em qualquer lugar.",
	["slide"] = "Este feitiço torna as escadas em uma escada rolante. Você pode escolher se ela vai para cima ou para baixo. Evolua para SCRIPTER para ter a opção de ser imune à escadas rolantes.",
	["slideup"] = "Este feitiço vai hackear as escadas na direção escolhida. Para isto funcionar, já precisa ter uma escada na direção oposta naquela intercessão. Escadas hackeadas podem ser qualquer tipo de escada não amaldiçoada, ela será restaurada após o feitiço.",
	["glitch"] = "Este feitiço buga a escada, teletransportando você e ela para um local aleatório no mesmo nível. Evolua para ZERO para teletransportar escadas perto da Esfera se você já estiver no topo.",

	["hack"] = timed .. "Te permite usar quantas Escada Rolante para Cima quiser por um minuto. Se tiver escadas não amaldiçoadas bloqueantes no caminho, ela será demolida." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "o Hacker Rig. Escadas, quando ativadas, vão teletransportar o jogador e a escada para um local aleatório no mesmo nível. Apenas um jogador será teletransportado. Evolua para REAPER para ter a opção de não ativar Rigs de Hacker.",
	["hackerevent"] = event .. "o feitiço de Escada Rolante Aleatória.",
	["hackeraltevent"] = event ..  "o feitiço de Escada Rolante para Cima.",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Rig","Random Escalator spell"), --here
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Este feitiço te permite roubar a escada abaixo, seja ela normal ou de Rig. Tanto esse, como o feitiço de Roubar Escada Acima são necessários para usar os outros feitiços básicos do Thief. Evolua para HIJACKER para roubar qualquer escada não amaldiçoada. Rank up BANDIT and OUTLAW to be able to steal 2 and 3 staircases respectively at a time.", --HERE
	["stealabove"] = "Este feitiço te permite roubar a escada acima, seja ela normal ou de Rig. Tanto esse, como o feitiço de Roubar Escada Abaixo são necessários para usar os outros feitiços básicos do Thief. Evolua para HIJACKER para poder roubar qualquer escada não amaldiçoada. Rank up BANDIT and OUTLAW to be able to steal 2 and 3 staircases respectively at a time.", --HERE
	["place"] = "Este feitiço te permite colocar a escada de volta na direção escolhida. Porém, este feitiço não vai destruir escadas no caminho, ou seja, você precisa usá-lo em uma interseção vazia. Rank up to ROBBER to place stairs on other normal or rigged stairs, crossing them.", --HERE
	["uppass"] = "Este feitiço te permite criar uma escada espiral feita de escadas roubadas. Só pode ser usado nas plataformas de borda e duram 1 minuto.",
	["sidepass"] = "Este feitiço te permite criar um atalho. Ele vai ser criado na direção escolhida e dura 1 minuto.",
	["drop"] = "Este feitiço te permite criar uma Escada de Vala. Porém você precisa achar uma interseção vazia. Escadas de Vala são planas.",

	["heist"] = timed .. "Te permite usar o feitiço Colocar Escada quantas vezes quiser. Diferentemente do feitiço normal, this spell can be without stealing stairs, pois ele rouba escadas automaticamente." .. string.format(timedExtra,RankData.THIEF[7].name,"Thieves",RankData.THIEF[3].name), --HERE
	["thiefrigevent"] = rig .. "o Thief Rig. Escadas quando ativadas, vão tirar 1 de Mana do jogador, e dar 1 de Mana para você. Você não vai receber Mana se sua mana estiver no máximo. Você também não vai mais receber Mana se você mudar de Alinhamento.",
	["thiefevent"] = event .. "the Flatten Stairs spell.",
	["thiefaltevent"] = "Este é um feitiço de evento. Ele vai criar atalhos em todas as interseções norte e sul. Se a interseção for amaldiçoada, o atalho não será criado.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Steal or Place spell"), --here
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Este feitiço vai conectar a escada abaixo com outra na direção horizontal de sua escolha com um Portão. Se não houver escadas, elas serão criadas. Evolua para PRODIGY para poder colocar portões em locais que já possuem um. Evolua para ILLUMINATI para poder andar por dentro de portões horizontais.",
	["splitrotate"] = "Este feitiço conecta a escada abaixo com outra escada na direção horizontal rotacionada de sua escolha com um portão. Se não houver escadas, elas serão criadas. Evolua para PRODIGY para colocar portões em locais que já possuem um. Evolua para ILLUMINATI para poder andar por dentro de portões horizontais.",
	["splitup"] = "Este feitiço vai conectar a escada abaixo com a escada acima. Se não houver escadas, elas serão criadas. Evolua para PRODIGY para poder colocar portões em locais que já possuem um. Evolua para SAGE para poder ignorar portões que levem para baixo.",
	["cancelsplit"] = "Este feitiço vai destruir qualquer portão nas escadas. Evolua para DISCIPLE para poder usar este feitiço em plataformas. Evolua para SCHOLAR para poder usar este feitiço de graça.",
	["splitrandom"] = "Este feitiço vai criar um portão na escada abaixo, que leva para outra escada aleatória no mesmo andar. Se não houver escadas, elas serão criadas. Evolua para PRODIGY para poder criar portões em locais que já possuem um. Evolua para ILLUMINATI para poder andar por dentro de portões horizontais.",
	["splitforward"] = "Este feitiço vai criar um portão em uma plataforma em direção horizontal de sua escolha. Evolua para DISCIPLE para poder destruir portões de plataforma. Escadas ocupantes não vão bloquear o feitiço. Evolua para ILLUMINATI para poder andar por dentro desses portões.",

	["splitter"] = timed .. "Te permite criar quantos portões de plataforma quiser por 1 minuto." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "o Archon Rig. Escadas, quando ativadas, vão teletransportar o jogador para a direção que eles estavam indo, fazendo-os atravessar qualquer escada bloqueante não amaldiçoada. Após ativadas, escadas vão se tornar normais de novo.",
	["archonevent"] = event .. "o Feitiço de Portão Aleatório.",
	["archonaltevent"] = event .. "O feitiço de portão para cima.",
	["archonmode"] = string.format(mode,"Archon","Archon Rig","Random Gate spell"), --here
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Este feitiço vai criar uma prancha temporária, te movendo para uma plataforma em uma direção da sua escolha. Você não pode surfar através de escadas que bloqueiam.",
	["updrift"] = "Este feitiço vai criar um elevador usando as plataformas acima e abaixo. As plataformas serão restauradas depois de um certo período de tempo. Suba para o rank VAGABOND para aumentar a velocidade da movimentação. Suba para o rank TRAVELLER para impulsionar o elevador para o segundo nível. Suba para o rank STRIDER para impulsionar o elevador para o terceiro nível.",
	["diagdrift"] = "Este feitiço pode: Criar um elevador horizontal usando as plataformas abaixo ou na diagonal. Tal elevador irá desaparecer após 7 retornos de jornada. OU: Se conjurado em uma direção exterior, este feitiço irá criar um elevador que circulará a Torre uma vez.",
	["spin"] = "Este feitiço irá rotacionar as escadas abaixo em 180 graus. Suba para o rank NOMAD para rotacionar escadas any uncursed.", --HERE
	["outdrift"] = "Este feitiço irá driftar as escadas de baixo numa orientação aleatória, em direção a uma interseção vazia aleatória no mesmo nível. Suba para o rank NOMAD para driftar escadas já driftadas.",
	["driftabove"] = "Este feitiço irá driftar as escadas de cima com menos aleatoriedade e na mesma interseção, assim você pode andar por de baixo e subir elas.",

	["riser"] = timed .. "Permite que você crie quantos Elevadores Verticais você quiser por um minuto. Você também pode impulsionar elevadores enquanto usa esse feitiço, se você for do rank necessário." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "o Drifter Rig. Escadas, assim que acionadas, irão girar numa direção aleatória. Suba para o rank VOYAGER para ganhar imunidade a esse rig.",
	["drifterevent"] = event .. "o feitiço de Drift Aleatório.",
	["drifteraltevent"] = event .. "o feitiço de Levantar as Escadas de Cima.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Random Drift spell"), --here
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Este feitiço permite que você crie escadas amaldiçoadas na direção escolhida. Qualquer escada que cruzar será destruída. Suba para o rank BANISHED para destruir escadas amaldiçoadas que cruzam.",
	["curse"] = "Este feitiço irá amaldiçoar as escadas abaixo. Use esse feitiço novamente para des-amaldiçoar as escadas.",
	["curseabove"] = "Este feitiço irá amaldiçoar a escada acima. As escadas irão levantar temporariamente, permitindo que você cruze para o outro lado. Use esse feitiço novamente para des-amaldiçoar as escadas.",
	["curseinter"] = "Este feitiço irá permitir que você pule para a plataforma do lado oposto, se não tiver escadas no caminho. Interseção irá se tornar amaldiçoada depois desse feitiço, então outros jogadores não poderão usar. Se você subir para o rank INFIDEL, você pode usar esse feitiço em interseções amaldiçoadas, des-amaldiçoando elas no processo.",
	["autodown"] = "Use este feitiço para criar e subir uma seção especial espelhada da parte de baixo da escada. Apenas uniões com o fantasma e Heretics podem andar nessa seção.",
	["autoup"] = "Use this spell to create special mirrored section of upper part of the crossing staircase, allowing you to access them. Degraus regulares serão descidos. Apenas uniões com o fantasma e Heretics podem andar nessa seção. It can also be used on below stairs for trolling purposes.", --HERE

	["malediction"] = timed .. "Permite que você crie quantas escadas amaldiçoadas você quiser por um minuto. Suba para o rank BANISHED para destruir escadas amaldiçoadas que cruzam." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), --here
	["hereticrigevent"] = rig .. "o Heretic Rig. Escadas, assim que acionadas, irão possuir o jogador. Ele terá que achar Mana para ser liberto. Jogadores possuídos não podem realizar feitiços and they cannot jump. Suba para o rank UNBELIEVER para ganhar imunidade a esse rig. Suba para o rank EXILED para ganhar 1 de mana toda vez que um jogador for possuído.", --HERE
	["hereticevent"] = event .. "o feitiço de Cisma Aleatório.",
	["hereticaltevent"] = event .. "o feitiço de Amaldiçoar Escadas.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Random Schism spell"), --here
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = " Este feitiço irá torcer escadas para a direita ou esquerda, conectando elas com as escadas vizinhas. Se não há escadas no destino escolhido, elas serão criadas. Suba para o rank TRANSFORMER para usar esse feitiço em escadas que já foram torcidas.",
	["twistrotate"] = "Este feitiço irá torcer escadas na direção horizontal rotacionada, conectando elas com a escada vizinha. Se não há escadas no destino escolhido, elas serão criadas. Suba para o rank TRANSFORMER para usar esse feitiço em escadas que já foram torcidas.",
	["twistup"] = "Este feitiço irá torcer as escadas in the upward direction, connecting them to the above staircase. If there are no stairs above, they will be created. Suba para o rank TRANSFORMER para usar esse feitiço em escadas que já foram torcidas.", --HERE
	["canceltwist"] = "Este feitiço irá restaurar qualquer escada torcida. Suba para o rank COMBINER para conjurar esse feitiço da plataforma  para escadas torcidas desconectadas. Suba para o rank MIXER para conjurar esse feitiço de graça. Suba para o rank OPTIMUS para ganhar 1 de Mana toda vez que você restaurar escadas torcidas.",
	["split2"] = "Este feitiço divide as escadas em duas escadarias opostas, permitindo você acessar todas as quatro plataformas.",
	["splitalt"] = "Este feitiço divide as escadas em duas escadarias separadas, permitindo que você passe pelas escadas acima - mesmo que estejam amaldiçoadas.",

	["twister"] = timed .. "Permite que você conjure quantos feitiços de Dividir Escadas que você quiser por um minuto. Variedades do feitiço de Dividir serão escolhidas automaticamente para seu benefício." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "o Splicer Rig. Escadas, assim que acionadas, irão emendar em uma direção aleatória. Suba para o rank ASSEMBLER para ter a opção de evitar acionar Splicer Rigs.",
	["splicerevent"] = event .. "o feitiço de Emendar Aleatoriamente.",
	["spliceraltevent"] = event .. "o feitiço de Dividir Escadas para Frente.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Random Splice spell"), --here
	["splicerrefill"] = overload,
	["splicerunion"] = union,

  --NECROMANCER
	["createdual"] = "Este feitiço irá Criar Escadas tanto para você quanto para seu fantasma, assim os jogadores perto dele podem usá-las. Suba para o rank SKELETON para que o fantasma ignore escadas e interseções amaldiçoadas. Suba para o rank LICH para destruir escadas amaldiçoadas que cruzam.",
	["copyplatform"] = "Este feitiço irá copiar qualquer escada da plataforma de seu fantasma para a sua e vice-versa. As escadas serão copiadas de forma espelhada. Escadas copiadas sempre serão normais. Suba para o rank REVENANT para que esse feitiço remova maldições caso precise.",
	["soulbridge"] = "Este feitiço irá criar um link rotacional entre sua plataforma e qualquer uma na diagonal da sua escolha. Seu fantasma também irá criar um link na direção oposta. Necromancer links will spin when a player jumps on them.",--HERE
	["undeadabove"] = "Este feitiço irá remover a alma das escadas de cima e das escadas acima de seu fantasma. Se não há escadas acima de seu fantasma, elas serão criadas. Essas escadas podem ser atravessadas e é possível andar nelas, mas irão sumir depois de dois minutos.",
	["revival"] = "Usar este feitiço para criar um ponto de Revival onde está seu fantasma. Se acontecer de você cair abaixo desse ponto, você será teleportado para lá. O ponto de Revival será removido após o uso, completar a escalada ou quando conjurado novamente. A transformação do Chameleon também removerá o ponto. Suba para o rank ACOLYTE para trazer a Orbe até este ponto, se você conjurar ela no nível superior.",
	["regen"] = "Usar este feitiço para regenerar Mana uma vez por escalada. Você receberá 6 pontos de Mana após o uso. Players near Your ghost will get 3 Mana too. Rank up to DEATHBRINGER to regenerate 10 Mana and 5 Mana for players near Your ghost.", --HERE
	
	["duality"] = timed .. "It allows you to cast at many Dual Stairs as you like for one minute. Suba para o rank LICH para destruir escadas amaldiçoadas que cruzam." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), --here
	["necromancerrigevent"] = rig .. "o Necromancer Rig. Escadas, assim que acionadas, terão sua alma removida e irão desaparecer.",
	["necromancerevent"] = fill ..  "Escadas criadas serão desalmadas e irão desaparecer depois de dois minutos.",
	["necromanceraltevent"] = event .. "o feitiço de Remover Alma. Tais escadas irão desaparecer depois de dois minutos.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Remove Soul spell"), --here
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,


  --REAVER
	["createmirrored"] = "Este feitiço irá Criar Escadas com um espelho no centro. Assim que você atravessar o espelho, você irá se unir com seu fantasma. Atravesse o espelho novamente e você irá se separar de seu fantasma. Enquanto estiver unido com o seu fantasma, você pode usar espelhos no piso mas seu fantasma não coletará Mana para você.",
	["bigmirror"] = "Este feitiço irá criar um espelho gigante no andar inteiro por 10 segundos. Apenas jogadores unidos com seu fantasma podem andar no espelho. Espelhos gigantes irão remover quaisquer espelhos pequenos no andar. Suba para o rank PRESENCE para estender o tempo do espelho para 15 segundos.",
	["smallmirror"] = "Este feitiço irá criar um espelho pequeno na direção escolhida por 6 segundos. Apenas jogadores unidos com seu fantasma podem andar no espelho. Suba para o rank PRESENCE para estender o tempo do espelho para 10 segundos.",
	["outermirror"] = "Este feitiço irá criar um espelho numa direção externa e um espelho gêmeo no outro lado do mapa. Só pode ser utilizado nas plataformas externas. Jogadores que atravessam o espelho irão se unir com o seu fantasma e teleportados para o espelho conectado no outro lado da torre. O espelho irá desaparecer após 60 segundos. Enquanto unido com o fantasma, você pode usar espelhos no chão mas seu fantasma não coletará Mana para você.",
	["merge"] = "Use este feitiço para manualmente se unir com o seu Fantasma. Suba para o rank REPLICA para usar esse feitiço para se separar de seu Fantasma. Rank up to POLTERGEIST to merge/unmerge nearby players. Enquanto unido com o fantasma, você pode usar espelhos no chão mas seu fantasma não coletará Mana para você.",
	["oneway"] = "This spell will turn above stairs into Glass Stairs, allowing you to walk through them. Only players merged with ghost can walk on Glass Stairs.",
--HERE
	["reflection"] = timed .. "It allows you to cast as many Giant Mirrors as you like for one minute. You will be merged with your ghost automatically." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. ""the Reaver Rig. Stairs, once triggered, will Reflect the triggering player. They would have to find Mana to break free. Reflected players must control their characters from their ghost perspective. Reflected players are unaffected by Reaver mirrors. Rank up to WIGHT to get Reaver Rig immunity.", 
	["reaverevent"] = event .. "the Random One-Way Stairs spell. One-Way stairs work like Mirrored Stairs, but can be only used in one direction. Reavers can go both ways.",
	["reaveraltevent"] = event .. "the Glass Stairs spell.",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Random One-Way Stairs spell."),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

  --GREMLIN (here)
	["tram"] = "This spell will create Tram Stairs in the chosen direction. Tram stairs have only half the length of the normal stairs, and once created will automatically travel to the target platform. To make stairs travel back, jump on them without a spell equipped. Rank up to FIEND to remotely bring back away Trams from any platform.",
	["screwdown"] = "This spell will turn below stairs into Crazy Stairs. Crazy Stairs will swing around 6 platforms 3 times, and you can choose thie initial rotation. Rank up to DAEMON to remotely bring back Crazy Stairs back to an adjacent platform.",
	["screwup"] = "This spell will turn above stairs into Crazy Stairs. Crazy Stairs will swing around 6 platforms 3 times. The initial rotation will be random. Rank up to DAEMON to remotely bring back Crazy Stairs back to an adjacent platform.",
	["revolve"] = "This spell will turn below stairs into revolving propeller on a Z axis. You can choose direction of the rotation. Stairs will stop briefly after each 180 turn.",
	["trapstairs"] = "This spell will turn below stairs into a trap door. Stairs, once triggered, will revolve on X axis, dropping careless players below. Rank up to GOBLIN to detect Gremlin Traps. Rank up to DIABLO to be immune to Gremlin traps.",
	["spinplatform"] = "This spell will revolve the whole platform with any adjacent stairs (including cursed ones), in the direction of your choice. Platform will pause briefly after each 90 degree turn. Once full 360 spin is achieved, platform will turn back to normal.",

	["tramway"] = timed .. "It allows you to cast as many Tram Stairs as you like for one minute." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "the Gremlin Rig. Stairs, once triggered, will hypnotise the triggering player. They will have to find Mana to be released. Hypnotised players have their controls reversed. Rank up to HOBGOBLIN to be immune to Gremlin Rigs.",
	["gremlinevent"] = event .. "the Random Revolve Stairs spell.", 
	["gremlinaltevent"] = fill .. "Created stairs will be of Tram variety.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Random Revolve Stairs spell"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "Isso costumava ser um feitiço do Keeper, antes de ser rejeitado. Ele irá mover qualquer escada normal ou sabotada para baixo. Se seu rank do Keeper for Captain, você também poderá mover escadas any un-cursed.", --HERE
	["oneways"] = "This used to be a Reaver spell, before it got rejected. This spell will turn below stairs into one-way passage, while merging players with their ghost, if they walk in proper direction. You can choose which direction to block. Reavers can go both ways. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.", --HERE
	["chamdraw"] = "Isso costumava ser um feitiço do Heretic, antes de ser rejeitado. Irá tornar as escadas em uma ponte levadiça, fazendo a descida ser impossível a não ser que outro jogador ative a ponte por baixo.",
	["cork"] = "This used to be a Gremlin spell, before it got rejected. It will turn stairs into a corkscrew staircase. You can choose the direction of spin, when casting this spell. Old Daemon perk is no longer active.",--here
	["chamdrawabove"] = "Isso costumava ser um feitiço do Heretic, antes de ser rejeitado. Irá tornar as escadas acima em uma ponte levadiça, permitindo sua passagem. Subir é impossível a não ser que outro jogador ative a ponte por cima. O antigo rank Unbeliever não está mais ativo e o auto draw por baixo não é mais possível.",
	["warp"] = "Isso costumava ser um feitiço do Wicked, antes de ser rejeitado. Irá distorcer as escadas de volta para a plataforma.",

	["chameleonrigevent"] = rig .. "o Chameleon Rig. Escadas assim que ativadas, irão executar um efeito aleatório dentre os outros rigs.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","random spell from all other modes"), --HERE
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

 	--HERE
  	["share"] = "With this spell you can share Your own Mana with a nearby player. You can only share one Mana at a time, and you must have two Mana minimum to do this.",

	--ARCHITECT
	["archpatron"] = "This spell used on platform's arrows, will create normal stairs. When used on normal or rigged stairs, it will shrink them.",
	["archarchon"] = "This spell when used on platform's arrows, will create a gate between platforms. When used on stairs, it will gate them in the direction of Your choice.",
	["archthief"] = "This spell when used on platform's arrows, will place normal stairs. When used on normal or rigged stairs it will steal them.",
	["archnecro"] = "This spell when used on platform's arrows, will create Dual stairs. When used on normal or rigged stairs, it will turn them into Undead Stairs.",
	["archhacker"] = "This spell when used on platform's arrows, will hack-in any crossing stairs. When used on normal or rigged stairs, it will turn them into an Escalator of your choice.",
	["archkeeper"] = "This spell when used on platform's arrows, will restore adjacent stairs. When used on normal or rigged stairs, it will move them in the direction of Your choice.",
	["archsplicer"] = "This spell when used on platform's arrows, will split crossing stairs. When used on normal or rigged stairs, it will twist them in the direction of Your choice.",
	["archwicked"] = "This spell when used on platform's arrows, will create a wicked's wall without the link. When used on any uncursed stairs, it will destroy them.",
	["archgremlin"] = "This spell when used on platform, will revolve the platform in the direction of Your choice. When used on normal or rigged stairs, it will revolve them in the direction of Your choice.",
	["archjoker"] = "This spell when used on platform's arrows, will create fake stairs. When used on normal, flipped or rigged stairs, it flip or un-flip them.",
	["archdrifter"] = "This spell when used on platform, will turn it into an elevator. When used on normal or rigged stairs, it will drift them into a random intersection.",
	["archspectre"] = "This spell when used on platform's arrows, will create Phantom stairs. When used on normal, ghosted or rigged stairs, it will Ghost or un-Ghost them.",
	["archreaver"] = "This spell when used on platform's arrows, will create Mirrored stairs. When used on normal or rigged stairs, it turn them into One-Way stairs of Your choice.",
	["archheretic"] = "This spell when used on platform's arrows, will curse an empty intersection without flickering anyone. When used on normal, cursed or rigged stairs, it curse or un-curse them.",

}
local CommonPerksInsertALignment = {
	[1] = "Este é o seu Rank inicial do %s.",
	[2] = "Você vai ganhar Mana bônus quando os Drones estiverem no modo %s.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Se alguém usar %s, sua Mana será enchida.",
	[7] = "Seu feitiço %s vai durar 50%% a mais (90s).",
}



module.gui.ranks = {

	["title"] = "SEU RANK",

	--none (HERE)
	["none_1"] = "Você não escolheu um Alinhamento!",
	["none_2"] = "To cast spells, you MUST pick a class!",

	--NEW
	["possessed_1"] = "You have been Possessed!",
	["possessed_3"] = "As Possessed, you cannot use spells, your rank perks are inactive and you cannot jump.",

	["hypnotised_1"] = "You have been Hypnotised!",
	["hypnotised_3"] = "As Hypnotised, your controls are reversed!",

	["reflected_1"] = "You have been Reflected!",
	["reflected_3"] = "As Reflected, you control yourself from your ghost perspective!",

	["findmana"] = "Find Mana or Patron Rig to break free.",
	["permanent"] = "Permanent mode - Complete climb or visit sanctuary to de-morph.",

	["architect_1"] = "You are now an Architect!",
	["architect_2"] = "Architects cannot acquire any ranks.",
	["architect_3"] = "Roam the tower to wreak havoc!",

	--shared
	["higher"] = "RANK MAIS ALTO ADQUIRIDO",
	["current"] = "SEU RANK ATUAL",
	["lower"] = "RANK NÃO OBTIDO",

	["more"] = "Você precisa de mais %d escaladas como %s para obter este Rank.",
	["done"] = "Você já tem um Rank mais alto. Todos os efeitos de Ranks anteriores aplicam-se ao atual.",
	["max"] = "Este é o Rank máximo. Você tem %d escaladas como %s.",
	["next"] = "Clique na seta direita para checar os requisitos para o próximo Rank.",

	["PATRON"] = {
		[4] = "You can now create links in any uncursed direction.", --HERE
		[5] = "You can now rebuild any uncursed stairs.",
		[6] = "O custo de Chamar a Esfera é reduzido para 2 de Mana.",
		[8] = "Se você estiver sem Mana, pule numa plataforma para ser abençoado(a) com 1 Mana.",
		[9] = "Após a Esfera for chamada, ela vai viajar duas vezes mais rápido.",
	}, 
	["JOKER"] = { 
		[4] = "Escadas Discoteca não tem mais efeito em você.",
		[5] = "Você agora pode ver todas as escadas invisíveis, e tem a opção de não as revelar.",
		[6] = "Você agora pode detectar plataformas de armadilha e escadas falsas.",
		[8] = "Você agora pode andar em escadas falsas and traps.", --HERE
		[9] = "Você vai ganhar Mana bônus quando alguém cair em uma de suas pegadinhas. (1 de Mana por jogador)",
	},
	["WICKED"] = {
		[4] = "Você agora pode andar em Obbys como se fossem escadas normais.",
		[5] = "O feitiço de Destruir Escada agora é de graça.",
		[6] = "Você ganha 1 de Mana bônus por destruir uma escada especial.",
		[8] = "Você tem a opção de não ativar Rigs do Wicked.",
		[9] = "Você agora pode destruir escadas amaldiçoadas.",
	},
	["SPECTRE"] = { 
		[4] = "Você vai ganhar 1 de Mana bônus quando seu fantasma pegar uma Mana.", 
		[5] = "Seu feitiço de Fantasmagorizar Escada, agora é de graça.",
		[6] = "Você agora pode tocar na esfera do topo com seu fantasma para terminar o jogo.",
		[8] = "Você tem a opção de não ativar Rigs do Spectre.", 
		[9] = "Você agora pode andar em escadas fantasmagorizadas.",
	},
	["KEEPER"] = {
		[4] = "Os feitiços de mover aleatoriamente e Keeper Rig nunca te moverão para baixo.",
		[5] = "Você agora pode mover qualquer escada não amaldiçoada.",
		[6] = "Seu feitiço de Restaurar agora é de graça.", 
		[8] = "Você tem a opção de não ativar Rigs do Keeper..",
		[9] = "Você agora pode restaurar escadas e intercessões amaldiçoadas.",
	},
	["HACKER"] = { 
		[4] = "Você tem a opção de serm imune a escadas rolantes.",
		[5] = "Seu feitiço de Dash é 50% mais rápido.",
		[6] = "Seu feitiço de Piscar é 50% mais rápido.", 
		[8] = "Você agora tem a opção de não ativar Rigs do Hacker (se mistura com o botão da escada rolante).",
		[9] = "Se tiver pelo menos um caminho livre, Bugar Escadas vai criar um caminho até a Esfera no topo.", 
	},
	["THIEF"] = { --HERE
		[4] = "You can now cast Place Stairs on any normal or rigged stairs as well as platforms.",
		[5] = "Você agora pode ter duas escadas roubadas ao mesmo tempo.",
		[6] = "Você pode roubar qualquer escada não amaldiçoada.",
		[8] = "Se você estiver sem Mana, pule numa plataforma para ganhar 1 de Mana do seu Esconderijo.",
		[9] = "You can now keep 3 stolen stairs at the same time.",
	},
	["ARCHON"] = {
		[4] = "Você agora pode usar o feitiço Destruir Portão em Portões de Plataforma.",
		[5] = "Seu feitiço de Destruir Portões agora é de graça.",
		[6] = "Portões nunca vão te teletransportar para baixo.",
		[8] = "Você agora pode criar Portões em escadas que já tem um portão.",
		[9] = "Você tem a opção de não se teletransportar para nenhum lugar a não ser para cima.",
	},
	["DRIFTER"] = {
		[4] = "Seus Drifts de plataforma para cima vão aparecer e se mover 50% mais rápido.",
		[5] = "You can now spin any uncursed stairs and drift already drifted stairs.", --HERE
		[6] = "Você agora pode impulsionar Elevadores com os feitiços de Levantamento e Elevador. A habilidade do Vagabond não se aplica para Elevadores impulsionados.",
		[8] = "Você tem a opção de não ativar nenhum Drifter Rig.",
		[9] = "Você agora pode impulsionar Elevadores duas vezes, com os feitiços de Levantamento e Elevador. A habilidade do Vagabond não se aplica para Elevadores impulsionados.",
	},
	["HERETIC"] = {
		[4] = "Quando estiver sem Mana, você pode tocar em uma escada amaldiçoada para desamaldiçoa-la e ganhar 1 de Mana.",
		[5] = "Você agora é imune a possessões.",
		[6] = "Você agora pode usar o feitiço Oscilar em Intercessões amaldiçoadas.",
		[8] = "Seu feitiço de Criar Escadas Amaldiçoadas e Maldição podem agora destruir escadas amaldiçoadas que bloqueiam.",
		[9] = "Você irá receber 1 de Mana extra toda vez que alguém ser possuído.",
	},
	["SPLICER"] = {
		[4] = "Você agora pode restaurar escadas desconectadas da plataforma.",
		[5] = "Seu feitiço de Restaurar Torção agora é de graça.",
		[6] = "Você tem a opção de evitar acionar Splicer Rigs.",
		[8] = "Você agora pode emendar escadas já emendadas.",
		[9] = "Você receberá 1 de Mana toda vez que restaurar uma Emenda.",
	},
	["REAVER"] = {
		[4] = "Você agora pode usar seu feitiço de Junção para separar.",
		[5] = "Seus espelhos no andar irão durar 50% mais. (15s para o maior, 9s para o menor)",
		[6] = "Você agora é imune a Reaver Rigs.",
		[8] = "Using merge spell will also affect nearby players.", --HERE
		[9] = "You get a speed boost (25%) when walking on floor mirrors.",
	},
	["NECROMANCER"] = {
		[4] = "Criar Escadas Duplas irá ignorar Interseções Amaldiçoadas e escadas na plataforma do fantasma.",
		[5] = "Se você usar um Ponto de Renascimento no andar superior, isso moverá o orbe até onde o ponto foi colocado.",
		[6] = "O feitiço de Copiar Plataforma irá remover maldições se necessário.",
		[8] = "Você pode demolir escadas amaldiçoadas que cruzam enquanto conjura Escadas Duplas.",
		[9] = "Regenerar restaura 10 de mana ao invés de 6, e irá restaurar 5 de mana para aqueles perto de seu fanstama.",
	},
	["GREMLIN"] = { --HERE
		[4] = "You can now see all Gremlin Traps.",
		[5] = "You can now jump on platform to call all adjacent Trams.",
		[6] = "You are now immune to Gremlin Rigs.",
		[8] = "You are now immune to Gremlin Traps.",
		[9] = "You can now jump on platform to call and restore all adjacent Crazy Stairs.",
	},
	["MUGGLE"] = { 
		[2] = "Seu cooldown de pulo é reduzido em 0.125s.",
		[3] = "Seu cooldown de pulo é reduzido em 0.25s.",
		[4] = "Seu cooldown de pulo é reduzido em 0.375s.",
		[5] = "Seu cooldown de pulo é reduzido em 0.5s.",
		[6] = "Sua velocidade é aumentada em 10%.",
		[7] = "Sua velocidade é aumentada em 20%.",
		[8] = "Sua velocidade é aumentada em 30%.",
		[9] = "Seu poder de pulo é aumentado em 20%.",
	},

	["CHAMELEON"] = { 
		[1] = "Este é seu rank inicial: CHAMELEON. Outros bônus de alinhamento de rank ainda se aplicam.",
		[2] = "EXCEÇÃO! Você APENAS recebe Mana bônus quando os drones estão no modo CHAMELEON.",
		[3] = "Animação da mudança de alinhamento é muito mais rápida agora.",
		[4] = "Suas mãos irão brilhar em rosa enquanto conjurar feitiços, disfarçado suas intenções.",
		[5] = "Feitiços de Escadas Falsas e Criar Escadas terão ambos um brilho roxo.",
		[6] = "Você agora pode conjurar 4 mais feitiços que foram rejeitados durante o desenvolvimento.",
		[7] = "Você agora pode conjurar 2 mais feitiços que foram rejeitados durante o desenvolvimento.",
		[8] = "A mudança de alinhamentos não tem uma animação de transformação agora, fazendo a troca de alinhamentos ser privada e suave. Pode ser desligado nas opções.",
		[9] = "Você agora pode conjurar o feitiço de Rig de Mistério com multi-tokens.",
	},

  ["NONE"] = { --HERE
		[1] = "None cannot acquire any ranks. Jump on a morph in the middle of the map to change your alignment.",
		[2] = "I am serious, NONE does not have any rank perks.",
		[3] = "You are just wasting your time, you could at least rank up MUGGLE instead.",
		[4] = "MUGGLE gets walkspeed boosts, you know? None does not get anything.",
		[5] = "If you think there is a secret rank perk at the end, you must really underestimate my laziness.",
		[6] = "Maybe you just like to torture yourself?",
		[7] = "People at discord are lying, there is no secret perk at 50 climbs.",
		[8] = "This is your final warning, stop before a total disappointment.",
		[9] = "Your persistence is admirable. You get a total toggleable immunity to special stairs and an ability to pass through blocking stairs.",
	},

}

module.gui.multitokens = {

	["info"] = "Você precisa de 3 tokens para desbloquear um feitiço.",

}

module.gui.feedback = {

	["title"] = "ENVIAR FEEDBACK",

	["prompt"] = "Clique aqui para enviar uma mensagem aos desenvolvedores! (mínimo de 20 caracteres. Nós sabemos quem você é, então por favor, sem spam.)",
	["send"] = "ENVIAR",
	["locked"] = "TRANCADO",

}

module.gui.settings = { --HERE

	["Gameplay"] = "GAMEPLAY SETTINGS",
	["Interface"] = "CONFIGURAÇÕES DE INTERFACE",	

    ["Billboard"] = "Mostrar seu próprio avatar no billboard",
    ["Rank"] = "Mostrar seu Rank Geral no billboard do avatar",
    ["Morph"] = "Mostrar animação de transformação quando estiver usando Deceiver ou Usurper",
    ["ManaLimit"] = "Reduce Your own Mana capacity for an extra challenge",

	["KChoices"] = "Mostrar a janela de seleção da direção para Keeper, when using move spells",
	["HChoices"] = "Mostrar a janela de seleção da direção para Hacker, when using the escalator spell",
	["AChoices"] = "Mostrar a janela de seleção da direção para Archon, when using gate spells",
	["SChoices"] = "Mostrar a janela de seleção da direção para Splicer, when using splice spells",
	["GChoices"] = "Mostrar a janela de seleção da direção para Gremlin, when using the revolve platform spell and the crazy stairs spell",
    ["CChoices"] = "Show direction selection for Chameleon, when using the One-Way Stairs spell",

	["List"] = "Mostrar lista de jogadores animada",
    ["SwitchBack"] = "Automaticamente trocar para os feitiços básicos depois de executar um feitiço supremo",
	["SafeCancel"] = "Mostrar janela de confirmação quando estiver cancelando um feitiço supremo temporizado",
	["Multi"] = "Mostrar janela de seleção do Multi Token depois da escalada",
}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "SEU ALINHAMENTO",
	["time"] = "SEU TEMPO DE ESCALADA",
	["climbs"] = "ESCALADAS RECEBIDAS",
	["tokens"] = "TOKENS RECEBIDOS",
	["rank"] = "SEU RANK ATUAL",
  --HERE
    ["role"] = "YOUR OVERALL RANK",
	["classic"] = "NORMAL TOWER RECORD",	
	["pro"] = "PRO TOWER RECORD",	
	["infinite"] = "INFINITE TOWER RECORD",
	["custom"] = "CUSTOM TOWER RECORD", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	["basic"] = "BASIC TOWER RECORD",

	["cTime"] = "%s RECORD", --%s will be replaced by the used class
	["levels"] = "LEVELS REACHED",
	["cClimbs"]	= "%s CLIMBS", --%s will be replaced by the used class

}

–- COMEÇA A PARTIR DAQUI:

module.gui.gameover.messages = {

	["PATRON"] = {
		"AJUDAR, PROTEGER e CRIAR",
		"Aqueles noobs precisam da nossa ajuda",
		"Não haveria esperança sem nós Patrons",
		"11 de 10 na escala de gentileza",
		"Compartilhar é cuidar",
		"Você nunca pode ter escadas demais",
		"Não tem um EU na equipe, mas definitivamente tem um Patron",
		"Você não pode ter uma escadaria sem escadas",
		"Outro trabalho bem feito",
	},
	["JOKER"] = {
		"ENGANAR, CONFUNDIR E RIR",
		"Essa escadaria é uma pegadinha",
		"Por que tão sério?",
		"HA! HA! HA!",
		"Relaxe e os assista cair",
		"Tá com raiva mano?",
		"You know the rules and so do I",
		"O jogo seria entediante sem mim",
		"Escadas falsas são reais",
	},
	["WICKED"] = {
		"IMPEDIR, BLOQUEAR e DESTRUIR",
		"Eu não sou do mal, é só que tem escadas demais",
		"Aquelas escadas têm que ir embora",
		"Assista o mundo queimar",
		"Essa escadaria parece melhor sem escadas",
		"Eu destruirei sua mente, alma e corpo (e escadas)",
		"1) Crie um obby 2) Assista os noobs falhando 3) Aproveite",
		"Tudo morre uma hora ou outra",
		"Limpe sua mente - mas antes limpe a escadaria",
	},
	["SPECTRE"] = {
		"DESAPAREÇA, ESCONDA-SE e TELEPORTE",
		"Óbvio que se teleportar é seguro",
		"Você não me pega",
		"A beleza de escadas fantasmas é incomparável",
		"Pessoas caindo? Por que eu deveria me importar?",
		"Você pode resolver todos os seus problemas com a teleportação",
		"Quando você começar a se teleportar, você não conseguirá parar",
		"Pelos menos não estou teleportando escadas",
		"Tentem acompanhar seus noobs!",
	},
	["MUGGLE"] = {
		"ANDE, PULE e CAIA",
		"Nós não tínhamos aqueles feitiços chiques no estágio alpha",
		"Eu juro que aqueles drones são manipulados contra mim",
		"Sempre tem um caminho",
		"Stairjumping é um talento",
		"Meu segredo? Parar e pensar",
		"Eu não acredito em magia",
		"Algumas vezes você tem que esperar por um drone - Tipo na vida real",
		"As pessoas usam feitiços? Noobs!",
	},
	["CHAMELEON"] = {
		"COPIE, IMITE e SURPREENDA",
		"Eu sou muito preguiçoso para criar meus próprios feitiços",
		"Mais variedade = mais diversão",
		"Times são lentos - Se transformar é rápido",
		"A habilidade de se adaptar é a base da sobrevivência",
		"Eu sou decisivo, eu só gosto de mudar as minhas ideias",
		"Você dominou uma classe? Eu dominei todas as classes",
		"So um	 alinhamento? Entediante!",
		"Eu amo o caos",
	},
	["KEEPER"] = {
		"MOVA, ROTACIONE e CONTROLE",
		"Parem de bagunçar a minha escadaria!",
		"Outro grande sucesso para os Keepers",
		"Missão completa!",
		"Eu gosto de ordem",
		"Caos domesticado",
		"Eu sou o único verdadeiro alinhamento",
		"Algum dia eu vou consertar essa torre",
		"Escadas consertadas = escadas felizes",
	},
	["THIEF"] = {
		"\"PEGAR EMPRESTADO\", USAR e DEVOLVER",
		"Na verdade se chama pegar emprestado",
		"Flat land é muito lindo",
		"Pelo menos eu não roubo plataformas",
		"É só não andar em Thief rigs, eu não entendo vocês",
		"Tipo assim você me viu roubar algo?",
		"Eu sou tipo o Robin Hood - Roubar da riqueza e dar pra mim mesmo",
		"Não é como se alguém notaria uma escada faltando",
		"Redistribuição de escadas prevente a anarquia",
	},
	["HACKER"] = {
		"TRAPACEIE, GLITCH e QUEBRE",
		"Jogo limpo?? Não existe tal coisa",
		"Espere! Essa escadaria não é real… por acaso nós estamos vivendo em uma experiência simulada no Roblox?",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"Você viu alguma regra postada por aqui?",
		"Eu estou trapaceando? Todo mundo aqui está",
		"Quero dizer, alguns ajustes aqui e ali - dificilmente um exploit",
		"Velocidade é tudo que importa",
		"Escadas rolantes para a vida",
	},
	["HERETIC"] = {
		"VOCÊ NÃO DEVE PASSAR",
		"Banir magia negra é tipo banir diversão",
		"Possua pessoas - mantenha a mente saciada",
		"Morte e decadência",
		"Ritual sombrio completo",
		"Nós não devemos nos restringir",
		"Fique possuído",
		"Escolha o lado sombrio - É mais fácil do que a iluminação",
		"Por que eu deveria ligar se as pessoas ficarem presas?",
	},
	["ARCHON"] = {
		"ABRIR PORTAL, ???, LUCRAR",
		"Eu costumava governar essa escada",
		"Planeje com antecedência para ter sucesso",
		"Estude muito e você terá sucesso",
		"A habilidade de criar portais é um tipo de arte",
		"Eu não consigo usar meu potal de Archon",
		"O bolo é uma mentira",
		"Tem um portal para todo problema",
		"Confundi a todos!",
	},
	["DRIFTER"] = {
		"SURFE, DIRIJA, e FLUTUE",
		"Quem precisa de escadas no primeiro lugar? Estamos no espaço!",
		"Voem seus tolos, voem!",
		"Surfe no vento solar",
		"Não tem um baixo no espaço - Pule sem se preocupar",
		"Desvie tudo - Pule para a vitória",
		"Não pare - Continue desviando",
		"Eu amo dirigir plataformas",
		"Continue surfando",
	},
	["SPLICER"] = {
		"TORÇA, SEPARE e CONECTE", – come back here
		"Nunca vá em uma linha reta por muito tempo",
		"Separe um pouco a sua vida",
		"A bagunça de outras pessoas é a ordem do Splicer",
		"Eu obviamente consigo conectar aquelas escadas",
		"Conecte-se com pessoas - não, CONECTE-SE COM ESCADAS!",
		"Minha mente é toda dobrada tipo assim",
		"Separar ou juntar - eis a questão",
		"Obrigado Markerquest, você me salvou",
		"Essa escadaria é muito reta",
	},
	["REAVER"] = {
		"REFLETIR, SUBSTITUIR E JUNTAR",
		"Espelhos são apenas portas",
		"Essa escadaria é uma ilusão",
		"Você consegue ver a sua alma no espelho",
		"Nós estamos observando eles , ou eles estão nos observando?",
		"Sete anos de azar. Para mim ou para o outro?",
		"Será que os fantasmas estão presos atrás do espelho - ou nós estamos?",
		"Eu já não me enxergo mais, eu enxergo o futuro",
		"MÃE! Não é uma fase!!!",
		"Não chegue em mim de fininho assim!",
	},
	["NECROMANCER"] = {
		"SEGUIR, REVIVER e BENEFICIAR",
		"Nós não estamos te assombrando de verdade, só queremos ser seu amigo",
		"Sua alma é MINHA!",
		"Siga meu fantasma. Confie em mim!",
		"É seguro perto do meu fantasma. Por que eu mentiria?",
		"Hora de coletar algumas almas",
		"É só que a gente tem uma má reputação. Eu culpo Hollywood",
		"Se a morte é ruim, então Necromancia deve ser bom",
		"Preciso coletar alm- Quer dizer, Mana, eu preciso de Mana",
 		"Não tenho medo de cair, isso é um feitiço estratégico!",
	},
	["GREMLIN"] = {
		"ROTACIONE, GIRE e HIPNOTIZE",
		"Venha brincar comigo!",
		"You spin me right 'round, baby, right 'round",
		"Essa escadaria é muito entediante",
		"Deixe-me consertar essa escada para você, heheh",
		"Você gosta da minha obra de arte? Não? Ruim para você, eu só estou começando.",
		"O meu doutor me falou para relaxar, e é assim que eu relaxo.",
		"Joker anote algumas coisas. Brincadeira, por favor me contrata no circo de novo!",
		"Para onde aquela escada foi?",
		"Ebaaaaaaaaaaaaaa!!!!!!!",
	},
  ["NONE"] = { --HERE
		"DON'T, CEASE and REFRAIN",
		"Muggle betrayed us, nothing means nothing.",
		"[insert a message here]",
		"If you don't do anything, you cannot fail.",
		"There is nothing on top of the staircase.",
		"You do realise NONE was just meant to be a bug fix, right?",
		"Jump on a morph to change your alignment. Or not - I'm just a message, not a cop.",
		"This is the proper way to climb stairs.",
		"My legs are killing me.",
		"Walkspeed and Jumppower are overrated.",
		"Technically, I am the first class created in the game.",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Deixar nenhum noob para trás",
	["IT"] = "Fazer pegadinhas é viver",
	["ANNIHILATOR"] = "Destruir tudo!",
	["AETHER"] = "Enter the nether realm",
	["DABSFORLIF"] = "Feitiços são superestimados",
	["USURPER"] = "É que eu gosto de todos os feitiços",
	["ADMIRAL"] = "Ordem restaurada",
	["OUTLAW"] = "Meu, meu, tudo MEU!",
	["ZERO"] = "Rootkit instalado",
	["EXILED"] = "Excommunication",--HERE
	["ILLUMINATI"] = "Illuminati confirmado",
	["STRIDER"] = "Eu vou pegar o elevador",
	["DEATHBRINGER"] = "Rise, rise, RISE!",--HERE
	["OPTIMUS"] = "The Entanglement",--HERE
	["ALIEN"] = "Nós somos um",
	["DAEMON"] = "Você me faz girar e girar.",
	["BLACK HOLE"] = "The Nothingness", --HERE

}

module.gui.gameover.credits = { --HERE
	["crazy"] = "CRAZY",
	["stairs"] = "STAIRS",
	["game"] = "A game by:",
	["models"] = "Modelos por:",
	["icons"] = "Spell Icons by:",
	["boxes"] = "Skyboxes by:",
	["data"] = "Datastore module by:",
	["translators"] = "TRADUÇÕES:",
	["testers"] = "TESTADORES:",
	["thanks"] = "SPECIAL THANKS:",
	["music"] = "MÚSICA:",


	["climb"] = "Climb music",
	["endgame"] = "Endgame music",
	["ghost"] = "Música da União Fantasma",
	["disco"] = "Música das escadas de discoteca",
	["elevator"] = "Música da elevador", --drifter platforms
	["crazies"] = "Crazy Stairs music", --gremlin crazy stairs
	["finish"] = "Obrigado por jogar!",
}

module.static = {--HERE

  	["bas_1"] = "BASIC TOWER",
	["bas_2"] = "Como eu jogo?",
	["bas_3"] = "O objetivo do jogo é chegar no topo e coletar a Orbe de Energia flutuante. Primeiro escolha seu Alinhamento (classe) pulando nos botões brilhantes no meio do mapa.",
	["bas_4"] = "Quando estiver feliz com sua escolha, colete formas voadoras para reencher sua Mana e subir as escadas. Use o feitiço da sua classe para ajudar você na escalada.",
	["bas_5"] = "Como eu conjuro feitiços?",
	["bas_6"] = "Todo feitiço tem um custo de mana que será necessário para conjurar ele. Quando você coleta Mana o suficiente, clique no feitiço. Suas mãos vão começar a brilhar, indicando que você fez certo.",
	["bas_7"] = "Depois de conjurado, o feitiço ainda precisa ser executado. Todos os feitiços são executados ao pular. Dependendo do feitiço, você vai precisar pular ou na plataforma ou na escada. Setas de guia vão aparecer, ajudando você na execução.",
	["bas_8"] = "Assim que você completar a escalada, você receberá 3 tokens de feitiço, que irão permitir que você desbloqueie um feitiço. Complete the climb again to unlock more spells. You can't use tokens from one class to unlock a spell from another.",
	["bas_9"] = "How do I cast ultimate spells?",
	["bas_10"] = "First you will need to unlock all basic spells to access the ultimate spells. Ultimate spells do not require unlocking themself, but they use Tokens instead of Mana when cast.",
	["bas_11"] = "Complete the climb enough times to unlock all basic spells. You may want to try to win the race to get extra Tokens. There is also option to purchase tokens. Once unlocked, click leftmost button or press 'C'",
	["bas_12"] = "Some ultimate spells are timed, and do not require execution. Please read more info in the Alignment Guilds to learn more about an ultimate spell, before casting. Cancelling a timed spell will not refund tokens",

  	["cla_1"] = "NORMAL TOWER",
	["cla_2"] = "More alignments!",
	["cla_3"] = "In the Normal Tower, in addition to Basic Tower alignments, you may also play as Gremlin, Splicer, Archon, Reaver, Heretic or even as a Muggle with no spells.",
	["cla_4"] = "Those alignments are significantly harder to master than Basic Tower classes, and you may encounter more Crazy Stairs in this tower.",
	["cla_5"] = "Be aware of the Architects!",
	["cla_6"] = "Unlike Basic Tower, Normal Tower includes both VR and game pass Architects.",
	["cla_7"] = "Architect is a special alignment, with an ability to fly. Architects have unlimited Mana and can be a help or a nuisance to other players. Architects are banned from Basic Tower only.",
	["cla_8"] = "Encountering an Architect may be a blessing or a curse, and succesfully dodging Architect will require a maximum knowledge and practice of your preffered alignment skills.",
	["cla_9"] = "Events and Rigs!",
	["cla_10"] = "In the Normal Tower players are allowed to cast Ulitmate Events and Rigs.",
	["cla_11"] = "Unlike Basic Tower, all your Ultimate spells are unlocked. You may cast Events that affect the whole staicase, or Rigs that will enchant all stairs with your chosen alignment spell.",
	["cla_12"] = "Normal Tower will not be restored periodically, like Basic Tower, and it is up to the players to decide if they want messy staircase or not.",

	["pro_1"] = "PRO TOWER",
	["pro_2"] = "Even levels restrictions...",
	["pro_3"] = "In the Pro Tower some platform spells cannot be cast on the even levels. Trap, Create Portal, Vertical Teleport, Spiral Staicase and Random Teleport can only be executed on odd levels.",
	["pro_4"] = "Drifters cannot drift those platforms neither.Affected platforms are marked with the red circle in the middle.",
	["pro_5"] = "Cursed Stairs",
	["pro_6"] = "In the Pro Tower Drones will randomly create Cursed Stairs or turn normal stairs into Cursed ones. There is 20% chance of Cursed Stairs apperance. Guide arrows will not show near Cursed Stairs.",
	["pro_7"] = "Cursed Stairs are immune to most spells. You cannot teleport through them nor use Hacker Blink spell. Furthermore, all spells that would cause Cursed Stairs destruction will not work (like Keeper's Move).",
	["pro_8"] = "Only Heretics and Admirals can restore Cursed Stairs. Purge Event and Restoration will get rid of all cursed stairs too. However Drones will always create new ones in Pro Tower.",
	["pro_9"] = "Cursed Intersections",
	["pro_10"] = "In the Pro Tower Drones will randomly create Cursed Intersections too. When Drone finds an empty Intersection, there is 20% chance of the Curse. Guide Arrows will turn to crosses to mark the intersection.",
	["pro_11"] = "Cursed Intersections prevent all platform spells, that are executed on arrows. You cannot create stairs, links nor teleport through Cursed Intersection.",
	["pro_12"] = "Only Heretics, Admirals, Architects and Drones can restore Cursed Intersections. As with Cursed Stairs, Wicked's Purge Event will remove all Curses, but during regeneration new ones will appear.",

	["inf_1"] = "INFINITE TOWER",
	["inf_2"] = "RACE MANDATORY",
	["inf_3"] = "In the infinite tower, participating in the race is mandatory. Casual players are not allowed to cast spells and will not receive any awards for climbing. Touching the orb will just grant 10 Mana.",
	["inf_4"] = "To 'complete' infinite tower you need to join the race and try to stay on it as long as you can. You will receive rewards (if any) upon elimination.",
	["inf_5"] = "Fallen Drone",
	["inf_6"] = "Unlike basic, normal and pro towers, Fallen Drone has a special task in the infinite tower.",
	["inf_7"] = "Each 'raise interval', Fallen Drone will create 2 new levels. Each even level will be restricted. On top of that, some stairs or intersections may even become cursed.",
	["inf_8"] = "First interval lasts for 20 seconds. Each raise will reduce the interval by half second, until the levels are created faster than they could be climbed.",
	["inf_9"] = "Eraser",
	["inf_10"] = "Eraser is a special force field that will rise together with tower and remove bottom levels. Falling behind the eraser eliminates players from the round. This is similar to rising lava in other games.",
	["inf_11"] = "Much like Fallen Drone, eraser will speed up. It will however raise steadily, rather than removing 2 levels at the same time.",
	["inf_12"] = "Stairs and platforms touched by eraser will vanish. Try to avoid the eraser for as long as you can to ensure victory.",

	["cus_1"] = "TORRE CUSTOMIZADA",
	["cus_2"] = "VOCÊ DECIDE!",
	["cus_3"] = "Na torre customizada você pode ajustar qualquer configuração da torre para o seu gosto.",
	["cus_4"] = "Recompensas na Torre Customizada são divididas pela metade. Você receberá 1 token a cada 12 níveis e escalada completa a cada 30 níveis.",
	["cus_5"] = "Configurações da Torre",
	["cus_6"] = "Ao mudar as configurações da torre, você pode deixar como quiser. Escolha níveis, restrinja níveis pares ou até mesmo coloque a torre no modo infinito.",
	["cus_7"] = "Apenas o proprietário do servidor pode ajustar as configurações.",
	["cus_8"] = "Configurações do Drone",
	["cus_9"] = "Você também pode mudar a configuração do drone pequeno. Ajustar a quantidade máxima, a quantidade mínima ou até mesmo desabilitá-los completamente.",

	["vr_1"] = "Ao executar Crazy Stairs no modo VR, você automaticamente se torna um Architect.",
	["vr_2"] = "Diferente de outros jogadores, Architects não precisam subir a escadaria. Seu objetivo é ajudar ou trollar os jogadores que estiverem subindo a torre.",
	["vr_3"] = "A escolha é sua. Você será a ameaça ou a salvação? Ou você só quer ser caótico? Divirta-se!",
	["vr_4"] = "Como eu navego?",
	["vr_5"] = "Use seu analógico esquerdo para mover-se para frente ou para trás. Inclinar o analógico esquerdo lateralmente irá fazer você se mover para a esquerda ou para a direita.",
	["vr_6"] = "Use seu analógico direito para mover-se para cima ou para baixo. Inclinar o analógico direito para a direita ou esquerda irá resultar em um 'snap' de giro na câmera.",
	["vr_7"] = "Tente ficar fora da escadaria para uma melhor visualização e facilidade para marcar um alvo.",
	["vr_8"] = "Como eu conjuro feitiços?",
	["vr_9"] = "Para conjurar um feitiço, aperte na orbe mágica com o botão de aderência. Um ponteiro laser aparecerá para ajudar você a selecionar escadas e plataformas para executar o feitiço.",
	["vr_10"] = "Execute o feitiço com o botão de gatilho, enquanto segura o botão de aderência. Cada alinhamento no VR tem dois feitiços, um para plataformas e um para escadas. Dependendo do alvo, o feitiço correto será escolhido.",
	["vr_11"] = "Para mudar um alinhamento no modo VR, pressione e segure o botão de gatilho, sem o botão de aderência. Você então poderá mudar de alinhamento com o polegar da mão correspondente.",

  --HERE
	["home_1"] = "CASA DO MUGGLE",
	["home_2"] = "NOSSO LEMA:\nANDAR\nPULAR\nE\nCAIR",
	["home_3"] = "PRÓS:\nVelocidade e poder de pulo aumenta em ranks maiores\nDireito de se gabar\nCONTRAS:\nSem feitiços\nFica preso facilmente",
	["home_4"] = "'Nós não tínhamos aqueles feitiços chiques no estágio alpha!'\nditado do nosso fundador",

	["oasis_1"] = "CHAMELEON'S OASIS",
	["oasis_2"] = "OUR MOTTO:\nCOPY\nIMITATE\nAND\nSURPRISE",
	["oasis_3"] = "PROS:\nCan change alignments anywhere, anytime\nCONS:\nCosts Robux\nRanking up all classes takes time",
	["oasis_4"] = "'Eu sou muito preguiçoso para criar meus próprios feitiços.'\nditado do nosso fundador",

	["nexus_1"] = "HERETIC'S NEXUS",
	["nexus_2"] = "OUR MOTTO:\nYOU\nSHALL\nNOT\nPASS",
	["nexus_3"] = "PROS:\nBest in pro tower\nCannot be stopped\nCONS:\nTeaming is tricky\nMana hungry",
	["nexus_4"] = "'Banir magia negra é tipo banir diversão.'\nditado do nosso fundador",

	["guild_1"] = "THIEF'S GUILD",
	["guild_2"] = "OUR MOTTO:\nBORROW\nUSE\nAND\nRETURN",
	["guild_3"] = "PROS:\nMana efficient\nVersatile\nCONS:\nNeeds to steal stairs\nCannot destroy crossing stairs",
	["guild_4"] = "'Na verdade se chama pegar emprestado.'\nditado do nosso fundador",

	["nether_1"] = "SPECTRE'S NETHER",
	["nether_2"] = "OUR MOTTO:\nDISAPPEAR\nHIDE\nAND\nTELEPORT",
	["nether_3"] = "PROS:\nFast spells\nPerfect for solo play\nCONS:\nCosts Robux\nNot recommended for teams",
	["nether_4"] = "'Óbvio que se teleportar é seguro.'\nditado do nosso fundador (MIA)",

	["study_1"] = "ARCHON'S STUDY",
	["study_2"] = "OUR MOTTO:\nOPEN\nPORTAL\n???\nPROFIT",
	["study_3"] = "PROS:\nUseful Rig\nConfuses opponents\nCONS:\nHardest to learn\nRequires planning",
	["study_4"] = "'Eu costumava governar essa escada.'\nditado do nosso fundador",

	["haven_1"] = "PATRON'S HAVEN",
	["haven_2"] = "OUR MOTTO:\nHELP\nPROTECT\nAND\nCREATE",
	["haven_3"] = "PROS:\nEasiest to learn\nTeam player\nCONS:\nUses a lot of Mana\nMay attract leechers",
	["haven_4"] = "'Aqueles noobs precisam da nossa ajuda!'\nditado do nosso fundador",

	["shelter_1"] = "DRIFTER'S SHELTER",
	["shelter_2"] = "OUR MOTTO:\nSURF\nRIDE\nAND\nGLIDE",
	["shelter_3"] = "PROS:\nVersatile\nTeam player\nCONS:\nRequires some parkour skills\nTricky in pro towers",
	["shelter_4"] = "'Quem precisa de escadas no primeiro lugar? Estamos no espaço!'\nditado do nosso fundador",

	["circus_1"] = "JOKER'S CIRCUS",
	["circus_2"] = "OUR MOTTO:\nDECEIVE\nCONFUSE\nAND\nLAUGH",
	["circus_3"] = "PROS:\nMade for trolling\nFlips are very useful\nCONS:\nExpensive spells\nYou may ruin friendships",
	["circus_4"] = "'Essa escadaria é uma pegadinha.'\nditado do nosso fundador",

	["base_1"] = "KEEPER'S BASE",
	["base_2"] = "OUR MOTTO:\nMOVE\nROTATE\nAND\nCONTROL",
	["base_3"] = "PROS:\nCan restore stairs\nCan reuse stairs\nCONS:\nRequires parkour to use correctly\nUseless without stairs",
	["base_4"] = "'Parem de bagunçar a minha escadaria!'\nditado do nosso fundador",

	["chamber_1"] = "WICKED'S CHAMBER",
	["chamber_2"] = "OUR MOTTO:\nPREVENT\nBLOCK\nAND\nDESTROY",
	["chamber_3"] = "PROS:\nCan destroy any stairs\nCan purge whole staircase\nCONS:\nOver-reliant on stairs",
	["chamber_4"] = "'Eu não sou do mal, é só que tem escadas demais.'\nditado do nosso fundador",

	["backdoor_1"] = "HACKER'S BACKDOOR",
	["backdoor_2"] = "OUR MOTTO:\nEXPLOIT\nGLITCH\nAND\nBREAK",
	["backdoor_3"] = "PROS:\nFastest alignment\nHard to follow\nCONS:\nOver-reliant on stairs\nUseless in teams",
	["backdoor_4"] = "'Jogo limpo?? Não existe tal coisa.'\nditado do nosso fundador",

	["hub_1"] = "HUB DO SPLICER",
	["hub_2"] = "NOSSO LEMA:\nTORCER\nEMENDAR\nE\nCONECTAR",
	["hub_3"] = "PRÓS:\nVersátil\nBom em times\nCONTRAS:\nUm pouco confuso.\nLeva tempo para aprender",
	["hub_4"] = "'Nunca siga em linha reta por muito tempo.'\nditado do nosso fundador",

	["shack_1"] = "GREMLIN'S SHACK",
	["shack_2"] = "OUR MOTTO:\nROTATE\nREVOLVE\nAND\nHYPNOTIZE",
	["shack_3"] = "PROS:\nNo pros\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE",
	["shack_4"] = "'Venha brincar comigo!'\nditado do nosso fundador",

	["mirror_1"] = "ESPELHO DO REAVER",
	["mirror_2"] = "NOSSO LEMA:\nREFLETIR\nSUBSTITUIR\nE\nJUNTAR",
	["mirror_3"] = "PRÓS:\nEspelhos podem ser usados por outros jogadores.\nCONTRAS:\nA mecânica de juntar e separar pode ser confusa.",
	["mirror_4"] = "'Espelhos são apenas portas.'\nditado do nosso fundador",

	["grave_1"] = "TÚMULO DO NECROMANCER",
	["grave_2"] = "NOSSO LEMA:\nSEGUIR\nREVIVER\nE\nBENEFICIAR",
	["grave_3"] = "PRÓS:\nFunciona bem se outros jogadores seguirem seu fantasma.\nFeitiços ajudam você e os outros.\nCONTRAS:\nAlinhamento mais dependente em mana.\nDifícil se acostumar caso você esteja vendo seu fantasma.",
	["grave_4"] = "'Nós não estamos te assombrando de verdade, só queremos ser seu amigo.'\nditado do nosso fundador",

  	["studio_1"] = "ARCHITECT'S STUDIO",
	["studio_2"] = "OUR MOTTO:\nDESIGN\nIMPLEMENT\nAND\nTEST",
	["studio_3"] = "PROS:\nAbility to Fly\nDoes not use Mana\nCONS:\nCost Robux\nCannot acquire climbs",
	["studio_4"] = "'Now I rule this staircase!'\nour founder's quote",
	
	["studio_basic"] = "Architect is not avialable in the Basic Tower.",

	--SHARED
	["leader_pro"] = "Torre Pro conta como 2 escaladas",	
	["leader_update"] = "Atualização em: ",	
	["leader_updating"] = "Atualizando...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "ESCALADAS NECESSÁRIAS",
	["leader_off"] = "Torre customizada não suporta placares.",

	--OVERALL
	["over_title"] = "RANKS GERAIS",
	["over_desc"] = "Cada rank adquirido adiciona 1 ponto",
	["over_rank"] = "RANK",
	["over_req"] = "PONTOS NECESSÁRIOS",
	["emperor_req"] = "* Requer Chameleon OU Spectre",
	["overmind_req"] = "** Requer Chameleon E Spectre",
	["over_prefix"] = "PREFIXO",
	["over_passes"] = "GAME PASSES\nNECESSÁRIOS",
	["over_notgroup"] = "COR DE OLIVA - não está no grupo",
	["over_group"] = "COR TURQUESA - está no grupo",
	["over_mod"] = "MODERADOR - jogador é um moderador",
	["over_admin"] = "ADMIN - jogador é um admin", -- pwease sleazel uwu
	["over_owner"] = "PRANK ME - Game creator (sleazel)", --HERE

	--OTHER
	["muggle_lead"] = "MUGGLES APRESSADOS",
	["muggle_ranks"] = "RANKS DE MUGGLE",

	["hacker_lead"] = "HACKERS ENCRIPTADOS",
	["hacker_ranks"] = "RANKS DE HACKER",

	["wicked_lead"] = "WICKEDS VIOLENTOS",
	["wicked_ranks"] = "RANKS DE WICKED",

	["keeper_lead"] = "KEEPERS PREPARADOS",
	["keeper_ranks"] = "RANKS DE KEEPER",

	["joker_lead"] = "JOKERS MALUCOS",
	["joker_ranks"] = "RANKS DE JOKER",

	["drifter_lead"] = "DRIFTERS RÁPIDOS",
	["drifter_ranks"] = "RANKS DE DRIFTER",

	["patron_lead"] = "PATRONS NOBRES",
	["patron_ranks"] = "RANKS DE PATRON",

	["archon_lead"] = "ARCHONS ÁGEIS",
	["archon_ranks"] = "RANKS DE ARCHON",

	["spectre_lead"] = "SPECTRES VOANDO",
	["spectre_ranks"] = "RANKS DE SPECTRE",

	["thief_lead"] = "THIEVES SILENCIOSOS",
	["thief_ranks"] = "RANKS DE THIEF",

	["heretic_lead"] = "HERETICS IMPIEDOSOS",
	["heretic_ranks"] = "HERETIC RANKS",

	["necromancer_lead"] = "NECROMANCERS ZUMBIS",
	["necromancer_ranks"] = "NECROMANCER RANKS",

	["splicer_lead"] = "SPLICERS TORCIDOS",
	["splicer_ranks"] = "SPLICER RANKS",

	["reaver_lead"] = "REAVERS REFLETIDOS",
	["reaver_ranks"] = "REAVER RANKS",

	["gremlin_lead"] = "GREMLINS SORTUDOS",
	["gremlin_ranks"] = "GREMLIN RANKS",

	["chameleon_lead"] = "CHAMELEONS SÁBIOS",
	["chameleon_ranks"] = "CHAMELEON RANKS",

	["dailies"] = "RECORDES DIÁRIOS",
	["most_climbs"] = "MAIS ESCALADAS",
	["most_wins"] = "MAIS VITÓRIAS NA CORRIDA", 

}

--TUTORIAL
module.tutorial = { --HERE

	["tut_big_1"] = "Bem-vindo(a) ao Crazy Stairs!",
	["tut_big_2"] = "First, learn how to morph. Jump on this pad to morph to Patron!",
	["tut_big_3"] = "Patrons can create stairs, but you will need mana to cast spells. Here is some Mana for You.",
	["tut_big_4"] = "You can create stairs with this spell. Click on the corresponding button on the bottom of your screen.",
	["tut_big_5"] = "All spells need to be executed by jumping.",
	["tut_big_6"] = "Cool huh? Now morph to Joker. Jokers can flip stairs.",
	["tut_big_7"] = "Collect this Mana:",
	["tut_big_8"] = "You can flip stairs with this spell.",
	["tut_big_9"] = "Some spells need to be executed on stairs.",
	["tut_big_10"] = "Now morph to Keeper. Keepers can move stairs around.",
	["tut_big_11"] = "Collect this Mana:",
	["tut_big_12"] = "You can move stairs with this spell.",
	["tut_big_13"] = "Jump on the forward arrow to move stairs.",
	["tut_big_14"] = "Now morph to Wicked. Wickeds can destroy stairs.",
	["tut_big_15"] = "You will encounter many blocking stairs in this game.",
	["tut_big_16"] = "Use this spell to destroy blocking stairs.",
	["tut_big_17"] = "You can destroy above stairs, by jumping on below ones.",
	["tut_big_18"] = "Now morph to Hacker. Hackers can teleport.",
	["tut_big_19"] = "Collect this Mana:",
	["tut_big_20"] = "Use this spell to teleport across platforms.",
	["tut_big_21"] = "Jump on arrow to teleport.",
	["tut_big_22"] = "You need to get to this orb at the top of the staircase to win. Good luck!",

	["tut_select"] = "Selecione esse feitiço.",

	["tut_small_init"] = "Pule para spawnar o tutorial",
    ["tut_small_collect"] = "Collect Mana",
	["tut_small_morph"] = "Pule no morph.",
	["tut_small_arrow"] = "Pule na seta.",
	["tut_small_stairs"] = "Pule na escada.",
    ["tut_small_pellet"] = "Collect the Orb",

}

module.where = {

	["platform"] = "Deve ser executado numa plataforma. Não funcionará nos níveis inferiores e pares nas torres pro.",
	["arrow"] = "Deve ser executado nas setas das plataformas.",
	["stairs"] = "Must be executed on stairs.",
	["above"] = "Deve ser executado nas escadas de baixo para afetar as de cima. Funciona em links também.",
	["dynamic"] = "Pode afetar tantos as escadas de baixo quanto as de cima.",
	["both"] = "Pode ser executado tanto nas setas das plataformas quanto nas escadas",
	["both2"] = "Pode ser executado tanto em plataformas quanto escadas.",
    ["both3"] = "Can be executed on platform's arrows or stairs on higher ranks.", --HERE
	["anywhere"] = "Pode ser executado em qualquer lugar.",
	["nowhere"] = "Esse feitiço não requer uma execução.",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "Pode ser executado em uma interseção vazia ou através de escadas que não bloqueiam o caminho",
		["link"] = "Can be executed on an empty intersection or through non-blocking stairs. Rank up to Creator to cast Link in any direction.",--HERE
		["superforced"] = "Pode ser executado em uma interseção vazia ou através de escadas que cruzam. Suba para o rank Banished para demolir escadas amaldiçoadas que cruzam.",
        ["superforcednecro"] = "Pode ser executado em uma interseção vazia ou através de escadas que cruzam. Suba para o rank Lich para demolir escadas amaldiçoadas que cruzam.",
		["flicker"] = "Pode ser executado em uma interseção vazia. Suba para o rank Infidel para executar em uma interseção amaldiçoada.",
		["any"] = "Pode ser executado em qualquer interseção não amaldiçoada.",
		["wall"] = "Pode ser executado em qualquer interseção não amaldiçoada, sem uma  Parede ou Portão no caminho.",
		--["ghosted"] = "Só pode ser usado em escadas normais, sabotadas ou fantasmagorizadas.",
		--["deltwists"] = "Só pode ser usado em escadas emendadas.",
		["forced"] = "Pode ser executado em uma interseção vazia ou através de escadas não amaldiçoadas que cruzam seu caminho.",
		["halfsoft"] = "Pode ser executado em uma interseção vazia ou através de escadas não amaldiçoadas que cruzam seu caminho, em ranks mais altos.",
		["soft"] = "Só pode ser executado em uma interseção vazia.",
		["soft2"] = "Can be executed on an empty intersection. Ranked up Thieves can cast this spell on normal or rigged stairs.",
		["hack"] = "Pode ser executado em uma interseção com qualquer escada des-amaldiçoada que estiverem cruzando seu caminho.",
		["sidepass"] = "Can be executed on any un-cursed intersection without a Bypass yet.",
	},

	["platform"]= {
		

		--platform
		["middle"] = "Esse feitiço não tem requisitos especiais.",
		["diag"] = "Pode ser executado tanto nas direções diagonais internas quanto nas externas.",
		["outer"] = "Só pode ser executado em direções perpendiculares externas.",
		["centre"] = "Esse feitiço irá demolir quaisquer espelhos pequenos que estão no nível atual, mas não o grande.",
		["inner"] = "Pode ser executado apenas em direções diagonais internas, sem um link ainda.",
		["prevolve"] = "Pode ser executado tanto no sentido horário quanto no sentido anti-horário.",
		["top"] = “Só pode ser executado nas plataformas superiores.”,
	},
	
	["stairs"] ={
		
		["cursed"] = "Pode ser executado em escadas normais, sabotadas ou amaldiçoadas.",
		["all"] = "Pode ser executado em qualquer escada. Suba para o rank Annihilator para destruir escadas amaldiçoadas.",
		["steal"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Hijacker para roubar qualquer escada des-amaldiçoada.",
		["onedirection"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Controller para mover qualquer escada não amaldiçoada.",
		["straight"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Controller para mover qualquer escada não amaldiçoada.",
		["rotate"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Controller para mover qualquer escada não amaldiçoada.",
		["flip"]= "Pode ser executado em escadas normais, viradas ou sabotadas.",
		["gate"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Prodigy para substituir Portões.",
		["gatestr"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Prodigy para substituir Portões.",
		["gaterot"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Prodigy para substituir Portões.",
		["twist"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Transformer para substituir Emendas.",
		["twiststr"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Transformer para substituir Emendas.",
		["twistrot"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Transformer para substituir Emendas.",
		["spin"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Nomad para girar escadas já driftadas.",
		["drift"] = "Pode ser executado em escadas normais ou sabotadas. Suba para o rank Nomad para driftar escadas já driftadas.",
		["escalator"] = "Pode ser executado apenas em escadas normais ou sabotadas.",
		["oneway"] = "Pode ser executado apenas em escadas normais ou sabotadas.",
		["revolve"] = "Pode ser executado apenas em escadas normais ou sabotadas.",
		["normalrig"] = "Pode ser executado apenas em escadas normais ou sabotadas.",
        ["corkscrew"] = "Pode ser executado apenas em escadas normais ou sabotadas."

	},
	
	["above"] = {
		
		["cursed"] = "Pode ser executado abaixo de escadas normais, sabotadas ou amaldiçoadas.",
		["all"] = "Pode ser executado abaixo de qualquer escada. Suba para o rank Annihilator para destruir escadas amaldiçoadas acima.",
		["steal"] = "Pode ser executado abaixo de escadas normais ou sabotadas. Suba para o rank Hijacker para roubar qualquer escada des-amaldiçoada acima.",
		["flip"]= "Pode ser executado abaixo de escadas normais, viradas ou sabotadas.",
		["onedirection"] = "Pode ser executado abaixo de escadas normais ou sabotadas. Suba para o rank Controller para mover qualquer escada des-amaldiçoada acima.",
		["slide"] = "Esse feitiço permite que você ignore quaisquer escadas des-amaldiçoadas que bloqueiam seu caminho.",
		["normalrig"] = "Pode ser executado apenas abaixo de escadas normais ou sabotadas.",

	},
	
	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Pode ser executado em ou abaixo de escadas normais, viradas ou sabotadas. Se a execução acima falhar por qualquer razão, as escadas abaixo serão afetadas.",
		['normalrig'] = "Pode ser executado em ou abaixo de qualquer escada normal ou sabotada. O feitiço será aplicado tanto para cima como para baixo das escadas.",
		['slide'] = "Pode ser executado em escadas normais ou sabotadas. Se existem escadas des-amaldiçoadas bloqueando o caminho acima, elas serão removidas.",
	},
	
	["both"] = {
		['restore'] = "Pode ser executado em qualquer escada ou nas setas da plataforma com qualquer escada adjacente. Suba para o rank Admiral para restaurar escadas amaldiçoadas.",
		['deltwists'] = "Pode ser executado apenas em escadas torcidas ou nas setas da plataforma com escadas adjacentes torcidas. Suba para o rank Combiner para restaurar escadas não ligadas com a plataforma.",
		['ghosted'] = "Pode ser executado em escadas normais, sabotadas ou fantasmagorizadas ou nas setas da plataforma com escadas adjacentes normais, sabotadas ou fantasmagorizadas.",
        ["flatten"] = "Can be executed on an intersection with normal or rigged opposite stairs. Can be executed on stairs too.",
		--NEW (HERE)
		["archpatron"] = "Patron's Create Stairs (when used on arrows) or Shrink Stairs (when used on stairs)",
		["archarchon"] = "Archon's Platform Gate (when used on arrows) or Gate Stairs (when used on stairs)",
		["archthief"] = "Thief's Place Stairs (when used on arrows) or Steal Stairs (when used on stairs)",
		["archnecro"] = "Necromancer's Create Dual Stairs (when used on arrows) or Undead Stairs (when used on stairs)",
		["archhacker"] = "Hacker's Hack-In Stairs (when used on arrows) or Escalator (when used on stairs)",
		["archkeeper"] = "Keeper's Restore Stairs (when used on arrows) or Move/Rotate Stairs (when used on stairs)",
		["archsplicer"] = "Splicer's Split Opposite Stairs (when used on arrows) or Twist Stairs (when used on stairs)",
		["archwicked"] = "Wicked's Wall without a Link (when used on arrows) or Destroy Stairs (when used on stairs)",
		["archjoker"] = "Joker's Create Fake Stairs (when used on arrows) or Flip/Unflip Stairs (when used on stairs)",
		["archspectre"] = "Spectre's Create Phantom Stairs (when used on arrows) or Ghost/UnGhost Stairs (when used on stairs)",
		["archreaver"] = "Reaver's Create Mirrored Stairs (when used on arrows) or One-Way Stairs (when used on stairs)",
		["archheretic"] = "Heretic's Curse Intersection without Flicker (when used on arrows) or Curse/unCurse Stairs (when used on stairs)",

	},
	
	['both2'] = {
		['delsplits'] = "Só pode ser executado em escadas com Portões. Suba para o rank Disciple para usar esse feitiço para remover os Portões de uma plataforma."
  --here
        ["archgremlin"] = "Gremlin's Revolve Platform (when used on platform) or Revolve Stairs (when used on stairs)",
		["archdrifter"] = "Drifter's Elevator (when used on platform) or Random Drift Stairs (when used on stairs)",
	},

  ['both3'] = {--HERE
		["soft2"] = "Can be executed on an empty intersection only. Rank up to cast this spell on Normal or Rigged stairs too."
	},

	['anywhere'] = {
		['anywhere'] = "Esse feitiço pode ser usado em qualquer lugar.",
	},
	
	["nowhere"] = {
		['slide'] = "Esse feitiço não requer uma execução.",
		
	},

}



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
	["unlock"] = "(desbloqueie por 3 Tokens)",
}

module.serverfeedback = {
	 
	--failed spell (local)
	["nomana"] = "Sem Mana o suficiente!",
	["notokens"] = "Sem Tokens o suficiente!",
	["coolwait"] = "Você não pode conjurar Rigs e eventos agora, por favor espere ",
	["nomirror"] = "Você precisa estar unido com o seu fantasma para andar em espelhos",
	["regenused"] = "Regeneração já foi usada durante essa escalada.",
  --HERE
    ["noreflected"] = "This spell cannot be used when you are Reflected.",
	["noflyarch"] = "You cannot fly as Architect when Possessed, Hypnotized or Reflected.",
	["noblackhole"] = "You cannot use Black Hole perk when Possessed, Hypnotized or Reflected.",

	--failed spell (server)
	["unknown"] = "Erro desconhecido.", --this should not show for normal players, only exploiters
	["lockedspell"] = "Esse feitiço está trancado!",
	["possessed"] = "Você não pode usar feitiços enquanto estiver possuído.",
	["spelllock"] = "Você não pode usar feitiços agora.",
	["nothere"] = "Você não pode usar esse feitiço no tutorial.",
	["onlyracers"] = "Apenas jogadores na corrida podem conjurar feitiços.",
	["cancelfirst"] = "Você precisa cancelar o feitiço atual primeiro...",
	["stashfull"] = "Seu depósito de escadas está cheio.",
	["stashempty"] = "Você tem que roubar escadas antes de usar esse feitiço.",
	["ultwait"] = "Outro feitiço supremo está em progresso. Por favor, aguarde.",
	["notdefault"] = "Drones precisam voltar para o modo padrão primeiro. Por favor, aguarde.",
	["noreshuffle"] = "Escolha o modo de re-embaralhar primeiro!",
	["oneoverload"] = "Você não pode ter múltiplas Sobrecarga de Mana ativas.",
	["blocked"] = "Essa interseção está amaldiçoada.",
	["locked"] = "Essas escadas estão travadas.",
	["platformlocked"] = "Plataforma alvo está travada.",
	["normalrig"] = "Esse feitiço funciona somente em escadas normais ou sabotadas.",
	["cantblock"] = "Não foi possível amaldiçoar, há escadas aqui. (podem estar invisíveis)",
	["cantblock2"] = "Não foi possível amaldiçoar, há escadas cruzando o caminho. (podem estar invisíveis)",
	["noway"] = "Escadas estão no caminho. (podem estar invisíveis)",
	["noway2"] = "Escadas estão cruzando o caminho. (podem estar invisíveis)",
	["noplatform"] = "Nenhuma plataforma encontrada naquela direção.",
	["nopass"] = "This spell can only be cast on the edge of the staircase.", --HERE
	["pass"] = "Já tem um caminho aqui.",
	["link"] = "Já tem um link aqui.",
	["noblink"] = "Você só pode Piscar através de escadas que bloqueiam seu caminho.",
	["noblink2"] = "You cannot blink on stairs disconnected from the above stairs.", --HERE
	["noflip"] = "Apenas escadas normais, viradas ou sabotadas podem ser viradas.",
	["nothingtocopy"] = "Nenhuma escada está disponível nem para você nem para o seu fanstama copiar.",
	["wrongdirection"] = "Você não pode conjurar este feitiço nessa direção.",
	["notfound"] = "Escadas não encontradas.",
	["nocursedblink"] = "Você não pode Piscar ao redor de escadas amaldiçoadas.",
	["nostairs"] = "Não há escadas aqui.",
	["noground"] = "Esse feitiço não pode ser conjurado no nível do térreo.",
	["oddonly"] = "Esse feitiço não pode ser conjurado nesse nível.",
	["noabove"] = "Não há escadas diretamente acima.",
	["lock"] = "Você não pode conjurar feitiços agora",
	["cantgate"] = "Essa direção está bloqueada.",
	["wall"] = "A parede já está aqui.",
	["nocurse"] = "Apenas escadas normais, amaldiçoadas ou sabotadas podem ser amaldiçoadas/desamaldiçoadas.",
	["nogate"] = "Essas escadas não possuem um portão.",
--HERE
	["noghost"] = "This spell only works on normal, rigged and ghosted stairs.",
    ["archrace"] = "Architects cannot race!",
	["toolate"] = "A race is already in progress, try again later.",
	["wrongsplit"] = "Target intersection is cursed.",

	["blockedplit"] = "Não é possível criar a divisão, a interseção alvo está amaldiçoada.",
	["cursedtarget"] = "Tem escadas amaldiçoadas nesse destino.",
	["lockedother"] = "Cannot create stairs yet, other stairs are locked.",--HERE
	["failedgate"] = "Criação da divisão falhou.",
	["notwist"] = "Aquelas escadas não estão torcidas.",
	["wrongmove"] = "Escadas não podem ser movidas para fora da área do jogo.",
	["blockedmove"] = "Não é possível mover a escada, a interseção alvo está amaldiçoada.",
	["lockedmove"] = "Não é possível mover a escada ainda, a escada que está bloqueando está travada.",
	["normal"] = "Essas escadas estão normais.",
	["lockedinter"] = "Essa intercessão está travada.",
	["toponly"] = "O feitiço de 'Chamar a Esfera' só pode ser conjurado no topo da torre.",
	["duplicatemirror"] = "Já tem um espelho nesse nível.",
    ["norestore"] = "Thief bypasses and spirals cannot be restored.", --HERE

	--higher rank required
	["admiral2"] = "Suba para o rank Admiral para des-amaldiçoar escadas.",
	["admiral"] = "Suba para o rank Admiral para des-amaldiçoar intercessões.",
	["infidel"] = "Suba para o rank Infidel para Oscilar em intercessões amaldiçoadas.",
	["banished"] = "Suba para o rank Banished para destruir Escadas Amaldiçoadas cruzadas.",
	["annihilator"] = "Suba para o rank Annihilator para destruir Escadas Amaldiçoadas.",
	["disciple"] = "Suba para o rank Disciple para destruir Divisões de Plataforma.",
	["nomad1"] = "Rank up to Nomad to spin any uncursed stairs.", --HERE
	["nomad2"] = "Rank up to Nomad to drift already drifted stairs.", --HERE
	["prodigy"] = "Suba para o rank Prodigy para substituir Portões.",
	["traveller"] = "Suba para o rank Traveller para impulsionar Elevadores.",
	["controller"] = "Suba para o rank Controller para mover qualquer escada des-amaldiçoada.",--*
	["replica"] = "Suba para o rank Replica para usar esse feitiço para desunir.",--*
	["lich"] = "Suba para o rank Lich para demolir escadas amaldiçoadas cruzadas",
	["hijacker"] = "Suba para o rank Hijacker para roubar qualquer escada des-amaldiçoada.",
	["transformer"] = "Suba para o rank Transformer para unir escadas que já estão emendadas.",
	["strider"] = "Suba para o rank Strider para aplicar um impulso em dobro em Drifts para Cima.",
  --here
    ["skeleton"] = "Rank up to Skeleton to remove curses while using this spell.",
    ["creator"] = "Rank up to Creator to cast links in any direction.",
	["protector"] = "Rank up to Protector to rebuild any uncursed stairs.",
	["robber"] = "Rank up to Robber to cast this spell on stairs.",

	--rig activation
	["keeperrig"] = "As escadas se moveram!",
	["hackerrig"] = "As escadas bugaram!",
	["jokerrig"] = "As escadas viraram!",
	["wickedrig"] = "As escadas estão colapsando!",
	["spectrerig"] = "Escadas fantasmagorizaram!",
	["notspectrerig"] = "Escadas NÃO fantasmagorizaram!",
	["patronrig"] = "Você recebeu 1 de Mana, cortesia do(a) %s!",
	["thiefrig"] = "%s roubou 1 de Mana!",
	["mythiefrig"] = "Você roubou 1 de Mana do(a) %s",
	["notthiefrig"] = "%s não é mais um Thief - nenhuma mana foi roubada.",
	["leftthiefrig"] = "O Thief saiu do jogo -  nenhuma mana foi roubada.",
	["hereticrig"] = "Você foi possuído!",
	["archonrig"] = "Teleporte de Fase!",
	["drifterrig"] = "As escadas estão girando!",
	["splicerrig"] = "As escadas estão se torcendo!",
	["necrorig"] = "As escadas estão sumindo!",
	["reaverrig"] = "You have been reflected!", --HERE
	["gremlinrig"] = "Você foi hipnotizado!",
	["reveal"] = "Você revelou escadas invisíveis!",
	
	--drifer lifts
	["boosted"] = "Drift impulsionado!",
	["noboost"] = "Não foi possível impulsionar, não há mais plataformas acima.",
	["noupplatform"] = "Não foi possível impulsionar, não há mais plataformas acima.",
	
	--mana overload
	["overstarted"] = "Você ativou a Sobrecarga de Mana!",
	["overended"] = "A Sobrecarga de Mana terminou.",
	
	--mana share
	["2minshare"] = "É necessário no mínimo 2 de Mana...",
	["noshare"] = "Sem jogadores por perto para receber mana...",
	["noinf"] = "Você não pode compartilhar mana infinita!",
	["toomuch"] = "%s está com Mana máxima!",
	["shared"] = "Mana compartilhada com %s!",
	["received"] = "%s compartilhou um pouco de Mana com você!",
	
	--prompts
	["morph"] = "Pule aqui para virar o %s!",
	
	--race (HERE)
	["race"] = "Jump here to intiate a new race.",
	["norace"] = "Race is automatic in the infinite mode.",

	--misc
	["secret"] = "Segredo encontrado!",
	["unlocked"] = "Feitiço desbloqueado!",

	--chameleon exceptions	
	["chamtutorial"] = "Você não pode usar o Chameleon no tutorial!",
	["champossessed"] = "Você não pode usar o Chameleon enquanto estiver possuído.",
	["chamhypnotized"] = "Você não pode usar o Chameleon enquanto estiver hipnotizado.",
	["chamreflected"] = "You can't use chameleon while reflected.", --HERE
	["morphpossessed"] = "Você não pode mudar de Alinhamento enquanto estiver possuído.",
	["morphhypnotized"] = "Você não pode mudar de Alinhamento enquanto estiver hipnotizado.",
  ["morphreflected"] = "You can't change alignment while reflected.", --HERE
	["bannedclass"] = "%s cannot be used in the Basic Tower.", --HERE
	
	["nocode"] = "Por favor insira o código primeiro.",
	["invalid"] = "Esse código é inválido.",
	["old"] = "Esse código não está mais disponível.",
  ["basic_arch"] = "You cannot claim free Architect demo in the Basic Tower.", --HERE
	["accepted"] = "Código aceito.",
	
	--free demos
	["tryspectre"] = "Spectre desbloqueado por 10 minutos! Não saia do servidor.",
	["endspectre"] = "A demo do Spectre irá acabar em 1 minuto!",
	["trycham"] = "Chameleon desbloqueado por 10 minutos! Não saia do servidor.",
	["new20pass"] = "Limite de Mana aprimorado!",
	["newchampass"] = "Você agora pode mudar seu Alinhamento durante uma escalada!",
	["newspectrepass"] = "Você agora pode se tornar um SPECTRE!",
	["endcham"] = "A demo do Chameleon irá acabar em 1 minuto!",
	["trymana"] = "Bigger Storage desbloqueado por 10 minutos! Não saia do servidor.",
	["endmana"] = "A demo do Bigger Storage irá acabar em 1 minuto!",
  --here
  ["newarchpass"] = "You can now become an ARCHITECT!",
	["tryarch"] = "Non-VR Architect unlocked for 10 minutes! Do not leave server.",
	["endarch"] = "Non-VR Architect demo will end in 1 minute!",
	
	
	["used"] = "Código já foi usado.",
	["tooshort"] = "Sua mensagem era muito pequena e não foi enviada.",
	["sent"] = "Sua mensagem foi enviada com sucesso, obrigado.",

--HERE
	["noobteleport"] = "Complete the tutorial to be able to switch towers!",
	["noobchameleon"] = "Complete the tutorial to be able to use Chameleon!",

	--GIFTING
	['notingame'] = "Player has left the game, you cannot give the game pass!",
	['alreadyowns'] = "Player already owns this game pass.",
	['gotit'] = "You have received %s game pass, courtesy of %s",
	['given'] = "%s has received %s game pass!",

	--custom tower feedbacks
	["notinrace"] = "Você não pode trocar para o modo infinito durante uma corrida!",
	["notinreg"] = "Você não pode trocar o modo infinito durante uma regeneração!",
	["infinite"] = "O servidor agora está no modo infinito!",
	["classic"] = "O servidor agora está no modo clássico!",
	["casual"] = "Jogadores casuais agora podem conjurar feitiços!",
	["nocasual"] = "Jogadores casuais não podem mais conjurar feitiços!",
	["purge"] = "O expurgo agora causará a regeneração no modo clássico!",
	["nopurge"] = "O expurgo não causará mais a regeneração no modo clássico!",
	["noevens"] = "Níveis pares são restritos agora",
	["evens"] = "Níveis pares estão completamente ativados agora",
	["orbmoves"] = "A Esfera Final se moverá aleatoriamente!",
	["orbstopped"] = "A Esfera Final não se moverá sozinha!",
	["infreg"] = "A escadaria irá regenerar após o round infinito!",
	["noinfreg"] = "A escadaria não irá regenerar após o round infinito!",
	["drones"] = "Drones Pequenos ativados!",
	["nodrones"] = "Drones Pequenos desativados!",
	["dronefix"] = "Drones restaurarão escadas!",
	["nodronefix"] = "Drones não restaurarão escadas!",
	["droneunlock"] = "Drones removerão intercessões amaldiçoadas!",
	["nodroneunlock"] = "Drones não removerão intercessões amaldiçoadas!",
	["droneuncurse"] = "Drones irão restaurar escadas amaldiçoadas!",
	["nodroneuncurse"] = "Drones não irão restaurar escadas amaldiçoadas!",
	["dronemove"] = "Drones irão mover as escadas no modo padrão!",
	["nodronemove"] = "Drones não irão mover as escadas no modo padrão!",
	["dronespin"] = "Drones irão girar as escadas no modo padrão!",
	["nodronespin"] = "Drones não irão girar as escadas no modo padrão!",
	["noinput"] = "Por favor insira um valor!",
	["nonumber"] = "Por favor insira um número!",
	["notrace"] = "Você não pode mudar os níveis da torre durante uma corrida!",
	["notultimate"] = "Você não pode mudar os níveis da torre durante um feitiço supremo!",
	["notregen"] = "Você não pode mudar os níveis da torre durante uma regeneração!",
	["wait"] = "Os níveis da torre estão mudando, por favor espere...",
	["duration"] = "Duração da corrida alterada (não afetará a corrida atual)",
	["init"] = "Tempo inicial do intervalo infinito alterado",
	["reduction"] = "Tempo de redução infinita alterado",
	["mininf"] = "Tempo mínimo do intervalo infinito alterado",
	["cooldown"] = "Cooldown dos feitiços de Evento e Rig alterado",
	["speed"] = "Velocidade dos drones pequenos alterada",
	["spin"] = "Duração de conjuração dos drones pequenos alterada",
	["max"] = "Quantidade máxima de escadas-alvo alterada",
	["min"] = "Quantidade mínima de escadas-alvo alterada",
	["curse"] = "Chance de escada amaldiçoada do Drone alterada",
	["block"] = "Chance de interseção amaldiçoada do Drone alterada",
	


}

module.serverbroadcast = {
	["pranked"] = "%s fez uma pegadinha com o(a) %s!",
	["found"] = "%s achou a escada invisível do(a) %s!",
	["disco"] = "%s está curtindo a música do(a) %s.",
	["trap"] = "%s caiu na armadilha do(a) %s!",
	["obby"] = "%s está tentando o obby do(a) %s.",
	["default"] = "Drones voltaram para o modo padrão.",
	["reg"] = "A escadaria está se regenerando.",
	["done"] = "Regeneração da escadaria completa.",
	["union"] = "%s seu uniu com seu fantasma!",
	["eliminated"] = "%s foi eliminado.",
	["won"] = "%s ganhou a corrida!",
	["nojoin"] = "A corrida está fechada - nenhum jogador novo pode entrar.",
	["safety"] = "Os níveis da torre mudaram, essa corrida não começará.",
	["leader"] = "%s está na frente!",
	["toolate"] = "Ninguém chegou ao topo no tempo estipulado!",
	["over"] = "A corrida terminou!",

  --HERE
  ["newrace"] = "%s initiated a race - join them!",
	["joined"] = "%s has joined the	race!",
	["2min"] = "Nobody has challenged %s!",
	["infstart"] = "Infinite race started!",

}

module.localfeedback = {

	["nomana"] = "Sem Mana o suficiente!",
	["notokens"] = "Sem Tokens o suficiente!",
	["unlocked"] = "Feitiço desbloqueado!",
	["maxmana"] = "Sua mana já está no máximo!",
	["nopurchase"] = "Você não precisa comprar mana no tutorial!",
  --HERE
	["notinbasic"] = "Events cannot be cast in the Basic Tower.",
	["limitset"] = "You have a mana limiter active - purchase prevented.", --for refill mana
	["hasarchitect"] = "You already have the Architect Pass!",

	["haschameleon"] = "Você já tem o Chameleon Pass!",
	["hasspectre"] = "Você já tem o Spectre Pass!",
	["hasmana"] = "Você já tem o Bigger Storage Pass!",
	["nomuggle"] = "Você pensou que tinha feitiços supremos secretos para o Muggle, mas não tem.",
	["nonone"] = "Você pensou que tinha feitiços supremos secretos para o None, mas não tem.",
	["nounlocks"] = "Desbloqueie todos os feitiços básicos para acessar os feitiços supremos!",
	["onetoken"] = "Você recebeu um %s Token de Feitiço!",
	["moretokens"] = "Você recebeu alguns %s Tokens de Feitiço!",
	["music"] = "Música alterada com sucesso.",
	["nomusic"] = "Música falhou ao carregar.",
	["noteleport"] = "Teleporte falhou!", 
	["norefresh"] = "Você não pode atualizar ainda.",
--HERE
    ["nounion"] = "You can't use Ghost Union right now.",
	["failedjoin"] = "Failed to join the race.",

}

module.switchon = {

	["JOKER1"] = "Você agora não revela escadas invisíveis.",
	["WICKED1"] = "Você não aciona mais os Rigs do Wicked.",
	["KEEPER1"] = "Você não aciona mais os Rigs do Keeper.",
	["SPECTRE1"] = "Você não aciona mais os Rigs do Spectre.",
	["HACKER1"] = "Escalators immunity on.", --HERE
	["HACKER2"] = "Escalators and rig immunity on.",
	["ARCHON1"] = "Apenas as divisões para cima irão te teleportar.",
	["DRIFTER1"] = "Você não aciona mais os Rigs do Drifter.",
	["SPLICER1"] = "Você não aciona mais os Rigs do Splicer.",
    ["NONE"] = "All special effects immunity on.", --HERE

}

module.switchoff = {

	["JOKER1"] = "Você agora revela escadas invisíveis.",
	["WICKED1"] = "Você agora aciona os Rigs do Wicked.",
	["KEEPER1"] = "Você agora aciona os Rigs do Keeper.",
	["SPECTRE1"] = "Você agora aciona os Rigs do Spectre.",
	["HACKER1"] = "Escalator immunity off.", --HERE
	["HACKER2"] = "Escalator and rig immunity off.",
	["ARCHON1"] = "Todas, exceto as divisões para baixo, irão te teleportar.",
	["DRIFTER1"] = "Você agora aciona os Rigs do Drifter.",
	["SPLICER1"] = "Você agora aciona os Rigs do Splicer.",
    ["NONE"] = "All special effects immunity off.",
}

local timedSpell = "%s acabou de realizar o feitiço de %s!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s acabou de sabotar todas as escadas normais com um Presente de Mana!",
	["patronevent"] = "%s acabou de sobrecarregar a torre com escadas!",
	["patronaltevent"] = "%s acabou de encolher todas as escadas normais!",

	["jokerrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Virada!",
	["jokerevent"] = "%s acabou de esconder todas as escadas normais!",
	["jokeraltevent"] = "%s acabou de virar todas as escadas normais!",

	["wickedrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Destruição!",
	["wickedevent"] = "%s acabou de destruir todas as escadas normais!",
	["wickedaltevent"] = "%s acabou de destruir TODAS as escadas!",

	["keeperrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Movimento Aleatório!",
	["keeperevent"] = "%s acabou de embaralhar todas as escadas normais!",
	["keeperaltevent"] = "%s acabou de restaurar todas as escadas!",

	["spectrerigevent"] = "%s acabou de sabotar todas as escadas normais com uma chance de 50%% de fantasmarem!",
	["spectreevent"] = "%s acabou de embaralhar fantasmagoricamente todas as escadas normais!",
	["spectrealtevent"] = "%s acabou de fantasmar todas as escadas normais!",

	["hackerrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Glitch!",
	["hackerevent"] = "%s acabou de transformar todas as escadas normais em escadas rolantes!",
	["hackeraltevent"] = "%s acabou de transformar todas as escadas normais em escadas rolantes ascendentes!",

	["thiefrigevent"] = "%s acabou de sabotar todas as escadas normais com Roubo de Mana!",
	["thiefevent"] = "%s acabou de planificar todas as escadas normais!",
	["thiefaltevent"] = "%s acabou de criar atalhos em todos os níveis!",

	["archonrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Fase!",
	["archonevent"] = "%s acabou de instalar portões aleatórios em todas as escadas normais!",
	["archonaltevent"] = "%s acabou de instalar portões verticais em todas as escadas normais!",

	["drifterrigevent"] = "%s acabou de sabotar todas as escadas com o feitiço de Giro!",
	["drifterevent"] = "%s acabou de mover aleatoriamente todas as escadas normais!",
	["drifteraltevent"] = "%s acabou de levantar todas as escadas normais!",

	["hereticrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Possessão!",
	["hereticevent"] = "%s acabou de cindir todas as escadas normais!",
	["hereticaltevent"] = "%s acabou de amaldiçoar todas as escadas normais!",

	["splicerrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de União!",
	["splicerevent"] = "%s acabou de unir todas as escadas normais!",
	["spliceraltevent"] = "%s acabou de dividir todas as escadas normais!",

	["necromancerrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Sem-alma!",
	["necromancerevent"] = "%s acabou de sobrecarregar a torre com escadas sem-alma!",
	["necromanceraltevent"] = "%s acabou de transformar todas as escadas normais em escadas sem-alma!",

	["gremlinrigevent"] = "%s acabou de sabotar todas as escadas normais com o feitiço de Hipnose!",
	["gremlinevent"] = "%s acabou de girar todas as escadas normais!",
	["gremlinaltevent"] = "%s acabou de sobrecarregar a torre com escadas-metrô!",

	["reaverrigevent"] = "%s acabou de sabotar todas as escadas normais com um Reflect spell!", --HERE
	["reaverevent"] = "%s acabou de transformar todas as escadas normais em Sentidos Únicos aleatórios!",
	["reaveraltevent"] = "%s acabou de transformar todas as escadas normais em subidas Glass Stairs!", --HERE

	["newmode"] = "%s acabou de trocar os drones para o modo %s!",

	["chameleonrigevent"] = "%s acabou de sabotar todas as escadas normais com um feitiço Misterioso!"
}

module.spells.extras = {

	["Prompt"] = "Clique em um feitiço abaixo para aprender a como usá-lo",
	["Title1"] = "Feitiços básicos",
	["Title2"] = "Feitiços supremos únicos",
    ["Title3"] = "Shared ultimate and basic spells", --HERE
	["ManaCost"] = "Custo de Mana: %s", 
	["TokenCost"] = "Custo de Tokens: %s", 
	["Special"] = "Requisitos Especiais: %s",
	["Execution"] = "Execução: %s",
	["Description"] = "Descrição: %s",
	["basic"] = "Básico",
	["ultimate"] = "Supremo",
	["unlock"] = "0 (3 para desbloquear)",
	["none"] = "Sem requisitos especiais",
  --HERE
    ["LeftHand"] = "Left Hand",
	["RightHand"] = "Right Hand",
}

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "FANTASMA",
	["spirit"] = "ESPÍRITO", --only for spirit spectres
	["welcome"] = "BEM-VINDO(A)",
	["drones"] = "DRONES",
	["orb"] = "ORBE",
	["refill"] = "REABASTECER", --for all 2nd rank bonuses
	["overload"] = "SOBRECARREGAR",
	["steal"] = "ROUBAR",
	["gift"] = "PRESENTEAR",
	["share"] = "COMPARTILHAR",
	["prank"] = "PEGADINHA",
	["possession"] = "POSSESSÃO",
	["ritual"] = "RITUAL",
	["purge"] = "EXPURGO",
	["blessing"] = "BENÇÃO",
	["stash"] = "RESERVA",
	["backdoor"] = "PORTA DOS FUNDOS",
	["chamber"] = "CÂMARA",
	["base"] = "BASE",
	["circus"] = "CIRCO",
	["shelter"] = "ABRIGO",
	["haven"] = "REFÚGIO",
	["study"] = "ESTUDO",
	["nether"] = "SUBTERRÂNEO",
	["guild"] = "GUILDA",
	["nexus"] = "NEXO",
	["oasis"] = "OÁSIS",
	["hub"] = "CENTRO",
	["mirror"] = "ESPELHO",
	["grave"] = "TÚMULO",
	["shack"] = "CABANA",
	["regen"] = "REGENERE",
	["optimus"] = "OPTIMUS",
    ["tutorial"] = "TUTORIAL",--player mana is drained upon starting tutorial (HERE)

}

module.gui.gameover.extras = {

	["possessed"] = "Esses Heretics chatos!",
	["hypnotized"] = "Onde eu estou?",
    ["reflected"] = "Let me out!", --HERE
	["new"] = "Novo rank adquirido - %s",

}

module.gui.gameover.raceplacements = {
	"VOCÊ GANHOU A CORRIDA!",
	"SEGUNDO LUGAR!",
	"TERCEIRO LUGAR!",
	"Você ficou em quarto.",
	"Você ficou em quinto.",
	"Você ficou em sexto.",
	"Você ficou em sétimo.",
	"Você ficou em oitavo.",
	"Você ficou em nono.",
	"Você ficou em décimo.",
	"Você ficou em décimo primeiro.",
	"Você ficou em décimo segundo.",
}

-- PREPARATION --

--fill in common rank descriptions
for class,_ in pairs(TowerData.RANKED_ALIGNMENTS) do

	for rank, desc in pairs(CommonPerksInsertALignment) do

		if module.gui.ranks[class][rank] then continue end

		module.gui.ranks[class][rank] = string.format(desc,class)

	end

	for rank, desc in pairs(CommonPerksInsertTimedSpell) do

		if module.gui.ranks[class][rank] then continue end

		local spell

		for key, info in pairs(SpellData) do

			if info.class ~= class or not info.timed then continue end

			spell = key
			break

		end

		module.gui.ranks[class][rank] = string.format(desc,module.spells.names[spell])

	end

end

--fill in common spell names
for spell, desc in pairs(CommonSpellNames) do

	for class, _ in pairs(SpellData[spell].IMAGES) do

		if class == "NONE" then continue end

		local Capitalized = string.sub(class,1,1) .. string.lower(string.sub(class,2,-1))

		module.spells.names[string.lower(class) .. spell] =  string.format(desc,Capitalized)


	end

end

--fill in timed spell messages
for spell, data in pairs(SpellData) do
	if not data.timed or not data.class then continue end
	module.timedspells[spell] = string.format(timedSpell,"%s",module.spells.names[spell])
end

return module
