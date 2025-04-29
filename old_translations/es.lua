local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "SI",
	["no"] = "NO",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "DEFECTO",
	["validate"] = "VALIDAR",
	["play"] = "JUGAR",
	["skip"] = "OMITIR\nTUTORIAL",
	["loading"] = "CARGANDO, POR FAVOR ESPERA...",
	["mode"] = "%s\nMODO",
	["cd"] = "COOLDOWN\nDE ULTIMATUM",
}

module.gui.switcher = {

	["title"] = "CAMBIAR DE SERVIDOR",

	["public"] = "SERVIDOR PUBLICO",
	["private"] = "SERVIDOR PRIVADO",
	["join"] = "UNIRSE",
	["friends"] = "AMIGOS EN LINEA",
	["refresh"] = "actualizando...",
	["fail"] = "ERROR AL ACTUALIZAR!",

}

module.gui.serversettings = {

	["title"] = "CONFIGURACION DEL DUEÑO",

	["Moderation"] = "MODERACIÓN",
	["rules"] = "Tu servidor. Tus reglas.",
	["temp"] = "Todos los mutes y bans son temporales",
	["kick"] = "EXPULSAR",
	["ban"] = "BANEAR",
	["mute"] = "MUTEAR",

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
	["TowerLevels"] = "Los niveles de la torre (o niveles activos en el modo infinito) no pueden ser cambiados durante una carrera or una regeneración",
	["RaceDuration"] = "Duración Máxima De La Carrera. No afecta la carrera actual. (segundos)",
	["InfStart"] = "Intervalo Inicial de ronda del Modo Infinito (2 niveles son creados cada ronda) (segundos)",
	["InfReduction"] = "Reducción del intervalo del Modo Infinito (cada ronda es mas corta por) (segundos)",
	["InfMin"] = "Minima duración del intervalo del Modo Infinito (segundos)",
	["Cooldown"] = "Periodo de Cooldown de Eventos y Rigs (segundos)",


}

module.gui.shop = {

	["title"] = "TIENDA DE CRAZY STAIRS",

	["chameleon"] = "Los Chamaleons pueden cambiar su clase durante la escalada.",
	["spectre"] = "Spectre es una clase basada en teletransporte genial para jugar solo.",
	["mana"] = "Expande tu capacidad de almacenamiento de Mana por 10 puntos.",

	["3tokens"] = "Desbloquea un hechizo o invoca hasta 3 hechizos ultimatum.",
	["30tokens"] = "Desbloquea 10 hechizos o invoca hasta 30 hechizos ultimatum.",
	["300tokens"] = "Suficiente para desbloquear todos los hechizos con 153 tokens sobrantes.",

	--below messages apper on mouse hover
	["3TOKENS"] = "3 Multi Tokens (R$%d)",
	["30TOKENS"] = "30 Multi Tokens (R$%d)",
	["300TOKENS"] = "300 Multi Tokens (R$%d)",
	["SPECTRE PASS"] = "Gamepass de Spectre. (R$%d)",
	["MANA PASS"] = "Gamepass de almacenamiento de 20 Mana. (R$%d)",
	["CHAMELEON PASS"] = "Gamepass de Chameleon. (R$%d)",

}

module.gui.spellbar = {

	["share"] = "REGALAR\nMANA",
	["nocasual"] = "SOLO CORREDORES PUEDEN LANZAR HECHIZOS",

} 

module.gui.stats = {

	["total"] = "Escaladas totales: %d / Wins: %d",
	["class"] = "Escaladas como %s: %d",
	["best"] = "Mejor tiempo como %s: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "POSEÍDO! (encuentra Mana para liberarte)",
	["released"] = "LIBERADO",
	["timesup"] = "el tiempo se acabó...",

}


module.gui.activatecham = {

	["title"] = "ACTIVAR CHAMELEON",
	["body"] = "Quieres activar el modo Chameleon?\nQuedará activo por el resto de la escalada."

}

module.gui.caceltimed = {

	["title"] = "CANCELAR HECHIZO CRONOMETRADO",
	["body"] = "Quieres cancelar este hechizo cronometrado? Los tokens no serán reembolsados."

}

module.gui.climbtimer = {

	["prompt"] = "Sube las\nescaleras!",
	["floor"] = "Piso",
	["last"] = "Último tiempo",

}

module.gui.codes = {

	["title"] = "INGRESA EL CÓDIGO",
	["body"] = "Ingresa tu código aqui:",
	["prompt"] = "(código)",
	["button"] = "VALIDAR",

}

module.gui.gauges = {

	["prompt"] = "Salta para proceder, haz click de nuevo para cancelar.",

	["found"] = "%d escaleras encontradas (%.1f%% fill)",
	["special"] = "%d son especiales (%.1f%%)",
	["affected"] = "%d escaleras serán afectadas (%.1f%%)",
	["cursed"] = "%d intersecciones hechizadas encontradas (%.1f%%)",
	["fill"] = "%d escaleras serán creadas (%.1f%%)",
	["purge"] = "%d objetos serán destruidos (%.1f%%)",
	["normal"] = "%d ya son normales (%.1f%%)",
	["restore"] = "%d escaleras serán restauradas (%.1f%%)",
	["bypass1"] = "%d hechizos en el camino  curses are in the way (%.1f%%)",
	["bypass2"] = "%d bypasses ya existen (%.1f%%)",
	["bypass3"] = "%d bypasses serán creados (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "ROCOLA",

	["master"] = "VOLUMEN MASTER",
	["default"] = "(usando volumen master)",
	["climb"] = "MÚSICA DE ESCALADA",
	["endgame"] = "MÚSICA DE FIN DE JUEGO",
	["failed"] = "[error al cargar]",

}

module.gui.results = {

	["title"] = "RESULTADOS DE LA CARRERA",

	["place"] = "PUESTO",
	["name"] = "NOMBRE",
	["level"] = "NIVEL MÁX.",
	["time"] = "TIEMPO",
	["rank"] = "RANGO",
	["not"] = "N/A",
	[1] = "GANADOR",
	[2] = "2do",
	[3] = "3ro",
	[4] = "4to",
	[5] = "5to",
	[6] = "6to",
	[7] = "7mo",
	[8] = "8vo",
	[9] = "9no",
	[10] = "10mo",
	[11] = "11vo",
	[12] = "12vo",

}

module.gui.racetimer = {

	["gather"] = "No estás\nen la carrera.",
	["race"] = "CARRERA\nFINALIZADA!",
	["inf"] = "Eliminado!",
	["off"] = "TEMPORIZADOR\nDE LA CARRERA.",
	["wait"] = "Carrera en",
	["on"] = "Rango",

}

module.gui.ranks = {

	["title"] = "TU RANGO",

	--none
	["none_1"] = "No has elegido una clase!",
	["none_2"] = "No tendrás acceso a ningún hechizo!",
	["none_3"] = "Salta en un morph (en el centro del mapa) - para cambiar tu clase.",

	--shared
	["higher"] = "RANGO MÁS ALTO ADQUIRIDO",
	["current"] = "TU RANGO ACTUAL",
	["lower"] = "RANGO NO ADQUIRIDO",

	["more"] = "Necesitas %d escaladas mas como %s para obtener este rango.",
	["done"] = "Ya posees un rango más alto. Todos los efectos de rangos inferiores se añadirán a tu rango actual.",
	["max"] = "Este es el rango máximo. Has hecho %d escaladas como %s.",



	["PATRON"] = {
		"Este es tu rango de PATRON inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo PATRON.",
		"Si alguien lanza un hechizo INVOCADOR, tu Mana será recargado.",
		"Tus links durarán el doble (120s).",
		"Tus portales durarán el doble (120s).",
		"El costo del hechizo Llamar al Orbe será reducido a 2 Mana.",
		"Tu hechizo INVOCADOR durará 50% más (90s).",
		"Si no tienes Mana, salta en una plataforma para ser bendecido con 1 Mana.",
		"Al llamar a un orbe, este viajará el doble de rápido hacia ti.",
	}, 
	["JOKER"] = { 
		"Este es tu rango de JOKER inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo JOKER.",
		"Si alguien lanza un hechizo VOLTEADOR, tu Mana será recargado.",
		"Las escaleras disco no tienen ningun efecto en ti.",
		"Ahora puedes ver todas las escaleras invisible. Tienes la opción de no revelarlas.",
		"Ahora puedes detectar plataformas trampa y escaleras falsas.",
		"Tu hechizo VOLTEADOR durará 50% más (90s).",
		"Puedes caminar en escalera falsas.", 
		"Recibirás Mana de bonificación, cuando alguien active cualquier broma. (sólo una vez por jugador)",
	},
	["WICKED"] = {
		"Este es tu rango de WICKED inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo WICKED.",
		"Si alguien lanza un hechizo DOBLADOR, tu Mana será recargado.",
		"Ahora puedes caminar en obbies tal como lo harías en escaleras normales.",
		"El hechizo DESTRUIR DEBAJO ahora es gratis.",
		"Recibirás Mana de bonificación por destruir cualquier escalera especial.",
		"Tu hechizo DOBLADOR durará 50% más (90s).",
		"Tienes la opción de evitar activar Destroy Rigs.",
		"Ahora puedes destruir escaleras hechizadas.",
	},
	["SPECTRE"] = { 
		"Este es tu rango de SPECTRE inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo SPECTRE.",
		"Si alguien lanza un hechizo RESPLANDOR, tu Mana será recargado.",
		"Recibiras 1 Mana extra cuando tu recolectes cristales con tu fantasma.", 
		"El hechizo DEFANTASMIZAR ahora es gratis.",
		"Ahora puedes finalizar la escalada tocando el orbe del fin del juego con tu fantasma.",
		"Tu hechizo RESPLANDOR durará 50% más (90s).",
		"Ahora tienes la opción de evitar activar Eclipse Rigs.", 
		"Ahora puedes caminar en escaleras fantasma.",
	},
	["CHAMELEON"] = { 
		"Este es tu rango de CHAMELEON inicial. Los rangos de las clases reales aún aplican.",
		"EXCEPCIÓN! SOLO obtendrás Mana de bonificación, cuando los drones esten el modo CHAMELEON.",
		"Cambiar tu clase es mas rápido ahora.",
		"Tus manos brillarán de color morado, ocultando tus motivos.",
		"Los hechizos ESCALERAS FALSAS y CREAR ESCALERAS tendrán un efecto púrpura.",
		"Ahora puedes lanzar los hechizos rechazados de MOVER ESCALERAS ABAJO, PUENTE LEVADIZO y ESCALERAS CRUZADAS.",
		"Ahora puedes lanzar los hechizos rechazados de DEFORMAR ESCALERAS y PUENTE LEVADIZO ARRIBA.",
		"Cambiar de clase es completamente irreconocible ahora.",
		"Ahora puedes lanzar el hechizo MYSTERY RIG. (multi tokens requeridas)",
	},
	["MUGGLE"] = { 
		"Este es tu rango de MUGGLE inicial.",
		"Tu cooldown de salto será reducida por 0.125s.",
		"Tu cooldown de salto será reducida por 0.25s.",
		"Tu cooldown de salto será reducida por 0.375s.",
		"Tu cooldown de salto será reducida por 0.5s.",
		"Tu velocidad al caminar será incrementada un 10%.",
		"Tu velocidad al caminar será incrementada un 20%.",
		"Tu velocidad al caminar será incrementada un 30%.",
		"La altura de tus saltos será incrementada un 20%.",
	},
	["KEEPER"] = {
		"Este es tu rango de KEEPER inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo KEEPER.",
		"Si alguien lanza un hechizo ASCENDEDOR, tu Mana será recargado.",
		"El hechizo MOVER ALEATORIAMENTE y los Move Rigs que activen, nunca harán que las escaleras se muevan hacia abajo.",
		"Ahora puedes mover escaleras volteadas.",
		"Tu hechizo restaurador ahora es gratis.", 
		"Tu hechizo ASCENDEDOR durará 50% más (90s).",
		"Ahora tienes la opción de evitar activar Move Rigs.",
		"Ahora puedes restaurar escaleras hechizadas e intersecciones hechizadas.",
	},
	["HACKER"] = { 
		"Este es tu rango de HACKER inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo HACKER.",
		"Si alguien lanza un hechizo EXPLOIT DE VELOCIDAD, tu Mana será recargado.",
		"Las escaleras moviles que van hacia abajo no funcionarán mientras tu estes en ellas.",
		"Tu hechizo de IMPULSO HORIZONTAL será 50% más rápido.",
		"Tu hechizo de DESTELLO será 50% más rápido.",
		"Si no tienes Mana, salta en una plataforma para hackearte 1 Mana.", 
		"Ahora tienes la opción de evitar activar Glitch Rigs.",
		"Si hay al menos 1 intersección libre, usar un glitch en el nivel superior rematerializará las escaleras a lado del orbe.", 
	},
	["THIEF"] = {
		"Este es tu rango de THIEF inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo THIEF.",
		"Si alguien lanza un hechizo LADRÓN, tu Mana será recargado.",
		"Los bypasses que crees ahora durarán el doble (120s).",
		"Las escaleras espiral que crees ahora durarán el doble (120s).",
		"Ahora puedes robar cualquier escalera, excepto las hechizadas.",
		"Tu hechizo LADRÓN durará 50% más (90s).",
		"Si no tienes mana, salta en una plataforma para obtener 1 Mana de tu reserva.", 
		"Ahora puedes quedarte con 2 escaleras robadas a la vez.",
	},
	["ARCHON"] = {
		"Este es tu rango de ARCHON inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo ARCHON.",
		"Si alguien lanza un hechizo DIVISOR, tu Mana será recargado.",
		"Ahora puedes lanzar el hechizo DESTRUIR DIVISIÓN en plataformas.",
		"El hechizo DESTRUIR DIVISIÓN ahora es gratis.",
		"Las divisiones nunca te teletransportarán hacia abajo.",
		"Tu hechizo DIVISOR durará 50% más (90s).",
		"Ahora puedes lanzar hechizos en escaleras ya divididas.",
		"Ahora tienes la opción de evitar teletransportes en todos las divisiones excepto las que van hacia arriba.",
	},
	["DRIFTER"] = {
		"Este es tu rango de DRIFTER inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo DRIFTER.",
		"Si alguien lanza un hechizo ASCENSOR, tu Mana será recargado.",
		"Tus elevadores aparecerán y se moverán 50% más rápido.",
		"Ahora puedes girar escaleras desviadas.",
		"Ahora puedes impulsar tus elevadores con un hechizo ASCENSOR o ELEVADOR.",
		"Tu hechizo ASCENSOR durará 50% más (90s).",
		"Ahora tienes la opción de evitar activar Drift Rigs.",
		"Ahora puedes impulsar 2 veces tus elevadores con un hechizo ASCENSOR o ELEVADOR.",
	},
	["HERETIC"] = {
		"Este es tu rango de HERETIC inicial.",
		"Obtendrás Mana de bonificación, cuando los drones esten el modo HERETIC.",
		"Si alguien lanza un hechizo MALEDICTOR, tu Mana será recargado.",
		"Cuando no tengas Mana, puedes tocar una escalera hechizada para deshechizarlas y recibir 1 Mana.",
		"Ahora eres inmune a los Possess Rigs.",
		"Ahora puedes lanzar el hechizo PARPADEO para deshechizar una intersección.",
		"Tu hechizo MALEDICTOR durará 50% más (90s).",
		"Los hechizos CREAR ESCALERAS HECHIZADAS y MALEDICTOR ahora pueden demoler escaleras hechizadas que se cruzen en su camino.",
		"Recibirás Mana de bonificación cada vez que alguien sea poseído.",
	},


}

