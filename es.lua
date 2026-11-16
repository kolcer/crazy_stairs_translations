--VERSION 4.4--
--SPANISH--
-- COMPLETE! Hopefully --

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {

	["default"] = "PREDETERMINADO",
	["validate"] = "VALIDAR",

}

module.gui.switcher = {

	["join"] = "UNIRSE",
	["friends"] = "AMIGOS EN LÍNEA",
	["refresh"] = "actualizando...",
	["fail"] = "¡ERROR AL ACTUALIZAR!",

	--NEW
	["refreshbutton"] = "ACTUALIZAR",
	["failed"] = "¡Error al teletransportar!",
	["classic"] = "Torre Normal",
	["pro"] = "Torre Pro",
	["custom"] = "Torre Personalizada",
	["basic"] = "Torre Básica",
	["infinite"] = "Torre Infinita",
	--END NEW

}

module.gui.serversettings = {

	["Drones"] = "CONFIGURACIÓN DE DRONES",
	["DronesReadOnly"] = "CONFIGURACIÓN DE DRONES (lectura solamente)",
	["DroneEnabled"] = "Drones activados",
	["DroneFix"] = "Los drones restauran escaleras",
	["DroneRemove"] = "Los drones eliminan intersecciones hechizadas",
	["DroneUnCurse"] = "Los drones restauran escaleras hechizadas",
	["DroneMove"] = "Los drones mueven escaleras en el modo por defecto",
	["DroneSpin"] = "Los drones giran escaleras en el modo por defecto",
	["DroneSpeed"] = "Velocidad de movimiento de drones (nivel/segundo)",
	["DroneDelay"] = "Velocidad de giro de drones (segundos)",
	["DroneMax"] = "Cantidad maxima de escaleras (los drones exclusivamente destruiran sobre este límite)",
	["DroneMin"] = "Cantidad minima de escaleras (los drones exclusivamente crearan por debajo de este límite)",
	["DroneBlock"] = "Chance de escaleras hechizadas por cada encuentro con una intersección vacia (porcentaje)",
	["DroneCurse"] = "Chance de escaleras hechizadas por creación y encuentro con escaleras normales (porcentaje)",

	["Tower"] = "CONFIGURACIÓN DE LA TORRE",
	["TowerReadOnly"] = "CONFIGURACIÓN DE LA TORRE (lectura solamente)",
	["InfMode"] = "Modo Infinito (no puede ser cambiado durante una carrera o regeneración)",
	["CasualPlayers"] = "Los jugadores casuales tienen permitido lanzar hechizos",
	["Regeneration"] = "Generación automatica de escaleras después de La Purga De Wicked (no funciona en el modo infinito)",
	["EvenLevels"] = "Niveles Pares Restringidos",
	["OrbMoves"] = "El orbe final cambia de posición",
	["InfRegeneration"] = "Generación de escaleras automática en un nuevo servidor, los niveles de la torre cambian después de la carrera infinita",
	--deprecated
	--["TowerLevels"] = "Tower levels (or active levels in the infinite mode). Cannot be changed during a race or a regeneration",
	["TowerSize"] = "Tamaño de cuadrícula (experimental)",
	["RaceDuration"] = "Duración Máxima De La Carrera. No afecta la carrera actual. (segundos)",
	["InfStart"] = "Intervalo Inicial de ronda del Modo Infinito (2 niveles son creados cada ronda) (segundos)",
	["InfReduction"] = "Reducción del intervalo del Modo Infinito (cada ronda es mas corta por) (segundos)",
	["InfMin"] = "Minima duración del intervalo del Modo Infinito (segundos)",

	--NEW KEY
	["CooldownTime"] = "Tiempo de espera de los eventos y rigs (segundos)",
	--END NEW

}


module.gui.shop = {

	--NEW
	["architect"] = "Este gamepass te deja usar el Architect sin un visor VR",
	--END NEW

	["chameleon"] = "Los Chameleons pueden cambiar su clase durante la escalada.",
	["spectre"] = "Spectre es una clase baseada en teletransporte, genial para jugar solo.",
	["mana"] = "Expande tu capacidad de almacenamiento de Mana por 10 puntos.",

	["3tokens"] = "Desbloquea un hechizo o invoca hasta 3 hechizos ultimatum.",
	["30tokens"] = "Desbloquea 10 hechizos o invoca hasta 30 hechizos ultimatum.",
	["300tokens"] = "Suficiente para desbloquear todos los hechizos con 93 monedas sobrantes.",

	["3TOKENS"] = "3 Multimonedas (R$%d)",
	["30TOKENS"] = "30 Multimonedas (R$%d)",
	["300TOKENS"] = "300 Multimonedas (R$%d)",

	--NEW
	["SPECTRE"] = "Gamepass de Spectre. (R$%d)",
	["MANA"] = "Gamepass de almacenamiento de 20 Mana. (R$%d)",
	["CHAMELEON"] = "Gamepass de Chameleon. (R$%d)",
	["ARCHITECT"] = "Gamepass de Architect (R$%d)",

	--END NEW

}


module.gui.nospellsbar = {

	["nocasual"] = "SOLO SE LANZA HECHIZOS EN CARRERA",
	["possessed"] = "¡POSEÍD@! (encuentra Mana para liberarte)",
	--NEW
	["permanent"] = "¡POSEÍD@! (modo permanente)",
	["cancelled"] = "CANCELADO...", --timed spell cancelled
	--END NEW

}

--NEW
module.gui.stats = {

	["badges"] = "TUS LOGROS",
	["climbs"] = "TUS ESCALADAS",
	["total"] = "ESCALADAS/VICTORIAS EN TOTAL",
	["best"] = "MEJOR TIEMPO EN GENERAL",
	["norecord"] = "¿?",

	["2124486274"] = "Hazle una broma al creador", -- Prank the creator
	["1803533030753957"] = "Agujero Negro",
	["2124480173"] = "Malicia de Wicked",
	["2124480172"] = "Truco de Joker",
	["2124637294"] = "Voyage de Drifter",
	["2124517579"] = "Robo de Thief",
	["4464785885277417"] = "Torce de Splicer",
	["2124480174"] = "Orden de Keeper",
	["2124637293"] = "Conexión de Archon",
	["2124517578"] = "Código de Hacker", -- Hacker's Exploit 
	["707445818894757"] = "Espiral de Gremlin",
	["2124480171"] = "Orgullo de Patron",
	["1407551481032773"] = "Reflección de Reaver",
	["2124637295"] = "Hechizo de Heretic",
	["1885715582646280"] = "Ritual de Necromancer",
	["2124480175"] = "Lógica de Muggle",
	["2124826874"] = "Círculo Completo",
	["2124529966"] = "Nada de None",
	["2124826880"] = "Destino poseído",
	["3731010929572663"] = "Sueño hipnotizado",
	["840574993122888"] = "Perspectiva reflejada",
	["2124913225"] = "Diseño de Architect",
	["2124702954"] = "Rootkit instalado",
	["2124702945"] = "¡Destruyan todo!",
	["2124702946"] = "Orden restaurado",
	["128721686760593"] = "Soy la razón por la cual esto se llama Crazy Stairs",
	["2124702952"] = "Tomaré el ascensor",
	["3121101516427751"] = "El Entrelazamiento",
	["2124702942"] = "¡Nadie se queda atras!",
	["2124702950"] = "Illuminati confirmado",
	["2124702951"] = "Mio, mio, todo MIO!",
	["1165646024608180"] = "Somos UNOS",
	["2303731210592278"] = "¡Alzaos, alzaos, ALZAOS!",
	["2124702949"] = "Excomunicación",
	["2124702943"] = "Hacer bromas es vivir",
	["2124702948"] = "Los hechizos estan sobrevalorados",
	["2124826876"] = "Círculo Perfecto",
	["2124645341"] = "Logro secreto",
	["2126893403"] = "Logro muy secreto",
	["2126893411"] = "Logro súper secreto",

}

module.gui.questions = {
	["cancel"] = "¿Quieres cancelar este hechizo cronometrado? Los monedas no serán reembolsados.",
	["tutorial"]= "¿Volver a hacer el tutorial?",
	["skip"] = "¿Saltar el tutorial?",
	["reshuffle"] = "¿Quieres que las escaleras eviten las collisiones mientras se mueven? Si no, cualquier escalera en el camino será destruida.",
	["tonormal"] = "%s no se puede usar en Torre Básica. ¿Quiéres teletransportar a la Torre Normal?",
	["raceconfirm"] = "¿Seguro que quiéres participar en la carrera? ¡Te teletransportarás al fondo de la torre!",

	--new
	["gift"] = "¿Quieres regalar %s a otro jugador?",
	["choose"] = "Elige un recipiente para %s", 
	["confirm"] = "Quieres regalar %s a %s?", --second %s is the chosen player
	["received"] = "Ahora tienes el gamepass %s, ¡%s te lo regaló!",
	
	["notenough"] = "Tienes que tener %d escaladas para teletransportar a otras torres.",

	["architect"] = "Architect",
	["mana"] = "+10 Almacenamiento de Mana",
	["spectre"] = "Spectre",
	["chameleon"] = "Chameleon",

	--end new
	--new
	["race"] = "Participar en la carrera?",
	["racein"] = "Empieza en:",
	["go"] = "¡YA!",
	["raceoff"] = "Carrera cancelado",
	--end new
}
--END NEW



module.gui.codes = {

	["title"] = "INGRESA EL CÓDIGO",
	["body"] = "Ingresa tu código aqui:",
	["prompt"] = "(código)",
	["button"] = "VALIDAR",

}

module.gui.jukebox = {

	["title"] = "MÚSICA",

	["master"] = "VOLUMEN MASTER",
	["default"] = "(usando volumen master)",
	["climb"] = "MÚSICA DE ESCALADA",
	["endgame"] = "MÚSICA DE VICTORIA",
	["failed"] = "[error al cargar]",
	--NEW
	["off"] = "MUDO",
	--END NEW
}

module.gui.results = {

	["title"] = "RESULTADOS DE LA CARRERA",

	["place"] = "PUESTO",
	["name"] = "NOMBRE",
	["level"] = "NIVEL MÁX.",
	["time"] = "TIEMPO",
	["rank"] = "RANGO",
	["not"] = "N/A",
	[1] = "GANADOR/A",
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


--NEW 

module.gui.menu = {

	["Codes"] = "Activar código",
	["Feedback"] = "Enviar mensaje sobre el juego",
	["Language"] = "Idioma",
	["Music"] = "Configuracíon de música",
	["RaceResults"] = "Resultados de la ultima carrera",
	["ServerSettings"] = "Ajustes de la torre (Torre Personalizada)",
	["Settings"] = "Ajustes del juego",
	["Shop"] = "Comprar gamepasses y monedas",
	["Spectate"] = "Observar jugadores",
	["Stats"] = "Tus logros y estadísticos",
	["SwitchServer"] = "Cambiar de servidor/torre",
	["Tokens"] = "Tus monedas",
	["Tutorial"] = "Tutorial",

}

--NEW
--end screen tutorial (unused)
module.gui.tutorial = {

	["complete"] = "CLIMB COMPLETED!",
	["choose"] = "Please choose your first alignment! (jump on a morph pad)",
	["collect"] = "COLLECT THE ORB TO CONTINUE",
	["difficulty"] = "Difficulty:",

}

--END NEW

module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "Rig de %s",
	["mode"] = "Drones Modo %s",
	["refill"] = "Sobrecarga de Mana (%s)",
	["union"] = "Unión de Fantasma (%s)",
}

module.spells.names = {

	--PATRON
	["summon"] = "Crear Escaleras",
	["restore"] = "Llamar al Orbe", 
	["split"] = "Reconstruir Opuesto",
	["shrinkabove"] = "Encoger Escaleras De Arriba",
	["link"] = "Crear Puente",
	["portal"] = "Crear Portal",

	["summoner"] = "Invocador",
	["patronevent"] = "Sobrecarga De Escaleras",
	["patronaltevent"] = "Encogimiento",

	--JOKER 
	["flip"] = "Voltear Escaleras",
	["flipabove"] = "Voltear Escaleras De Arriba",
	["fake"] = "Crear Escaleras Falsas",
	["invisible"] = "Crear Escaleras Invisibles",
	["disco"] = "Escaleras Disco",
	["trap"] = "Crear Trampa",

	["flipper"] = "Volteador",
	["jokerevent"] = "Ocultación",
	["jokeraltevent"] = "Voltealas Todas",

	--WICKED
	["destroy"] = "Destruir Escaleras",
	["destroyabove"] = "Destruir Escaleras De Arriba",
	["bend"] = "Doblar Escaleras Hacia Arriba",
	["damage"] = "Dañar Escaleras De Arriba",
	["flatten"] = "Doblar Escaleras Opuestas Hacia Abajo",
	["wall"] = "Crear Pared" ,

	["bender"] = "Doblador",
	["wickedevent"] = "Destruccíón",
	["wickedaltevent"] = "Purga",

	--KEEPER
	["move"] = "Mover Escaleras",
	["rotate"] = "Rotar Escaleras",
	["moveup"] = "Mover Escaleras Hacia Arriba",
	["movedown"] = "Restaurar Escaleras",
	["moverandom"] = "Mover Escaleras De Arriba Aleatoriamente",
	["rig"] = "Mover Escaleras Aleatoriamente",

	["ascension"] = "Ascendedor",
	["keeperevent"] = "Baraja",
	["keeperaltevent"] = "Restauración",

	--SPECTRE
	["phantom"] = "Crear Escaleras Fantasma",
	["ghost"] = "Fantasmizar Escaleras De Arriba",
	["shadow"] = "Fantasmizar Escaleras",
	["horizontal"] = "Teletransporte Horizontal",
	["random"] = "Teletransporte Aleatorio",
	["vertical"] = "Teletransporte Vertical",

	["traveller"] = "Reluciente",
	["spectreevent"] = "Baraja Fantasma",
	["spectrealtevent"] = "Reino del Éter",

	--HACKER
	["dash"] = "Impulso Horizontal",
	["blink"] = "Destello",
	["swap"] = "Intercambio",
	["slide"] = "Escaleras Mecánicas",
	["slideup"] = "Hackear escaleras opuestas", 
	["glitch"] = "Glichear escaleras",

	["hack"] = "Speedhack",
	["hackerevent"] = "Mecanización",
	["hackeraltevent"] = "Brecha",

	--THIEF
	["steal"] = "Robar Escaleras",
	["stealabove"] = "Robar Escaleras De Arriba",
	["place"] = "Colocar Escaleras",
	["uppass"] = "Escaleras en Espiral",
	["sidepass"] = "Crear Rama",
	["drop"] = "Tierra Plana",

	["heist"] = "Robo",
	["thiefevent"] = "Tierra Plana",
	["thiefaltevent"] = "Ramas en bucle",

	--ARCHON
	["splitup"] = "Portal Vertical",
	["splitrotate"] = "Portal Adyacente",
	["splitside"] = "Portal Paralela",
	["splitrandom"] = "Portal Aleatoria",
	["cancelsplit"] = "Quitar Portal",
	["splitforward"] = "Portal en plataforma",

	["splitter"] = "Portalmanía",
	["archonevent"] = "¿Dónde Estoy?",
	["archonaltevent"] = "Divisíon",

	--DRIFTER
	["indrift"] = "Surfear",
	["outdrift"] = "Desplazar escaleras",
	["updrift"] = "Elevador",
	["diagdrift"] = "Desplazo diagonal",
	["spin"] = "Girar Escaleras",
	["driftabove"] = "Levantar Escaleras De Arriba",

	["riser"] = "Ascensor",
	["drifterevent"] = "Desplazamiento",
	["drifteraltevent"] = "Levantamiento",

	--HERETIC
	["createcursed"] = "Crear Escaleras Hechizadas",
	["curse"] = "Hechizar Escaleras",
	["curseabove"] = "Hechizar Escaleras De Arriba",
	["curseinter"] = "Parpadeo",
	["autodown"] = "Elevar Cisma",
	["autoup"] = "Bajar Cisma Opuesta",

	["malediction"] = "Maledictor",
	["hereticevent"] = "Desunión",
	["hereticaltevent"] = "Venganza",

	--SPLICER
	["twistup"] = "Empalmar escaleras arriba",
	["twistside"] = "Empalmar escaleras paralelas",
	["twistrotate"] = "Empalmar escaleras adyacentes",
	["canceltwist"] = "Restaurar escaleras empalmadas",
	["split2"] = "Partir escaleras",
	["splitalt"] = "Partir escaleras hacia adelante",

	["twister"] = "Divisor",
	["splicerevent"] = "Entrelazar",
	["spliceraltevent"] = "Bisecar",

	--NECROMANCER
	["createdual"] = "Crear escaleras duales",
	["copyplatform"] = "Replica la plataforma del fantasma",
	["soulbridge"] = "Crear puente del alma",
	["undeadabove"] = "Quitar alma de arriba",
	["revival"] = "Punto de renacimiento",
	["regen"] = "Regenerar Mana",

	["duality"] = "Dualidad",
	["necromancerevent"] = "Resurrección",
	["necromanceraltevent"] = "Cosecha de almas",

	--REAVER
	["createmirrored"] = "Crear escaleras espejo",
	["bigmirror"] = "Espejo Gigante",
	["smallmirror"] = "Espejo Pequeño",
	["outermirror"] = "Espejo Exterior",
	["merge"] = "Unión de Reaver",
	["oneway"] = "Escaleras cristales de arriba",

	["reflection"] = "Refleccíon",
	["reaverevent"] = "Encrucijada",
	["reaveraltevent"] = "Vitrificación",


	--GREMLIN
	["tram"] = "Crear Tranvía",
	["screwup"] = "Escaleras de arriba locas",
	["revolve"] = "Escaleras giratorias",
	["trapstairs"] = "Escaleras trampa",
	["screwdown"] = "Escaleras Locas",
	["spinplatform"] = "Plataforma giratoria",

	["tramway"] = "Conductor",
	["gremlinevent"] = "Todo da vueltas...",
	["gremlinaltevent"] = "Atasco",


	--CHAMELEON
	["cork"] = "Escaleras Sacacorchos",
	["warp"] = "Atraer Escaleras",
	["chamdown"] = "Mover Escaleras Abajo",
	["chamdraw"] = "Puente Levadizo",
	["chamdrawabove"] = "Puente Levadizo De Arriba",
	["oneways"] = "Escaleras Unidireccional",

	--NEW

	["mugglereg"] = "Regenerando Torre",
	["mugglecd"] = "Tiempo de espera de los eventos",
	["share"] = "Compartir Mana (necesitas 2 Mana como mín.)",

	--ARCHITECT
	["archpatron"] = "Crear o Encoger",
	["archarchon"] = "Portalizar escaleras o Plataforma",
	["archthief"] = "Robar o Colocar",
	["archnecro"] = "Crear Dual o Quitar alma",
	["archhacker"] = "Mecanizar o Hackear",
	["archkeeper"] = "Mover o Restaurar",
	["archsplicer"] = "Empalmar o Partir",
	["archwicked"] = "Pared o Destruir",
	["archgremlin"] = "Girar escaleras o platforme",
	["archjoker"] = "Crear escaleras falsas o voltear",
	["archdrifter"] = "Desplazar escaleras o Crear elevador",
	["archspectre"] = "Crear escaleras fantasma o Fantasmizar",
	["archreaver"] = "Crear espejo o Unidireccional",
	["archheretic"] = "Hechizar intersección o escaleras",

	--END NEW

}