module.gui.reshuffle = {

	["title"] = "MODO DE REORDENAMIENTO DE ESCALERAS",

	["body"] = "Quieres que las escaleras eviten las collisiones mientras se mueven? Si no, cualquier escalera en el camino será destruida.",

}

module.gui.multitokens = {

	["title"] = "ELIJE TUS TOKENS",

	["info"] = "Necesitas 3 tokens para desbloquear un hechizo.",
	["notokens"] = "No te quedan multi tokens.",
	["nopass"] = "NO GAMEPASS",

}

module.gui.feedback = {

	["title"] = "ENVIAR FEEDBACK",

	["prompt"] = "Haz click aquí para mandar un mensaje a los desarrolladores! (mínimo 20 caracteres)",
	["send"] = "ENVIAR",
	["locked"] = "BLOQUEADO",

}

module.gui.settings = {

	["title"] = "CONFIGURACIÓN DEL JUEGO",

	["ANIM1"] = "CONFIGURACIÓN\nDE ANIMACIONES",	
	["ANIM2"] = "CONFIGURACIÓN EXTRA\nDE ANIMACIONES",
	["MISC"] = "CONFIGURACIÓN\nMISCELÁNEA",
	["INTERFACE"] = "CONFIGURACIÓN\nDE INTERFAZ",	

	["size"] = "Mostrar Animaciones (Tamaño)",
	["color"] = "Mostrar Animaciones (Color)",
	["escalator"] = "Mostrar Animaciones De Escaleras Moviles",
	["sanctuary"] = "Mostrar Animaciones De Santuarios",
	["list"] = "Mostrar Lista De Jugadores Animada",
	["ghosts"] = "Animar Fantasmas",
	["distance"] = "Incrementar Distancia De Animación Máxima",
	["morph"] = "Mostrar Animación De Morph Al Usar Deceiver o Usurper",
	["billboard"] = "Mostrar El Billboard De Tu Avatar",
	["rank"] = "Mostrar Tu Rol El Billboard De Tu Avatar",
	["switchback"] = "Cambiar Automaticamente A Hechizos Básicos Después De Ejecutar Un Hechizo Ultimatum",
	["safecancel"] = "Mostrar Confirmación Al Cancelar Un Hechizo Ultimatum Cronometrado",
	["multi"] = "Mostrar Ventana De Selección De Multi Tokens Después De La Escalada",
	["kchoices"] = "Mostrar Ventana De Dirección De Selección Para Keeper (no funciona en Xbox)",
	["achoices"] = "Mostrar Ventana De Dirección De Selección Para Archon (no funciona en Xbox)",
	["stats"] = "Mostrar Estadisticas Extra Al Lanzar Hechizos Rig Y Eventos",


}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "TU CLASE",
	["time"] = "TU TIEMPO DE ESCALADA",
	["climbs"] = "ESCALADAS OTORGADAS",
	["tokens"] = "TOKENS OTORGADAS",
	["rank"] = "TU RANGO ACTUAL",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"AYUDAR, PROTEGER Y CREAR",
		"Esos noobs necesitan nuestra ayuda",
		"No habrá esperanza sin nosotros los Patrons",
		"11 de 10 en la escalada de amabilidad",
		"Compartir es interesarse",
		"Nunca puedes tener demasiadas escaleras",
		"Nunca estarás solo en un equipo, definitivamente siempre hay un Patron",
		"¿Que sería de esta torre sin escaleras?",
		"Otro trabajo bien hecho",
	},
	["JOKER"] = {
		"ENGAÑAR, CONFUNDIR y REÍR",
		"Esta torre es una broma",
		"Porque tan serio?",
		"HA! HA! HA!",
		"Relajate y miralos caer",
		"Caiste!",
		"You know the rules and so do I",
		"Sería aburrido sin me",
		"Las escaleras falsas son reales",
	},
	["WICKED"] = {
		"PREVENIR, BLOQUEAR y DESTRUIR",
		"No soy malvado, es que hay demasiadas escaleras",
		"Esas escaleras se tienen que ir",
		"Mira el mundo caer",
		"Esta torre se ve mejor sin escaleras",
		"Destruire tu mente, alma y cuerpo (y escaleras)",
		"1)Haz un obby 2)Mira a los noobs caer 3)Disfruta",
		"Todo muere eventualmente",
		"Vacia tu mente - peru primero vacia la torre",
	},
	["SPECTRE"] = {
		"DESAPARECER, OCULTARSE y TELETRANSPORTARSE",
		"Claro que teletransportarse es seguro",
		"No me puedes atrapar",
		"La belleza de las escaleras fantasma es inigualable",
		"¿Gente cayendo? ¿Porque deberìa importarme?",
		"Puedes resolver todos tus problemas con la teletransportación",
		"Cuando empiezas a teletransportarte, no puedes parar",
		"Al menos no estoy teletransportando escaleras",
		"Sigan asi noobs!",
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
		"¿La gente usa hechizos? Noobs!",
	},
	["CHAMELEON"] = {
		"COPIAR, IMITAR y SORPRENDER",
		"Soy muy perezoso para tener mis propios hechizos",
		"Mas variedad - Mas diversión.",
		"Hacer equipos es lento - Transformarse es rápido",
		"La abilidad de ajustarse es la base de la supervivencia",
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
		"Escaleras arregladas - Escaleras felices",
	},
	["THIEF"] = {
		"TOMAR, USAR y DEVOLVER",
		"En realidad, se llama tomar prestado",
		"Las escaleras planas son tan bellas",
		"Al menos no robo plataformas",
		"Solo no camines en Thief Rigs, ugh",
		"¿O sea, al menos me haz visto robar algo?",
		"Yo soy como Robin Hood - Robar de los pobres y dárselo a mi mismo.",
		"No es como si alguien se daría cuenta de 1 escalera faltante",
		"La redistribución de las escaleras previene los problemas",
	},
	["HACKER"] = {
		"HACKEAR, GLITCHEAR y ROMPER",
		"¿Jugar limpio? No hay cosa como tal.",
		"¡Espera! Esta torre no es real... ¿Vivimos en una experiencia de Roblox simulada?",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"¿Haz visto algún tipo de reglas puestas por aqui?",
		"¿Hago trampa? Todo el mundo aqui lo hace",
		"Algunos arreglos aqui y alla - Apenas un exploit",
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
		"Poseído!",
		"Prefiero la falta de iluminación",
		"¿Porque me debería importar si la gente se queda atorada?",
	},
	["ARCHON"] = {
		"ABRIR PORTAL, ???, APROVECHAR",
		"Antes reinaba esta torre",
		"Planea para triunfar",
		"Estudia duro y triunfarás",
		"La abilidad de dividir escaleras es un arte",
		"Divide tus metas y organizate",
		"El pastel es mentira",
		"Hay una división para cada problema",
		"Confundir a todos con mis portales: ¡Cumplido!",
	},
	["DRIFTER"] = {
		"SURFEAR, MONTAR y PLANEAR",
		"¿Quien necesita escaleras? ¡Estamos en el espacio!",
		"¡Vuelen! ¡Sean libres!",
		"Surf hasta el fin",
		"No existe el abajo en el espacio - Salta sin preocuparte",
		"Desvia todo  - Salta a la victoria",
		"No pares - Sigue desviando escaleras",
		"Me encanta montar plataformas",
		"Aqui no necesito agua para surfear",
	},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

	["SAVIOUR"] = "No dejes ningún noob atrás",
	["IT"] = "Hacer bromas es vivir",
	["ANNIHILATOR"] = "Destruyan todo!",
	["AETHER"] = "Entra al nether realm",
	["DABSFORLIF"] = "Los hechizos estan sobrevalorados",
	["USURPER"] = "Solo me gustan todos los hechizos",
	["ADMIRAL"] = "Orden restaurado",
	["OUTLAW"] = "Mio, mio, todo MIO!",
	["ZERO"] = "Rootkit instalado",
	["EXILED"] = "Excommunication",
	["ILLUMINATI"] = "Illuminati confirmado",
	["STRIDER"] = "Tomaré el elevador",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {

	"CRAZY STAIRS",
	"Juego conceptualizado, diseñado y codificado por Sleazel",
	"Ayuda con el diseño - cakegirlserina",
	"Modelos por ZielonyLeszek",
	"Skyboxes por el generado de @wwwtyro",
	"Modulo de guardado de data, DataStore2, por Kampfkarren",
	"Código de tablas de ranking original por ThatTimothy",
	"TESTERS:",
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
	"TRADUCCIONES:",
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
	"Bosanski - xootynator",
	"AGRADECIMIENTOS ESPECIALES PARA:",
	"kolcer",
	"ThatTimothy",
	"SerpentineKing",
	"WhereDidTheSunGo",
	"b3ntheplay3r2",
	"TehEpix2",
	"Narvog1",
	"shark66655",
	"MÁSICA (catalogo APM):",
	"Música del intro - Allure por Martin Albert Sponticcia",
	"\"None\": Música del fin de juego - Deceived por Martin Albert Sponticcia",
	"Muggle: Música - Hyperdrive por Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Muggle: Música del fin de juegoc - Reflections por Milan Pilar",
	"Patron: Música - Tranquilize por Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Patron: Música del fin de juego - Dreamers por Joseph Alexander",
	"Joker: Música - Crosswind por Martin Albert Sponticcia",
	"Joker: Música del fin de juego - Fender Stab por Steven Raymond Bush",
	"Wicked: Música - Wicked por Daniel Jay Nielsen, Nathan Duvall",
	"Wicked: Música del fin de juego - Something Wicked por Cris Velasco",
	"Spectre: Música - Reflections por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Spectre: Música del fin de juego - Cosmic Dust por Milan Pilar",
	"Keeper: Música - Automotion por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Keeper: Música del fin de juego - Synth On The Highway por Richard Adrian Maxwell Preston",
	"Hacker: Música - Network por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Hacker: Música del fin de juego - Descending Into Oblivion por Richard Adrian Maxwell Preston",
	"Thief: Música - Reaching Out por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Thief: Música del fin de juego - Soaring por Richard Adrian Maxwell Preston",
	"Archon: Música - Aperture por Paul Emons, Richard Goodliff, Ian Robson",
	"Archon: Música del fin de juego- Rendezvous por Paul Emons, Richard Goodliff, Ian Robson",
	"Drifter: Música - Communique por Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Drifter: Música del fin de juego - Fragile por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic: Música - Mother por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic: Música del fin de juego - Being Me por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon: Música - Rah por Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon: Música del fin de juego - Midnight Runner por Richard Adrian Maxwell Preston",
	"Ghost Union: Música - Amber Garden por Paul Emons, Richard Goodliff, Ian Robso",
	"Possessed: Música - Dark Souls por David Arkenstone",
	"Música de las escaleras disco del Joker - To The Disco por Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Música de las plataformas del Drifter - Radioactivity por Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Gracias por jugar!",	
}



module.static = {

	--INTRODUCTION SCREENS

	["cla_1"] = "¿Como jugar?",
	["cla_2"] = "Antes que todo, es bastante recomendado que completes el tutorial. Si no lo haz hecho todavía, por favor vuelve a entrar al juego, ya que si no la experiencia se pondría confusa",
	["cla_3"] = "El objetivo de este juego es alcanzar cima de la torre y tocar el Orbe de Energia volador. Primero escoge tu clase saltando en uno de los circulos brillantes en el centro del mapa..",
	["cla_4"] = "Cuando estes feliz con tu elección, colecciona las formas flotantes para recibir mana y subir las escaleras. Usa los hechizos de tu clase para que te ayuden con tu escalada.",
	["cla_5"] = "¿Cómo usar hechizos?",
	["cla_6"] = "Cada hechizo tiene un costo que es requerido para usarlo. Cuando obtengas suficiente Mana haz click en el hechizo. Tus manos empezarán a brillar, indicando que estas listo para lanzarlo.",
	["cla_7"] = "Después de invocarlo, el hechizo debe ser usado. Todos los hechizos son ejecutados al saltar. Dependiendo en el hechizo, necesitarás saltar en una plataforma o una escalera. Flechas guia aparecerán para ayudarte.",
	["cla_8"] = "Cuando completes la escalada, recibirán 3 tokens, que te dejarán desbloquear 1 hechizo. Completa la escalada otra vez para desbloquear más hechizos. No puedes usar tokens de una clase para desbloquear los hechizos de otra.",
	["cla_9"] = "¿Cómo usar hechizos ultimatum?",
	["cla_10"] = "Primero necesitarás desbloquear todos los hechizos básicos para tener acceso a los hechizos ultimatum. Los hechizos ultimatum no requieren desbloquearse, pero usan tokens en vez de mana pasa su uso",
	["cla_11"] = "Escala la torre veces suficientes para desbloquear todos ls hechizos básicos. Tal vez quieras intentar ganar la carrera para obtener tokens extra. También hay una opción para comprar tokens. Cuando la desbloquees, usa el click izquierdo o presiona 'C'",
	["cla_12"] = "Algunos hechizos ultimatum son cronometrados, y no requieren preparación previa. Encontrarás más información en los cuarteles de cada clase. Cancelar un hechizo cronometrado no te devolverá los tokens.",

	["pro_1"] = "TORRE PRO",
	["pro_2"] = "Restricción de los niveles par",
	["pro_3"] = "En la torre pro algunos hechizos de plataformas no pueden ser usados en niveles par. Trampa, Crear Portal, Teletransporte Vertical, Escalera Espiral y Teletransporte Aleatorio solo pueden ser usados en niveles impar.",
	["pro_4"] = "Los Drifters no pueden usar esas plataformas tampoco. Las plataformas afectadas serán marcadas con un circulo rojo en el medio.",
	["pro_5"] = "Escaleras Hechizadas",
	["pro_6"] = "En la Torre Pro los drones crearán aleatoriamente escaleras hechizadas o hechizarán escaleras normales. Hay un chance del 20% de la aparición de estas. Las flechas guía no aparecerán en las escaleras hechizadas.",
	["pro_7"] = "Las escaleras hechizadas son inmunes a la mayoría de hechizos. No puedes teletransportarte en medio de ellas ni usar el hechizo Destello de Hacker. Además, todos los hechizos que causen la destrucción de escaleras hechizadas no funcionarán (como Mover de Keeper).",
	["pro_8"] = "Solo los Heretics y Admirals pueden restaurar escaleras hechizadas. El evento Purga y Restauración también se deshacen de las escaleras hechizadas. Aún asi, los drones siempre crearán nuevas en la Torre Pro.",
	["pro_9"] = "Intersecciones Hechizadas",
	["pro_10"] = "En la Torre Pro los drones crearán aleatoriamente intersecciones hechizadas también. Cuando un dron encuentre una intersección vacia, hay un chance del 20% para que la hechice. Las flechas guia se transformarán en X para marcar la intersección.",
	["pro_11"] = "Las intersecciones hechizadas previenen todos los hechizos de plataformas que son ejecutados en flechas. No puedes crear escaleras, links ni teletransportarte por una intersección hechizada.",
	["pro_12"] = "Solo los Heretics, Admirals y drones pueden restaurar intersecciones hechizadas. Así como con las escaleras hechizadas, La Purga de Wicked removerá todas las intersecciones hechizadas, pero durante la regeneración nuevas aparecerán.",

	["inf_1"] = "TORRE INFINITA",
	["inf_2"] = "CARRERA MANDATORIA",
	["inf_3"] = "En la torre infinita la carrera es mandatoria. Los jugadores casuales no tienen permitido  usar hechizos y no recibirán ningún premio por escalar. Tocar el Orbe solo recargará 10 Mana.",
	["inf_4"] = "Para 'completar' la torre infinita necesitas unirte a la carrera y tratar de quedarte en ella lo más que puedas. Recibiras premios (si hay) cuando te eliminen.",
	["inf_5"] = "El Dron Caido",
	["inf_6"] = "A diferencia de la torre clasica y la pro, Dron Caído tiene una tarea especial en la torre infinita.",
	["inf_7"] = "Cada intervalo de elevación, Dron Caído generará 2 nuevos niveles. Cada nivel par será restringido. Algunas de esas escaleras e intersecciones pueden ser hechizadas.",
	["inf_8"] = "El primer intervalo dura 20 segundos. Cada elevación reducirá el intervalo por medio segundo, hasta que los niveles son creados más rápido de lo que pueden ser escalados.",
	["inf_9"] = "El Borrador",
	["inf_10"] = "El Borrador es un campo de fuerza especial que se elevará junto a la torre y removerá los niveles bajos. Si un jugador caer detrás del borrador este será eliminado de la ronda. El borrador funciona de manera similar a la lava en otros juegos.",
	["inf_11"] = "Asi como Dron Caído, El borrador ira cada vez más rápido. Aún asi se moverá de manera que no borre 2 niveles a la vez.",
	["inf_12"] = "Escaleras y plataformas tocadas por el borrador desaparecerán. Intenta evitar el borrador lo más que puedas para asegurar la victoria.",

	["cus_1"] = "TOWER PERSONALIZADA",
	["cus_2"] = "¡TÚ DECIDES!",
	["cus_3"] = "En la torre personalizada tu puedes ajustar la configuración de torre a tu gusto.",
	["cus_4"] = "Los premios en la torre personalizada son reducidos a la mitad. Obtendrás un token cada 12 niveles y calificará como escalada cada 30 niveles.",
	["cus_5"] = "Configuración De La Torre",
	["cus_6"] = "Puedes cambiar la configuración de la torre a tu gusto. Escoge niveles, restringe los niveles pares o incluso establece la torre a modo infinito.",
	["cus_7"] = "Solo el dueño del servidor puede ajustar la configuración. Por lo tanto los servidores públicos no existen para las torres personalizadas.",
	["cus_8"] = "Configuración De Drones",
	["cus_9"] = "También puedes cambiar la configuración de los drones pequeños. Ajusta la cantidad máxima o mínima o incluso desactívalos a todos.",

	["vr_1"] = "Al jugar Crazy Stairs en VR automaticamente te convertirás en un Architect.",
	["vr_2"] = "A diferencia de los jugadores normales, Architect no quieres ascender la torre. Tu meta es ayudar o prevenir que otros jugadores alcancen el orbe.",
	["vr_3"] = "Al opción es tuya. ¿Serán una amenaza o un héroe? O simplemente quieres jugar con la torre? La opción es tuya.",
	["vr_4"] = "¿Cómo navegar?",
	["vr_6"] = "Usa la palanca derecha para moverte arriba o abajo, inclinar la palanca de izquiera a derecha resultara en un giro de la cámara 'perfecto'.",
	["vr_7"] = "Intena mantenerte afuera de la torre parau na mejor vista y mayor facilidad al apuntar.",
	["vr_8"] = "¿Cómo usar los hechizos?",
	["vr_9"] = "Para empezar un hechizo, apreta el orbe de energia con el boton Grip. Un puntero laser aparecerá, el cual te ayudará a apuntar a las escaleras y plataformas.",
	["vr_10"] = "Ejecuta el hechizo con el botton Trigger mientras sostienes el botón Grip. Cada clase en VR tiene 2 hechizos. Uno para plataformas y otro para escaleras. Dependiendo en el objetivo, el hechizo adecuado será elegido.",
	["vr_11"] = "Para cambiar una clase en VR, presiona y manter el botton Trigger, sin el botón Grip. Después escoge el alignment con palanca de la mano correspondiente.",

	--ROOMS DOOR TEXTS

	["home_1"] = "LA CASA DE MUGGLE",
	["home_2"] = "NUESTRO LEMA:\nCAMINAR\nSALTAR\nY\nCAER",
	["home_3"] = "PROS:\nBonus de velocidad y fuerza de salto en rangos mayores\nDerecho a fanfarronear\nCONTRAS:\nSin hechizos\nSe atore facilmente",
	["home_4"] = "'Nosotros no teniamos esos hechizos fantasiosos cuando el juego estaba en alpha!'\nnuestro fundador",

	["oasis_1"] = "EL OASIS DE CHAMELEON",
	["oasis_2"] = "NUESTRO LEMA:\nCOPIAR\nIMITAR\nY\nSORPRENDER",
	["oasis_3"] = "PROS:\nPuede cambiar de clase en cualquier lugar, a cualquier hora\nCONTRAS:\nCuesta Robux\nSubir de rango tomar bastante tiempo",
	["oasis_4"] = "'Soy muy perezoso para tener mis propios hechizos'\nnuestro fundador",

	["nexus_1"] = "EL NEXUS DE HERETIC",
	["nexus_2"] = "NUESTRO LEMA:\n¡NO\nPASARÁS!",
	["nexus_3"] = "PROS:\nMejor en la Torre Pro\nNo puede ser detenido\nCONTRAS:\nUsarlo para equipos de dificil\nRequiere bastante mana",
	["nexus_4"] = "'Banear la magia es como banear la diversión'\nnuestro fundador",

	["guild_1"] = "EL GREMIO DE THIEF",
	["guild_2"] = "NUESTRO LEMA:\nTOMAR\nUSAR\nY\nDEVOLVER",
	["guild_3"] = "PROS:\nUsa mana eficientemente\nVersatil\nCONTRAS:\nNecesita escaleras para robar\nNo puede demoler escaleras en el camino",
	["guild_4"] = "'En realidad, se llama tomar prestado'\nnuestro fundador",

	["nether_1"] = "EL NETHER DE SPECTRE",
	["nether_2"] = "NUESTRO LEMA:\nDESAPARECER\nOCULTARSE\nY\nTELETRANSPORTARSE",
	["nether_3"] = "PROS:\nHechizos rápidos\nPerfecto para jugar solo\nCONTRAS:\nCuesta Robux\nNo recomendado para equipos",
	["nether_4"] = "'Claro que teletransportarse es seguro'\nnuestro fundador",

	["study_1"] = "EL ESTUDIO DE ARCHON",
	["study_2"] = "NUESTRO LEMA:\nABRIR\nPORTAL\n???\nAPROVECHAR",
	["study_3"] = "PROS:\nRigs útiles\nConfunde a los oponentes\nCONTRAS:\nEl más dificil de aprender\nRequiere planeación",
	["study_4"] = "'Antes reinaba esta torre'\nnuestro fundador",

	["haven_1"] = "EL PARAÍSO DE PATRON",
	["haven_2"] = "NUESTRO LEMA:\nAYUDAR\nPROTEGER\nY\nCREAR",
	["haven_3"] = "PROS:\nEl más facil de aprender\nClase para equipos\nCONTRAS:\nUsa mucho mana\nPuede atraer gente",
	["haven_4"] = "'¡Esos noobs necesitan nuestra ayuda!'\nnuestro fundador",

	["shelter_1"] = "EL REFUGIO DE DRIFTER",
	["shelter_2"] = "NUESTRO LEMA:\nSURFEAR\nMONTAR\nY\nPLANEAR",
	["shelter_3"] = "PROS:\nVersatile\nTeam player\nCONTRAS:\nRequires some parkour skills\nTricky in pro towers",
	["shelter_4"] = "'¿Quien necesita escaleras? ¡Estamos en el espacio!'\nnuestro fundador",

	["circus_1"] = "EL CIRCO DE JOKER",
	["circus_2"] = "NUESTRO LEMA:\nENGAÑAR\nCONFUNDIR\nY\nREÍR",
	["circus_3"] = "PROS:\nHecho para bromear\nEl hechizo 'Voltear' sirve mucho\nCONTRAS:\nUsa mucho mana\nPueder arruinar amistades",
	["circus_4"] = "'Esta torre es una broma'\nnuestro fundador",

	["base_1"] = "LA BASE DE KEEPER",
	["base_2"] = "NUESTRO LEMA:\nMOVER\nROTAR\nY\nCONTROLAR",
	["base_3"] = "PROS:\nPuede restaurar escaleras\nPuede reusar escaleras\nCONTRAS:\nRequiere parkour para usarlo correctamente\nInservible sin escaleras",
	["base_4"] = "'¡Dejen de arruinar mi torre!'\nnuestro fundador",

	["chamber_1"] = "EL APOSENTO DE WICKED",
	["chamber_2"] = "NUESTRO LEMA:\nPREVENIR\nBLOQUEAR\nY\nDESTRUIR",
	["chamber_3"] = "PROS:\nPuede destruir cualquier escalera\nPuede destruir la torre completa\nCONTRAS:\nDepende mucho en escaleras",
	["chamber_4"] = "'No soy malvado, es que hay demasiadas escaleras'\nnuestro fundador",

	["backdoor_1"] = "EL BACKDOOR DE HACKER",
	["backdoor_2"] = "NUESTRO LEMA:\nHACKEAR\nGLITCHEAR\nY\nROMPER",
	["backdoor_3"] = "PROS:\nLa clase más rápida\nDifícil de seguir\nCONTRAS:\nDepende mucho en escaleras\nNo sirve en equipos",
	["backdoor_4"] = "'¿Jugar limpio? No hay cosa como tal.'\nnuestro fundador",

	--LEADERBOARD DESCRIPTIONS

	--SHARED
	["leader_pro"] = "La Torre Pro cuenta como 2 escaladas",	
	["leader_update"] = "Actualizando en: ",	
	["leader_updating"] = "Actualizando...",	
	["leader_rank"] = "RANGO",
	["leader_req"] = "ESCALADAS REQ",
	["leader_off"] = "La Torre Personalizada no cuenta con tabla de clasificaciones.",

	--OVERALL
	["over_title"] = "RANGOS UNIVERSALES",
	["over_desc"] = "Cada rango adquirido añade 1 punto Each acquired rank adds 1 point",
	["over_rank"] = "RANGO",
	["over_req"] = "PUNTOS REQ",
	["emperor_req"] = "* Requiere Chameleon O Spectre",
	["overmind_req"] = "** Requiere Chameleon Y Spectre",
	["over_prefix"] = "PREFIJO",
	["over_passes"] = "GAMEPASSES\nREQUERIDOS",
	["over_notgroup"] = "COLOR OLIVA - no esta en el grupo",
	["over_group"] = "COLOR CELESTE - esta en el grupo",
	["over_mod"] = "MODERATOR - el jugador es un moderador",
	["over_admin"] = "ADMIN - el jugador es un admin",
	["over_owner"] = "PRANK ME - creador del juego (sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLES APRESURADOS",
	["muggle_ranks"] = "RANGOS DE MUGGLE",

	["hacker_lead"] = "HACKERS ENCRYPTADOS",
	["hacker_ranks"] = "RANGOS DE HACKER RANKS",

	["wicked_lead"] = "WICKEDS VIOLENTOS",
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

	["chameleon_lead"] = "CHAMELEONS VELOCES",
	["chameleon_ranks"] = "RANGOS DE CHAMELEON",

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Bienvenido a Crazy Stairs!",
	["tut_big_2"] = "Primero aprendamos a transformarnos.",
	["tut_big_3"] = "Ahora eres un Patron, los Patrons pueden crear escaleras.",
	["tut_big_4"] = "Todos los hechizos deben ser ejecutados saltando.",
	["tut_big_5"] = "Cool, ¿Cierto? Ahora transformate en un Joker. Los Jokers pueden voltear escaleras.",
	["tut_big_6"] = "Ahora eres un Joker, usa este hechizo para voltear escaleras.",
	["tut_big_7"] = "Algunos hechizos deben ser ejecutados en escaleras.",
	["tut_big_8"] = "Now morph to Keeper. Keepers can move stairs.",
	["tut_big_9"] = "Ahora transformate en un Keeper, usa este hechizo para mover escaleras.",
	["tut_big_10"] = "Salta en la flecha que apunta hacia delante para mover las escaleras.",
	["tut_big_11"] = "Encontrarás muchas escaleras bloqueando tu camino en este juego.",
	["tut_big_12"] = "Ahora eres un Wicked, usa este hechizo destruir escaleras que bloquean el camino.",
	["tut_big_13"] = "Puedes destruir las escaleras de arriba, saltando en las de abajo.",
	["tut_big_14"] = "Antes de que empezemos, déjame enseñarte la clase premium.",
	["tut_big_15"] = "Ahora eres un Spectre, El Spectre es una clase premium genial para jugar solo.",
	["tut_big_16"] = "Tu meta - Llegar a la cima de la torre y agarrar el orbe. ¡Buena Suerte!",

	["tut_select"] = "Selecciona este hechizo.",

	["tut_small_morph"] = "Salta en el pad.",
	["tut_small_arrow"] = "Salta en la flecha.",
	["tut_small_stairs"] = "Salta en la escalera.",


}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

	["notground"] = "No puede ser usado al nivel del suelo.",
	["restore"] = "Solo puede ser usado en el piso superior.",
	["event"] = "No puede ser usado durante otro evento.",
	["drones"] = "Solo puede ser usado cuando los drones esten en el modo por defecto.",
	["oneover"] = "Solo puedes tener 1 sobrecarga de Mana a la vez.",
	["soft"] = "No puede ser usado si say escaleras en el camino.",
	["flatten"] = "Escaleras opositorias requeridas en la intersección seleccionada.",
	["wickedaltevent"] = "No puede ser usado durante otro evento o regeneración.",
	["confined"] = "Cannot move stairs out of the game arena. Requires direction choice.",
	["onesteal"] = "You can only steal one staircase at a time.",
	["softthief"] = "Requiere escaleras robadas. No puede ser usado si say escaleras en el camino.",
	["uppass"] = "Requiere escaleras robadas. Solo puede ser usado en las plataformas exteriores sobre el nivel del suelo.",
	["sidepass"] = "Requiere escaleras robadas. No puede ser usado al nivel del suelo.",
	["noescape"] = "Otra puerta debe estar en el area del juego.",
	["outdrift"] = "Solo puede ser invocado en las plataformas sobre el nivel del suelo.",
	["drifting"] = "La plataforma objetivo no debe moverse. No puede ser usado al nivel del suelo.",
	["impostor"] = "Requiere rango mínimo de Impostor para acceder.",
	["charlatan"] = "Requiere rango mínimo de Charlatan para acceder.",
	["chameleonrigevent"] = "No puede ser usado durante otro evento. Requiere rango de Usurper para acceder. Requiere multitokens sin usar.", 

}