-- common description stuff
local union = "Este es una hechizo cronometrado de Unión de Fantasma. Cuando estes en este modo, puedes ir en medio de escaleras que bloqueen el camino y caminar en las escaleras fantasma, falsas y obbies. , Las escaleras especiales no tendrán efecto en ti, y no activarás rigs. Tristemente, no puedes usar hechizos en este modo."
local overload = "Este es un hechizo de Sobrecarga. Te garantizará 1 Mana cada 6 segundos por 1 minuto. (10 en total). Solo puedes tener 1 sobrecarga activada a la vez."
local timed = "Este es un hechizo cronometrado. "  -- do not remove space
local rig = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, " -- do not remove space
local event = "Este es un hechizo de evento. " -- do not remove space
local fill = "Este es un hechizo de evento. Creará escaleras en cada intersección no hechizada libre. " -- do not remove spaces
local mode = "Este es un hechizo de dron. Cambiará el modo de todos los drones a %s. En este modo los drones utilizarán aleatoriamente %s o %s en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los límites, los drones crearán y destruirán respectivamente."
local timedExtra = " Sube de rango a %s para extender el límite a 90s. Invocar este hechizo también rellenará el Mana de todos los %s que tengan al menos el rango %s." -- do not remove leading space
module.spells.descriptions = { 
	--PATRON
	["summon"] = "Este hechizo the permite crear 1 escalera en la dirección elegida. Si hay alguna escalera en el camino, serán demolidas.",
	["restore"] = "Este hechizo llama al orbe en el piso superior a la plataforma elegida. Sube tu rango a Defender para reducir el costo a 2 Mana. Sube tu rango a Saviour para duplicar la velocidad a la cual el orbe viene hacia ti.",
	["split"] = "Este hechizo reconstuirá las escaleras en el direccíon contrario. Sube tu rango a Protector para poder reconstruir cualquier escalera especial.",
	["shrinkabove"] = "Este hechizo encoge las escaleras de arriba, dejandote pasar a lado de ellas.",
	["link"] = "Este hechizo crea puente entre plataformas por 60 segundos. Los puentes no son tangibles por debajo. Sube de rango a Creator para poder crear puentes en cualquier dirección.",
	["portal"] = "Este hechizo creará un portal que teletransportará a todos los jugadores que entren en el una plataforma arriba. El portal dura 60 segundos.",

	["summoner"] = timed .. "Te permite crear tantas escaleras como quieras por 1 minuto, tal y como lo harías con el hechizo Crear Escaleras." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .. "en escaleras con Patron Rig. Cuando estas sean activadas incrementarán el Mana de quien lo toque por 1. Si el jugador tiene la cantidad de Mana máxima, las escaleras no se activarán. Después de activarlas, las escaleras se volverán normales.",
	["patronevent"] = fill,
	["patronaltevent"] = event .. "Encoger escaleras.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Encoger"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Este hechizo voltea una escalada, de tal manera que la parte superior sera la parte inferior y viceversa. De cualquier manera, voltear las escaleras de vuelta si es posible.",
	["flipabove"] = "Este hechizo voltea las escaleras de arriba, de tal manera que la parte superior sera la parte inferior y viceversa. De cualquier manera, voltear las escaleras de vuelta si es posible.",
	["fake"] = "Este hechizo crea escaleras falsas en la dirección elegida. Si hay alguna escalera en el camino, esta será demolida. Cualquier jugador (incluyendote) que las intente subir caerá, excepto los que tengan el rango Tricksters, IT y jugadores en el modo Unión de Fantasma.",
	["invisible"] =  "Este hechizo crea escaleras invisibles. Tristemente, estas no demoleran escaleras en el camino, asi que solo las puedes colocar en una intersección vacia. Sube de rango a Jester para tener de opción de ver o no ver todas las escaleras invisibles.",
	["disco"] = "Este hechizo pone a las escaleras en modo disco. Cualquier jugador (incluyendote) parará y bailará en ellas durante 5 segundos (usalmente el doble). Los rangos Comic y superiores son inmunes a las escaleras disco.",
	["trap"] = "Este hechizo transforma una plataforma en una trampa por 60 segundos. Cualquier jugador (incluyendote) que camine en la trampa caerá a la plataforma inferior. Sube de rango a Jokester para tener la opción de ver plataformas trampa.",

	["flipper"] = timed .. "Te permite voltear cuantas escaleras quieras por 1 minuto. Si se encuentra alguna escalera arriba también será volteada, si no, la de abajo." .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "en escaleras con Joker Rig. Cuando estas sean activadas se voltearán automáticamente.",
	["jokerevent"] = event .. "Hacer invisibles las escaleras. Los mensajes que usualmente se muestran cuando se encuentra alguna no se mostrarán para evitar spam.",
	["jokeraltevent"] = event .. "Voltear escaleras.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Invisible y Volteador"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Este hechizo destruye escaleras. A diferencia de otros hechizos, este funciona en cualquier tipo de escaleras. Sube de rango a Vile para usar este hechizo gratis. Sube de rango a Vicious para obtener 1 Mana cada vez que destruyes escaleras especiales. Sube de rango a Annihilator para destruir escaleras hechizadas.",
	["destroyabove"] = "Este hechizo destruye las escaleras de arriba. A diferencia de otros hechizos, este funciona en cualquier tipo de escaleras. Sube de rango a Vicious para obtener 1 Mana cada vez que destruyes escaleras especiales. Sube de rango a Annihilator para destruir escaleras hechizadas.",
	["bend"] = "Este hechizo dobla escaleras hacia arriba. Utilízalo para obtener acceso a plataformas superiores.",
	["damage"] = "Este hechizo transforma las escaleras de arriba en un obby, removiendo la mayoría de los peldaños. Antes de probarlos, recuerda sobre el cooldown de salto. Sube de rango a Destroyer para caminar en obbies tal y como le harías en escaleras normales.",
	["flatten"] = "Este hechizo dobla escaleras hacia abajo. Utilízalo para obtener acceso a la plataforma opuesta.",
	["wall"] = "Este hechizo crea uan pared de energía + un puente a la plataforma opuesta por 60 segundos. Solo Wickeds pueden ir en medio de la pared y del puente. La pared puede ser forzada por un teleporte de Spectre, un impulso de\tHacker or una Unión de Fantasma.",

	["bender"] = timed .. "Te permite doblar escaleras hacia arriba tantas veces quieras por 1 minuto. Ambas las escaleras en las que estes y las de arriba serán dobladas a la vez si los requisitos son cumplidos." .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "en escaleras con Wicked Rig. Cuando estas sean activadas, se destruirán automáticamente. Sube de rango a Devil para caminar en Wicked Rigs sin activarlas.",
	["wickedevent"] = event .. "Destruir escaleras. La regeneración no será activada.",
	["wickedaltevent"] = "Este es un hechizo de evento. Destruirá todas las escaleras en el juego. Sin excepciones. La regeneración será activada.",
	["wickedmode"] = string.format(mode,"Wicked","Wicked Rig","Dobladores"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Este hechizo moverá las escaleras horizontalmente, destruyendo cualquier escalera un su camino. Después de invocarlo, aparecerán flechas en las escaleras, para que puedas escoger la dirección. Las escaleras no pueden ser movidas fuera del area de juego. Sube de rango a Controller para mover cualquier escalera especial",
	["rotate"] = "Este hechizo rotará las escaleras de manera horizontal, destruyendo cualquier escalera en el camino. Después de invocarlo, aparecerán flechas en las escaleras, para que puedas escoger la dirección. Las escaleras no pueden ser rotadas fuera del area de juego. Sube de rango a Controller para mover cualquier escalera especial.",
	["moveup"] = "Este hechizo moverá las escaleras hacia arriba, destruyendo cualquier escalera en el camino. Las escaleras no pueden ser movidas sobre el nivel superior. Sube de rango a Controller para mover cualquier escalera especial.",
	["movedown"] = "Este hechizo restaurará cualquier escalera especial. Si las escaleras ya son normales, este hechizo no se ejecutará. Sube de rango a Captain para usar este hechizo gratis. Sube de rango a Admiral para poder restaurar Escaleras Hechizadas e Intersecciones Hechizadas.",
	["rig"] = "Este hechizo moverá o rotará las escaleras en una dirección aleatoria, destruyendo cualquier escalera en el camino. Sube de rango a Operator para evitar que las escaleras vayan hacia abajo. Sube de rango a Controller para mover cualquier escalera especial.",
	["moverandom"] = "Este hechizo moverá o rotará las escaleras de arriba en una dirección aleatoria, destruyendo cualquier escalera en el camino. Sube de rango a Operator para evitar que las escaleras vayan hacia abajo. Sube de rango a Controller para mover cualquier escalera especial.",

	["ascension"] = timed .. "Te permite mover escaleras hacia arriba tantas veces quieras por 1 minuto." .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "en escaleras con Keeper Rig. Cuando estas sean activadas, se moverán o rotarán en una dirección aleatoria. Sube de rango a Operator para que los Keeper Rigs que actives nunca vayan hacia abajo. Sube de rango a Sentinel para caminar en Keeper Rigs sin activarlos.",
	["keeperevent"] = "Este es un hechizo de evento. Antes de invocarlo deberás escoger el modo suave o forzado. En modo suave, este hechizo moverá o rotará todas las escaleras en una dirección aleatoria sin destruir nada en el proceso. En modo forzado, este hechizo moverá o rotará todas las escaleras en una dirección aleatoria destruyendo cualquier escalera en el camino.",
	["keeperaltevent"] = "Este es un hechizo de evento. Restaurará todas las escaleras en el juego, incluyendo a las hechizadas. A diferencia de la Purga las intersecciones hechizadas no serán removidas.",
	["keepermode"] = string.format(mode,"Keeper","Keeper Rig","Movimiento Forzado o Girar"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Este hechizo creará escaleras \"fantasma\" en la dirección escogida. Si hay escaleras en el camino, estas serán demolidas. Las escaleras fantasmas se desvanecerán después de invocarlas, desapareciendo completamente.",
	["ghost"] = "Este hechizo te permite fantasmizar las escaleras de arriba. Puedes caminar en medio de escaleras fantasma, pero no puedes caminar en ellas a menos que tengas el rango Aether.",
	["shadow"] = "Este hechizo te permite fantasmizar o defantasmizar escaleras, Puedes caminar en medio de escaleras fantasma, pero no puedes caminar en ellas a menos que tengas el rango Aether. Sube de rango a Phantom para usar este hechizo gratis.",
	["horizontal"] = "Este hechizo te teletransportará horizontalmente en la dirección elegida. Puedes teletransportarte incluso si hay escaleras en el camino.",
	["random"] = "Este hechizo te teletransportará a una plataforma aleatoria en el mismo nivel.",
	["vertical"] = "Este hechizo te teletransportará a la plataforma de arriba.",

	["traveller"] = timed .. "Te permite usar tantas veces quieras el hechizo de teletransportación horizontal por 1 minuto." .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "en escaleras con Spectre Rig. Cuando estas sean activadas, tendrán un chance del 50% de volverse fantasma. Sube de rango a Vision para poder caminar en Spectre Rigs sin activarlas.",
	["spectreevent"] = "Este es un hechizo de evento. Antes de invocarlo deberás escoger el modo suave o forzado. En modo suave, este hechizo moverá o rotará todas las escaleras normales en una dirección aleatoria sin destruir nada en el proceso. En modo forzado, este hechizo moverá o rotará todas las escaleras normales en una dirección aleatoria destruyendo cualquier escalera en el camino.",
	["spectrealtevent"] = event .. "Convertir en escaleras fantasma. Sube de rango a Aether para caminar en escaleras fantasma. La Unión de Fantasma también puede ser usada para caminar en escaleras fantasma.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Movimiento Fantasma Suave o Girar"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Este hechizo te teletransportará en la dirección escogida. A diferencia del hechizo de Spectre, no puedes ir si hay escaleras en el camino. Sube de rango a Cracker para que este hechizo vaya un 50% mas rápido.",
	["blink"] = "Este hechizo te teletransportará alrededor de las escaleras de arriba. Las escaleras de arriba deben estar en la dirección opuesta de las escaleras de abajo para que este hechizo funcione. Sube de rango a Exploiter para que este hechizo vaya un 50% mas rápido.",
	["swap"] = "Este hechizo te teletransportará al punto donde tu fantasma esté. A diferencia de otros hechizos básicos, este puede ser usado en cualquier lado.",
	["slide"] = "Este hechizo convertirá las escaleras en escaleras mecánicas con dirección elegido. El elevador solo funcionará cuando hayan jugadores en él. Sube de rango a Scripter para poder pausar cualquier escalera mecánica.",
	["slideup"] = "Este hechizo hackeará escaleras opuestas y las teletransportará a tus pies. Debería estar escaleras opuestas de la plataforma.",
	["glitch"] = "Este hechizo glitcheará las escaleras, teletransportandote a ti y a estas a un lugar diferente en el mismo nivel. Sube de rango a Zero, para teletransportar las escaleras a lado del orbe si estás en el nivel superior.",

	["hack"] = timed .. "Te deja mecanizar cualquier escalera normal. Si hay algun escalera arriba, va a ser destruido." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "en escaleras con Hacker Rig. Cuando estas sean activadas, teletransportarán al jugador y a las escaleras a un lugar diferente en el mismo nivel. Solo un jugador será teletransportado. Sube de rango a Reaper para poder caminar en Hacker Rigs sin activarlas.",
	["hackerevent"] = event .. "Transformar en escaleras mecánicas que vayan hacia arriba o hacia abajo.",
	["hackeraltevent"] = event .. "Transformar en escaleras mecánicas que vayan hacia arriba.",
	["hackermode"] = string.format(mode,"Hacker","Hacker Rig","Escalera Mecánica"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Este hechizo te permite robar una escalera normal o rigeadas. Este hechizo o el de robar escaleras de arriba son requeridos para otros hechizos de Thief básicos. Sube de rango a Hijacker para poder robar cualquier tipo de escaleras.",
	["stealabove"] = "Este hechizo te permite robar una escalera normal o rigeadas que esté encima de ti. Este hechizo o el de robar escaleras de abajo son requeridos para otros hechizos de Thief básicos. Sube de rango a Hijacker para poder robar cualquier tipo de escaleras.",
	["place"] = "Este hechizo te permite colocar las escaleras que hayas robado en la dirección escogida. Este hechizo no demole escaleras en el camino como el hechizo de Patron, asi que tienes que colocarlas en una intersección vacía. Sube tu rango a Robber para colocar escaleras sobre escaleras.",
	["uppass"] = "Este hechizo te permite crear una escalera espiral con escaleras robadas. Solo puede ser usada en plataformas exteriores y durará 1 minuto. Las escaleras espiral son inmunes a todos los hechizos.",
	["sidepass"] = "Este hechizo te permite crear una rama doblado con escaleras robadas. Será creado en la dirección escogida y durará 1 minuto. La rama es inmune a todos los hechizos.",
	["drop"] = "Este hechizo te permite crear escaleras planas gratis. De cualquier forma, necesitarás una intersección vacia.",

	["heist"] = timed .. "Te permite colocar escaleras cuantas veces quieras. A diferencia de el hechizo regular para colocar, este puede ser usado si hay escaleras en el camino, ya que las escaleras serán robadas automaticamente en este modo." .. string.format(timedExtra,RankData.THIEF[7].name,"Thieves",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "en escaleras con Thief Rig. Cuando estas sean activadas, robarán 1 Mana del jugador que las activen, el cual será añadido a tu almacenamiento. No recibirás Mana si tu almacenamiento está lleno o cambias de clase.",
	["thiefevent"] = event .. "Transformar en escaleras planas.",
	["thiefaltevent"] = "Este es un hechizo de evento. Creará ramas alrededor de la torre.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Robar/Colocar"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Este hechizo conectará las escaleras en las que estes a otras en una dirección horizontal de tu elección con un portal. Si no hay escaleras, estas serán creadas. Sube de rango a Prodigy para anular una conexión ya existente. Sube de rango a Illuminati para poder caminar en medio de los portales.",
	["splitrotate"] = "Este hechizo conectará las escaleras en las que estes a otras en una dirección rotada de tu elección con un portal. Si no hay escaleras, estas serán creadas. Sube de rango a Prodigy para anular una conexión ya existente. Sube de rango a Illuminati para poder caminar en medio de los portales.",
	["splitup"] = "Este hechizo conectará las escaleras en las que estes con las de arriba con un portal. Si no hay escaleras, estas serán creadas. Sube de rango a Prodigy para anular una conexión ya existente. Sube de rango a Sage para ignorar conexiones que vayan hacia abajo.",
	["cancelsplit"] = "Este hechizo descartará cualquier portal en una escalera. Sube de rango a Disciple para poder remover portales de plataformas. Sube de rango a Scholar para poder usar este hechizo gratis.",
	["splitrandom"] = "Este hechizo conectará las escaleras en las que estes a cualquier intersección valida en el mismo piso. Si no hay escaleras, estas serán creadas. Sube de rango a Illuminati para poder caminar en medio de los portales.",
	["splitforward"] = "Este hechizo conectará 2 plataformas en una dirección horizontal de tu elección con un portal. Sube de rango a Disciple para poder remover portales de plataformas. Las escaleras que estén en medio no bloquearán la conexión. Sube de rango a Illuminati para poder caminar en medio de los portales.",

	["splitter"] = timed .. "Te permite crear cuantas divisones de plataformas quieras por 1 minuto." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "en escaleras con Archon Rig. Cuando estas sean activadas, teletransportarán al jugador en la dirección en la que esté caminando, cruzando en medio de las escaleras en el camino. Después de ser activadas, las escaleras se volverán normales.",
	["archonevent"] = event .. "Crear portales aleatorias.",
	["archonaltevent"] = event .. "Crear portales que vayan hacia arriba.",
	["archonmode"] = string.format(mode,"Archon","Archon Rig","División Aleatoria"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Este hechizo creará una tabla de surf temporal, moviendote a la plataforma que esté en la dirección que hayas escogido.",
	["updrift"] = "Este hechizo creará un elevador usando la plataforma en la que estés y la de arriba. Las plataformas serán restauradas despupes de un periodo de tiempo. Sube de rango a Vagabond para que el elevador sea más rápido. Sube de rango a Traveller para impulsar el elevador a un segundo nivel. Sube de rango a Strider para impulsar el elevador a un tercer nivel.",
	["diagdrift"] = "Este hechizo creará un elevador usando la plaforma en la que estés y cualquier otra en una dirección diagonal. Las plataformas serán restuaradas después de un periodo de tiempo. Se puede usar en los plataformas de borde para orbitar el torre una vez.",
	["spin"] = "Este hechizo rotará las escaleras de abajo 180 grados. Sube de rango a Nomad para poder girar cualquier tip de escalera.",
	["outdrift"] = "Este hechizo desplazará escaleras en un intersección libre aleatoriamente. Sube tu rango a Nomad para desplazar escaleras ya desplazadas.",
	["driftabove"] = "Este hechizo levantará las escaleras de arriba, para que puedas caminar debajo de ellas y subirlas, si deseas.",

	["riser"] = timed .. "Te permite crear cuantos elevadores verticales quieras por 1 minuto. También puedes impulsar elevadores con este hechizo si tienes el rango necesario." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "en escaleras con Drifter Rig. Cuando estas sean activadas, girarán. Sube de rango a Voyager para ganar inmunidad a este rig.",
	["drifterevent"] = event .. "Desplazar aleatoriamente.",
	["drifteraltevent"] = event .. "Levantar escaleras, permitiendote pasar debajo de ellas.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Desviar"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,

	--HERETIC
	["createcursed"] = "Este hechizo creará escaleras hechizadas en la dirección escogida. Cualquier escalera en el camino será demolida. Sube de rango a Banished para demoler escaleras hechizadas.",
	["curse"] = "Este hechizo deshechizará o hechizará las escaleras en las que estés, dependiendo si están hechizadas o no.",
	["curseabove"] = "Este hechizo deshechizará o hechizará las escaleras de arriba, dependiendo si están hechizadas o no. Las escaleras se elevarán por un momento, permitiéndote pasar.",
	["curseinter"] = "Este hechizo te permitirá saltar a la plataforma opuesta, si no hay escaleras en el camino. La intersección será hechizada después de este hechizo, de tal manera que los otros jugadores ya no la podrán usar. Sube de rango a Infidel para poder usar este hechizo para remover una intersección hechizada.",
	["autodown"] = "Usa este hechizo para crear y levantar una sección espejo especial de la parte de abajo de una escalera. Solo las uniones de fantasmas y Heretics pueden caminar en esa sección. Utilízalo para acceder la plataforma opuesta.",
	["autoup"] = "Usa este hechizo para crear una sección espejo especial de la parte de arriba de una escalera. Los peldaños regulares serán bajados. Solo las uniones de fantasmas y Heretics pueden caminar en esa sección.",

	["malediction"] = timed .. "Te permite crear cuantas escaleras hechizadas quieras por 1 minuto." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "en escaleras con Heretic Rig. Cuando estas sean activadas, poseerán al jugador que las activen. Deberán encontrar Mana para liberarse. Los jugadores poseídos no pueden usar hechizos. Sube de rango a Unbeliever para ganar inmunidad a este rig. Sube de rango a Exiled para obtener 1 Mana cada vez que un jugador sea poseido.",
	["hereticevent"] = "Este es un hechizo de evento. Transformará todas las escaleras en cisma aleatoria.",
	["hereticaltevent"] = event .. "Hechizar escaleras.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Cismas"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Este hechizo conectará las escaleras en las que estes a otras en una dirección derecha o izquierda de tu elección. Si no hay escaleras, estas serán creadas. Sube tu rango a Transformer para lanzar este hechizo en escaleras ya empalmadas.",
	["twistrotate"] = "Este hechizo conectará las escaleras en las que estes a otras en una dirección rotada de tu elección. Si no hay escaleras, estas serán creadas. Sube tu rango a Transformer para lanzar este hechizo en escaleras ya empalmadas.",
	["twistup"] = "Este hechizo conectará las escaleras en las que estes a otras de arriba. Si no hay escaleras, estas serán creadas. Sube tu rango a Transformer para lanzar este hechizo en escaleras ya empalmadas.",
	["canceltwist"] = "Este hechizo restaurá escaleras empalmadas. Sube tu rango a Combiner para lanzar este hechizo en una plataforma con escaleras empalmadas desconectadas. Sube tu rango a Mixer para usar este hechizo gratis. Sube tu rango a Optimus para conseguir Mana cuando usas este hechizo.",
	["split2"] = "Este hechizo divide las escaleras en 2 escaleras contrarias, dejandote acceso a todas las 4 plataformas.",
	["splitalt"] = "Este hechizo divide las escaleras en 2 escaleras separadas, dejandote acceso a las de arriba.",

	["twister"] = timed .. "Te permite dividir cualquier escalera durante un minuto. Variante del hechizo va a estar elegido automáticamente" .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "en escaleras con Splicer Rig. Cuando estas sean activadas, empalmará en un dirección aleatoria. Sube tu rango a Assembler para poder tener immunidad a ese rig.",
	["splicerevent"] = event .. "Empalmar Aleatoriamente.",
	["spliceraltevent"] = event .. "Partir escaleras hacia adelante",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Empalmar Aleatoriamente"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	--NECROMANCER
	["createdual"] = "Este hechizo creará escaleras para ti y tu fantasma también. Sube tu rango a Skeleton para que el fantasma ignora escaleras y intersecciones hechizadas. Sube tu rango a Lich para destruir escaleras hechizadas en el camino.",
	["copyplatform"] = "Este hechizo replicará escaleras en la plataforma de tu fantasma y vice-versa. Escaleras copiadas siempre estará normales. Sube tu rango a Revenant para que el hechizo puede quitar escaleras y intersecciones hechizadas.",
	["soulbridge"] = "Este hechizo creará un puente diagonal. Tu fantasma lo creará tambien en el dirección contrario. Esos puentes girará cuando alguien salta en ellos.",
	["undeadabove"] = "Este hechizo quitará alma de las escaleras de arriba. Si no hay escaleras arriba de tu fantasma, van a estar creadas. Se puede caminar a través de ellos y sobre ellos también, pero desaparecerá despues de dos minutos.",
	["revival"] = "Usa ese hechizo para crear una punto de renacimiento donde está tu fantasma. Si caes debajo del punto, vas a estar teletransportado ahí y el punto estará eliminada. También estará eliminada cuando creas otro, cambias de clase o terminas la escalada. Sube tu rango a Acolyte para llamar el orbe a ese punto, si lo usas en el nível con el orbe.",
	["regen"] = "Este hechizo regenará 6 Mana para tí y 3 mana para jugadores al lado de tu fantasma. Sube tu rango a Deathbringer para regenerar 10 Mana y 5 mana respectivamente.", 

	["duality"] = timed .. "Te permite crear escaleras duales infinitas durante un minuto." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "en escaleras con Necromancer Rig. Cuando eses sean activadas, quitará la alma de las escaleras.",
	["necromancerevent"] = fill ..  "Eses escaleras no tendría alma y desaparecerá después de 2 minutos.",
	["necromanceraltevent"] = event .. "Quitar Alma. Esas escaleras desaparecerá despues de 2 minutos.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Quitar Alma"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "Este hechizo creará escaleras con un espejo. Cuando entras el espejo, te unirías (o separas si ya estas unid@s) con tu fantasma. Cuando estas unid@, puedes usar espejos en el suelo pero tu fantasma no obtendrá Mana.",
	["bigmirror"] = "Este hechizo creará un espejo gigante por 10 segundos. Solo jugadores unidos con su fantasma se puede caminar en eses espejos. Sube tu rango a Presence para que duran 15 segundos.",
	["smallmirror"] = "Este hechizo creará un espejo pequeño por 6 segundos en el dirección elegido. Solo jugadores unidos con su fantasma se puede caminar en eses espejos. Sube tu rango a Presence para que duran 9 segundos",
	["outermirror"] = "Este hechizo creará un portal al borde de la torre y otro en el lado contrario. Solo se puede usar una plataformas al borde de la torre. Quién entra ese portal va a estar unidos con su fantasma y teletransportado al otro lado. Desaparecerá después de un minuto. Cuando estas unid@, puedes usar espejos en el suelo pero tu fantasma no obtendrá Mana.",
	["merge"] = "Este hechizo te unirá con tu fantasma inmediatamente. Sube tu rango a Replica para poder separarte de tu fantasma con este hechizo. Sube tu rango a Poltergeist para afectar otras personas cerca de ti. Cuando estas unid@, puedes usar espejos en el suelo pero tu fantasma no obtendrá Mana.",
	["oneway"] = "Este hechizo transformará las escaleras de arriba en escaleras de cristal, permitiendote caminar a través de ellas. Solo jugadores unidos con su fantasma puede caminar en esas escaleras.",

	["reflection"] = timed .. "Te permite crear espejos gigantes infinitas durante un minuto." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "en escaleras con Reaver Rig. Cuando eses sean activadas, reflejará la persona que lo activó. Tendría que encuentrar Mana para liberarse. Jugadores reflejados controlan sus personajes desde el perspectivo de su fantasma. Sube tu rango a WIGHT para obtener inmunidad a esas rigs.",
	["reaverevent"] = event .. "Escaleras Unidireccionales. Esas escaleras funciona como escaleras con espejo, pero solo se puede usar en un sentido. Reavers no son afectados.",
	["reaveraltevent"] = event .. "Escaleras de Cristal",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Escaleras Unidireccionales"),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	["tram"] = "Este hechizo creará una tranvía. Tranvías son el mitad del tamaño de escaleras normales. Saltar en las tranvías para que se muevan. Movería automaticamente una vez cuando estan creadas. Sube tu rango a Fiend para llamar tranvías adyacentes en una plataforma.",
	["screwdown"] = "Este hechizo transformará escaleras en escaleras locas. Escaleras locas girará en torno a 6 plataformas 3 veces, y puedes elegir la rotación inicial. Sube tu rango a Daemon para llamar escaleras locas adyacentes de tu plataforma.",
	["screwup"] = "Este hechizo transformará escaleras de arriba en escaleras locas. Escaleras locas girará en torno a 6 plataformas 3 veces, y la rotación inicial va a ser aleatoria. Sube tu rango a Daemon para llamar escaleras locas adyacentes de tu plataforma.",
	["revolve"] = "Este hechizo transformará la escalera en una hélice que gira en torno a un eje Z. Puedes elegir el sentido de rotación.",
	["trapstairs"] = "Este hechizo transformará las escaleras en una trampa. Cuando eses sean activadas, girarán a un eje X. Sube tu rango a Goblin para detectar eses trampas. Sube tu rango a DIABLO para obtener immunidad a esas trampas.",
	["spinplatform"] = "Este hechizo girará la plataforma entero con todos sus escaleras, en el direccíon elegido. Plataforma pausará cada 90 grados. Cuando se gira 360 grados, volverá ser una plataforma normal.",

	["tramway"] = timed .. "Te deja crear tranvías infinitas durante un minuto." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "en escaleras con Gremlin Rig. Cuando eses sean activadas, hipnotizará la persona que lo activó. Tendría que encuentrar Mana para liberarse. Jugadores hipnotizados tendrá sus controles invertidos. Sube tu rango a Hobgoblin para obtener immunidad a eses rigs.",
	["gremlinevent"] = event .. "Escaleras giratorias.", 
	["gremlinaltevent"] = fill .. "Esas escaleras será tranvías.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Escaleras giratorias"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,


	--CHAMELEON
	["chamdown"] = "Este era antes un hechizo de Keeper, antes de que fuera rechazado. Moverá cualquier escalera normal o rigeadas hacia abajo. Si tienes el rango Captain en Keeper, también puedes mover escaleras especiales.",
	["chamdraw"] = "Este era antes un hechizo de Heretic, antes de que fuera rechazado. Convertirá las escaleras en un puente elevadizo, haciendo el decenso imposible a menos que otro jugador active el puente por abajo.",
	["oneways"] = "Este era antes un hechizo de Reaver, antes de que fuera rechazado. Convertirá las escaleras en escaleras unidireccionales. Esas escaleras funciona como escaleras con espejo, pero solo se puede usar en un sentido. Reavers no son afectados.",
	["cork"] = "Este era antes un hechizo de Gremlin, antes de que fuera rechazado. Convertirá escaleras en escaleras sacacorchos.",
	["chamdrawabove"] = "Este era antes un hechizo de Heretic, antes de que fuera rechazado. Convertirá las escaleras de arriba en un puente elevadizo, permitiéndote pasar. Subir es imposible al menos que otro jugador active el puente por arriba. El viejo rango Unbeliever ya no está activo y la activación automática por abajo ya no es posible.",
	["warp"] = "Este era antes un hechizo de Wicked, antes de que fuera rechazado. Atraerá escaleras normales o rigeadas de vuelta hacia la plataforma.",

	["chameleonrigevent"] = rig .. "en escaleras con Chameleon Rig. Cuando estas sean activadas, ejecutará un efecto aleatorio proveniente de los otros rigs.",
	["chameleonmode"] = string.format(mode,"Chameleon","Chameleon Rig","un hechizo de cualquier otro modo"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

	--NEW
	["share"] = "Este hechizo te permite compartir Mana a otros jugadores. Deberías tener como mínimo 2 mana.",

	--ARCHITECT
	["archpatron"] = "Cuando usas este hechizo en las flechas de plataforma, creará escaleras. Cuando lo usas en escaleras normales o rigeados, las encogerás.",
	["archarchon"] = "Cuando usas este hechizo en las flechas de plataforma o en escaleras normales, creará un portal en el dirección elegido.",
	["archthief"] = "Cuando usas este hechizo en las flechas de plataforma, colocarás escaleras. Cuando lo usas en escaleras normales o rigeados, lo robarás.",
	["archnecro"] = "Cuando usas este hechizo en las flechas de plataforma, creará escaleras duales. Cuando lo usas en escaleras normales o rigeados, quitará la alma.",
	["archhacker"] = "Cuando usas este hechizo en las flechas de plataforma, hackeará escaleras opuestas. Cuando lo usas en escaleras normales o rigeados, mecanizará la escalera.",
	["archkeeper"] = "Cuando usas este hechizo en las flechas de plataforma, restaurá escaleras adyacentes. Cuando lo usas en escaleras normales o rigeados, moverá en el dirección elegido.",
	["archsplicer"] = "Cuando usas este hechizo en las flechas de plataforma, partirá escaleras opuestas. Cuando lo usas en escaleras normales o rigeados, empalmará en el dirección elegido.",
	["archwicked"] = "Cuando usas este hechizo en las flechas de plataforma, creará un pared de Wicked sin el puente. Cuando lo usas en cualquier escalera, lo destruirás.",
	["archgremlin"] = "Cuando usas este hechizo en una plataforma o en escaleras normales o rigeados, girará la plataforma en el dirección elegido",
	["archjoker"] = "Cuando usas este hechizo en las flechas de plataforma, creará escaleras falsas. Cuando lo usas en escaleras volteadas, normales o rigeados, los voltearás.",
	["archdrifter"] = "Cuando usas este hechizo en una plataforma, lo convertirá en un elevador. Cuando lo usas en escaleras normales o rigeados, lo desplazarás.",
	["archspectre"] = "Cuando usas este hechizo en las flechas de plataforma, creará escaleras fantasmas. Cuando lo usas en escaleras fantasmizados, normales o rigeados, lo fantasmizarás or desfantasmizarás.",
	["archreaver"] = "Cuando usas este hechizo en las flechas de plataforma, creará escaleras de espejo. Cuando lo usas en escaleras normales o rigeados, lo convertirás en escaleras unidireccionales en el dirección elegido.",
	["archheretic"] = "Cuando usas este hechizo en las flechas de plataforma, hechizará el intersección. Cuando lo usas en escaleras hechizados, normales o rigeados, las hechizarás o deshechizarás.",

}

local CommonPerksInsertALignment = {
	[1] = "Este es tu rango de %s inicial.",
	[2] = "Obtendrás Mana bonus, cuando los drones esten el modo %s.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Si alguien lanza un hechizo %s, tu Mana será recargado.",
	[7] = "Tu hechizo %s durará 50%% más (90s).",
}



module.gui.ranks = {

	["title"] = "TU RANGO",

	--none

	["none_1"] = "No has elegido una clase!",
	["none_2"] = "Para usar hechizos, ¡DEBERÍAS elegir un clase!",

	--NEW
	["possessed_1"] = "¡Estas Poseíd@!",
	["possessed_3"] = "No puedes lanzar hechizos, tus poderes de rango estan desactivados y no puedes saltar.",

	["hypnotised_1"] = "¡Estas Hipnotizad@!",
	["hypnotised_3"] = "Tus controles estan invertidos.",

	["reflected_1"] = "¡Estas Reflejad@!",
	["reflected_3"] = "Te controlas a ti mismo desde la perspectiva de tu fantasma.",

	["findmana"] = "Encuentra Mana o un Patron Rig para liberarte.",
	["permanent"] = "Modo permanente, termina escalada o cambia de clase para liberarte.",

	["architect_1"] = "¡Eres un Architect!",
	["architect_2"] = "Los Architects no pueden conseguir rangos.",
	["architect_3"] = "¡Vuela y siembra el caos!",

	-- unused
	["tutorial_1"] = "You are in the tutorial!",
	["tutorial_2"] = "Collect Mana and use spells to climb the tower.",
	["tutorial_3"] = "Make sure to catch the White Orb at the top!",
	--END NEW

	--shared
	["higher"] = "RANGO MÁS ALTO ADQUIRIDO",
	["current"] = "TU RANGO ACTUAL",
	["lower"] = "RANGO NO ADQUIRIDO",

	["more"] = "Necesitas %d escaladas mas como %s para obtener este rango.",
	["done"] = "Ya posees un rango más alto. Todos los efectos de rangos inferiores se añadirán a tu rango actual.",
	["max"] = "Este es el rango máximo. Has hecho %d escaladas como %s.",
	["next"] = "Haz click en la flecha a la derecha, para ver los requisitos para el siguiente rango.",

	["PATRON"] = {
		[4] = "Puedes crear puentes en cualquier dirección.",
		[5] = "Puedes reconstruir cualquier escalera especial.",
		[6] = "El costo del hechizo Llamar al Orbe será reducido a 2 Mana.",
		[8] = "Si no tienes Mana, salta en una plataforma para ser bendecido con 1 Mana.",
		[9] = "Al llamar al orbe, viajará el doble de rápido hacia ti.",
	}, 
	["JOKER"] = { 
		[4] = "Las escaleras disco no tienen ningún efecto en ti.",
		[5] = "Ahora puedes ver todas las escaleras invisible. Tienes la opción de no revelarlas.",
		[6] = "Ahora puedes detectar plataformas trampa y escaleras falsas.",
		[8] = "Puedes caminar en escalera falsas.", 
		[9] = "Recibirás Mana cuando alguien active cualquier broma. (sólo una vez por jugador)",
	},
	["WICKED"] = {
		[4] = "Ahora puedes caminar en obbies tal como lo harías en escaleras normales.",
		[5] = "El hechizo Destruir Escaleras (no de arriba) ahora es gratis.",
		[6] = "Recibirás Mana por destruir cualquier escalera especial.",
		[8] = "Tienes la opción de evitar activar Wicked Rigs.",
		[9] = "Ahora puedes destruir escaleras hechizadas.",
	},
	["SPECTRE"] = { 
		[4] = "Recibiras 1 Mana extra cuando tu recolectes mana con tu fantasma.", 
		[5] = "El hechizo Fantasmizar Escaleras ahora es gratis.",
		[6] = "Ahora puedes finalizar la escalada tocando el orbe con tu fantasma.",
		[8] = "Ahora tienes la opción de evitar activar Spectre Rigs.", 
		[9] = "Ahora puedes caminar en escaleras fantasma.",
	},
	["KEEPER"] = {
		[4] = "El hechizo MOVER ALEATORIAMENTE y los Move Rigs que activen, nunca harán que las escaleras se muevan hacia abajo.",
		[5] = "Ahora puedes mover cualquier escalera especial.",
		[6] = "El hechizo Restaurar ahora es gratis.", 
		[8] = "Ahora tienes la opción de evitar activar Keeper Rigs.",
		[9] = "Ahora puedes restaurar escaleras hechizadas e intersecciones hechizadas.",
	},
	["HACKER"] = { 
		[4] = "Tienes el opción de tener immunidad a los escaleras mecánicas.",
		[5] = "Tu hechizo de IMPULSO HORIZONTAL será 50% más rápido.",
		[6] = "Tu hechizo de DESTELLO será 50% más rápido.", 
		[8] = "Ahora tienes la opción de evitar activar Hacker Rigs.",
		[9] = "Si hay al menos 1 intersección libre, usar un glitch en el nivel superior rematerializará las escaleras a lado del orbe.", 
	},
	["THIEF"] = {
		[4] = "Puedes colocar escaleras sobre otras escaleras normales or rigeadas.",
		[5] = "Ahora puedes quedarte con 2 escaleras robadas a la vez",
		[6] = "Ahora puedes robar cualquier escalera especial.",
		[8] = "Si no tienes mana, salta en una plataforma para obtener 1 Mana de tu reserva.", 
		[9] = "Ahora puedes quedarte con 3 escaleras robadas a la vez.",
	},
	["ARCHON"] = {
		[4] = "Ahora puedes lanzar el hechizo Quitar Portal en plataformas.",
		[5] = "El hechizo Quitar Portal ahora es gratis.",
		[6] = "Las portales nunca te teletransportarán hacia abajo.",
		[8] = "Ahora puedes lanzar hechizos en escaleras ya conectadas con portal.",
		[9] = "Ahora tienes la opción de evitar teletransportes en todos las portales excepto las que van hacia arriba.",
	},
	["DRIFTER"] = {
		[4] = "Tus elevadores aparecerán y se moverán 50% más rápido.",
		[5] = "Ahora puedes girar cualquier escalera especial y desplazar escaleras ya desplazada.",
		[6] = "Ahora puedes impulsar tus elevadores con un hechizo ASCENSOR o ELEVADOR.",
		[8] = "Ahora tienes la opción de evitar activar Drifter Rigs.",
		[9] = "Ahora puedes impulsar 2 veces tus elevadores con un hechizo ASCENSOR o ELEVADOR.",
	},
	["HERETIC"] = {
		[4] = "Cuando no tengas Mana, puedes tocar una escalera hechizada para deshechizarlas y recibir 1 Mana.",
		[5] = "Ahora eres inmune a los Heretic Rigs.",
		[6] = "Ahora puedes lanzar el hechizo PARPADEO para deshechizar una intersección.",
		[8] = "Los hechizos CREAR ESCALERAS HECHIZADAS y MALEDICTOR ahora pueden demoler escaleras hechizadas que se cruzen en su camino.",
		[9] = "Recibirás Mana cada vez que alguien sea poseído.",
	},
	["SPLICER"] = {
		[4] = "Puedes restaurar escaleras desconectadas de plataforma.",
		[5] = "Restaurar es gratis ahora.",
		[6] = "Tienes el opción de no activar Splicer Rigs.",
		[8] = "Puedes empalmar escaleras ya empalmadas",
		[9] = "Recibirás Mana cada vez que restauras una escalera empalmada.",
	},
	["REAVER"] = {
		[4] = "Puedes usar el Unión para desunirte.",
		[5] = "Tus espejos del suelo dura 50% más. (15s gigante, 9s pequeño)",
		[6] = "Ahora eres imune a los Reaver Rigs.",
		[8] = "Usando Unión afectará jugadores cerca de ti.",
		[9] = "Obtendrás un aumento de velocidad (25%) cuando caminas en espejos del suelo.",
	},
	["NECROMANCER"] = {
		[4] = "Crear escaleras duales ignorará escaleras y intersecciones hechizadas.",
		[5] = "Punto de renacimiento ahora llama el orbe a tu fantasma.",
		[6] = "Replicar plataforma ahora quita intersecciones y escaleras hechizadas.",
		[8] = "Puedes destruir escaleras hechizadas cuando lanzas Escaleras Duales.",
		[9] = "Regenerar ahora regenera 10 mana en vez de 6, y regenera 5 mana a los que estan cerca de tu fantasma.",
	},
	["GREMLIN"] = {
		[4] = "Puedes detectar las trampas.",
		[5] = "Puedes saltar en una plataforma para llamar tranvías.",
		[6] = "Ahora eres imune a los Gremlin Rigs.",
		[8] = "Ahora eres imune a las trampas",
		[9] = "Puedes saltar en una plataforma para llamar escaleras locas adyacentes.",
	},
	["MUGGLE"] = { 
		[2] = "Tu cooldown de salto será reducida por 0.125s.",
		[3] = "Tu cooldown de salto será reducida por 0.25s.",
		[4] = "Tu cooldown de salto será reducida por 0.375s.",
		[5] = "Tu cooldown de salto será reducida por 0.5s.",
		[6] = "Tu velocidad al caminar será incrementada un 10%.",
		[7] = "Tu velocidad al caminar será incrementada un 20%.",
		[8] = "Tu velocidad al caminar será incrementada un 30%.",
		[9] = "La altura de tus saltos será incrementada un 20%.",
	},
	["NONE"] = {
		[1] = "None no se puede conseguir rangos. Elige tu clase en el medio del mapa.",
		[2] = "Estoy enserio. None no tiene rangos ni poderes.",
		[3] = "Estas perdiendo tu tiempo. Podrías conseguir escaladas con Muggle.",
		[4] = "MUGGLE tiene aumentos de velocidad. None no tiene NADA. None literalmente significa 'Nada'",
		[5] = "Si crees que hay un poder especial al 50 escaladas, subestimas mi pereza.",
		[6] = "¿Te gusta torturar a ti mismo?",
		[7] = "Las personas en el Discord esta mintiendo. No hay NADA al 50 escaladas.",
		[8] = "Último aviso. PARA antes de presenciar una decepción total.",
		[9] = "Tu perseverancia es admirable. Obtienes una inmunidad frente a las escaleras especiales, además de la capacidad de atravesar escaleras que bloquean el paso.",
	},

	["CHAMELEON"] = { 
		[1] = "Este es tu rango de CHAMELEON inicial. Los rangos de las clases reales aún aplican.",
		[2] = "EXCEPCIÓN! SOLO obtendrás Mana bonus, cuando los drones esten el modo CHAMELEON.",
		[3] = "Cambiar tu clase es mas rápido ahora.",
		[4] = "Tus manos brillarán de color morado, ocultando tus motivos.",
		[5] = "Los hechizos CREAR ESCALERAS FALSAS y CREAR ESCALERAS tendrán el mismo color.",
		[6] = "Ahora puedes lanzar algunos hechizos rechazados.",
		[7] = "Ahora puedes lanzar más hechizos rechazados",
		[8] = "Cambiar de clase es completamente irreconocible ahora.",
		[9] = "Ahora puedes lanzar el hechizo CHAMELEON RIG. (multimonedas requeridas)",
	},


}


module.gui.multitokens = {

	["info"] = "Necesitas 3 monedas para desbloquear un hechizo.",

}

module.gui.feedback = {

	["title"] = "ENVIAR MENSAJE",
	["prompt"] = "Haz click aquí para mandar un mensaje a los desarrolladores! (mínimo 20 caracteres)",
	["send"] = "ENVIAR",
	["locked"] = "BLOQUEADO",

}

module.gui.settings = {

	--NEW

	["Gameplay"] = "CONFIGURACIÓN DE JUEGO",
	["Interface"] = "CONFIGURACIÓN\nDE INTERFAZ",

	["Billboard"] = "Mostrar El Billboard De Tu Avatar",
	["Rank"] = "Mostrar tu Rango Universal en la lista de avatars",
	["Morph"] = "Mostrar Animación De Morph Al Usar Deceiver o Usurper",
	["ManaLimit"] = "Reduce tu propia capacidad de Mana",

	["KChoices"] = "Mostrar Ventana De Dirección De Selección Para Keeper",
	["HChoices"] = "Mostrar Ventana De Dirección De Selección Para Hacker",
	["AChoices"] = "Mostrar Ventana De Dirección De Selección Para Archon",
	["SChoices"] = "Mostrar Ventana De Dirección De Selección Para Splicer",
	["GChoices"] = "Mostrar Ventana De Dirección De Selección Para Gremlin",
	--new
	["CChoices"] = "Mostrar Ventana De Dirección De Selección Para Chameleon",
	--endnew


	["List"] = "Mostrar Lista De Jugadores Animada en vez de la lista normal de Roblox",
	["SwitchBack"] = "Cambiar Automaticamente A Hechizos Básicos Después De Ejecutar Un Hechizo Ultimatum",
	["SafeCancel"] = "Mostrar Confirmación Al Cancelar Un Hechizo Ultimatum Cronometrado",
	["Multi"] = "Mostrar Ventana De Selección De Multimonedas Después De La Escalada",
	["UISize"] = "Tamaño del interfaz"
	--END NEW

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "TU CLASE",
	["time"] = "TU TIEMPO DE ESCALADA",
	["climbs"] = "ESCALADAS OTORGADAS",
	["tokens"] = "MONEDAS OTORGADAS",
	["rank"] = "TU RANGO ACTUAL",

	--NEW
	["role"] = "TU RANGO UNIVERSAL",
	["classic"] = "TORRE NORMAL",	
	["pro"] = "TORRE PRO",	
	["infinite"] = "TORRE INFINITA",
	["custom"] = "TORRE PERSONALIZADA", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	["basic"] = "TORRE BÁSICA",

	["cTime"] = "RÉCORD DE %s", --%s will be replaced by the used class
	["levels"] = "NIVELES LLEGADOS",
	["cClimbs"]	= "ESCALADAS DE %s", --%s will be replaced by the used class
	["tClimbs"] = "ESCALADAS EN TOTAL",
	["tTokens"] = "%s MONEDAS",	--%s will be replaced by the used class	(or multi)
	["spells"] = "HECHIZOS LANZADOS",	--amount
	["rRank"] = "PUESTO EN LA CARRERA",--if any
	--END NEW

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"AYUDAR, PROTEGER Y CREAR",
		"Esos noobs necesitan nuestra ayuda",
		"No habrá esperanza sin nosotros los Patrons",
		"11/10 en la escalada de amabilidad",
		"Compartir es cuidar", -- original i think: sharing is caring
		"Nunca puedes tener demasiadas escaleras",
		"Nunca estarás solo en un equipo, definitivamente siempre hay un Patron",
		"¿Que sería de esta torre sin escaleras?",
		-- "Otro trabajo bien hecho", doesnt fit patron imo, removed
	},
	["JOKER"] = {
		"ENGAÑAR, CONFUNDIR y REÍR",
		"Esta torre es una broma",
		"¿Por qué tan serio?",
		"¡JA! ¡JA! ¡JA!",
		"Relájate y mira los noobs caer",
		"¡Caiste!",
		"You know the rules and so do I",
		"Sería aburrido sin mí",
		"Las escaleras falsas son reales",
	},
	["WICKED"] = {
		"PREVENIR, BLOQUEAR y DESTRUIR",
		"No soy malvado, es que hay demasiadas escaleras",
		"Esas escaleras se tienen que ir",
		"Mira el mundo caer",
		"Esta torre se ve mejor sin escaleras",
		"Destruiré tu mente, alma y cuerpo (y escaleras)",
		"No me sigues",
		"Todo muere eventualmente",
		"Vacia tu mente, pero primero vacia la torre",
	},
	["SPECTRE"] = {
		"DESAPARECER, OCULTARSE y TELETRANSPORTARSE",
		"Claro que teletransportarse es seguro",
		"No me puedes atrapar",
		"La belleza de las escaleras fantasma es inigualable",
		"¿Gente cayendo? ¿Porque debería importarme?",
		"Puedes resolver todos tus problemas con la teletransportación",
		"Cuando empiezas a teletransportarte, no puedes parar",
		"Al menos no estoy teletransportando escaleras",
		--"",
	},
	["MUGGLE"] = {
		"CAMINAR, SALTAR y CAER",
		"Nosotros no teniamos esos hechizos fantasiosos cuando el juego estaba en alpha",
		"Juro que esos drones estan arreglados para que pierda",
		"Siempre hay un camino",
		"El stairjumping es un talento",
		"¿Mi secreto? Para y piensa",
		"No creo en la magia",
		"A veces necesitas esperar para obtener un dron - Como en la vida real",
		"¿La gente usa hechizos? ¡Que noobs!",
	},
	["CHAMELEON"] = {
		"COPIAR, IMITAR y SORPRENDER",
		"Soy muy perezoso para tener mis propios hechizos",
		"Mas variedad - Mas diversión.",
		"Hacer equipos es lento - Transformarse es rápido",
		"La habilidad de ajustarse es la base de la supervivencia",
		"YO SOY decisivo, es solo que me gusta cambiar de ideas",
		"¿Haz dominado una clase? Yo he dominado todas",
		"¿Solo una clase? ¡Aburrido!",
		"Me encanta el caos",
	},
	["KEEPER"] = {
		"MOVER, ROTAR y CONTROLAR",
		"¡Dejen de arruinar mi torre!",
		"Otro gran suceso para los Keepers",
		"Misión cumplida!",
		"Me gusta el orden",
		"Caos controlado",
		"Yo soy la única clase verdadera",
		"Algún dia arreglaré esta torre",
		"Escaleras arregladas, escaleras felices",
	},
	["THIEF"] = {
		"TOMAR, USAR y DEVOLVER",
		"En realidad, se llama tomar prestado",
		"La tierra no es plana. Pero las escaleras sí.",
		"Al menos no robo plataformas",
		"Simplemente no camines en Thief Rigs, ugh",
		"¿O sea, al menos me haz visto robar algo?",
		"Yo soy como Robin Hood: robar de los pobres y dárselo a mi mismo.",
		"No es como si alguien se daría cuenta de 1 escalera faltante",
		"La redistribución de las escaleras previene los problemas",
	},
	["HACKER"] = {
		"HACKEAR, GLICHEAR y ROMPER",
		"¿Jugar limpio? No hay cosa como tal.",
		"¡Espera! Esta torre no es real... ¿Vivimos en una juego de Roblox simulada?",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"¿Haz visto algún tipo de reglas puestas por aqui?",
		"¿Hago trampa? Todo el mundo aqui lo hace",
		"Algunos arreglos aqui y alla, apenas un exploit",
		"Todo lo que importa es la velocidad",
		"Escaleras mecanicas de por vida",
	},
	["HERETIC"] = {
		"NO PASARÁS!",
		"Banear la magia es como banear la diversión",
		"Posee a la gente. Manten a el Overmind satisfecho.",
		"Muerte y caida",
		"Ritual oscuro completado",
		"No deberíamos restringirnos",
		"¡Poseíd@!",
		"Prefiero la falta de iluminación",
		"¿Porque me debería importar si la gente se queda atorada?",
	},
	["ARCHON"] = {
		"ABRIR PORTAL, ???, APROVECHAR",
		"Antes reinaba esta torre",
		"No me confundes con Splicer. Conecto escaleras de una manera muy distinta.",
		"Estudia duro y triunfarás",
		"La habilidad de conectar escaleras es un arte",
		"Conecta tus metas y organizate",
		"El pastel es una mentira",
		"Hay una portal para cada problema",
		"Confundir a todos con mis portales: ¡Cumplido!",
		"No puedo usando mi Archon potar"
	},
	["DRIFTER"] = {
		"SURFEAR, MONTAR y PLANEAR",
		"¿Quien necesita escaleras? ¡Estamos en el espacio!",
		"¡Vuelen! ¡Sean libres!",
		"Surfear hasta el fin",
		"No existe el abajo en el espacio - Salta sin preocuparte",
		"Desplaza todo, salta a la victoria",
		"No pares, sigue desplazando escaleras",
		"Me encanta montar plataformas",
		"Aqui no necesito agua para surfear",
	},
	["SPLICER"] = {
		"TORCER, EMPALMAR y CONECTAR",
		"Nunca te desplaces en línea recta durante demasiado tiempo.",
		"Empalma tu vida",
		"El desorden ajeno es el orden de Splicer",
		"Si que puedo conectar esas escaleras",
		"¿Conectar con personas? No no, ¡CONECTAR CON ESCALERAS!",
		"No me confundes con Archon. Conecto escaleras de una manera muy distinta.",
		"Dividir o Empalmar - esa es la pregunta",
		"Gracias MarkerQuest, me salvaste",
		"Esas escaleras son bastantes rectas",
	},
	["REAVER"] = {
		"REFLEJAR, SUSTITUIR y UNIRSE",
		"Los espejos no son más que puertas.",
		"El torre es un ilusión",
		"Puedes ver tu alma en el espejo",
		"¿Los estamos observando, o nos están observando a nosotros?",
		"Lo siento mucho Wicked, tienes siete años de mala suerte",
		"¿Están los fantasmas atrapados detrás del espejo, o lo estamos nosotros??",
		"Ahora no veo a mí mismo. Veo el futuro.",
		"¡MAMÁ! ¡¡¡NO ES UNA FASE!!!",
		"¿Quién es ese Alien del que tanto hablan vosotros?",
	},
	["NECROMANCER"] = {
		"SEGUIR, REVIVIR y BENEFICIAR",
		"En realidad no te estamos persiguiendo, solo queremos ser amigos",
		"¡Tu alma es MÍO!",
		"Sigue mi fantasma. ¡Confíame!",
		"Mi fantasma es seguro. ¿Por qué mentirá?",
		"Es hora de cosechar algunas almas.",
		"Simplemente tenemos mala imagen pública. Culpo a Hollywood.",
		"Si la muerte es mala, entonces la nigromancia debe ser buena.",
		"Necesito algunas alm- Digo, Mana. Necesito Mana.",
		"¡No me asusta caer; este es un hechizo estratégico!",
	},
	["GREMLIN"] = {
		"GIRAR, ROTAR y HIPNOTIZAR",
		"¡Juega conmigo!",
		"You spin me right 'round, baby, right 'round",
		"Ese torre aburre mucho",
		"Déjame arreglar esas escaleras para ti, jijiji",
		"¿Te gusta mi obra maestra? ¿No? Qué lástima; apenas estoy empezando.",
		"El doctor me dijo que me relajara, y así es como me relajo.",
		"Joker, toma nota. ¡Es broma! ¡Por favor, vuelve a contratarme en el circo!",
		"¿Dónde fueran las escaleras?",
		"¡¡¡Wwwiiiiiiiiiiiiiiiiiiii!!!",
	},
	["NONE"] = {
		"NO, PARAR y CESA",
		"Muggle es un traidor, 'nada' significa NADA.",
		"[Insertar Texto Aquí]",
		"No puedes fallar si no hagas nada.",
		"No hay nada arriba.",
		"¿Te das cuenta de que «NONE» solo pretendía ser una corrección de bugs, verdad?",
		"Cambia de clase. O no; solo soy un mensaje, no un policía.",
		"...",
		"Nacido de dios y del vacío",
		"No siento mis pies.",
		"¿La gente necesita velocidad y altura de saltos? ¡Que noobs!",
		"Técnicamente, soy la primera clase creada en el juego.",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "¡Nadie se queda atras!", -- Leave no noob behind
	["IT"] = "Hacer bromas es vivir",
	["ANNIHILATOR"] = "¡Destruyan todo!",
	["AETHER"] = "Entra al Nether Realm", 
	["DABSFORLIF"] = "Los hechizos estan sobrevalorados",
	["USURPER"] = "Solo me gustan todos los hechizos",
	["ADMIRAL"] = "Orden restaurado",
	["OUTLAW"] = "Mio, mio, todo MIO!",
	["ZERO"] = "Rootkit instalado",
	["EXILED"] = "Excomunicación",
	["ILLUMINATI"] = "Illuminati confirmado",
	["STRIDER"] = "Tomaré el elevador",
	["DEATHBRINGER"] = "¡Alzaos, alzaos, ALZAOS!",
	["OPTIMUS"] = "El Entrelazamiento",
	["ILLUSION"] = "Somos UNOS",
	["DAEMON"] = "Soy la razón por la cual esto se llama Crazy Stairs", -- You spin me round and round
	["BLACK HOLE"] = "????¿¿¿¿??¿", -- The nothingness

}

module.gui.gameover.credits = {

	["crazy"] = "CRAZY",
	["stairs"] = "STAIRS",
	["game"] = "Un juego por:",
	["models"] = "Modelos por:",
	["icons"] = "Iconos de hechizos por:",
	["boxes"] = "Cielo por:",
	["data"] = "Datastore module por:",
	["translators"] = "TRADUCTORES:",
	["testers"] = "PROBADORES:",
	["thanks"] = "AGRADECIMIENTOS ESPECIALES:",
	["music"] = "MÚSICA:",


	["climb"] = "De escalada",
	["endgame"] = "Del fin de juego",
	["ghost"] = "Unión de Fantasma",
	["disco"] = "Escaleras Disco",
	["elevator"] = "Plataformas de Drifter", --drifter platforms
	["crazies"] = "Escaleras Locas (hechizo)", --gremlin crazy stairs music
	["finish"] = "Gracias por jugar!",

}


module.static = {

	["bas_1"] = "TORRE BÁSICA",
	["bas_2"] = "¿Como se juega?",
	["bas_3"] = "La misión del juego es tocar al orbe arriba de todo. Pero primero, eliges una clase en el medio del torre.",
	["bas_4"] = "Coge cristales para regenerar Mana y sube las escaleras. Usa tus hechizos para ayudarte en la escalada.",
	["bas_5"] = "¿Cómo uso hechizos?",
	["bas_6"] = "Todos los hechizos require Mana para poder ejecutarlas.",
	["bas_7"] = "Todos los hechizos deberian estar ejecutadas saltando. Algunas hechizos require que saltas en escaleras, otras en plataformas... Para ayudar comunicar dónde hay que saltar, flechas van a aparecer.",
	["bas_8"] = "Cuando haces una escalada, obtendrás 3 monedas de tu clase. Puedes desbloquer otros hechizos con esas monedas (3 para cada). No puedes usar monedas de un clase para desbloquear hechizos de otro.",
	["bas_9"] = "¿Cómo uso hechizos ultimatum?",
	["bas_10"] = "Primero tienes que desbloquear todos los hechizos normales. Cuando lo hagas, todos los hechizos ultimatum será desbloqueadas también. Hechizos ultimatum necesita Monedas, NO Mana para ejecutarlas.",
	["bas_11"] = "Puedes acceder hechizos ultimatum cliqueando al botón más a la izquierda",
	["bas_12"] = "Algúnos hechizos ultimatum son cronometrados. Puedes aprender más sobre tus hechizos en las guias del clase.",

	["cla_1"] = "TORRE NORMAL",
	["cla_2"] = "¡Más Clases!",
	["cla_3"] = "En Torre Normal, los clases Gremlin, Splicer, Archon, Reaver, Heretic y Muggle son desbloqueadas y puedes transformarte en ellos.",
	["cla_4"] = "Esas clases sun muchisimo más difícil a aprender que las de Torre Básica, y puedes encontrar más escaleras locas aquí.",
	["cla_5"] = "¡Cuidado con los Architects!",
	["cla_6"] = "En torre normal, también hay Architects.",
	["cla_7"] = "Architect es un clase especial, que pueden volar. Architects tiene Mana infinita y puede ayudar O molestar a jugadores.",
	["cla_8"] = "Encontrarse con un Architect puede ser una bendición o una maldición; lograr esquivarlo requerirá el máximo conocimiento y práctica de las habilidades propias de tu clase preferida.",
	["cla_9"] = "¡Eventos y Rigs!",
	["cla_10"] = "En Torre Normal, jugadores pueden ejecutar eventos y Rigs.",
	["cla_11"] = "Todos tus hechizos ultimatum son desbloqueados. Puedes lanzar eventos que afectan la torre entera, o Rigs que encantarán todas las escaleras con el hechizo de clase que hayas elegido.",
	
	["pro_1"] = "TORRE PRO",
	["pro_2"] = "Restricciones de niveles pares...",
	["pro_3"] = "En Torre Pro, algunos hechizos de plataforma no se pueden usar en niveles pares sino solo en impares.",
	["pro_4"] = "Esas plataformas son marcados con color negro y un X en el medio.",
	["pro_5"] = "Escaleras Hechizadas",
	["pro_6"] = "En Torre Pro, hay escaleras hechizadas. Esas escaleras son completamente imune a muchos hechizos.",
	["pro_7"] = "",
	["pro_8"] = "Solo Heretics y algunos rangos especiales de algunos clases pueden restaurar o quitar esas escaleras. Pero drones siempre crearán nuevas.",
	["pro_9"] = "Intersecciones Hechizados",
	["pro_10"] = "También hay intersecciones hechizados que bloquean TODOS los hechizos que requiren flecha de plataforma.",
	["pro_11"] = "Solo Heretics y algunos rangos especiales de algunos clases pueden quitar esas intersecciones.",
	["pro_12"] = "",

	["inf_1"] = "TORRE INFINITA",
	["inf_2"] = "CARRERA OBLIGATORIA",
	["inf_3"] = "En Torre Infinita, deberías participar en una carrera para ganar recompensas y usar hechizos.",
	["inf_4"] = "Para 'completar' esa torre, tienes que sobrevive tanto tiempo como puedas. Recibirás recompensas cuando estas eliminad@. Tocando el Orbe simplemente te da +10 Mana.",
	["inf_5"] = "Fallen Drone",
	["inf_6"] = "Fallen Drone (el dron blanco) tiene un misión especial en esta torre.",
	["inf_7"] = "Fallen Drone creará niveles sin parar. Aumentará el velocidad cuando más tiemp sobrevives.",
	["inf_8"] = "Borrador",
	["inf_9"] = "El borrador ascende y elimina plataformas y escaleras. Aumentará el velocidad también como Fallen Drone. Si caes debajo del Borrador, estás eliminad@",
	["inf_10"] = "Imagínalo como lava ascendente.",
	["inf_11"] = "",
	["inf_12"] = "",

	["cus_1"] = "TORRE PERSONALIZADA",
	["cus_2"] = "¡TU DECIDE!",
	["cus_3"] = "Puedes configurar el torre casi como quieras..",
	["cus_4"] = "Las recompensas en la Torre Personalizada se reducen a la mitad. Obtendrás 1 moneda cada 12 niveles y una escalada cada 30 niveles.",
	["cus_5"] = "",--"Tower Settings",
	["cus_6"] = "",--"By changing the tower settings you can have it your way. Choose levels, restrict even levels or even set the tower to the infinite mode.",
	["cus_7"] = "",--"Only server owner can adjust the settings.",
	["cus_8"] = "",--"Drone Settings",
	["cus_9"] = "",--"You can also change the small drone setting. Adjust the max count, the min count or even disable them altoghether.",

	["vr_1"] = "Al jugar Crazy Stairs en VR automaticamente te convertirás en un Architect.",
	["vr_2"] = "A diferencia de los jugadores normales, Architect no quieres ascender la torre. Tu meta es ayudar o prevenir que otros jugadores alcancen el orbe.",
	["vr_3"] = "Al opción es tuya. ¿Serán una amenaza o un héroe? O simplemente quieres jugar con la torre? La opción es tuya.",
	["vr_4"] = "¿Cómo navegar?",
	["vr_5"] = "Usa la palanca izquierda para moverte hacia delante o atrás. Moverla para los lados te hará moverte hacia la izquierda y la derecha.",
	["vr_6"] = "Usa la palanca derecha para moverte arriba o abajo, inclinar la palanca de izquiera a derecha resultara en un giro de la cámara 'perfecto'.",
	["vr_7"] = "Intena mantenerte afuera de la torre parau na mejor vista y mayor facilidad al apuntar.",
	["vr_8"] = "¿Cómo usar los hechizos?",
	["vr_9"] = "Para empezar un hechizo, apreta el orbe de energia con el boton Grip. Un puntero laser aparecerá, el cual te ayudará a apuntar a las escaleras y plataformas.",
	["vr_10"] = "Ejecuta el hechizo con el botton Trigger mientras sostienes el botón Grip. Cada clase en VR tiene 2 hechizos. Uno para plataformas y otro para escaleras. Dependiendo en el objetivo, el hechizo adecuado será elegido.",
	["vr_11"] = "Para cambiar una clase en VR, presiona y manter el botton Trigger, sin el botón Grip. Después escoge el alignment con palanca de la mano correspondiente.",

	["home_1"] = "CASA DE MUGGLE",
	["home_2"] = "NUESTRO LEMA:\nCAMINAR\nSALTAR\nY\nCAER",
	["home_3"] = "PROS:\nBonus de velocidad y fuerza de salto en rangos mayores\nDerecho a fanfarronear\nCONTRAS:\nSin hechizos\nSe atore facilmente",
	["home_4"] = "'Nosotros no teniamos esos hechizos fantasiosos cuando el juego estaba en alpha!'\nnuestro fundador",

	["oasis_1"] = "OASIS DE CHAMELEON",
	["oasis_2"] = "NUESTRO LEMA:\nCOPIAR\nIMITAR\nY\nSORPRENDER",
	["oasis_3"] = "PROS:\nPuede cambiar de clase en cualquier lugar, a cualquier hora\nCONTRAS:\nCuesta Robux\nSubir de rango tomar bastante tiempo",
	["oasis_4"] = "'Soy muy perezoso para tener mis propios hechizos'\nnuestro fundador",

	["nexus_1"] = "NEXUS DE HERETIC",
	["nexus_2"] = "NUESTRO LEMA:\n¡NO\nPASARÁS!",
	["nexus_3"] = "PROS:\nMejor en la Torre Pro\nNo puede ser detenido\nCONTRAS:\nUsarlo para equipos de dificil\nRequiere bastante mana",
	["nexus_4"] = "'Banear la magia es como banear la diversión'\nnuestro fundador",

	["guild_1"] = "GREMIO DE THIEF",
	["guild_2"] = "NUESTRO LEMA:\nTOMAR\nUSAR\nY\nDEVOLVER",
	["guild_3"] = "PROS:\nUsa mana eficientemente\nVersatil\nCONTRAS:\nNecesita escaleras para robar\nNo puede demoler escaleras en el camino",
	["guild_4"] = "'En realidad, se llama tomar prestado'\nnuestro fundador",

	["nether_1"] = "NETHER DE SPECTRE",
	["nether_2"] = "NUESTRO LEMA:\nDESAPARECER\nOCULTARSE\nY\nTELETRANSPORTARSE",
	["nether_3"] = "PROS:\nHechizos rápidos\nPerfecto para jugar solo\nCONTRAS:\nCuesta Robux\nNo recomendado para equipos",
	["nether_4"] = "'Claro que teletransportarse es seguro'\nnuestro fundador",

	["study_1"] = "ESTUDIO DE ARCHON",
	["study_2"] = "NUESTRO LEMA:\nABRIR\nPORTAL\n???\nAPROVECHAR",
	["study_3"] = "PROS:\nRigs útiles\nConfunde a los oponentes\nCONTRAS:\nEl más dificil de aprender\nRequiere planeación",
	["study_4"] = "'Antes reinaba esta torre'\nnuestro fundador",

	["haven_1"] = "PARAÍSO DE PATRON",
	["haven_2"] = "NUESTRO LEMA:\nAYUDAR\nPROTEGER\nY\nCREAR",
	["haven_3"] = "PROS:\nEl más facil de aprender\nClase para equipos\nCONTRAS:\nUsa mucho mana\nPuede atraer gente",
	["haven_4"] = "'¡Esos noobs necesitan nuestra ayuda!'\nnuestro fundador",

	["shelter_1"] = "REFUGIO DE DRIFTER",
	["shelter_2"] = "NUESTRO LEMA:\nSURFEAR\nMONTAR\nY\nPLANEAR",
	["shelter_3"] = "PROS:\nVersátil\nBien en equipos\nCONTRAS:\nRequire un poco de parkour\nIneficiente en Torre Pro",
	["shelter_4"] = "'¿Quien necesita escaleras? ¡Estamos en el espacio!'\nnuestro fundador",

	["circus_1"] = "CIRCO DE JOKER",
	["circus_2"] = "NUESTRO LEMA:\nENGAÑAR\nCONFUNDIR\nY\nREÍR",
	["circus_3"] = "PROS:\nHecho para bromear\nEl hechizo 'Voltear' sirve mucho\nCONTRAS:\nUsa mucho mana\nPueder arruinar amistades",
	["circus_4"] = "'Esta torre es una broma'\nnuestro fundador",

	["base_1"] = "BASE DE KEEPER",
	["base_2"] = "NUESTRO LEMA:\nMOVER\nROTAR\nY\nCONTROLAR",
	["base_3"] = "PROS:\nPuede restaurar escaleras\nPuede reusar escaleras\nCONTRAS:\nRequiere parkour para usarlo correctamente\nInservible sin escaleras",
	["base_4"] = "'¡Dejen de arruinar mi torre!'\nnuestro fundador",

	["chamber_1"] = "APOSENTO DE WICKED",
	["chamber_2"] = "NUESTRO LEMA:\nPREVENIR\nBLOQUEAR\nY\nDESTRUIR",
	["chamber_3"] = "PROS:\nPuede destruir cualquier escalera\nPuede destruir la torre completa\nCONTRAS:\nDepende mucho en escaleras",
	["chamber_4"] = "'No soy malvado, es que hay demasiadas escaleras'\nnuestro fundador",

	["backdoor_1"] = "BACKDOOR DE HACKER",
	["backdoor_2"] = "NUESTRO LEMA:\nHACKEAR\nGLITCHEAR\nY\nROMPER",
	["backdoor_3"] = "PROS:\nLa clase más rápida\nDifícil de seguir\nCONTRAS:\nDepende mucho en escaleras\nNo sirve en equipos",
	["backdoor_4"] = "'¿Jugar limpio? No hay cosa como tal.'\nnuestro fundador",

	["hub_1"] = "CENTRO DE SPLICER",
	["hub_2"] = "NUESTRO LEMA:\nTORCER\nEMPALMAR\nY\nCONECTAR",
	["hub_3"] = "PROS:\nVersátil\nBien en equipos\nCONTRAS:\nUn poco difícil.\nNecesitas tiempo para aprenderlo",
	["hub_4"] = "'Nunca te desplaces en línea recta durante demasiado tiempo.'\nnuestro fundador",

	["shack_1"] = "CHOZA DE GREMLIN",
	["shack_2"] = "NUESTRO LEMA:\nGIRAR\nROTAR\nY\nHIPNOTIZAR",
	["shack_3"] = "PROS:\nNada.\nEn serio, no lo usas.\nCONTRAS:\nTodo el mundo te odiará.\nTODO.",
	["shack_4"] = "'¡Juega conmigo!'\nnuestro fundador",

	["mirror_1"] = "ESPEJO DE REAVER",
	["mirror_2"] = "NUESTRO LEMA:\nREFLEJAR\nSUSTITUIR\nY\nUNIRSE",
	["mirror_3"] = "PROS:\nOtras personas pueden usar espejos\nCONTRAS:\nMecánica del clase puede ser dificil de entender.",
	["mirror_4"] = "'Los espejos no son más que puertas.'\nnuestro fundador",

	["grave_1"] = "TUMBA DE NECROMANCER",
	["grave_2"] = "NUESTRO LEMA:\nSEGUIR\nREVIVIR\nY\nBENEFICIAR",
	["grave_3"] = "PROS:\nFunciona bien si otros jugadores siguen a tu fantasma.\nHechizos puede ayudarte y de más tambien.\nCONTRAS:\nNecesita muchisima Mana.",
	["grave_4"] = "'En realidad no te estamos persiguiendo, solo queremos ser amigos'\nnuestro fundador",

	--NEW (architect)
	["studio_1"] = "ESTUDIO DE ARCHITECT",
	["studio_2"] = "NUESTRO LEMA:\nDISEÑAR\nIMPLEMENTAR\nY\nPROBAR",
	["studio_3"] = "PROS:\nPuede volar\nNo necesita Mana\nCONTRAS:\nCuesta Robux\nNo se puede conseguir escaladas",
	["studio_4"] = "'¡Ahora domino esta escalera!'\nnuestro fundador",
	
	["not_available"] = "NO SE PUEDE USAR EN TORRE BÁSICA",
	--END NEW

	--SHARED
	["leader_pro"] = "La Torre Pro cuenta como 2 escaladas",	
	["leader_update"] = "Actualizando en: ",	
	["leader_updating"] = "Actualizando...",	
	["leader_rank"] = "RANGO",
	["leader_req"] = "ESCALADAS REQ.",
	["leader_off"] = "La Torre Personalizada no cuenta con tabla de clasificaciones.",

	--OVERALL
	["over_title"] = "RANGOS UNIVERSALES",
	["over_desc"] = "Cada rango adquirido añade 1 punto",
	["over_rank"] = "RANGO",
	["over_req"] = "PUNTOS REQ.",
	["emperor_req"] = "* Requiere Chameleon O Spectre",
	["overmind_req"] = "** Require Chameleon Y Spectre",
	["over_prefix"] = "PREFIJO",
	["over_passes"] = "GAMEPASSES\nREQUERIDOS",
	["over_notgroup"] = "COLOR OLIVA - no esta en el grupo",
	["over_group"] = "COLOR CELESTE - esta en el grupo",
	["over_mod"] = "MODERATOR - el jugador es un moderador",
	["over_admin"] = "ADMIN - el jugador es un admin",
	["over_owner"] = "PRANK ME - creador del juego (Sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLES APRESURADOS",
	["muggle_ranks"] = "RANGOS DE MUGGLE",

	["hacker_lead"] = "HACKERS ENCRIPTADOS",
	["hacker_ranks"] = "RANGOS DE HACKER",

	["wicked_lead"] = "WICKEDS VIOLENTES",
	["wicked_ranks"] = "RANGOS DE WICKED",

	["keeper_lead"] = "KEEPERS PREPARADOS",
	["keeper_ranks"] = "RANGOS DE KEEPER",

	["joker_lead"] = "JOKERS LOCOS",
	["joker_ranks"] = "RANGOS DE JOKER",

	["drifter_lead"] = "DRIFTERS RÁPIDOS",
	["drifter_ranks"] = "RANGOS DE DRIFTER",

	["patron_lead"] = "PATRONS NOBLES",
	["patron_ranks"] = "RANGOS DE PATRON",

	["archon_lead"] = "ARCHONS ÁGILES",
	["archon_ranks"] = "RANGOS DE ARCHON",

	["spectre_lead"] = "SPECTRES VOLADORES",
	["spectre_ranks"] = "RANGOS DE SPECTRE",

	["thief_lead"] = "THIEVES CAUTELOSOS",
	["thief_ranks"] = "RANGOS DE THIEF",

	["heretic_lead"] = "HERETICS DESPIADADOS",
	["heretic_ranks"] = "RANGOS DE HERETIC",

	["necromancer_lead"] = "NECROMANCERS SIN ALMA",
	["necromancer_ranks"] = "RANGOS DE NECROMANCER",

	["splicer_lead"] = "SPLICERS CONECTADOS",
	["splicer_ranks"] = "RANGOS DE SPLICER",

	["reaver_lead"] = "REAVERS REFLEJADOS",
	["reaver_ranks"] = "RANGOS DE REAVER",

	["gremlin_lead"] = "GREMLINS CAÓTICOS",
	["gremlin_ranks"] = "RANGOS DE GREMLIN",

	["chameleon_lead"] = "CHAMELEONS VELOCES",
	["chameleon_ranks"] = "RANGOS DE CHAMELEON",

	["dailies"] = "LOS RECORDS DE HOY",
	["most_climbs"] = "MÁS ESCALADAS",
	["most_wins"] = "MÁS CARRERAS GANADAS", 

}

--TUTORIAL (new)
module.tutorial = {
	["tut_big_1"] = "¡Bienvenid@ a Crazy Stairs!",
	["tut_big_2"] = "Primero, aprende cómo transformarte. Salta aquí para ser Patron",
	["tut_big_3"] = "Los Patrones pueden crear escaleras, pero necesitas Mana. Aquí hay mana:",
	["tut_big_4"] = "Puedes crear escaleras con este hechizo. Seleccionalo.",
	["tut_big_5"] = "Todos los hechizos tiene que ser ejecutado saltando",
	["tut_big_6"] = "Cool ¿cierto? Ahora transfórmate en Joker. Jokers pueden voltear escaleras.",
	["tut_big_7"] = "Coge Mana:",
	["tut_big_8"] = "Voltear escaleras con este hechizo.",
	["tut_big_9"] = "Algunas hechizos se usan sobre escaleras.",
	["tut_big_10"] = "Ahora transfórmate en Keeper. Keepers puede mover escaleras.",
	["tut_big_11"] = "Coge Mana:",
	["tut_big_12"] = "Usa este hechizo.",
	["tut_big_13"] = "Salta en la flecha.",
	["tut_big_14"] = "Ahora transfórmate en Wicked. Wickeds destruyen escaleras.",
	["tut_big_15"] = "Vas a encontrar muchas escaleras que bloquean a tu camino.",
	["tut_big_16"] = "Usa este hechizo",
	["tut_big_17"] = "Puedes destruir escaleras de arriba, saltando en las debajo.",
	["tut_big_18"] = "Ahora usa Hacker. Los Hackers teletransportan.",
	["tut_big_19"] = "Coge Mana:",
	["tut_big_20"] = "Usa este hechizo.",
	["tut_big_21"] = "Saltar en la flecha.",
	["tut_big_22"] = "Tienes que llegar al orbe arriba de todo para ganar. Bien suerte!",

	["tut_select"] = "Selecciona este hechizo.",

	["tut_small_init"] = "Salta para iniciar tutorial",
	["tut_small_morph"] = "Salta en el pad.",
	["tut_small_collect"] = "Coge Mana",
	["tut_small_arrow"] = "Salta en la flecha.",
	["tut_small_stairs"] = "Salta en la escalera.",
	["tut_small_pellet"] = "Tocar el Orbe",
	--end new

}

module.where = {

	["platform"] = "Se ejecuta en una plataforma. No se puede usar en plataformas bloqueadas",
	["arrow"] = "Se ejecuta en una flecha de una plataforma",
	["stairs"] = "Se ejecuta sobre escaleras",
	["above"] = "Se ejecuta sobre escaleras y afectan las escaleras arriba",
	["dynamic"] = "Puede afectar los escaleras debajo y arriba tambien",
	["both"] = "Se ejecuta en una flecha de la plataforma O en escaleras también",
	["both2"] = "Se ejecuta en una plataforma O en escaleras también",
	["both3"] = "Se ejecuta en una flecha de la plataforma O en escaleras también en rangos más altos.",
	["anywhere"] = "Se ejecuta en cualquier lugar.",
	["nowhere"] = "No necesita una ejecución.",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "Se ejecuta en un intersección vacio o a través de escaleras que no bloquea.",
		["link"] = "Se ejecuta en un intersección vacio o a través de escaleras que no bloquea. Sube tu rango a Creator para colocar puente en cualquier dirección",
		["superforced"] = "Se ejecuta en un intersección vacio o a través de escaleras contrarias. Sube tu rango a Banished para destruir escaleras hechizadas en el camino",
		--new
		["superforcednecro"] = "Se ejecuta en un intersección vacio o a través de escaleras contrarias. Sube tu rango a Lich para destruir escaleras hechizadas en el camino.",
		--end new
		["flicker"] = "Se ejecuta en intersección libre. Sube tu rango a Infidel para ejecutar en un intersección hechizado.",
		["any"] = "Se ejecuta en cualquier intersección.",
		["wall"] = "Se ejecuta en cualquier intersección sin un pared o portal.",
		["forced"] = "Se ejecuta en un intersección libre, o a través de escaleras contrarias.",
		["halfsoft"] = "Se ejecuta en intersección libre, o a través de escaleras contrarias en rangos más altas.",
		["soft"] = "Se ejecuta solo en un intersección libre.",
		["soft2"] = "Se ejecuta en un intersección libre o en escaleras normales/rigeadas en rangos más altas",
		["hack"] = "Se ejecuta en un intersección solo con escaleras en el otro lado.",
		["sidepass"] = "Se ejecuta en cualquier intersección, sin que ya tiene una rama.",
	},

	["platform"]= {
		--platform
		["middle"] = "No tiene requisitos especiales",
		["diag"] = "Se ejecuta en cualquier dirección diagonal, incluyendo el borde de la torre.",
		["outer"] = "Solo se ejecuta en un dirección diagonal perpendicular.",
		["centre"] = "Destruirá espejos pequeños en el mismo nivel.",
		["inner"] = "Se ejecuta en un dirección diagonal sin que no hay puentes ya.",
		["prevolve"] = "Se puede ejecutar en el sentido de las agujas del reloj y en sentido contrario a las agujas del reloj.",
		["top"] = "Solo se ejecuta en el nivel superior.",
	},

	["stairs"] ={

		["cursed"] = "Se ejecuta sobre escaleras normales, rigeadas or hechizadas.",
		["all"] = "Se ejecuta sobre cualquier escalera. Sube tu rango a Annihilator para destruir escaleras hechizadas.",
		["steal"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Hijacker para robar cualquier escalera especial.",
		["onedirection"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Controller para mover cualquier escalera especial.",
		["straight"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Controller para mover cualquier escalera especial.",
		["rotate"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Controller para mover cualquier escalera especial.",
		["rebuild"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube to rango a Protector para reconstruir cualquier escalera especial",
		["flip"]= "Se ejecuta sobre escaleras normales, rigeadas o volteadas.",
		["gate"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Prodigy para ejecutar sobre escaleras que ya tiene portal.",
		["gatestr"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Prodigy para ejecutar sobre escaleras que ya tiene portal",
		["gaterot"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Prodigy para ejecutar sobre escaleras que ya tiene portal",
		["twist"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Transformer para empalmar escaleras que ya empalmadas.",
		["twiststr"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Transformer para empalmar escaleras que ya empalmadas.",
		["twistrot"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Transformer para empalmar escaleras que ya empalmadas.",
		["spin"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Nomad para girar cualquier escalera especial",
		["drift"] = "Se ejecuta sobre escaleras normales o rigeadas. Sube tu rango a Nomad para desplazar escaleras ya desplazadas.",
		["escalator"] = "Se ejecuta sobre escaleras normales o rigeadas.",
		["oneway"] = "Se ejecuta sobre escaleras normales o rigeadas.",
		["revolve"] = "Se ejecuta sobre escaleras normales o rigeadas.",
		["normalrig"] = "Se ejecuta sobre escaleras normales o rigeadas.",
		["corkscrew"] = "Se ejecuta sobre escaleras normales o rigeadas."

	},

	["above"] = {

		["cursed"] = "Se ejecuta debajo de escaleras normales, rigeadas or hechizadas.",
		["all"] = "Se ejecuta debajo de cualquier escalera. Sube tu rango a Annihilator para poder destruir escaleras hechizadas.",
		["steal"] = "Se ejecuta debajo de escaleras normales o rigeadas. Sube tu rango a Hijacker para poder robar cualquier escalera especial.",
		["flip"]= "Se ejecuta debajo de escaleras normales, rigeadas o volteadas.",
		["onedirection"] = "Se ejecuta debajo de escaleras normales o rigeadas. Sube tu rango a Controller para poder mover cualquier escalera especial",
		["slide"] = "Este hechizo te permite atravesar cualquier escalera que bloquee el paso arriba.",
		["normalrig"] = "Se ejecuta debajo de escaleras normales o rigeadas.",

	},

	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Se ejecuta en o debajo de escaleras normales, rigeadas o volteadas. Se ejecución a las escaleras de arriba se falla por cualquier razon, afectará las escaleras debajo.",
		['normalrig'] = "Se ejecuta en o debajo de escaleras normales o rigeadas.",
		['slide'] = "Se ejecuta en escaleras normales o rigeadas. Si hay escaleras arriba, van a ser eliminados.",
	},

	["both"] = {
		['restore'] = "Se ejecuta en cualquier tipo de escalera o en una plataforma con escaleras adyacentes. Sube tu rango a Admiral para poder restaurar escaleras hechizadas.",
		['deltwists'] = "Se ejecuta en cualquier escalera empalmada o en una plataforma con escaleras empalmadas adyacentes. Sube tu rango a Combiner para poder restaurar escaleras desconectadas de la plataforma.",
		['ghosted'] = "Se ejecuta en cualquier escalera normal, rigeada o fantasmizada o en una plataforma con escaleras normales, rigeadas o fantasmizadas adyacentes",

		["flatten"] = "Se ejecuta en un intersección con escaleras normales o rigeadas en el dirección contrario. Se ejecuta en escaleras también.",
		
		--Hiding these because it's very redundant info and it saves time. -Dummy
		["archpatron"] = "",--"Patron's Create Stairs (when used on arrows) or Shrink Stairs (when used on stairs)",
		["archarchon"] = "",--"Archon's Platform Gate (when used on arrows) or Gate Stairs (when used on stairs)",
		["archthief"] = "",--"Thief's Place Stairs (when used on arrows) or Steal Stairs (when used on stairs)",
		["archnecro"] = "",--"Necromancer's Create Dual Stairs (when used on arrows) or Undead Stairs (when used on stairs)",
		["archhacker"] = "",--"Hacker's Hack-In Stairs (when used on arrows) or Escalator (when used on stairs)",
		["archkeeper"] = "",--"Keeper's Restore Stairs (when used on arrows) or Move/Rotate Stairs (when used on stairs)",
		["archsplicer"] = "",--"Splicer's Split Opposite Stairs (when used on arrows) or Twist Stairs (when used on stairs)",
		["archwicked"] = "",--"Wicked's Wall without a Link (when used on arrows) or Destroy Stairs (when used on stairs)",
		["archjoker"] = "",--"Joker's Create Fake Stairs (when used on arrows) or Flip/Unflip Stairs (when used on stairs)",
		["archspectre"] = "",--"Spectre's Create Phantom Stairs (when used on arrows) or Ghost/UnGhost Stairs (when used on stairs)",
		["archreaver"] = "",--"Reaver's Create Mirrored Stairs (when used on arrows) or One-Way Stairs (when used on stairs)",
		["archheretic"] = "",--"Heretic's Curse Intersection without Flicker (when used on arrows) or Curse/unCurse Stairs (when used on stairs)",

	},

	['both2'] = {
		['delsplits'] = "Solo se ejecuta en escaleras con portal. Sube tu rango a Disciple para usarlas en plataformas.",

		["archgremlin"] = "",--"Gremlin's Revolve Platform (when used on platform) or Revolve Stairs (when used on stairs)",
		["archdrifter"] = "",--"Drifter's Elevator (when used on platform) or Random Drift Stairs (when used on stairs)",
	},
	['both3'] = {
		["soft2"] = "Se ejecuta en intersección vacio. Sube tu rango para lanzar este hechizo sobre escaleras normales o rigeadas también."
	},

	['anywhere'] = {
		['anywhere'] = "Se ejecuta en cualquier lugar.",
	},

	["nowhere"] = {
		['slide'] = "Este hechizo no necesita una ejecución.",

	},

}



module.spells.manacosts = {
	"0 Mana",
	"1 Mana",
	"2 Mana",
	"3 Mana",
	"4 Mana", 
	"0 Mana + escaleras",
	"1 Mana + escaleras",
	"2 Mana + escaleras",
	"3 Mana + escaleras", 
	"", 
	"10 Mana" 
}

module.spells.tokencosts = {

	"1 Moneda",
	"2 Monedas",
	"3 Monedas",

	["chameleonrigevent"] = "2 Multimonedas",
	["unlock"] = "(desbloquear por 3 monedas)",
}

module.serverfeedback = {

	--failed spell (local)
	["nomana"] = "No tienes suficiente Mana!",
	["notokens"] = "No tienes suficientes monedas!",
	["coolwait"] = "No puedes invocar eventos o rigs ahora, por favor espera",
	["nomirror"] = "Tienes que estar unidos con tu fantasma para caminar en espejos.",
	--new
	["noreflected"] = "No puedes usar este hechizo ahora.",
	["noflyarch"] = "No puedes volar ahora.",
	["noblackhole"] = "No puedes usar este poder ahora.",
	--end new
	["regenused"] = "Ya usaste regeneración una vez.",

	--failed spell (server)
	["unknown"] = "Problema desconocido.", --this should not show for normal players, only exploiters
	["lockedspell"] = "¡Este hechizo está bloqueado!",
	["possessed"] = "No puedes usar hechizos mentras estes poseído.",
	["spelllock"] = "No puedes usar hechizos ahora",
	["nothere"] = "No puedes usar este hechizo en el tutorial.",
	["onlyracers"] = "Solo los corredores pueden usar hechizos.",
	["cancelfirst"] = "Necesitas cancelar tu hechizo actual primero...",
	["stashfull"] = "Tu reserva de escaleras esta llena.",
	["stashempty"] = "Necesitas robar escaleras antes de usar este hechizo.",
	["ultwait"] = "Otro hechizo ultimatum esta en progreso. Por favor espera.",
	["notdefault"] = "Los drones deben estar en modo por defecto primero. Por favor espera.",
	["noreshuffle"] = "¡Escoje el modo barajar primero!",
	["oneoverload"] = "No puedes tener multiples Sobrecargas de Mana activas.",
	["cursed"] = "¡Estas escaleras son hechizadas!",
	["cursed2"] = "¡Hay escaleras hechizadas en el camino!",
	["blocked"] = "Esta intersección esta hechizada.",
	["locked"] = "Estas escaleras estan bloqueadas.",
	["platformlocked"] = "La plataforma objetivo esta bloqueada.",
	["normalrig"] = "Este hechizo solo funciona en escaleras normales y rigeadas.",
	["noway"] = "Hay escaleras aqui (pueden ser invisibles)",
	["noway2"] = "Hay escaleras en el camino (pueden ser invisibles)",
	["noplatform"] = "Ninguna plataforma hallada en esa dirección.",
	--NEW
	["nopass"] = "Ese hechizo solo se usa en los plataformas del borde",
	--END NEW
	["pass"] = "Ya hay un Pase aqui.",
	["link"] = "Ya hay un Puente aqui.",
	["noblink"] = "Solo puedes usar destello en medio de escaleras que esten en el camino.",
	["noblink2"] = "No puedes usar destello en escaleras desconectadas de la plataforma.",
	["noflip"] = "Solo las escaleras normales, volteadas o rigeadas pueden ser volteadas.",
	["nothingtocopy"] = "No hay nada para replicar.",
	["wrongdirection"] = "No puedes usar este hechizo en esa dirección.",
	["notfound"] = "Escaleras no encontradas.",
	["nocursedblink"] = "No puedes usar destello alrededor de las escaleras hechizadas.",
	["nostairs"] = "No hay escaleras aqui.",
	["noground"] = "Este hechizo no puede ser usado al nivel del suelo.",
	["oddonly"] = "Este hechizo no puede ser usado en este nivel.",
	["noabove"] = "No escaleras encontradas directamente arriba.",
	["lock"] = "No puedes usar hechizos ahora",
	--["outdrift"] = "Outside drift can only be created on the outer platforms.", --removed
	["cantgate"] = "Esta dirección esta bloqueada.",
	["wall"] = "Ya hay una pared aqui.",
	["nocurse"] = "Solo las escaleras normales, hechizadas o rigeadas pueden ser hechizadas/deshechizadas.",
	["nogate"] = "Estas escaleras no tiene portal.",
	--NEW
	["noghost"] = "Solo las escaleras fantasmizado, normal o rigeado puede estar fantasmizado.",
	["wrongplace"] = "Deberia estar en el torre.",
	["archrace"] = "¡Architects no pueden hacer carrera!",
	["toolate"] = "Ya hay una carrera. Inténtalo después",
	["blockedplit"] = "No se puede crear puerta, la intersección objetivo esta hechizada.",
	--END NEW
	["cursedtarget"] = "Hay escaleras hechizadas en esa destinación",
	["lockedother"] = "Otras escaleras estan bloqueadas.",
	["failedgate"] = "La creación del portal hay fallado.",
	["notwist"] = "Esas escaleras no estan empalmadas.",
	["wrongmove"] = "Las escaleras no pueden ser movidas fuera del area de juego.",
	["blockedmove"] = "Intersección hechizada.",
	["lockedmove"] = "No se puede mover las escaleras, las escaleras que bloquean el camino estan bloqueadas.",
	["normal"] = "Estas escaleras son normales.",
	["lockedinter"] = "Esta intersección está bloqueada.",
	["toponly"] = "'Llamar al orbe' solo puede ser usado en el nivel superior.",
	["duplicatemirror"] = "Ya hay un espejo.",
	["norestore"] = "No se puede restaurar eso.",

	--higher rank required
	["admiral2"] = "Sube de rango a Admiral para deshechizar escaleras",
	["admiral"] = "Sube de rango a Admiral para deshechizar intersecciones.",
	["infidel"] = "Sube de rango a Infidel para deshechizar intersecciones.",
	["banished"] = "Sube de rango a Banished, para demoler escaleras hechizadas en el camino.",
	["annihilator"] = "Sube de rango a Annihilator para destruir escaleras hechizadas.",
	["disciple"] = "Sube de rango a Disciple para quitar portales en plataformas.",
	
	--NEW
	["nomad1"] = "Sube tu rango a Nomad para girar cualquier escalera especial.",
	["nomad2"] = "Sube tu rango a Nomad para desplazar escaleras ya desplazadas.",
	--END NEW
	["prodigy"] = "Sube de rango a Prodigy, para invalidar portales.",
	["traveller"] = "Sube de rango a Traveller para impulsar elevadores.",
	["controller"] = "Sube de rango a Controller, para mover cualquier escalera especial.",--*
	["replica"] = "Sube tu rango a Replica, para desunir con este hechizo.",--*
	--NEW
	["skeleton"] = "Sube tu rango a Skeleton para quitar escaleras y intersecciones hechizadas.",
	--END NEW
	["hijacker"] = "Sube de rango a Hijacker para robar cualquier escalera especial.",
	["transformer"] = "Sube tu rango a Transformer para empalmar escaleras ya empalmadas.",
	["strider"] = "Sube de rango a Strider para impulsar elevadores por el doble.",
	["lich"] = "Sube tu rango a Lich para destruir escaleras hechizadas en el camino",
	--new for 4.4
	["creator"] = "Sube tu rango a Creator para poner puente en cualquier dirección.",
	["protector"] = "Sube tu rango a Protector para reconstruir cualquier escaleras especiales.",
	["robber"] = "Sube tu rango a Robber para colocar escaleras sobre escaleras.",


	--rig activation
	["keeperrig"] = "¡Las escaleras se están moviendo!",
	["hackerrig"] = "¡Las escaleras se han glicheando!",
	["jokerrig"] = "¡Las escaleras se han volteado!",
	["wickedrig"] = "¡Las escaleras están colapsando!",
	["spectrerig"] = "¡Las escaleras se han fantasmizado!",
	["notspectrerig"] = "¡Las escaleras NO se han fantasmizado!",
	["patronrig"] = "¡Haz recibido 1 Mana, cortesía de %s!",
	["thiefrig"] = "¡%s te ha robado 1 Mana!",
	["mythiefrig"] = "Haz robado 1 mana de %s",
	["notthiefrig"] = "%s ya no es un Thief - no mana robado.",
	["leftthiefrig"] = "El Thief ha salido del juego - mana no robado.",
	["hereticrig"] = "¡Haz sido poseíd@!",
	["archonrig"] = "¡Teletransporte de fase!",
	["drifterrig"] = "¡Las escaleras están girando!",
	["splicerrig"] = "¡Las escaleras están uniendo!",
	["necrorig"] = "¡Las escaleras estan desapareciendo!",
	["reaverrig"] = "¡Haz sido reflejad@!",
	["gremlinrig"] = "¡Haz sido hipnotizad@!",
	["reveal"] = "¡Haz revelado escaleras invisibles!",

	--drifer lifts
	["boosted"] = "¡Elevador impulsado!",
	["noboost"] = "No se puede impulsar, no hay más plataformas arriba.",
	["noupplatform"] = "No se puede impulsar, no hay más plataformas arriba.",

	--mana overload
	["overstarted"] = "Haz activado Sobrecarga de Mana!",
	["overended"] = "Sobrecarga de Mana finalizada.",

	--mana share
	["2minshare"] = "Al menos 2 mana requerido...",
	["noshare"] = "No hay jugadores cerca para recibir mana...",
	["noinf"] = "¡No puedes compartir mana infinito!",
	["toomuch"] = "¡%s tiene la cantidad máxima de Mana!",
	["shared"] = "Mana compartido con %s!",
	["received"] = "%s ha compartido un poco de Mana contigo!",

	--prompts
	--["scancel"] = "Cancel your spell to change alignments.", --removed
	["morph"] = "Salta aquí para convertirte en %s",
	["race"] = "Salta aquí para comenzar una carrera.",
	["norace"] = "Carrera es automático en modo infinito.",

	--misc
	["secret"] = "¡Secreto encontrado!!",
	["unlocked"] = "¡Hechizo desbloqueado!",

	--chameleon exceptions	
	["chamtutorial"] = "¡No puedes usar CHAMELEON en el tutorial!",
	["champossessed"] = "No puedes usar CHAMELEON ahora.",
	["chamhypnotised"] = "No puedes usar CHAMELEON ahora.",
	["chamreflected"] = "No puedes usar CHAMELEON ahora.",
	--["chamspell"] = "Please execute or cancel current spell first.", --removed
	["morphpossessed"] = "No puedes cambiar tu clase mientras estes poseíd.",
	["morphhypnotised"] = "You can't change alignment while hypnotised.",
	["morphreflected"] = "You can't change alignment while reflected.",
	["bannedclass"] = "%s no se puede usar en Torre Básica.",

	["nocode"] = "Por favor ingresa un código primero.",
	["invalid"] = "Este código es invalido.",
	["old"] = "Este código ya no está activo.",
	["basic_arch"] = "No se puede usar este código en Torre Básica.",
	["accepted"] = "Código aceptado.",

	--free demos
	["tryspectre"] = "¡Spectre desbloqueado por 10 minutos! No te vayas del servidor.",
	["endspectre"] = "¡El demo de Spectre terminará en 1 minuto!",
	["trycham"] = "¡Chameleon desbloqueado por 10 minutos! No te vayas del servidor.",
	["new20pass"] = "¡Límite de mana incrementado!",
	["newchampass"] = "¡Ahora puedes cambiar tu clase mientras subes la torre!",
	--NEW
	["newarchpass"] = "¡Puedes ser Architect ahora!",
	["tryarch"] = "¡Architect desbloqueado por 10 minutos! No te vayas del servidor.",
	["endarch"] = "¡El demo de Architect terminará en 1 minuto!",
	--END NEW
	["newspectrepass"] = "Ahora puedes transformarte en un SPECTRE!",
	["endcham"] = "¡El demo de Chameleon terminará en 1 minuto!",
	["trymana"] = "¡Almacenamiento incrementado por 10 minutos! No te vayas del servidor.",
	["endmana"] = "¡El demo de almacenamiento incrementado terminará en 1 minuto!",


	["used"] = "El código ya ha sido utilizado.",
	["tooshort"] = "Tu código ha sido muy corto y no ha sido enviado.",
	["sent"] = "Tu mensaje ha sido enviado, gracias.",

	--NEW 
	["noobteleport"] = "Complete the tutorial to be able to switch towers!",
	["noobchameleon"] = "Complete the tutorial to be able to use Chameleon!",

	--GIFTING
	['notingame'] = "Jugador se salió del juego",
	['alreadyowns'] = "Ya tiene ese gamepass.",
	['gotit'] = "¡Ahora tienes %s, %s te lo regaló!",
	['given'] = "¡%s ahora tiene %s!",
	--END NEW

	--custom tower feedbacks
	["notinrace"] = "¡No puedes cambiar a modo infinito durante una carrera!",
	["notinreg"] = "¡No puedes cambiar a modo infinito durante una regeneración!",
	["infinite"] = "¡El servidor ahora esta en el modo infinito!",
	["classic"] = "¡El servidor ahora esta en el modo clásico!",
	["casual"] = "¡Los jugadores casuales ahora pueden usar hechizos!",
	["nocasual"] = "Los jugadores casuales ahora ya no pueden usar hechizos.",
	["purge"] = "¡La purga ahora causará una regeneración en el modo clásico!",
	["nopurge"] = "¡La purga ahora NO causará una regeneración en el modo clásico!",
	["noevens"] = "Los niveles pares ahora están restringidos",
	["evens"] = "Los niveles pares ahora están activados",
	["orbmoves"] = "¡El orbe ahora se moverá solo por su cuenta!",
	["orbstopped"] = "¡El orbe ahora NO se moverá solo por su cuenta!",
	["infreg"] = "¡La torre se regenerará después de una ronda infinita!",
	["noinfreg"] = "¡La torre NO se regenerará después de una ronda infinita!",
	["drones"] = "¡Drones pequeños activados!",
	["nodrones"] = "¡Drones pequeños desactivados!",
	["dronefix"] = "¡Los drones ahora restaurarán escaleras!",
	["nodronefix"] = "¡Los drones ahora no restaurarán escaleras!",
	["droneunlock"] = "¡Los drones removerán intersecciones hechizadas!",
	["nodroneunlock"] = "¡Los drones NO removerán intersecciones hechizadas!",
	["droneuncurse"] = "!Los drones restaurarán escaleras hechizadas!",
	["nodroneuncurse"] = "!Los drones NO restaurarán escaleras hechizadas!",
	["dronemove"] = "¡Los drones moverán escaleras en el modo por defecto!",
	["nodronemove"] = "¡Los drones NO moverán escaleras en el modo por defecto!",
	["dronespin"] = "¡Los drones rotarán escaleras en el modo por defecto!",
	["nodronespin"] = "¡Los drones NO rotarán escaleras en el modo por defecto!",
	["noinput"] = "¡Por favor ingresa un valor!",
	["nonumber"] = "¡Por favor ingresa un número!",
	["notrace"] = "¡No puedes cambiar los niveles de la torre durante la carrera!",
	["notultimate"] = "¡No puedes cambiar los niveles de la torre durante un hechizo ultimatum!",
	["notregen"] = "¡No puedes cambiar los niveles de la torre durante una regeneración!",
	["wait"] = "Los niveles de la torre están siendo cambiados, por favor espera...",
	["duration"] = "Duración de la carrera cambiada (no afectará la carrera actual)",
	["init"] = "Intervalo inicial de la carrera infinita cambiado",
	["reduction"] = "Tiempo de reducción infinito cambiado",
	["mininf"] = "Intervalo mínimo de tiempo infinito cambiado",
	["cooldown"] = "Cooldown de hechizos Rig y Evento cambiado",
	["speed"] = "Velocidad de los drones cambiada",
	["spin"] = "Duración de invocación de los drones pequeños cambiada",
	["max"] = "Cantidad de objetivo da escaleras máxima cambiada",
	["min"] = "Cantidad de objetivo da escaleras mínima cambiada",
	["curse"] = "Probabilidad de hechizar escaleras de los drones cambiada",
	["block"] = "Probabilidad de hechizar intersecciones de los drones cambiada",



}

module.serverbroadcast = {
	["pranked"] = "%s ha hecho una broma a %s!",
	["found"] = "%s ha encontrado las escaleras invisibles de %s!",
	["disco"] = "%s esta disfrutando la música disco de %s.",
	["trap"] = "%s cayó en la trampa de %s.",
	["obby"] = "%s esta probando el obby de %s.",
	["default"] = "Los drones estan de vuelta en el modo por defecto.",
	["reg"] = "La escalera se está regenerando",
	["done"] = "Regeneración completa.",
	["union"] = "%s se ha fusionado con su fantasma!",
	["eliminated"] = "%s ha sido eliminado.",
	["won"] = "%s ha ganado la carrera!",
	--["falsestart"] = "False Start", --removed
	--["countdown"] = "Race in %d seconds!", --removed
	--["noplayers"] = "No racing players, infinite mode will not start!", --removed
	["nojoin"] = "La carrera esta cerrada - no más jugadores nuevos se pueden unir.",
	--["allfalse"] = "All players have False Started!", --removed
	["safety"] = "Los niveles de la torre han cambiado. La carrera no empezará.",
	["leader"] = "%s ha tomado la delantera!",
	["toolate"] = "Nadie ha alcanzado la meta a tiempo!",
	--["go"] = "GO!", --removed
	["over"] = "Carrera finalizada!",

	--NEW
	["newrace"] = "%s comienzó una carrera, ¡desafíale!",
	["joined"] = "%s ha entrado en la carrera",
	["2min"] = "Nadie desafió %s",
	["infstart"] = "¡Carrera infinita ha empezado!",

	--END NEW

}

module.localfeedback = {

	--["cancel"] = "Cancel other spell first!", --removed
	["nomana"] = "No tienes mana suficiente!",
	["notokens"] = "No tienes monedas suficiente!",
	["unlocked"] = "Hechizo desbloqueado!",
	["maxmana"] = "Tu mana ya está al máximo!",
	["nopurchase"] = "No necesitas comprar Mana en el tutorial!",
	["notinbasic"] = "No se puede ejecutar eventos en Torre Básica.",
	--this is for chamelon clicking on the basic tower banned class
	--NEW
	["limitset"] = "Tienes activado un límite de Mana", --for refill mana
	["hasarchitect"] = "¡Ya lo tienes!",
	--END NEW
	["haschameleon"] = "¡Ya lo tienes!",
	["hasspectre"] = "¡Ya lo tienes!",
	["hasmana"] = "¡Ya lo tienes!",
	["nomuggle"] = "Creíste que había hechizos secretos para Muggle pero no habían.",
	["nonone"] = "Creíste que había hechizos ultimatum secretos para None pero no habían.",
	["nounlocks"] = "Desbloquea todos los hechizos básicos para acceder a los hechizos ultimatum!",
	["onetoken"] = "Has recibido un Moneda Especial de %s!",
	["moretokens"] = "Has recibido unas Monedas Especiales de %s!",
	["music"] = "Música cambiada correctamente.",
	["nomusic"] = "Error al cargar música.",
	["noteleport"] = "¡Teleporte fallido!", 
	["norefresh"] = "No puedes actualizar todavía.",
	["nounion"] = "No puedes usar este hechizo ahora.",

	--NEW
	["failedjoin"] = "Error al participar en la carrera.",
	--END NEW

}


--NEW (redone)
module.switchon = {

	["JOKER1"] = "Ya no revelarás escaleras invisibles.",
	["WICKED1"] = "Ya no activarás Wicked Rigs.",
	["KEEPER1"] = "Ya no activarás Keeper Rigs.",
	["SPECTRE1"] = "Ya no activarás Spectre Rigs.",
	["HACKER1"] = "Imunidad de escaleras mecánicas activadas.",
	["HACKER2"] = "Imunidad de escaleras mecánicas y rigs activadas.",
	["ARCHON1"] = "Solo las portales que van hacía arriba te teletransportarán.",
	["DRIFTER1"] = "Ya no activarás Drifter Rigs.",
	["SPLICER1"] = "Ya no activarás Splicer rigs.",
	--["REAVER1"] = "You will no longer trigger below Reaver Rigs.", --removed
	--["GREMLIN1"] = "Nearby Corkscrews locked.", --removed
	["NONE"] = "Eres el agujero negro.",

}

module.switchoff = {

	["JOKER1"] = "Ahora revelarás escaleras invisibles.",
	["WICKED1"] = "Ahora activarás Wicked Rigs.",
	["KEEPER1"] = "Ahora activarás Keeper Rigs.",
	["SPECTRE1"] = "Ahora activarás Spectre Rigs.",
	["HACKER1"] = "Imunidad de escaleras mecánicas desactivadas.",
	["HACKER2"] = "Imunidad de escaleras mecánicas y rigs desactivadas.",
	["ARCHON1"] = "Ahora todas las portales excepto las que van abajo te teletransportarán.",
	["DRIFTER1"] = "Ahora activarás Drifter Rigs.",
	["SPLICER1"] = "Ahora activarás Splicer Rigs.",
	--["REAVER1"] = "You will now trigger below Reaver Rigs.", --removed
	--["GREMLIN1"] = "Nearby Corkscrews unlocked.", --removed
	["NONE"] = "Aún sigues vacio.",
}
--END NEW

local timedSpell = "%s ha usado el hechizo %s!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s ha implementado a todas las escaleras normales 1 MANA DE REGALO!",
	["patronevent"] = "%s ha llenado toda la torre de escaleras!",
	["patronaltevent"] = "%s ha encogido todas las escaleras normales!",

	["jokerrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO VOLTEADOR!",
	["jokerevent"] = "%s ha ocultado todas las escaleras normales!",
	["jokeraltevent"] = "%s ha volteado todas las escaleras normales!",

	["wickedrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO DESTRUCTOR!",
	["wickedevent"] = "%s ha destruido todas las escaleras normales!",
	["wickedaltevent"] = "%s ha destruido TODAS las escaleras!",

	["keeperrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO MOVER ALEATORIAMENTE!",
	["keeperevent"] = "%s ha movido aleatoriamente todas las escaleras normales!",
	["keeperaltevent"] = "%s ha restaurado todas las escaleras!",

	["spectrerigevent"] = "%s ha implementado a todas las escaleras normales EL PROBABILIDAD DE FANTASMIZARSE!",
	["spectreevent"] = "%s ha movido de manera fantasmal todas las escaleras normales!",
	["spectrealtevent"] = "%s ha fantasmizado todas las escaleras normales!",

	["hackerrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO GLITCHEAR!",
	["hackerevent"] = "%s ha transformado todas las escaleras normales a mecánicas!",
	["hackeraltevent"] = "%s ha transformado todas las escaleras normales a mecánicas de subida!",

	["thiefrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO ROBAR MANA!",
	["thiefevent"] = "%s ha aplanado todas las escaleras normales!",
	["thiefaltevent"] = "%s ha creado ramas alrededor del torre!",

	["archonrigevent"] = "%s ha implementado a todas las escaleras normales UN PORTAL!",
	["archonevent"] = "%s ha portalizado aleatoriamente todas las escaleras normales!",
	["archonaltevent"] = "%s ha portalizado verticalmente todas las escaleras normales!",

	["drifterrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO ROTADOR!",
	["drifterevent"] = "%s ha desplazado aleatoriamente todas las escaleras normales!",
	["drifteraltevent"] = "%s ha levantado todas las escaleras normales!",

	["hereticrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO POSEEDOR!",
	["hereticevent"] = "%s ha cismatizado a todas las escaleras normales!",
	["hereticaltevent"] = "%s ha hechizado todas las escaleras normales!",

	["splicerrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO EMPALMAR!",
	["splicerevent"] = "%s ha empalmado todas las escaleras",
	["spliceraltevent"] = "%s ha dividido todas las escaleras!",

	["necromancerrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO QUITAR ALMA!",
	["necromancerevent"] = "%s ha llenado el torre con escaleras sin alma!",
	["necromanceraltevent"] = "%s ha quitado las almas de todas las escaleras normales!",

	["gremlinrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO HIPNOTIZAR!",
	["gremlinevent"] = "%s ha girado todas las escaleras",
	["gremlinaltevent"] = "%s ha llenado el torre con tranvías!",

	["reaverrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO REFLEJAR!",
	["reaverevent"] = "%s ha convertido las escaleras en escaleras unidireccionales!",
	["reaveraltevent"] = "%s ha convertido las escaleras en escaleras de cristal!",

	["newmode"] = "%s ha cambiado los drones a modo %s!",

	["chameleonrigevent"] = "%s ha implementado a todas las escaleras normales un hechizo misterioso!"
}

module.spells.extras = {

	["Prompt"] = "Haz click en uno de estos hechizos, para aprender como usarlo",
	["Title1"] = "Hechizos básicos",
	["Title2"] = "Hechizos Ultimate únicos",
	["Title3"] = "Hechizos Ultimate compartidos",
	["ManaCost"] = "Costo en Mana: %s", 
	["TokenCost"] = "Costo en Monedas: %s", 
	["Special"] = "Requisitos especiales: %s",
	["Execution"] = "Ejecución: %s",
	["Description"] = "Descripción: %s",
	["basic"] = "Básico",
	["ultimate"] = "Ultimate",
	["unlock"] = "0 (3 para desbloquear)",
	["none"] = "Sin requisitos especiales",

	--NEW
	["LeftHand"] = "Mano Izquierda",
	["RightHand"] = "Mano Derecha",

}

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "FANTASMA",
	["spirit"] = "ESPÍRITU", --only for spirit spectres
	["welcome"] = "BIENVENIDO",
	["drones"] = "DRONES",
	["orb"] = "ORBE",
	["refill"] = "RECARGA", --for all 2nd rank bonuses
	["overload"] = "SOBRECARGA",
	["steal"] = "ROBO",
	["gift"] = "REGALO",
	["share"] = "COMPARTIR",
	["prank"] = "BROMA",
	["possession"] = "POSESIÓN",
	["ritual"] = "RITUAL",
	["purge"] = "PURGA",
	["blessing"] = "BENDICIÓN",
	--["hack"] = "HACK", --removed
	["stash"] = "RESERVA",
	["backdoor"] = "BACKDOOR",
	["chamber"] = "CÁMARA",
	["base"] = "BASE",
	["circus"] = "CIRCO",
	["shelter"] = "REFUGIO",
	["haven"] = "PARAÍSO",
	["study"] = "ESTUDIO",
	["nether"] = "NETHER",
	["guild"] = "GREMIO",
	["nexus"] = "NEXUS",
	["oasis"] = "OASIS",
	["hub"] = "CENTRO",
	["mirror"] = "ESPEJO",
	["grave"] = "TUMBA",
	["shack"] = "CHOZA",
	["regen"] = "REGENERAR",
	["optimus"] = "OPTIMUS",
	["tutorial"] = "TUTORIAL",--player mana is drained upon starting tutorial

}


module.gui.gameover.extras = {

	--["noobs"] = "Tutorials are for noobs!", --removed
	["possessed"] = "¡Esos Heretics fastidiosos!",
	["hypnotised"] = "¿Qué pasó?",
	--NEW
	["reflected"] = "¡Libérame!",
	--END NEW
	["new"] = "Nuevo rango adquirido - %s",

}

module.gui.gameover.raceplacements = {
	"¡¡HAS GANADO LA CARRERA!!",
	"¡SEGUNDO LUGAR!",
	"¡TERCER LUGAR!",
	"Has llegado en cuarto lugar.",
	"Has llegado en quinto lugar.",
	"Has llegado en sexto lugar.",
	"Has llegado en séptimo lugar.",
	"Has llegado en octavo lugar.",
	"Has llegado en noveno lugar.",
	"Has llegado en décimo lugar.",
	"Has llegado en undécimo lugar.",
	"Has llegado en duodécimo lugar.",
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

	for class, _ in pairs(TowerData.RANKED_ALIGNMENTS) do

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