module.executioninfo = {

	["arrows"] = "Debe ser ejecutado en cualquier flecha de una plataforma.",
	--call the orb!
	["restore"] = "Debe ser ejecutado solo en las plataformas superiores.",
	["below"] = "Debe ser ejecutado en escaleras normales o con rig.",
	["above"] = "Can be executed on any stairs or links with normal or rigged stairs above them.",
	["centre"] = "Debe ser ejecutado en una plataforma.",
	["arrowstimed"] = "Debe ser ejecutado (varias veces) en cualquier flecha de una plataforma.",
	["anywhere"] = "Puede ser ejecutado en cualquier lado.",
	["noexe"] = "Este hechizo no requiere ejecución.",
	["flip"] = "Debe ser ejecutado en escaleras normales, volteadas o con rig.",
	["flipabove"] = "Puede ser ejecutado en cualquier escalera o link on escaleras normales, volteadas o con rig encima.",
	["flipper"] = "Debe ser ejecutado (varias veces) en escaleras. Encima de ellas debe haber escaleras normales, volteadas o con rig.",
	["destroy"] = "Puede ser ejecutado en cualquier escalera no hechizada.",
	["destroyabove"] = "Puede ser ejecutado en cualquier escalera o link con escaleras encima sin hechizar.",
	["flatten"] = "Debe ser ejecutado en cualquier flecha de una plataforma con escaleras normales bloqueando el camino.",
	["bender"] = "Debe ser ejecutado (varias veces) en escaleras. Las escaleras que esten encima deben ser normales o con rig.",
	--restore!!!
	["movedown"] = "Puede ser ejecutado en cualquier flecha de una plataforma, or en cualquier escalera normal.",
	["ascension"] = "Debe ser ejecutado (varias veces) en escaleras normales o con rig (o volteadas si tienes el rango necesario).",
	["blink"] = "Puede ser ejecutado en cualquier escalera o link con cualquier escalera no hechizada encima bloqueando el camino.",
	["outer"] = "Debe ser ejecutado en las plataformas exteriores solamente. Must be executed on outer platforms only.",
	["riser"] = "Debe ser ejecutado (varias veces) en plataformas.",
	["curse"] = "Debe ser ejecutado en escaleras normales, hechizadas o con rig.",
	["curseabove"] = "Puede ser ejecutado en escaleras o link con escaleras normales, hechizadas o con rig encima.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

	--PATRON
	["summon"] = "Crear Escaleras",
	["restore"] = "Llamar al Orbe", 
	["split"] = "Partir Escaleras",
	["shrinkabove"] = "Encoger Escaleras De Arriba",
	["link"] = "Crear Link",
	["portal"] = "Crear Portal",

	["summoner"] = "Invocador",
	["patronrigevent"] = "Patron Rig",
	["patronevent"] = "Sobrecarga De Escaleras",
	["patronaltevent"] = "Evento Encogedor",
	["patronmode"] = "Drones Modo Patron",
	["patronrefill"] = "Sobrecarga de Mana (Patron)",
	["patronunion"] = "Union de Fantasma (Patron)",

	--JOKER 
	["flip"] = "Voltear Escaleras",
	["flipabove"] = "Voltear Escaleras De Arriba",
	["fake"] = "Crear Escaleras Falsas",
	["invisible"] = "Crear Escaleras Invisibles",
	["disco"] = "Escaleras Disco",
	["trap"] = "Crear Trampa",

	["flipper"] = "Volteador",
	["jokerrigevent"] = "Joker Rig",
	["jokerevent"] = "Evento Ocultador",
	["jokeraltevent"] = "Evento Volteador",
	["jokermode"] = "Drones Modo Joker",
	["jokerrefill"] = "Sobrecarga de Mana (Joker)",
	["jokerunion"] = "Union de Fantasma (Joker)",

	--WICKED
	["destroy"] = "Destruir Escaleras",
	["destroyabove"] = "Destruir Escaleras De Arriba",
	["bend"] = "Doblar Escaleras Hacia Arriba",
	["damage"] = "Dañar Escaleras De Arriba",
	["flatten"] = "Doblar Escaleras Opuestas Hacia Abajo",
	["wall"] = "Crear Pared",

	["bender"] = "Doblador",
	["wickedrigevent"] = "Wicked Rig",
	["wickedevent"] = "Evento Destructor",
	["wickedaltevent"] = "Evento de Purga",
	["wickedmode"] = "Drones Modo Wicked",
	["wickedrefill"] = "Sobrecarga de Mana (Wicked)",
	["wickedunion"] = "Union de Fantasma (Wicked)",

	--KEEPER
	["move"] = "Mover Escaleras",
	["rotate"] = "Rotar Escaleras",
	["moveup"] = "Mover Escaleras Hacia Arriba",
	["movedown"] = "Restaurar Escaleras",
	["moverandom"] = "Mover Escaleras De Arriba Aleatoriamente",
	["rig"] = "Mover Escaleras Aleatoriamente",

	["ascension"] = "Ascendedor",
	["keeperrigevent"] = "Keeper Rig",
	["keeperevent"] = "Evento Barajador",
	["keeperaltevent"] = "Restaurar Todas Las Escaleras",
	["keepermode"] = "Drones Modo Keeper",
	["keeperrefill"] = "Sobrecarga de Mana (Keeper)",
	["keeperunion"] = "Union de Fantasma (Keeper)",

	--SPECTRE
	["phantom"] = "Crear Escaleras Fantasma",
	["ghost"] = "Fantasmizar Escaleras De Arriba",
	["shadow"] = "Defantasmizar",
	["horizontal"] = "Teletransporte Horizontal",
	["random"] = "Teletransporte Aleatorio",
	["vertical"] = "Teletransporte Vertical",

	["traveller"] = "Resplandor",
	["spectrerigevent"] = "Spectre Rig",
	["spectreevent"] = "Evento Phantom",
	["spectrealtevent"] = "Evento Fantasma",
	["spectremode"] = "Drones Modo Spectre",
	["spectrerefill"] = "Sobrecarga de Mana (Spectre)",
	["spectreunion"] = "Union de Fantasma (Spectre)",

	--HACKER
	["dash"] = "Impulso Horizontal",
	["blink"] = "Destello",
	["swap"] = "Cambiar",
	["slide"] = "Escaleras Mecanicas De Bajada",
	["slideup"] = "Escaleras Mecanicas De Subida",
	["glitch"] = "Escaleras Glicheadas",

	["speedup"] = "Exploit De Velocidad",
	["hackerrigevent"] = "Hacker Rig",
	["hackerevent"] = "Evento Escaleras Mecanicas",
	["hackeraltevent"] = "Evento Escalador",
	["hackermode"] = "Drones Modo Hacker",
	["hackerrefill"] = "Sobrecarga de Mana (Hacker)",
	["hackerunion"] = "Union de Fantasma (Hacker)",

	--THIEF
	["steal"] = "Robar Escaleras",
	["stealabove"] = "Robar Escaleras De Arriba",
	["place"] = "Colocar Escaleras",
	["uppass"] = "Escaleras Espiral",
	["sidepass"] = "Crear Bypass",
	["drop"] = "Escaleras Planas",

	["heist"] = "Robo",
	["thiefrigevent"] = "Thief Rig",
	["thiefevent"] = "Evento Tierra Plana",
	["thiefaltevent"] = "Evento Bypass",
	["thiefmode"] = "Drones Modo Thief",
	["thiefrefill"] = "Sobrecarga de Mana (Thief)",
	["thiefunion"] = "Union de Fantasma (Thief)",

	--ARCHON
	["splitup"] = "Crear División Hacia Arriba",
	["splitrotate"] = "Crear División Rotada",
	["splitside"] = "Crear División Recta",
	["splitrandom"] = "Crear División Aleatoria",
	["cancelsplit"] = "Destruir División",
	["splitforward"] = "Crear División De Plataforma",

	["splitter"] = "Divisor",
	["archonrigevent"] = "Archon Rig",
	["archonevent"] = "Evento Partidor",
	["archonaltevent"] = "Evento Separador",
	["archonmode"] = "Drones Modo Archon",
	["archonrefill"] = "Sobrecarga de Mana (Archon)",
	["archonunion"] = "Union de Fantasma (Archon)",

	--DRIFTER
	["indrift"] = "Surfear",
	["outdrift"] = "Crear Desviación Hacia Afuera",
	["updrift"] = "Elevador",
	["diagdrift"] = "Crear Desviación Hacia Adentro",
	["spin"] = "Girar Escaleras",
	["driftabove"] = "Desviar Escaleras De Arriba",

	["riser"] = "Ascensor",
	["drifterrigevent"] = "Drifter Rig",
	["drifterevent"] = "Evento Rotador",
	["drifteraltevent"] = "Evento Desviador",
	["driftermode"] = "Drones Modo Drifter",
	["drifterrefill"] = "Sobrecarga de Mana (Drifter)",
	["drifterunion"] = "Union de Fantasma (Drifter)",

	--HERETIC
	["createcursed"] = "Crear Escaleras Hechizadas",
	["curse"] = "Hechizar/Dehechizar Escaleras",
	["curseabove"] = "Hechizar/Dehechizar Escaleras De Arriba",
	["curseinter"] = "Pestañeo",
	["autodown"] = "Elevar Puente Elevadizo",
	["autoup"] = "Bajar Puente Elevadizo",

	["malediction"] = "Maledictor",
	["hereticrigevent"] = "Heretic Rig",
	["hereticevent"] = "Evento Puente Elevadizo",
	["hereticaltevent"] = "Evento Hechizador",
	["hereticmode"] = "Drones Modo Heretic",
	["hereticrefill"] = "Sobrecarga de Mana (Heretic)",
	["hereticunion"] = "Union de Fantasma (Heretic)",

	--CHAMELEON
	["ditch"] = "Escaleras Cruzadas",
	["warp"] = "Atraer Escaleras",
	["chamdown"] = "Mover Escaleras Abajo",
	["chamdraw"] = "Puente Levadizo",
	["chamdrawabove"] = "Puente Levadizo De Arriba",

	["chameleonrigevent"] = "Chameleon Rig",
	["chameleonmode"] = "Drones Modo Chameleon",
	["chameleonrefill"] = "Sobrecarga de Mana (Chameleon)",
	["chameleonunion"] = "Union de Fantasma (Chameleon)",

}

--translate these too!!!
local union = "Este es una hechizo cronometrado de Unión de Fantasma. Cuando estes en este modo, puedes ir en medio de escaleras que bloqueen el camino y caminar en las escaleras fantasma, falsas y obbies. , Las escaleras especiales no tendrán efecto en ti, y no activarás rigs. Tristemente, no puedes usar hechizos en este modo."
local overload = "Este es un hechizo de Sobrecarga. Te garantizará 1 Mana cada 6 segundos por 1 minuto. (10 en total). Solo puedes tener 1 sobrecarga activada a la vez."

module.spells.descriptions = {

	--PATRON
	["summon"] = "Este hechizo the permite crear 1 escalera en la dirección elegida. Si hay alguna escalera en el camino, serán demolidas.",
	["restore"] = "Este hechizo llama al orbe en el piso superior a la plataforma elegida. Sube tu rango a Defender para reducir el costo a 2 Mana. Sube tu rango a Savior para duplicar la velocidad a la cual el orbe viene hacia ti.",
	["shrinkabove"] = "Este hechizo encoge las escaleras de arriba, dejandote pasar a lado de ellas.",
	["link"] = "Este hechizo genera un puente de energía entre 2 plataformas por 60 segundos. Solo un lado de la intersección será cubierto, para permitirte caminar a lado de él. Sube de rango a Creator para extender el tiempo a 120 segundos.",
	["split"] = "Este hechizo divide las escaleras en 2 escaleras contrarias, dejandote acceso a todas las 4 plataformas.",
	["portal"] = "Este hechizo creará un portal que teletransportará a todos los jugadores que entren en el una plataforma arriba. El portal dura 60 segundos. Sube de nivel a Protector para extender la duración a 120 segundos.",

	["summoner"] = "Este es un hechizo cronometrado. Te permite crear tantas escaleras como quieras por 1 minuto, tal y como lo harías con el hechizo Crear Escaleras. Sube de rango a Guardian para extender el tiempo a 90 segundos. Invocar este hechizo también rellenará el mana de todos los Patron que tengan al menos el rango Friend.",
	["patronrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Patron Rig. Cuando estas sean activadas incrementarán el Mana de quien lo toque por 1. Si el jugador tiene la cantidad de Mana máxima, las escaleras no se activarán. Después de activarlas, las escaleras se volverán normales.",
	["patronevent"] = "Este es un hechizo de evento. Creará escaleras en cada intersección no hechizada libre",
	["patronaltevent"] = "Este es un hechizo de evento. Encogerá todas las escaleras, una por una.",
	["patronmode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Patron. Los drones Patron, si los límites les permiten, utilizarán aleatoriamente el hechizo Encoger o Patron Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Si la cantidad de escaleras sobrepasa el limite los drones crearán y destruirán escaleras respectivamente.",
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Este hechizo voltea una escalada, de tal manera que la parte superior sera la parte inferior y viceversa. Las escaleras volteadas son inmunes a hechizos, excepto destruir, robar en rangos altos y mover en rangos altos. De cualquier manera, voltear las escaleras de vuelta si es posible.",
	["flipabove"] = "Este hechizo voltea las escaleras de arriba, de tal manera que la parte superior sera la parte inferior y viceversa. Las escaleras volteadas son inmunes a hechizos, excepto destruir, robar en rangos altos y mover en rangos altos. De cualquier manera, voltear las escaleras de vuelta si es posible.",
	["fake"] = "Este hechizo crea escaleras falsas en la dirección elegida. Si hay alguna escalera en el camino, esta será demolida. Cualquier jugador (incluyendote) que las intente subir caerá, excepto los que tengan el rango Tricksters, IT y jugadores en el modo Unión de Fantasma.",
	["invisible"] =  "Este hechizo crea escaleras invisibles. Tristemente, estas no demoleran escaleras en el camino, asi que solo las puedes colocar en una intersección vacia. Sube de rango a Jester para tener de opción de ver o no ver todas las escaleras invisibles.",
	["disco"] = "Este hechizo pone a las escaleras en modo disco. Cualquier jugador (incluyendote) parará y bailará en ellas durante 5 segundos (usalmente el doble). Los rangos Comic y superiores son inmunes a las escaleras disco.",
	["trap"] = "Este hechizo transforma una plataforma en una trampa por 60 segundos. Cualquier jugador (incluyendote) que camine en la trampa caerá a la plataforma inferior. Sube de rango a Jokester para tener la opción de ver plataformas trampa.",

	["flipper"] = "Este es un hechizo cronometrado. Te permite voltear cuantas escaleras quieras por 1 minuto. Si se encuentra alguna escalera arriba también será volteada, si no, la de abajo. Este hechizo también recarga el Mana de todos los Jokers que tengan al menos el rango Fool.",
	["jokerrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Joker Rig. Cuando estas sean activadas se voltearán automáticamente.",
	["jokerevent"] = "Este es un hechizo de evento. Hará todas las escaleras invisibles. Los mensajes que usualmente se muestran cuando se encuentra alguna no se mostrarán para evitar spam.",
	["jokeraltevent"] = "Este es un hechizo de evento. Volteará todas las escaleras normales.",
	["jokermode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Joker. Los drones Joker, si los límites les permiten, invocarán aleatoriamente el hechizo Invisible y Volteador en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Este hechizo destruye escaleras. A diferencia de otros hechizos, este funciona en cualquier tipo de escaleras. Sube de rango a Vile para usar este hechizo gratis. Sube de rango a Vicious para obtener 1 Mana cada vez que destruyes escaleras especiales. Sube de rango a Annihilator para destruir escaleras hechizadas.",
	["destroyabove"] = "Este hechizo destruye las escaleras de arriba. A diferencia de otros hechizos, este funciona en cualquier tipo de escaleras. Sube de rango a Vicious para obtener 1 Mana cada vez que destruyes escaleras especiales. Sube de rango a Annihilator para destruir escaleras hechizadas.",
	["bend"] = "Este hechizo dobla escaleras hacia arriba. Utilízalo para obtener acceso a plataformas superiores.",
	["damage"] = "Este hechizo transforma las escaleras de arriba en un obby, removiendo la mayoría de los peldaños. Antes de probarlos, recuerda sobre el cooldown de salto. Sube de rango a Destroyer para caminar en obbies tal y como le harías en escaleras normales.",
	["flatten"] = "Este hechizo dobla escaleras hacia abajo. Utilízalo para obtener acceso a la plataforma opuesta.",
	["wall"] = "Este hechizo crea uan pared de energía + un link a la plataforma opuesta por 60 segundos. Solo Wickeds pueden ir en medio de la pared y del link. La pared puede ser forzada por un teleporte de Spectre, un impulso de	Hacker or una Unión de Fantasma.",

	["bender"] = "Este es un hechizo cronometrado. Te permite doblar escaleras hacia arriba tantas veces quieras por 1 minuto. Ambas las escaleras en las que estes y las de arriba serán dobladas a la vez si los requisitos son cumplidos. Sube de rango a Nemesis para incrementar el limite de tiempo a 90 segundos. Este hechizo también rellenará el Mana de todos los Wickeds que tengan al menos el rango Mean.",
	["wickedrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Wicked Rig. Cuando estas sean activadas, se destruirán automáticamente. Sube de rango a Devil para caminar en Wicked Rigs sin activarlas.",
	["wickedevent"] = "Este es un hechizo de evento. Destruirá todas las escaleras normales en el juego. La regeneración no será activada.",
	["wickedaltevent"] = "Este es un hechizo de evento. Destruirá todas las escaleras en el juego. Sin excepciones. La regeneración será activada.",
	["wickedmode"] =  "Este es un hechizo de dron. Cambiará el modo de todos los drones a Wicked. Los drones Wicked, si los límites les permiten, invocarán aleatoriamente los hechizos dobladores o Wicked Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Este hechizo moverá las escaleras en una dirección horizontal, destruyendo cualquier escalera en el camino. Después de invocarlo, una ventana aparecerá, pidiendo la dirección. Las escaleras no pueden ser movidas fuera del area de juego. Sube de rango a Controller para mover escaleras volteadas.",
	["rotate"] = "Este hechizo rotará las escaleras en una dirección horizontal, destruyendo cualquier escalera en el camino. Después de invocarlo, una ventana aparecerá, pidiendo la dirección y el pivote. Las escaleras no pueden ser rotadas fuera del area de juego. Sube de rango a Controller para mover escaleras volteadas.",
	["moveup"] = "Este hechizo moverá las escaleras hacia arriba, destruyendo cualquier escalera en el camino. Las escaleras no pueden ser movidas sobre el nivel superior. Sube de rango a Controller para mover escaleras volteadas.",
	["movedown"] = "Este hechizo restaurará cualquier escalera especial. Si las escaleras ya son normales, este hechizo no se ejecutará. Sube de rango a Captain para usar este hechizo gratis. Sube de rango a Admiral para poder restaurar Escaleras Hechizadas e Intersecciones Hechizadas.",
	["moverandom"] = "Este hechizo moverá o rotará las escaleras de arriba en una dirección aleatoria, destruyendo cualquier escalera en el camino. Sube de rango a Operator para evitar que las escaleras vayan hacia abajo. Sube de rango a Controller para mover escaleras volteadas.",
	["rig"] = "Este hechizo moverá o rotará las escaleras en una dirección aleatoria, destruyendo cualquier escalera en el camino. Sube de rango a Operator para evitar que las escaleras vayan hacia abajo. Sube de rango a Controller para mover escaleras volteadas.",

	["ascension"] = "Este es un hechizo cronometrado. Te permite mover escaleras hacia arriba tantas veces quieras por 1 minuto. Sube de rango a Commander para incrementar el límite de tiempo a 90 segundos. Este hechizo también rellenará el Mana de todos los Keepers que tengan al menos el rango Handler.",
	["keeperrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Keeper Rig. Cuando estas sean activadas, se moverán o rotarán en una dirección aleatoria. Sube de rango a Operator para que los Keeper Rigs que actives nunca vayan hacia abajo. Sube de rango a Sentinel para caminar en Keeper Rigs sin activarlos.",
	["keeperevent"] = "Este es un hechizo de evento. Antes de invocarlo deberás escoger el modo suave o forzado. En modo suave, este hechizo moverá o rotará todas las escaleras en una dirección aleatoria sin destruir nada en el proceso. En modo forzado, este hechizo moverá o rotará todas las escaleras en una dirección aleatoria destruyendo cualquier escalera en el camino.",
	["keeperaltevent"] = "Este es un hechizo de evento. Restaurará todas las escaleras en el juego, incluyendo a las hechizadas. A diferencia de la Purga las intersecciones hechizadas no serán removidas.",
	["keepermode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Keeper. Los drones Keeper, si los límites les permiten, invocarán aleatoriamente los hechizos Movimiento Forzado, Girar o Keeper Rig on escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Este hechizo creará escaleras \"fantasma\" en la dirección escogida. Si hay escaleras en el camino, estas serán demolidas. Las escaleras fantasmas se desvanecerán después de invocarlas, desapareciendo completamente.",
	["ghost"] = "Este hechizo te permite fantasmizar las escaleras de arriba. Puedes caminar en medio de escaleras fantasma, pero no puedes caminar en ellas a menos que tengas el rango Aether.",
	["shadow"] = "Este hechizo te permite defantasmizar escaleras, devolviendolas a la normalidad. Sube de rango a Phantom para usar este hechizo gratis.",
	["horizontal"] = "Este hechizo te teletransportará horizontalmente en la dirección elegida. Puedes teletransportarte incluso si hay escaleras en el camino.",
	["random"] = "Este hechizo te teletransportará a una plataforma aleatoria en el mismo nivel.",
	["vertical"] = "Este hechizo te teletransportará a la plataforma de arriba.",

	["traveller"] = "Este es un hechizo cronometrado. Te permite usar tantas veces quieras el hechizo de teletransportación horizontal por 1 minuto. Sube de rango a Shadow para incrementar el limite a 90 segundos. Este hechizo también rellenará el Mana de todos los Spectres que tengan al menos el rango Shade.",
	["spectrerigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Spectre Rig. Cuando estas sean activadas, tendrán un chance del 50% de volverse fantasma. Sube de rango a Vision para poder caminar en Spectre Rigs sin activarlas.",
	["spectreevent"] = "Este es un hechizo de evento. Antes de invocarlo deberás escoger el modo suave o forzado. En modo suave, este hechizo moverá o rotará todas las escaleras normales en una dirección aleatoria sin destruir nada en el proceso. En modo forzado, este hechizo moverá o rotará todas las escaleras normales en una dirección aleatoria destruyendo cualquier escalera en el camino.",
	["spectrealtevent"] = "Este es un hechizo de evento. Convertirá todas las escaleras en escaleras fantasma. Sube de rango a Aether para caminar en escaleras fantasma. La Unión de Fantasma también puede ser usada para caminar en escaleras fantasma.",
	["spectremode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Spectre. Spectre Drones, si los límites les permiten, invocarán aleatoriamente los hechizos Movimiento Fantasma Suave, Girar o Spectre Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Este hechizo te teletransportará en la dirección escogida. A diferencia del hechizo de Spectre, no puedes ir si hay escaleras en el camino. Sube de rango a Cracker para que este hechizo vaya un 50% mas rápido.",
	["blink"] = "Este hechizo te teletransportará alrededor de las escaleras de arriba. Las escaleras de arriba deben estar en la dirección opuesta de las escaleras de abajo para que este hechizo funcione. Sube de rango a Exploiter para que este hechizo vaya un 50% mas rápido.",
	["swap"] = "Este hechizo te teletransportará al punto donde tu fantasma esté. A diferencia de otros hechizos básicos, este puede ser usado en cualquier lado.",
	["slide"] = "Este hechizo convertirá las escaleras en escaleras mecánicas con dirección hacia abajo. El elevador solo funcionará cuando hayan jugadores en él. Sube de rango a Scripter para pausar cualquier escalera mecánica que vaya hacia abajo automáticamente.",
	["slideup"] = "Este hechizo convertirá las escaleras en escaleras mecánicas con dirección hacia arriba. El elevador solo funcionará cuando hayan jugadores en él.",
	["glitch"] = "Este hechizo glitcheará las escaleras, teletransportandote a ti y a estas a un lugar diferente en el mismo nivel. Sube de rango a Zero, para teletransportar las escaleras a lado del orbe si estás en el nivel superior.",

	["speedup"] = "Este es un hechizo cronometrado. No requiere ejecución. Incrementará tu velocidad un 50% por 1 minuto. No puedes usar otros hechizos en este modo. Este hechizo también rellenará el Mana de todos los Hackers que tengan al menos el rango Geek.",
	["hackerrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Hacker Rig. Cuando estas sean activadas, teletransportarán al jugador y a las escaleras a un lugar diferente en el mismo nivel. Solo un jugador será teletransportado. Sube de rango a Reaper para caminar en Hacker Rigs sin activarlas.",
	["hackerevent"] = "Este es un hechizo de evento. Transformará todas las escaleras normales, una por una, en escaleras mecánicas que vayan hacia arriba o hacia abajo.",
	["hackeraltevent"] = "Este es un hechizo de evento. Transformará todas las escaleras normales, una por una, en escaleras mecánicas que vayan hacia arriba.",
	["hackermode"] =  "Este es un hechizo de dron. Cambiará el modo de todos los drones a Hacker. Los drones Hacker, si los límites les permiten, invocarán aleatoriamente el hechizo Escalera Mecánica o Hacker Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Este hechizo te permite robar una escalera normal o con rig. Este hechizo o el de robar escaleras de arriba son requeridos para otros hechizos de Thief básicos. Sube de rango a Hijacker para poder robar cualquier tipo de escaleras. Sube de rango a Outlaw para poder robar 2 escaleras a la vez.",
	["stealabove"] = "Este hechizo te permite robar una escalera normal o con rig que esté encima de ti. Este hechizo o el de robar escaleras de abajo son requeridos para otros hechizos de Thief básicos. Sube de rango a Hijacker para poder robar cualquier tipo de escaleras. Sube de rango a Outlaw para poder robar 2 escaleras a la vez.",
	["place"] = "Este hechizo te permite colocar las escaleras que hayas robado en la dirección escogida. Este hechizo no demole escaleras en el camino como el hechizo de Patron, asi que tienes que colocarlas en una intersección vacía.",
	["uppass"] = "Este hechizo te permite crear una escalera espiral con escaleras robadas. Solo puede ser usada en plataformas exteriores y durará 1 minuto. Las escaleras espiral son inmunes a todos los hechizos. Sube de rango a Bandit para que la escalera dure 2 minutos.",
	["sidepass"] = "Este hechizo te permite crear un bypass doblado con escaleras robadas. Será creado en la dirección escogida y durará 1 minuto. El bypass es inmune a todos los hechizos. Sube de rango a Robber para que el bypass dure 2 minutos.",
	["drop"] = "Este hechizo te permite crear escaleras planas gratis. De cualquier forma, necesitarás una intersección vacia.",

	["heist"] = "Este es un hechizo cronometrado. Te permite colocar escaleras cuantas veces quieras. A diferencia de el hechizo regular para colocar, este puede ser usado si hay escaleras en el camino, ya que las escaleras serán robadas automaticamente en este modo. Este hechizo también rellenará el Mana de todos los Thieves que tengan al menos el rango Crook.",
	["thiefrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Thief Rig. Cuando estas sean activadas, robarán 1 Mana del jugador que las activen, el cual será añadido a tu almacenamiento. No recibirás Mana si tu almacenamiento está lleno o cambias de clase.",
	["thiefevent"] = "Este es un hechizo de evento. Transformará todas las escaleras normales, una por una, en escaleras planas.",
	["thiefaltevent"] = "Este es un hechizo de evento. Creará bypasses en cada intersección norte y sur. Si la intersección esta hechizada, el bypass no será creado.",
	["thiefmode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Thief. Los drones Thief, si los límites les permiten, invocarán aleatoriamente los hechizos Robar/Colocar y Thief Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitup"] = "Este hechizo conectará las escaleras en las que estes con las de arriba con un portal. Si no hay escaleras, estas serán creadas. Sube de rango a Prodigy para anual una conexión ya existente. Sube de rango a Sage para ignorar conexiones que vayan hacia abajo.",
	["splitrotate"] = "Este hechizo conectará las escaleras en las que estes a otras en una dirección rotada de tu elección con un portal. Si no hay escaleras, estas serán creadas. Sube de rango a Prodigy para anual una conexión ya existente. Sube de rango a Illuminati para poder caminar en medio de los portales.",
	["splitside"] = "Este hechizo conectará las escaleras en las que estes a otras en una dirección horizontal de tu elección con un portal. Si no hay escaleras, estas serán creadas. Sube de rango a Prodigy para anual una conexión ya existente. Sube de rango a Illuminati para poder caminar en medio de los portales.",
	["splitrandom"] = "Este hechizo conectará las escaleras en las que estes a cualquier intersección valida en el mismo piso. Si no hay escaleras, estas serán creadas. Sube de rango a Illuminati para poder caminar en medio de los portales.",
	["cancelsplit"] = "Este hechizo descartará cualquier portal en una escalera. Sube de rango a Disciple para poder remover divisiones de plataformas. Sube de rango a Scholar para poder usar este hechizo gratis.",
	["splitforward"] = "Este hechizo conectará 2 plataformas en una dirección horizontal de tu elección con un portal. Sube de rango a Disciple para poder remover divisiones de plataformas. Las escaleras que estén en medio no bloquearán la conexión. Sube de rango a Illuminati para poder caminar en medio de los portales.",

	["splitter"] = "Este es un hechizo cronometrado. Te permite crear cuantas divisones de plataformas quieras por 1 minuto. Sube de rango a Savant para extender el límite de tiempo a 90 segundos. Este hechizo también rellenará el Mana de todos los Archon que tengan al menos el rango Adept.",
	["archonrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Archon Rig. Cuando estas sean activadas, teletransportarán al jugador en la dirección en la que esté caminando, cruzando en medio de las escaleras en el camino. Después de ser activadas, las escaleras se volverán normales.",
	["archonevent"] = "Este es un hechizo de evento. Creará divisiones aleatorias en todas las escaleras normales.",
	["archonaltevent"] = "Este es un hechizo de evento. Creará divisiones que vayan hacia arriba en todas las escaleras normales.",
	["archonmode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Archon. Los drones Archon, si los límites les permiten, invocarán aleatoriamente los hechizos División Aleatoria y Archon Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["outdrift"] = "Este hechizo hará que la plataforma circule alrededor de toda el area de juego en el mismo nivel. Solo puede ser usado en plataformas exteriores. Sube de rango a Strider para obtener Mana de bonificación mientras estés en el elevador.",
	["indrift"] = "Este hechizo creará una tabla de surf temporal, moviendote a la plataforma en la dirección de tu elección. Sube de rango a Strider para obtener Mana de bonificación mientras estés en la tabla.",
	["updrift"] = "Este hechizo creará un elevador usando la plataforma en la que estés y la de arriba. Las plataformas serán restauradas despupes de un periodo de tiempo. Sube de rango a Vagabond para que el elevador sea más rápido. Sube de rango a Traveller para impulsar el elevador a un segundo nivel. Sube de rango a Strider para impulsar el elevador a un tercer nivel.",
	["diagdrift"] = "Este hechizo creará un elevador usando la plaforma en la que estés y cualquier otra en una dirección diagonal. Las plataformas serán restuaradas después de un periodo de tiempo.",
	["spin"] = "Este hechizo rotará las escaleras de abajo 180 grados. Sube de rango a Nomad para poder girar escaleras desviadas.",
	["driftabove"] = "Este hechizo desviará las escaleras de arriba, para que puedas caminar debajo de ellas y subirlas, si deseas.",

	["riser"] = "Este es un hechizo cronometrado. Te permite crear cuantos elevadores verticales quieras por 1 minuto. También puedes impulsar elevadores con este hechizo si tienes el rango necesario. Sube de rango a Wayfarer para extender el tiempo a 90 segundos. Este hechizo también rellenará el Mana de todos los Drifters que tengan al menos el rango Wanderer.",
	["drifterrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Drifter Rig. Cuando estas sean activadas, rotarán. Sube de rango a Voyager para ganar inmunidad a este rig.",
	["drifterevent"] = "Este es un hechizo de evento. Rotará todas las escaleras normales aleatoriamente.",
	["drifteraltevent"] =  "Este es un hechizo de evento. Desviará todas las escaleras normales, permitiendote pasar debajo de ellas.",
	["driftermode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Drifter. Los drones Drifter, si los límites les permiten, invocarán aleatoriamente los hechizos Desviar y Drifter Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Este hechizo creará escaleras hechizadas en la dirección escogida. Cualquier escalera en el camino será demolida. Sube de rango a Banished para demoler escaleras hechizadas.",
	["curse"] = "Este hechizo deshechizará o hechizará las escaleras en las que estés, dependiendo si están hechizadas o no.",
	["curseabove"] = "Este hechizo deshechizará o hechizará las escaleras de arriba, dependiendo si están hechizadas o no. Las escaleras se elevarán por un momento, permitiéndote pasar.",
	["curseinter"] = "Este hechizo te permitirá saltar a la plataforma opuesta, si no hay escaleras en el camino. La intersección será hechizada después de este hechizo, de tal manera que los otros jugadores ya no la podrán usar. Sube de rango a Infidel para poder usar este hechizo para remover una intersección hechizada.",
	["autodown"] = "Usa este hechizo para crear y levantar una sección espejo especial de la parte de abajo de una escalera. Solo las uniones de fantasmas y Heretics pueden caminar en esa sección.",
	["autoup"] = "Usa este hechizo para crear una sección espejo especial de la parte de arriba de una escalera. Los peldaños regulares serán bajados. Solo las uniones de fantasmas y Heretics pueden caminar en esa sección.",

	["malediction"] = "Este es un hechizo cronometrado. Te permite crear cuantas escaleras hechizadas quieras por 1 minuto. Sube de rango a Accursed para extender el limite de tiempo a 90 segundos. Este hechizo también rellenará el Mana de todos los Heretic que tengan al menos el rango Stranger.",
	["hereticrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Heretic Rig. Cuando estas sean activadas, poseerán al jugador que las activen. Deberán encontrar Mana para liberarse. Los jugadores poseídos no pueden usar hechizos. Sube de rango a Unbeliever para ganar inmunidad a este rig. Sube de rango a Exiled para obtener 1 Mana cada vez que un jugador sea poseido.",
	["hereticevent"] = "Este es un hechizo de evento. Transformará todas las escaleras en puentes levadizos superiores o inferiores.",
	["hereticaltevent"] = "Este es un hechizo de evento. Hechizará todas las escaleras normales.",
	["hereticmode"] = "Este es un hechizo de dron. Cambiará el modo de todos los drones a Heretic. Los drones Heretic, si los límites les permiten, invocarán aleatoriamente los hechizos Puente Levadizo o Heretic Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--CHAMELEON
	["ditch"] = "Este era antes un hechizo de Thief, antes de que fuera rechazado. Transformará escaleras normales o con Rig en una escalera cruzada.",
	["warp"] = "Este era antes un hechizo de Wicked. Atraerá escaleras normales o con rig de vuelta hacia la plataforma.",
	["chameleonrigevent"] = "Este es un hechizo rig. Transformará a todas las escaleras normales, una por una, en escaleras con Chameleon Rig. Cuando estas sean activadas, ejecutará un efecto aleatorio proveniente de los otros rigs.",
	["chamdown"] = "Este era antes un hechizo de Keeper, antes de que fuera rechazado. Moverá cualquier escalera normal o con rig hacia abajo. Si tienes el rango Captain en Keeper, también puedes mover escaleras volteadas.",
	["chamdraw"] = "Este era antes un hechizo de Heretic, antes de que fuera rechazado. Combertirá las escaleras en un puente elevadizo, haciendo el decenso imposible a menos que otro jugador active el puente por abajo.",
	["chamdrawabove"] = "Este era antes un hechizo de Heretic, antes de que fuera rechazado. Combertirá las escaleras de arriba en un puente elevadizo, permitiéndote pasar. Subir es imposible al menos que otro jugador active el puente por arriba. El viejo rango Unbeliever ya no está activo y la activación automática por abajo ya no es posible.",
	["chameleonmode"] =  "Este es un hechizo de dron. Cambiará el modo de todos los drones a Chameleon. Los drones Chameleon, si los límites les permiten, invocarán aleatoriamente un hechizo de actualquier otro modo o Mystery Rig en escaleras normales. Las escaleras especiales, en cambio, serán restauradas. Fuera de los limites, los drones crearán y destruirán escaleras respectivamente.",
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
	"0 Mana + escaleras",
	"1 Mana + escaleras",
	"2 Mana + escaleras",
	"3 Mana + escaleras", 
	"", 
	"10 Mana" 
}

module.spells.tokencosts = {

	"1 Token",
	"2 Tokens",
	"3 Tokens",

	["chameleonrigevent"] = "2 Multi Tokens",
	["unlock"] = "(desbloquear por 3 tokens)",
}

module.serverfeedback = {

	["scancel"] = "Cancela el hechizo para cambiar de clase",
	["morph"] = "Salta aqui para comvertirte en %s",
	["raceclosed"] = "La carrera esta cerrada.",
	["stay"] = "Quedate dentro del anillo para ser parte de la carrera!",
	["falsestart"] = "Salida en Falso",
	["secret"] = "Secreto encontrado!!",
	["traveller"] = "Sube de rango a Traveller para impulsar elevadores.",
	["noboost"] = "No se puede impulsar, no hay más plataformas arriba.",
	["platformlocked"] = "La plataforma objetivo esta bloqueada.",
	["strider"] = "Sube de rango a Strider para impulsar elevadores por el doble.",
	["noupplatform"] = "No se puede impulsar, no hay más plataformas arriba.",
	["boosted"] = "¡Elevador impulsado!",
	["wrongdirection"] = "No puedes usar este hechizo en esa dirección.",
	["cursed"] = "¡Hay escaleras hechizadas en el camino!",
	["banished"] = "Sube de rango a Banished, para demoler escaleras hechizadas en el camino.",
	["blocked"] = "Esta intersección esta hechizada.",
	["infidel"] = "Sube de rango a Infidel para deshechizar intersecciones.",
	["admiral"] = "Sube de rango a Admiral para deshechizar intersecciones.",
	["nostairs"] = "No hay escaleras aqui.",
	["noground"] = "Este hechizo no puede ser usado al nivel del suelo.",
	["oddonly"] = "Este hechizo no puede ser usado en este nivel.",
	["reveal"] = "¡Haz revelado escaleras invisibles!",
	["keeperrig"] = "¡Las escaleras se están moviendo!",
	["hackerrig"] = "¡Las escaleras se han glicheado!",
	["jokerrig"] = "¡Las escaleras se han volteado!",
	["wickedrig"] = "¡Las escaleras están colapsando!",
	["spectrerig"] = "¡Las escaleras se han fantasmizado!",
	["notspectrerig"] = "¡Las escaleras NO se han fantasmizado!",
	["patronrig"] = "¡Haz recibido 1 Mana, cortesía de %s!",
	["notpatronrig"] = "¡Haz recibido 1 Mana, cortesía de (el jugador se fue)!",
	["thiefrig"] = "¡%s te ha robado 1 Mana!",
	["mythiefrig"] = "Haz robado 1 mana de %s",
	["notthiefrig"] = "%s ya no es un thief - no mana robado.",
	["leftthiefrig"] = "El thief ha salido del juego - no mana robado.",
	["hereticrig"] = "¡Haz sido poseído!",
	["archonrig"] = "¡Teletransporte de fase!",
	["drifterrig"] = "¡Las escaleras están girando!",
	["noabove"] = "No escaleras encontradas directamente arriba.",
	["noblink"] = "Solo puedes usar destello en medio de escaleras que esten en el camino.",
	["noblink2"] = "No puedes usar destello en puentes y escaleras dobladas.",
	["linklimit"] = "Solo los \"hechizos de arriba\" pueden ser usados en links.",
	["new20pass"] = "¡ Límite de mana incrementado!",
	["newchampass"] = "¡Ahora puedes cambiar tu clase mientras subes la torre!",
	["newspectrepass"] = "Ahora puedes transformarte en un SPECTRE!",
	["charreset"] = "Eliminado por resetear tu personaje.",
	["chamtutorial"] = "¡No puedes usar CHAMELEON en el tutorial!",
	["champossessed"] = "No puedes usar CHAMELEON cuando estas poseído.",
	["chamspell"] = "Por favor primero cancela el hechizo o ejecútalo.",
	["morphpossessed"] = "No puedes cambiar tu clase mientras estes poseído.",
	["nocode"] = "Por favor ingresa un código primero.",
	["invalid"] = "Este código es invalido.",
	["old"] = "Este código ya no está activo.",
	["accepted"] = "Código aceptado.",
	["tryspectre"] = "¡Spectre desbloqueado por 10 minutos! No te vayas del servidor.",
	["endspectre"] = "¡El demo de Spectre terminará en 1 minuto!",
	["trycham"] = "¡Chameleon desbloqueado por 10 minutos! No te vayas del servidor.",
	["endcham"] = "¡El demo de Chameleon terminará en 1 minuto!",
	["trymana"] = "¡Almacenamiento incrementado por 10 minutos! No te vayas del servidor.",
	["endmana"] = "¡El demo de almacenamiento incrementado terminará en 1 minuto!",
	["used"] = "El código ya ha sido utilizado.",
	["tooshort"] = "Tu código ha sido muy corto y no ha sido enviadoY.",
	["sent"] = "Tu mensaje ha sido enviado, gracias.",
	["noreshuffle"] = "¡Escoje el modo barajar primero!",
	["oneoverload"] = "No puedes tener multiples Sobrecargas de Mana activas.",
	["overstarted"] = "Haz activado Sobrecarga de Mana!",
	["overended"] = "Sobrecarga de Mana finalizada.",
	["2minshare"] = "Al menos 2 mana requerido...",
	["noshare"] = "No hay jugadores cerca para recibir mana...",
	["noinf"] = "¡No puedes compartir mana infinito!",
	["toomuch"] = "¡%s tiene la cantidad máxima de Mana!",
	["shared"] = "Mana compartido con %s!",
	["received"] = "%s ha compartido un poco de Mana contigo!",
	["muted"] = "% ha sido muteado.",
	["unmuted"] =  "%s ha sido unmuteado.",
	["kicked"] = "¡%s ha sido expulsado!",
	["banned"] = "¡%s ha sido baneado!",
	["mekicked"] = "%s te ha expulsado de su servidor.",
	["mebanned"] = "%s te ha baneado de su servidor.",
	["permban"] = "%s te ha baneado del juego.",
	["kick"] = "%s te ha expulsado del juego.",
	["48ban"] = "%s te ha baneado del juego por 48 horas.",
	["exiled"] = "¡Has sido baneado de este servidor! ESTE NO ES UN BAN DEL JUEGP",
	["permbanned"] = "Has sido baneado de este juego.",
	["timeout"] = "Tu ban finalizará en: %02i horas y %02i minutos.",
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
	["speed"] = "Velocidad de los dornes cambiada",
	["spin"] = "Duración de invocación de los drones pequeños cambiada",
	["max"] = "Cantidad de objetivo da escaleras máxima cambiada",
	["min"] = "Cantidad de objetivo da escaleras mínima cambiada",
	["curse"] = "Chance de hechizar escaleras de los drones cambiada",
	["block"] = "Chance de hechizar intersecciones de los drones cambiada",
	["lock"] = "No puedes usar hechizos ahora",
	["ultwait"] = "Otro hechizo ultimatum esta en progreso. Por favor espera.",
	["regwait"] = "No puedes invocar eventos o rigs mientras la torre se regenera.",
	["coolwait"] = "No puedes invocar eventos o rigs ahora, por favor espera",
	["notfound"] = "Escaleras no encontradas.",
	["normalrig"] = "Este hechizo solo funciona en escaleras normales y con rig.",
	["locked"] = "Estas escaleras estan bloqueadas.",
	["nocursedblink"] = "No puedes usar destello alrededor de las escaleras hechizadas.",
	["isblocked"] = "Esta intersección ya esta hechizada.",
	["cantblock"] = "No se puede hechizar, hay escaleras aqui (pueden ser invisibles)",
	["cantblock2"] = "No se puede hechizar, hay escaleras en el camino (pueden ser invisibles)",
	["noway"] = "Hay escaleras aqui (pueden ser invisibles)",
	["noway2"] = "Hay escaleras en el camino (pueden ser invisibles)",
	["noplatform"] = "Ninguna plataforma hallada en esa dirección.",
	["nopass"] = "Un pase solo puede ser creado en las plataformas exteriores.",
	["pass"] = "Ya hay un Pase aqui.",
	["link"] = "Ya hay un Link aqui.",
	["outdrift"] = "La desviación hacia afuera solo puede ser usada en plataformas exteriores.",
	["cantgate"] = "Esta dirección esta bloqueada.",
	["wall"] = "Ya hay una paren aqui.",
	["nocurse"] = "Solo las escaleras normales, hechizadas o con rig pueden ser hechizadas/deshechizadas.",
	["nogate"] = "Estas escaleras no están cerradas.",
	["noghost"] = "Solo las escaleras fantasma pueden ser de-fantasmizadas.",
	["noflip"] = "Sol las escaleras normales, volteadas o con rig pueden ser volteadas.",
	["prodigy"] = "Sube de rango a Prodigy, para invalidar portales.",
	["wrongsplit"] = "Otro portal debe estar en el area de juego.",
	["blockedplit"] = "No se puede crear división, la intersección objetivo esta hechizada.",
	["cursedtarget"] = "Hay escaleras hechizadas en esa destinación",
	["lockedsplit"] = "No se puede crear división todavía, otras escaleras estan bloqueadas.",
	["failedgate"] = "La creación de la división hay fallado.",
	["nomove"] = "Solo las escaleras normales, volteadas o con rig pueden ser movidas.",
	["controller"] = "Sube de rango a Controller, para mover escaleras volteadas.",
	["wrongmove"] = "Las escaleras no pueden ser movidas fuera del area de juego.",
	["blockedmove"] = "No se puede mover las escaleras, intersección hechizada.",
	["lockedmove"] = "No se puede mover las escaleras, las escaleras que bloquean el camino estan bloqueadas.",
	["normal"] = "Estas escaleras son normales.",
	["nomad"] = "Sube de rango a to Nomad to spin drifted stairs.",
	["hijacker"] = "Sube de rango a to Hijacker to steal any uncursed stairs.",
	["nocursesteal"] = "Las escaleras hechizadas no pueden ser robadas.",
	["lockedinter"] = "Esta intersección está bloqueada.",
	["possessed"] = "No puedes usar hechizos mentras estes poseído.",
	["lockedspell"] = "Este hechizo está bloqueado!",
	["unlocked"] = "Hechizo desbloqueado!",
	["nomana"] = "No tienes suficiente Mana!",
	["spelllock"] = "No puedes usar hechizos ahora",
	["notokens"] = "No tienes suficientes tokens!",
	["nothere"] = "No puedes usar este hechizo en el tutorial.",
	["onlyracers"] = "Solo los corredores pueden usar hechizos.",
	["cancelfirst"] = "Necesitas cancelar tu hechizo actual primero...",
	["stashfull"] = "Tu reserva de escaleras esta llena.",
	["stashempty"] = "Necesitas robar escaleras antes de usar este hechizo.",
	["notdefault"] = "Los drones deben estar en modo por defecto primero. Por favor espera.",
	["cooldownwait"] = "No puedes invocar rigs y eventos ahora, por favor espera %d segundos.",
	["nospellsnow"] = "No puedes usar hechizos en este momento.",

	["unknown"] = "Problema desconocido.",

}

module.serverbroadcast = {
	["pranked"] = "%s ha hecho una broma a %s!",
	["found"] = "%s ha encontrado las escaleras invisibles de %s's!",
	["disco"] = "%s esta disfrutando la música disco de %s's.",
	["obby"] = "%s esta probando el obby de %s's.",
	["default"] = "Los drones estan de vuelta en el modo por defecto.",
	["regen"] = "La torre se está regenerando.",
	["done"] = "Regeneración completa.",
	["union"] = "%s se ha fusionado con su fantasma!",
	["eliminated"] = "%s ha sido eliminado.",
	["won"] = "%s ha ganado la carrera!",
	["falsestart"] = "Salida en Falso",
	["countdown"] = "Carrera en %d segundos!",
	["2min"] = "Mínimo 2 jugadores requeridos para la carrera clásica!",
	["noplayers"] = "No hay corredores, el modo infinito no empezará!",
	["nojoin"] = "La carrera esta cerrada - no más jugadores nuevos se pueden unir.",
	["allfalse"] = "Todos los jugadores an Salido en Falso!",
	["safety"] = "Los niveles de la torre han cambiado. La carrera no empezará.",
	["leader"] = "%s ha tomado la delantera!",
	["toolate"] = "Nadie ha alcanzado la meta a tiempo!",

}

module.localfeedback = {

	["cancel"] = "Cancela el otro hechizo primero!",
	["nomana"] = "No tienes mana suficiente!",
	["notokens"] = "No tienes tokens suficiente!",
	["unlocked"] = "Hechizo desbloqueado!",
	["maxmana"] = "Tu mana ya está al máximo!",
	["nopurchase"] = "No necesitas comprar Mana en el tutorial!",
	["hascham"] = "Ya tienes el gamepass de Chameleon!",
	["hasspectre"] = "Ya tienes el gamepass de Spectre!",
	["hasmana"] = "Ya tienes el gamepass de Almacenamiento Mayor!",
	["nomuggle"] = "Creíste que había hechizos secretos para Muggle pero no habían.",
	["nocham"] = "Creíste que había hechizos ultimatum secretos para Chameleon pero no habían.",
	["nonone"] = "Creíste que había hechizos ultimatum secretos para None pero no habían.",
	["nounlocks"] = "Desbloquea todos los hechizos básicos para acceder a los hechizos ultimatum!",
	["onetoken"] = "Has recibido un Token Especial de %s!",
	["moretokens"] = "Has recibido unos Tokens Especiales de %s!",
	["music"] = "Música cambiada correctamente.",
	["nomusic"] = "Error al cargar música.",
	--this is teleport to other tower
	["noteleport"] = "Teleporte fallido!", 
	["norefresh"] = "No puedes actualizar todavía.",

}

module.switchon = {

	["JOKER"] = "Ya no rebelarás escaleras invisibles.",
	["WICKED"] = "Ya no activarás Wicked Rigs.",
	["KEEPER"] = "Ya no activarás Keeper Rigs.",
	["SPECTRE"] = "Ya no activarás Spectre Rigs.",
	["HACKER"] = "Ya no activarás Hacker Rigs.",
	["ARCHON"] = "Solo las divisiones que van hacía arriba te teletransportarán.",
	["DRIFTER"] = "Ya no activarás Drifter Rigs.",

}

module.switchoff = {

	["JOKER"] = "Ahora rebelarás escaleras invisibles.",
	["WICKED"] = "Ahora activarás Wicked Rigs.",
	["KEEPER"] = "Ahora activarás Keeper Rigs.",
	["SPECTRE"] = "Ahora activarás Spectre Rigs.",
	["HACKER"] = "Ahora activarás Hacker Rigs.",
	["ARCHON"] = "Ahora todas las divisiones excepto las que van abajo te teletransportarán.",
	["DRIFTER"] = "Ahora activarás Drifter Rigs.",
}

module.events = {
	["patronrigevent"] = "PATRON RIG EN PROGRESO",
	["patronevent"] = "SOBRECARGA DE ESCALERAS EN PROGRESO",
	["patronaltevent"] = "EVENTO ENCOGEDOR",
	["jokerrigevent"] = "JOKER RIG EN PROGRESO",
	["jokeraltevent"] = "EVENTO VOLTEADOR",
	["jokerevent"] = "EVENTO OCULTADOR",
	["wickedrigevent"] = "WICKED RIG EN PROGRESO",
	["wickedaltevent"] = "EVENTO PURGA",
	["wickedevent"] = "EVENTO DESTRUCTOR",
	["keeperrigevent"] = "KEEPER RIG EN PROGRESO",
	["keeperevent"] = "EVENTO BARAJADOR",
	["keeperaltevent"] = "EVENTO RESTAURADOR",
	["spectrerigevent"] = "SPECTRE RIG EN PROGRESO",
	["spectreevent"] = "EVENTO PHANTOM",
	["spectrealtevent"] = "EVENTO FANTASMA",
	["hackerrigevent"] = "HACKER RIG EN PROGRESO",
	["hackerevent"] = "EVENTO ESCALADOR",
	["hackeraltevent"] = "EVENTO ESCALADOR",
	["thiefrigevent"] = "THIEF RIG EN PROGRESO",
	["thiefevent"] = "EVENTO TIERRA PLANA",
	["thiefaltevent"] = "EVENTO BYPASS",
	["hereticrigevent"] = "HERETIC RIG EN PROGRESO",
	["hereticevent"] = "EVENTO PUENTE LEVADIZO",
	["hereticaltevent"] = "EVENT MALEDICTOR",
	["archonrigevent"] = "ARCHON RIG EN PROGRESO",
	["archonevent"] = "EVENTO PARTIDOR",
	["archonaltevent"] = "EVENTO DIVISOR",
	["drifterevent"] = "EVENTO DESVIADOR",
	["drifteraltevent"] = "EVENTO ELEVADOR",
	["drifterrigevent"] = "DRIFTER RIG EN PROGRESO",
	["chameleonrigevent"] = "CHAMELEON RIG EN PROGRESO",

}

module.finished = {

	["patronrigevent"] = "PATRON RIG CONCLUIDO",
	["patronevent"] = "SOBRECARGA DE ESCALERAS CONCLUIDO",
	["patronaltevent"] = "EVENTO ENCOGEDOR CONCLUIDO",
	["jokerrigevent"] = "JOKER RIG CONCLUIDO",
	["jokeraltevent"] = "EVENTO VOLTEADOR CONCLUIDO",
	["jokerevent"] = "EVENTO OCULTADOR CONCLUIDO",
	["wickedrigevent"] = "WICKED RIG CONCLUIDO",
	["wickedaltevent"] = "EVENTO PURGA CONCLUIDO",
	["wickedevent"] = "EVENTO DESTRUCTOR CONCLUIDO",
	["keeperrigevent"] = "KEEPER RIG CONCLUIDO",
	["keeperevent"] = "EVENTO BARAJADOR CONCLUIDO",
	["keeperaltevent"] = "EVENTO RESTAURADOR CONCLUIDO",
	["spectrerigevent"] = "SPECTRE RIG CONCLUIDO",
	["spectreevent"] = "EVENTO PHANTOM CONCLUIDO",
	["spectrealtevent"] = "EVENTO FANTASMA CONCLUIDO",
	["hackerrigevent"] = "HACKER RIG CONCLUIDO",
	["hackerevent"] = "EVENTO ESCALADOR CONCLUIDO",
	["hackeraltevent"] = "EVENTO ESCALADOR CONCLUIDO",
	["thiefrigevent"] = "THIEF RIG CONCLUIDO",
	["thiefevent"] = "EVENTO TIERRA PLANA CONCLUIDO",
	["thiefaltevent"] = "EVENTO BYPASS CONCLUIDO",
	["hereticrigevent"] = "HERETIC RIG CONCLUIDO",
	["hereticevent"] = "EVENTO PUENTE LEVADIZO CONCLUIDO",
	["hereticaltevent"] = "EVENTO MALEDICTOR CONCLUIDO",
	["archonrigevent"] = "ARCHON RIG CONCLUIDO",
	["archonevent"] = "EVENTO PARTIDOR CONCLUIDO",
	["archonaltevent"] = "EVENTO DIVISOR CONCLUIDO",
	["drifterevent"] = "EVENTO DESVIADOR CONCLUIDO",
	["drifteraltevent"] = "EVENTO ELEVADOR CONCLUIDO",
	["drifterrigevent"] = "DRIFTER RIG CONCLUIDO",
	["chameleonrigevent"] = "CHAMELEON RIG CONCLUIDO",

}

module.timedspells = {
	["summoner"] = "%s ha usado el hechizo INVOCADOR!",
	["flipper"] = "%s ha usado el hechizo VOLTEADOR!",
	["bender"] = "%s ha usado el hechizo DOBLADOR!",
	["ascension"] = "%s ha usado el hechizo ASCENDEDOR!",
	["traveller"] = "%s ha usado el hechizo RESPLANDOR!",
	["speedup"] = "%s ha usado el hechizo EXPLOIT DE VELOCIDAD!",
	["heist"] = "%s ha usado el hechizo ROBO!",
	["splitter"] = "%s ha usado el hechizo DIVISOR!",
	["riser"] = "%s ha usado el hechizo ELEVADOR!",
	["malediction"] = "%s ha usado el hechizo MALEDICTOR!",

}

module.eventspells = {

	["patronrigevent"] = "%s ha implementado a todas las escaleras normales 1 MANA DE REGALO!",
	["patronaltevent"] = "%s ha encogido todas las escaleras normales!",
	["patronevent"] = "%s ha llenado toda la torre de escaleras!",
	["jokeraltevent"] = "%s ha volteado todas las escaleras normales!",
	["jokerrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO VOLTEADOR!",
	["jokerevent"] = "%s ha ocultado todas las escaleras normales!",
	["wickedrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO DESTRUCTOR!",
	["wickedaltevent"] = "%s ha destruido TODAS las escaleras!",
	["wickedevent"] = "%s ha destruido todas las escaleras normales!",
	["keeperrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO MOVER ALEATORIAMENTE!",
	["keeperevent"] = "%s ha movido aleatoriamente todas las escaleras normales!",
	["keeperaltevent"] = "%s ha restaurado todas las escaleras!",
	["spectrerigevent"] = "%s ha implementado a todas las escaleras normales EL CHANCE DE FANTASMIZARSE!",
	["spectreevent"] = "%s ha movido de manera fantasmal todas las escaleras normales!",
	["spectrealtevent"] = "%s ha fantasmizado todas las escaleras normales!",
	["hackerrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO GLITCHEAR!",
	["hackerevent"] = "%s ha transformado todas las escaleras normales a elevadores!",
	["hackeraltevent"] = "%s ha transformado todas las escaleras normales a elevadores de subida!",
	["thiefrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO ROBAR MANA!",
	["thiefevent"] = "%s ha aplanado todas las escaleras normales!",
	["thiefaltevent"] = "%s ha creado un bypass en todas las escaleras!",
	["newmode"] = "%s ha cambiado los drones a modo %s!",
	["archonrigevent"] = "%s ha implementado a todas las escaleras normales UN PORTAL!",
	["archonevent"] = "%s ha dividido aleatoriamente todas las escaleras normales!",
	["archonaltevent"] = "%s ha dividido verticalmente todas las escaleras normales!",
	["drifterrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO ROTADOR!",
	["drifterevent"] = "%s ha desviado aleatoriamente todas las escaleras normales!",
	["drifteraltevent"] = "%s ha levantado todas las escaleras normales!",
	["hereticrigevent"] = "%s ha implementado a todas las escaleras normales EL HECHIZO POSEEDOR!",
	["hereticevent"] = "%s ha implementado puentes levadizos a todas las escaleras normales!",
	["hereticaltevent"] = "%s ha hechizado todas las escaleras normales!",
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
	["chameleonrigevent"] = "%s ha implementado a todas las escaleras normales un hechizo misterioso!"
}

--stuff that was wrong
module.gui.settings["rank"] = "Mostrar tu Rango Universal en la lista de avatars"
module.spells.descriptions["link"] = "Este hechizo crea energia enter plataformas por 60 segundos. Los links no son tangibles por debajo. Sube de rango a Creator para extender el tiempo a 120 segundos."
module.spells.descriptions["outdrift"] = "Este hechizo hará circular la plataforma en la que estés alrededor de toda el area de juego en el mismo nivel. Solo puede ser usado en las plataformas exteriores."
module.spells.descriptions["indrift"] = "Este hechizo creará una tabla de surf temporal, moviendote a la plataforma que esté en la dirección que hayas escogido."
module.spells.descriptions["move"] = "Este hechizo moverá las escaleras horizontalmente, destruyendo cualquier escalera un su camino. Después de invocarlo, aparecerán flechas en las escaleras, para que puedas escoger la dirección. Las escaleras no pueden ser movidas fuera del area de juego. Sube de rango a Controller para mover escaleras volteadas."
module.spells.descriptions["rotate"] = "Este hechizo rotará las escaleras de manera horizontal, destruyendo cualquier escalera en el camino. Después de invocarlo, aparecerán flechas en las escaleras, para que puedas escoger la dirección. Las escaleras no pueden ser rotadas fuera del area de juego. Sube de rango a Controller para mover escaleras volteadas."

--stuff that was missing
module.static["vr_5"] = "Usa la palanca izquierda para moverte hacia delante o atrás. Moverla para los lados te hará moverte hacia la izquierda y la derecha."
module.gui.ranks["next"] = "Haz click en la flecha a la derecha, para ver los requisitos para el siguiente rango."
module.serverfeedback["admiral2"] = "Sube de rango a Admiral para deshechizar escaleras"
module.serverfeedback["annihilator"] = "Sube de rango a Annihilator para destruir escaleras hechizadas."
module.serverfeedback["disciple"] = "Sube de rango a Disciple para destruir divisiones de plataformas."
module.serverfeedback["toponly"] = "'Llamar al orbe' solo puede ser usado en el nivel superior."
module.serverbroadcast["go"] = "YA!"
module.serverbroadcast["over"] = "Carrera finalizada!"
module.tutorial["tut_small_init"] = "Salta para iniciar tutorial"

module.static["dailies"] = "LOS RECORDS DE HOY"
module.static["most_climbs"] = "MÁS ESCALADAS"
module.static["most_wins"] = "MÁS CARRERAS GANADAS" 

module.events["regen"] = "La escalera se está regenerando"
module.finished["regen"] = "Regeneración completa"

module.spells.extras = {

	["Prompt"] = "Haz click en uno de estos hechizos, para aprender como usarlo",
	["Title1"] = "Hechizos básicos",
	["Title2"] = "Hechizos Ultimate únicos",
	["Title3"] = "Hechizos Ultimate compartidos",
	["ManaCost"] = "Costo en Mana: %s", 
	["TokenCost"] = "Costo en Tokens: %s", 
	["Special"] = "Requisitos especiales: %s",
	["Execution"] = "Ejecución: %s",
	["Description"] = "Descripción: %s",
	["basic"] = "Básico",
	["ultimate"] = "Ultimate",
	["unlock"] = "0 (3 para desbloquear)",
	["none"] = "Sin requisitos especiales",
}

module.gui.basic.jumpdelay = "delay de salto"
module.gui.basic.dancetime = "HORA DE BAILAR!"

--mana bar and mana messages - those will appear on the mana bars
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
	["hack"] = "HACK",
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
}

module.gui.hints = {
	["bcancel"] = "Presiona B para cancelar", --xbox b
	["acancel"] = "Haz click de nuevo para cancelar",
	["ocancel"] = "Cancela el otro hechizo primero", 
}

module.gui.gameover.extras = {

	["noobs"] = "Los tutoriales son para noobs!",
	["possessed"] = "Esos Heretics fastidiosos!",
	["new"] = "Nuevo rango adquirido - %s",
	["none1"] = "¡ESPERA! ¿QUÉ?",
	["none2"] = "¿Este juego",
	["none3"] = "tiene hechizos?"

}

module.gui.gameover.raceplacements = {
	"¡HAS GANADO LA CARRERA!!",
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

return module

