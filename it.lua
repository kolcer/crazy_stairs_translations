--VERSION 1.0--
--BRITISH ENGLISH--

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "SÌ",
	["no"] = "NO",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "PREDEFINITO",
	["validate"] = "CONFERMA",
	["play"] = "GIOCA",
	["skip"] = "SALTA\nTUTORIAL",
	["loading"] = "CARICAMENTO, ATTENDI QUALCHE SECONDO...",
	["mode"] = "MODALITÀ\n%s",
	["cd"] = "SORTILEGIO\nIN CARICAMENTO",
	["complete"] = "COMPLETATO",
}

module.gui.switcher = {
	["title"] = "CAMBIA SERVER",

	["public"] = "SERVER PUBBLICO",
	["private"] = "SERVER PRIVATO",
	["join"] = "UNISCITI",
	["friends"] = "AMICI COLLEGATI",
	["refresh"] = "sto aggiornando la lista...",
	["fail"] = "IMPOSSIBILE AGGIORNARE LA LISTA!",
}

module.gui.serversettings = {
	["title"] = "IMPOSTAZIONI DEL TUO SERVER",

	["Moderation"] = "MODERAZIONE",
	["rules"] = "A casa tua, le regole le decidi tu.",
	["temp"] = "Tutte le azioni di moderazione\neffettuate valgono solo per la\nsessione in corso",
	["kick"] = "CACCIA",
	["ban"] = "BANDISCI",
	["mute"] = "SILENZIA",

	["Drones"] = "IMPOSTAZIONI DRONI",
	["DronesReadOnly"] = "INFORMAZIONI DRONI (sola lettura)",
	["DroneEnabled"] = "Droni abilitati",
	["DroneFix"] = "Ripristinare scale alterate",
	["DroneRemove"] = "Rimuovere malefici",
	["DroneUnCurse"] = "Ripristinare scale maledette",
	["DroneMove"] = "Spostare scale in mod. standard",
	["DroneSpin"] = "Ruotare scale in mod. standard",
	["DroneSpeed"] = "Velocità dei droni (piano/secondo)",
	["DroneDelay"] = "Intervallo tra gli incantesimi (secondi)",
	["DroneMax"] = "Numero massimo di scale (scale in eccesso verranno demolite)",
	["DroneMin"] = "Numero minimo di scale (verranno create scale fino a raggiungere il minimo necessario)",
	["DroneBlock"] = "Probabilità che i droni creino malefici (percentuale)",
	["DroneCurse"] = "Probabilità che i droni creino o trasformino scale maledette (percentuale)",

	["Tower"] = "IMPOSTAZIONI TORRE",
	["TowerReadOnly"] = "INFORMAZIONI TORRE (sola lettura)",
	["InfMode"] = "Modalità senza fine (opzione disabilitata durante le gare e la rigenerazione)",
	["CasualPlayers"] = "I non corridori possono usare gli incantesimi",
	["Regeneration"] = "Abilita rigenerazione in seguito all'uso di Evento Annichilazione di Wicked (esclusa modalità senza fine)",
	["EvenLevels"] = "Vincola le piattaforme sui piani pari",
	["OrbMoves"] = "La sfera finale si muove",
	["InfRegeneration"] = "Abilita rigenerazione in seguito a: nuovo server, alterazione dei piani e conclusione corsa senza fine",
	["TowerLevels"] = "Numero di piani (alternativamente, piani attivi della torre senza fine). Opzione disabilitata durante le gare e la rigenerazione",
	["RaceDuration"] = "Durata massima delle gare. Non influisce sulla corsa in corso (secondi)",
	["InfStart"] = "Ogni quanti secondi creare nuovi livelli durante la modalità senza fine (2 nuovi livelli per intervallo) (secondi)",
	["InfReduction"] = "Riduzione di tempo per la creazione di nuovi livelli (ogni lasso di tempo dura sempre meno di...) (secondi)",
	["InfMin"] = "A lungo andare, non ridurre più i divari di tempo qualora raggiungessero... (secondi)",
	["Cooldown"] = "Tempo di attesa tra sortilegi eventi e rig (secondi)",
}

module.gui.shop = {
	["title"] = "NEGOZIO SCALEMANIA",

	["chameleon"] = "Chameleon permette di cambiare classe durante le scalate.",
	["spectre"] = "Gli incantesimi di Spectre si basano sul teletrasporto, meglio usato in solitaria.",
	["mana"] = "Aumenta di 10 il limite massimo di Mana che puoi accumulare.",

	["3tokens"] = "Equivale allo sblocco di 1 incantesimo, o all'uso di fino a 3 sortilegi.",
	["30tokens"] = "Equivale allo sblocco di 10 incantesimi, o all'uso di fino a 30 sortilegi.",
	["300tokens"] = "Sufficiente per sbloccare tutti gli incantesimi, con 93 gettoni rimanenti.",

	["3TOKENS"] = "3 Gettoni Multiuso (R$%d)",
	["30TOKENS"] = "30 Gettoni Multiuso (R$%d)",
	["300TOKENS"] = "300 Gettoni Multiuso (R$%d)",
	["SPECTRE PASS"] = "Pass Spectre (R$%d)",
	["MANA PASS"] = "Contenitore Mana Migliorato (R$%d)",
	["CHAMELEON PASS"] = "Pass Chameleon (R$%d)",
}

module.gui.spellbar = {
	["share"] = "CONDIVIDI\nMANA",
	["nocasual"] = "SOLO I CORRIDORI POSSONO USARE GLI INCANTESIMI",
}

module.gui.stats = {
	["total"] = "Ascese conseguite: %d / Vittorie: %d",
	["class"] = "Scalate praticate con %s: %d",
	["best"] = "Miglior tempo con %s: %.2f",
	["na"] = "N/A",
}

module.gui.timedspell = {
	["possessed"] = "POSSEDUTO! (colleziona Mana per liberarti)",
	["released"] = "RILASCIATO",
	["timesup"] = "Tempo scaduto...",
}

module.gui.activatecham = {
	["title"] = "ATTIVA CHAMELEON PASS",
	["body"] = "Vuoi attivare il Chameleon Pass?\nResterà attivo per tutta la scalata.",
}

module.gui.caceltimed = {
	["title"] = "INTERROMPI SORTILEGIO TEMPORANEO",
	["body"] = "Vuoi interrompere questo sortilegio temporaneo?\nI gettoni non verranno rimborsati.",
}

module.gui.climbtimer = {
	["prompt"] = "Sali sulle\nscale!",
	["floor"] = "Piano",
	["last"] = "Tempo cronometrato\nprecedente",
}

module.gui.codes = {
	["title"] = "INSERIRE_CODICE_QUI.EXE",
	["body"] = "Digita il codice qui di seguito:",
	["prompt"] = "(codice)",
	["button"] = "CONFERMA",
}

module.gui.gauges = {
	["prompt"] = "Esegui un salto per eseguire, premi nuovamente per annullare.",

	["found"] = "%d scale trovate (%.1f%% del totale)",
	["special"] = "%d sono alterate (%.1f%%)",
	["affected"] = "%d scale saranno coinvolte (%.1f%%)",
	["cursed"] = "%d malefici trovati (%.1f%%)",
	["fill"] = "%d scale verranno generate (%.1f%%)",
	["purge"] = "%d oggetti verranno distrutti (%.1f%%)",
	["normal"] = "%d sono già normali (%.1f%%)",
	["restore"] = "%d scale saranno ripristinate (%.1f%%)",
	["bypass1"] = "%d maledizioni trovate (%.1f%%)",
	["bypass2"] = "%d scorciatoie già esistono (%.1f%%)",
	["bypass3"] = "%d scorciatoie verranno generate (%.1f%%)",
}

module.gui.jukebox = {
	["title"] = "JUKEBOX",

	["master"] = "VOLUME PRINCIPALE",
	["default"] = "(volume principale in uso)",
	["climb"] = "MUSICA SCALATA",
	["endgame"] = "MUSICA FINALE",
	["failed"] = "[caricamento fallito]",
}

module.gui.results = {
	["title"] = "CLASSIFICA RISULTATI",

	["place"] = "POSIZIONE",
	["name"] = "NOME",
	["level"] = "PIANO PIÙ ALTO",
	["time"] = "TEMPO",
	["rank"] = "RANGO",
	["not"] = "N/A",
	[1] = "CAMPIONE",
	[2] = "secondo",
	[3] = "terzo",
	[4] = "quarto",
	[5] = "quinto",
	[6] = "sesto",
	[7] = "settimo",
	[8] = "ottavo",
	[9] = "nono",
	[10] = "decimo",
	[11] = "undicesimo",
	[12] = "dodicesimo",
}

module.gui.racetimer = {
	["gather"] = "Non sei\nun corridore.",
	["race"] = "GARA\nCONCLUSA!",
	["inf"] = "Sei fuori!",
	["off"] = "CRONOMETRO\nCORSA",
	["wait"] = "Prossima corsa tra",
	["on"] = "Rango",
}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Droni in fase %s",
	["refill"] = "Mana a Gogo (%s)",
	["union"] = "Unione Spettrale (%s)",
	--["event"]
}

module.spells.names = {
	--PATRON
	["summon"] = "Genera Scale",
	["restore"] = "Richiama Sfera",
	["split"] = "Costruisci al Contrario",
	["shrinkabove"] = "Restringi Scale in Alto",
	["link"] = "Crea Collegamento",
	["portal"] = "Crea Portale",

	["summoner"] = "Generatore",
	["patronevent"] = "Evento Scalemania",
	["patronaltevent"] = "Evento Restringente",

	--JOKER 
	["flip"] = "Ribalta Scale",
	["flipabove"] = "Ribalta Scale in Alto",
	["fake"] = "Genera Scale Illusorie",
	["invisible"] = "Genera Scale Invisibili",
	["disco"] = "Scale Festose",
	["trap"] = "Crea Botola",

	["flipper"] = "Ribaltatore",
	["jokerevent"] = "Evento Invisibile",
	["jokeraltevent"] = "Evento Sottosopra",

	--WICKED
	["destroy"] = "Demolisci Scale",
	["destroyabove"] = "Demolisci Scale in Alto",
	["bend"] = "Solleva Ponte",
	["damage"] = "Frantuma Scale in Alto",
	["flatten"] = "Abbassa Ponte",
	["wall"] = "Genera Barriera",

	["bender"] = "Imperatore",
	["wickedevent"] = "Evento Distruzione",
	["wickedaltevent"] = "Evento Annichilazione",

	--KEEPER
	["move"] = "Muovi Scale",
	["rotate"] = "Ruota Scale",
	["moveup"] = "Innalza Scale",
	["movedown"] = "Ripristina Scale",
	["moverandom"] = "Spostamento Randomico in Alto",
	["rig"] = "Spostamento Randomico",

	["ascension"] = "Ascensione",
	["keeperevent"] = "Evento Mescolazione",
	["keeperaltevent"] = "Evento Restaurazione",

	--SPECTRE
	["phantom"] = "Evoca Scale",
	["ghost"] = "Spettralizza Scale in Alto",
	["shadow"] = "Spettralizza Scale",
	["horizontal"] = "Scatto Fantasma",
	["random"] = "Teletrasporto Randomico",
	["vertical"] = "Emersione",

	["traveller"] = "Nomade",
	["spectreevent"] = "Evento Mescolazione Spettrale",
	["spectrealtevent"] = "Evento Fantasmagòrico",

	--HACKER
	["dash"] = "Passaggio",
	["blink"] = "Smaterializzazione",
	["swap"] = "Sostituzione",
	["slide"] = "Scale Mobili",
	["slideup"] = "Manometti Scale",
	["glitch"] = "Scale Anomale",

	["hack"] = "Accellerazione",
	["hackerevent"] = "Evento Mobilità",
	["hackeraltevent"] = "Evento Scali Mobili",

	--THIEF
	["steal"] = "Ruba Scale",
	["stealabove"] = "Ruba Scale in Alto",
	["place"] = "Posiziona Scale",
	["uppass"] = "Posiziona Scale a Spirale",
	["sidepass"] = "Posiziona Scorciatoia",
	["drop"] = "Posiziona Scale Piatte",

	["heist"] = "Rapina",
	["thiefevent"] = "Evento Piatto",
	["thiefaltevent"] = "Evento Scorciatoia",

	--ARCHON
	["splitup"] = "Portale Dimensionale in Alto",
	["splitrotate"] = "Portale Dimensionale Adiacente",
	["splitside"] = "Portale Dimensionale Parallelo",
	["splitrandom"] = "Portale Dimensionale Randomico",
	["cancelsplit"] = "Scollega Portali Dimensionali",
	["splitforward"] = "Crea Portale Dimensionale",

	["splitter"] = "Mania dei Portali",
	["archonevent"] = "Evento Portali Laterali",
	["archonaltevent"] = "Evento Portali in Alto",

	--DRIFTER
	["indrift"] = "Naviga",
	["outdrift"] = "Devia Scale",
	["updrift"] = "Elevazione",
	["diagdrift"] = "Perlustrazione",
	["spin"] = "Rotea Scale",
	["driftabove"] = "Solleva Scale in Alto",

	["riser"] = "Ascensore",
	["drifterevent"] = "Evento Deviazione",
	["drifteraltevent"] = "Evento Sollevamento",

	--HERETIC
	["createcursed"] = "Genera Scale Maledette",
	["curse"] = "Maledici Scale",
	["curseabove"] = "Maledici Scale in Alto",
	["curseinter"] = "Crea Maleficio",
	["autodown"] = "Innalza Scisma",
	["autoup"] = "Abbassa Scisma",

	["malediction"] = "Sciagura",
	["hereticevent"] = "Evento Scisma",
	["hereticaltevent"] = "Evento Nefasto",

	--SPLICER
	["twistup"] = "Combina Scale in Alto",
	["twistside"] = "Combina Scale Parallele",
	["twistrotate"] = "Combina Scale Adiacenti",
	["canceltwist"] = "Ripristina Giuntura",
	["split2"] = "Taglia Scale",
	["splitalt"] = "Dividi Scale",

	["twister"] = "Scombinatore",
	["splicerevent"] = "Evento Combinazione",
	["spliceraltevent"] = "Evento Divisione",

	--necro
	["createdual"] = "Genera Scale Gemelle",
	["copyplatform"] = "Imita Piattaforma della Controfigura",
	["soulbridge"] = "Genera Ponte",
	["undeadabove"] = "Prosciuga Scale in Alto",
	["revival"] = "Punto di Appoggio",
	["regen"] = "Rigenera Mana",

	["duality"] = "Dualismo",
	["necromancerevent"] = "Evento Resurrezione",
	["necromanceraltevent"] = "Evento Prosciugazione",

	--reaver
	["createmirrored"] = "Genera Scale Specchiate",
	["bigmirror"] = "Genera Specchio Esteso",
	["smallmirror"] = "Genera Specchio",
	["outermirror"] = "Specchio Perimetrale",
	["merge"] = "Unione",
	["oneway"] = "Scale a Senso Unico",

	["reflection"] = "Specchio Riflesso",
	["reaverevent"] = "Evento Monodirezionale",
	["reaveraltevent"] = "Evento Ascendente",

	--gremlin
	["tram"] = "Genera Tram",
	["screwdown"] = "Avvolgi Scale",
	["screwup"] = "Avvolgi Scale in Alto",
	["revolve"] = "Scale Girevoli",
	["trapstairs"] = "Scale Trappola",
	["spinplatform"] = "Gira Piattaforma",

	["tramway"] = "Conducente",
	["gremlinevent"] = "Evento Girevole",
	["gremlinaltevent"] = "Evento Capolinea",

	--CHAMELEON
	["ditch"] = "Incrocia Scale",
	["warp"] = "Distorci Scale",
	["chamdown"] = "Sprofonda Scale",
	["chamdraw"] = "Ponte Levatoio in Basso",
	["chamswap"] = "Copia Controfigura (solo visivo)",
	["chamdrawabove"] = "Ponte Levatoio in Alto",

	--MISC (compatibility)
	["reg"] = "Rigenerazione in corso",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff

local union = "Questo è un sortilegio temporaneo. Quando attivo, puoi camminare attraverso le scale che bloccano il passaggio. Qualsiasi effetto malevolo/benevolo è inefficace su di te mentre sei in questo stato. Tuttavia non puoi lanciare incantesimi."
local overload = "Questo è un sortilegio a intervalli. Ricevi 1 mana ogni 6 secondi, per 1 minuto (10 in totale). Per rieseguire l'incantesimo è necessario attendere che finisca l'effetto di quello precedente."
local timed = "Questo è un sortilegio temporaneo. "  -- do not remove space
local rig = "Questo è un sortilegio Rig. Tutte le scale normali verranno alterate una alla volta da " -- do not remove space
local event = "Questo è un sortilegio Evento. Tutte le scale normali verranno alterate una alla volta dall'incantesimo " -- do not remove space
local fill = "Questo è un sortilegio Culmine. Verranno generate scale in tutte le intersecazioni senza malefici. " -- do not remove spaces
local mode = "Questo è un sortilegio di manipolazione dei Droni. I Droni entreranno in fase %s. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: %s e %s, inoltre le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale."
local timedExtra = " Raggiungi il rango %s per estendere la durata del sortilegio fino a 90s. Riempie il contenitore Mana di altri %s che hanno il rango %s sbloccato." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Genera una scala nella direzione indicata, distruggendo eventuali scale in mezzo.",
	["restore"] = "Richiama la sfera finale sulla piattaforma colpita (in cima).\nSblocca il rango Defender per ridurre il costo a 2 Mana.\nSblocca il rango Saviour per velocizzare il processo.",
	["split"] = "Cambia la direzione della scala colpita, ripristinandola nel processo.",
	["shrinkabove"] = "Restringe la scala posizionata direttamente sopra a quella colpita, permettendoti di aggirarla e scalarla.",
	["link"] = "Genera un collegamento temporaneo nella direzione indicata, facendo da ponte tra due piattaforme. Dura 60 secondi ed è intangibile dal basso.\nSblocca il rango Creator per raddoppiare la durabilità.",
	["portal"] = "Crea un portale sulla piattaforma colpita. Chi lo tocca viene teletrasportato sulla piattaforma posizionata direttamente sopra. Dura 60 secondi.\nSblocca il rango Protector per raddoppiare la durabilità.",

	["summoner"] = timed .. "Permette di generare scale in continuazione, per 60 secondi." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."Patron Rig. Quando calpestate, conferiscono 1 Mana (l'effetto non si attiva se il contenitore Mana è pieno). In seguito all'attivazione, ridiventano scale normali.",
	["patronevent"] = fill ..  "Le scale create saranno normali.",
	["patronaltevent"] = event .. "Restringi Scale.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Restringi Scale"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Ribalta la scala colpita, invertendo alto e basso. Può essere ribaltata di nuovo.",
	["flipabove"] = "Ribalta la scala posizionata direttamente sopra a quella colpita, invertendo alto e basso. Può essere ribaltata di nuovo.",
	["fake"] = "Genera una scala illusoria nella direzione indicata, distruggendo eventuali scale in mezzo. Non può essere scalata, se non da altri Joker con rango Trickster sbloccato e giocatori con il sortilegio Unione Spettrale attivo.",
	["invisible"] =  "Genera una scala invisibile nella direzione indicata, se l'intersecazione è libera. Quando calpestata, diventa visibile a tutti (opzionale se il rango Jester è sbloccato).",
	["disco"] = "Trasforma la scala colpita in una pista da ballo. Chi la calpesterà, non potrà fare a meno di ballare.\nSblocca il rango Comic per diventarne immune.",
	["trap"] = "Sostituisce la piattaforma colpita con una fasulla. I malcapitati che ci passeranno sopra cadranno al piano di sotto.\nSblocca il rango Jokester per essere in grado di individuarle.\nSblocca il rango Trickster per diventarne immune.",

	["flipper"] = timed ..  "Permette di ribaltare scale in continuazione, per 60 secondi. Se scale posizionate direttamente sopra a quella colpita non sono presenti, ribalta la scala colpita."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "Joker Rig. Quando calpestate, si ribaltano invertendo alto e basso.",
	["jokerevent"] = event .. "Scale Illusorie.",
	["jokeraltevent"] = event .. "Ribalta Scale.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Scale Illusorie"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Distrugge la scala colpita, qualunque essa sia.\nSblocca il rango Vile per rimuovere il costo di esecuzione.\nSblocca il rango Vicious per guadagnare 1 Mana quando distruggi una scala alterata.\nSblocca il rango Annihilator per poter distruggere le scale maledette.",
	["destroyabove"] = "Distrugge la scala posizionata direttamente sopra a quella colpita, qualunque essa sia.\nSblocca il rango Vicious per guadagnare 1 Mana quando distruggi una scala alterata.\nSblocca il rango Annihilator per poter distruggere le scale maledette.",
	["bend"] = "Piega la scala colpita verso l'alto, collegando l'estremità inferiore alla piattaforma posizionata direttamente sopra.",
	["damage"] = "Frantuma la scala posizionata direttamente sopra a quella colpita, lasciando indietro solo alcuni gradini. Prima di metterti alla prova, fai attenzione alla ricarica del salto.\nSblocca il rango Destroyer per poterci camminare come se fosse una scala normale.",
	["flatten"] = "Piega verso il basso la scala opposta, collegando l'estremità superiore alla tua piattaforma.",
	["wall"] = "Genera una barriera temporanea che blocca il passaggio, ricoprendo solo un lato della piattaforma. Oltre la barriera, viene creato un collegamento tra due piattaforme, attraversabile solo da altri Wicked o da chi ha il sortilegio Unione Spettrale attivo. Dura 60 secondi. Alcuni incantesimi, come Passaggio o Scatto Fantasma, possono ignorarla.",

	["bender"] = timed .. "Permette di piegare scale in continuazione, per 60 secondi. Se possibile, sia la scala colpita che quella soprastante verranno piegate."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "Wicked Rig. Quando calpestate, si attiva il processo di auto-distruzione (ignorato dal rango Devil).",
	["wickedevent"] = event .. "Demolisci Scale.",
	["wickedaltevent"] = "Questo è un sortilegio Evento. Tutte le scale presenti nella torre verranno demolite e i malefici verranno rimossi, senza eccezioni. Viene attivata la rigenerazione.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","Piega Scale"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Sposta la scala colpita orizzontalmente in una direzione a scelta, distruggendo eventuali scale in mezzo. Non puoi spostare la scala al di fuori dall'area di gioco.\nSblocca il rango Controller per poter spostare qualunque scala ad eccezione di quelle maledette.",
	["rotate"] = "Ruota la scala colpita orizzontalmente, a destra o a sinistra, distruggendo eventuali scale in mezzo. Non puoi ruotare la scala al di fuori dall'area di gioco.\nSblocca il rango Controller per poter ruotare qualunque scala ad eccezione di quelle maledette.",
	["moveup"] = "Innalza la scala colpita di un piano, distruggendo eventuali scale in mezzo.\nSblocca il rango Controller per poter innalzare qualunque scala ad eccezione di quelle maledette.",
	["movedown"] = "Ripristina la scala colpita, riportandola alla normalità. Se la scala colpita non è alterata, l'incantesimo non viene eseguito.\nSblocca il rango Captain per rimuovere il costo di esecuzione.\nSblocca il rango Admiral per poter ripristinare le scale maledette ed i malefici.",
	["rig"] = "Sposta o ruota la scala colpita verso una direzione casuale, distruggendo eventuali scale in mezzo.\nSblocca il rango Operator per assicurati che la scala non sprofondi.\nSblocca il rango Controller per poter spostare qualunque scala ad eccezione di quelle maledette.",
	["moverandom"] = "Sposta o ruota la scala soprastante a quella colpita verso una direzione casuale, distruggendo eventuali scale in mezzo.\nSblocca il rango Operator per assicurati che la scala non sprofondi.\nSblocca il rango Controller per poter spostare qualunque scala ad eccezione di quelle maledette.",

	["ascension"] = timed .. "Permette di innalzare scale in continuazione, per 60 secondi."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "Keeper Rig. Quando calpestate, si spostano o ruotano in modo casuale (opzionale con il rango Sentinel sbloccato).\nSblocca il rango Operator per assicurati che la scala non sprofondi.",
	["keeperevent"] = event .. "Spostamento Randomico. Questo sortilegio ha due modalità: Leggera e Forzata. In modalità forzata, eventuali scale in mezzo verranno demolite.",
	["keeperaltevent"] = "Questo è un sortilegio Evento. Tutte le scale presenti nella torre verranno ripristinate, senza eccezioni. A differenza dell'Evento Annichilazione, i malefici saranno ignorati.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Rig","Spostamento Randomico"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Evoca una scala effimera nella direzione indicata, distruggendo eventuali scale in mezzo. La scala svanirà dopo un breve periodo.",
	["ghost"] = "Spettralizza la scala posizionata direttamente sopra a quella colpita, rendendola intangibile. Lancia di nuovo per riportare la scala alla normalità.\nSblocca il rango Aether per poterci camminare sopra.",
	["shadow"] = "Spettralizza la scala colpita, rendendola intangibile. Lancia di nuovo per riportare la scala alla normalità.\nSblocca il rango Aether per poterci camminare sopra.\nSblocca il rango Phantom per rimuovere il costo di esecuzione.",
	["horizontal"] = "Ti teletrasporta sulla piattaforma indicata, attraversando eventuali scale in mezzo (tranne quelle maledette).",
	["random"] = "Ti teletrasporta su una piattaforma in modo casuale, sempre sullo stesso piano.",
	["vertical"] = "Ti teletrasporta sulla piattaforma posizionata direttamente sopra a quella colpita.",

	["traveller"] = timed ..  "Permette di effettuari scatti fantasma in continuazione, per 60 secondi."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "Spectre Rig. Quando calpestate, potrebbero diventare spettralizzate (1/2) (opzionale con il rango Vision sbloccato).",
	["spectreevent"] = event .. "Mescolazione Spettrale. Questo sortilegio ha due modalità: Leggera e Forzata. In modalità forzata, eventuali scale in mezzo verranno demolite.",
	["spectrealtevent"] = "Questo è un sortilegio Evento. Tutte le scale normali verranno spettralizzate.\nLancia il sortilegio Unione Spettrale o sblocca il rango Aether per poterci camminare sopra.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Mescolazione Spettrale (Leggera)"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Ti teletrasporta sulla piattaforma indicata, se l'intersecazione è libera.\nSblocca il rango Cracker per velocizzare l'animazione del 50%.",
	["blink"] = "Ti permette di aggirare una scala che blocca il passaggio, se non è maledetta.\nSblocca il rango Exploiter per velocizzare l'animazione del 50%.",
	["swap"] = "Ti teletrasporta nella posizione in cui si trova la tua controfigura. Può essere eseguito in qualsiasi punto della mappa.",
	["slide"] = "Transforma la scala colpita in una scala mobile. Puoi scegliere se farla salire o scendere.\nSblocca il rango Scripter per diventare immune alle scale mobili inverse.",
	["slideup"] = "Cambia la direzione della scala presente nella direzione indicata, se è in direzione opposta a dove stai. Se la scala è alterata, verrà ripristinata nel processo (tranne se è maledetta).",
	["glitch"] = "Ti teletrasporta insieme alla scala colpita in un'intersecazione libera sullo stesso piano.\nSblocca il rango Zero per assicurare il teletrasporto di fianco alla sfera finale (se lanciato in cima).",

	["hack"] = timed .. "Permette di trasformare scale mobili in continuazione, per 60 secondi. Se ci sono scale che bloccano il passaggio, queste verranno demolite (tranne quelle maledette)." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "Hacker Rig. Quando calpestate, ti teletrasportano insieme alla scala in un'intersecazione libera sullo stesso piano (opzionale con il rango Reaper sbloccato). Solo una persona può essere teletrasportata.",
	["hackerevent"] = event .. "Scale Mobili Randomiche.",
	["hackeraltevent"] = event ..  "Scale Mobili Ascendenti.",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Rig","Scale Mobili Randomiche"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Ruba la scala colpita e l'aggiunge al tuo inventario. Per poter usare gli altri incantesimi è necessario rubare delle scale con questo qui o con Ruba Scale in Alto.\nSblocca il rango Hijacker per poter rubare qualsiasi scala (tranne quelle maledette).\nSblocca il rango Outlaw per poter rubare 2 scale alla volta.",
	["stealabove"] = "Ruba la scala posizionata direttamente sopra a quella colpita e l'aggiunge al tuo inventario. Per poter usare gli altri incantesimi è necessario rubare delle scale con questo qui o con Ruba Scale.\nSblocca il rango Hijacker per poter rubare qualsiasi scala (tranne quelle maledette).\nSblocca il rango Outlaw per poter rubare 2 scale alla volta.",
	["place"] = "Posiziona una scala rubata nella direzione indicata, se l'intersecazione è libera.",
	["uppass"] = "Posiziona una scala a spirale che collega la piattaforma colpita a quella posizionata direttamente sopra (solo su piattaforme perimetrali). Dura 60 secondi.\nSblocca il rango Bandit per raddoppiare la durabilità.",
	["sidepass"] = "Posiziona una scorciatoia che raggira eventuali scale in mezzo nella direzione indicata. Dura 60 secondi.\nSblocca il rango Robber per raddoppiare la durabilità.",
	["drop"] = "Posiziona una scala piatta nella direzione indicata, se l'intersecazione è libera.",

	["heist"] = timed .. "Permette di posizionare scale normali in continuazione, per 60 secondi. Eventuali scale che bloccano il passaggio verranno rubate automaticamente." .. string.format(timedExtra,RankData.THIEF[7].name,"Thieves",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "Thief Rig. Quando calpestate, sottraggono 1 Mana ai malcapitati e te lo trasferiscono, se hai spazio disponibile e non hai cambiato classe.",
	["thiefevent"] = event .. "Posiziona Scale Piatte.",
	["thiefaltevent"] = "Questo è un sortilegio Evento. Posiziona scorciatoie in tutte le intersecazioni disponibili, eccetto in quelle dove ci sono scale maledette o malefici.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Ruba/Posiziona Scale"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Collega con un portale dimensionale la scala colpita ad un'altra parallela in base alla direzione scelta. Se non ci sono scale presenti nella destinazione indicata, ne verrà generata una nuova.\nSblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente.\nSblocca il rango Illuminati per poter camminare attraverso i portali dimensionali orizzontali.",
	["splitrotate"] = "Collega con un portale dimensionale la scala colpita ad un'altra adiacente in base alla direzione scelta. Se non ci sono scale presenti nella destinazione indicata, ne verrà generata una nuova.\nSblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente.\nSblocca il rango Illuminati per poter camminare attraverso i portali dimensionali orizzontali.",
	["splitup"] = "Collega la scala colpita a quella soprastante con un portale dimensionale. Se non ci sono scale presenti nella destinazione indicata, ne verrà generata una nuova.\nSblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente.\nSblocca il rango Sage per poter ignorare i portali dimensionali che teletrasportano verso il basso.",
	["cancelsplit"] = "Rimuove tutti i portali dimensionali collegati alla scala colpita.\nSblocca il rango Disciple per poter rimuovere i portali dimensionali dalle piattaforme.\nSblocca il rango Scholar per rimuovere il costo di esecuzione.",
	["splitrandom"] = "Collega con un portale dimensionale la scala colpita ad un'altra sullo stesso piano in modo casuale. Se viene scelta un'intersecazione libera, verrà generata una scala nuova.\nSblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente.\nSblocca il rango Illuminati per poter camminare attraverso i portali dimensionali orizzontali.",
	["splitforward"] = "Crea due portali dimensionali tra le piattaforme indicate, collegandole direttamente. Eventuali scale in mezzo non rappresenteranno un problema.\nSblocca il rango Disciple per poter rimuovere i portali dimensionali dalle piattaforme.\nSblocca il rango Illuminati per poter camminare attraverso i portali dimensionali.",

	["splitter"] = timed .. "Permette di creare portali dimensionali su piattaforme in continuazione, per 60 secondi." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "Archon Rig. Quando calpestate, ti teletrasportano verso la direzione in cui stavi camminando (attraversando eventuali scale non maledette che bloccano il passaggio).",
	["archonevent"] = event .. "Portale Dimensionale Randomico.",
	["archonaltevent"] = event .. "Portale Dimensionale in Alto.",
	["archonmode"] = string.format(mode,"Archon","Archon Rig","Portale Dimensionale Randomico"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Genera un mini drone sotto i tuoi piedi in grado di trasportarti su un'altra piattaforma nella direzione indicata.",
	["updrift"] = "Trasforma la piattaforma colpita in un ascensore che si muove tra due piani per un breve periodo.\nSblocca il rango Vagabond per aumentare la velocità della piattaforma.\nSblocca il rango Traveller per far raggiungere alla piattaforma un altro piano (2 in totale).\nSblocca il rango Strider per far raggiungere alla piattaforma ancora un altro piano (3 in totale).",
	["diagdrift"] = "Se la direzione indicata è fuori dall'area di gioco, la piattaforma farà un giro completo intorno al perimetro; altrimenti andrà avanti e indietro diagonalmente tra due piattaforme per 7 volte.",
	["spin"] = "Rotea la scala colpita di 180 gradi.\nSblocca il rango Nomad per poter roteare le scale deviate.",
	["outdrift"] = "Devia la scala colpita verso un'intersezione libera casuale sullo stesso piano.\nSblocca il rango Nomad per deviare scale già deviate.",
	["driftabove"] = "Devia leggermente la scala posizionata direttamente sopra a quella colpita in modo da permetterti di passarci sotto e scalarla.",

	["riser"] = timed .. "Permette di generare ascensori in continuazione, per 60 secondi.\nSblocca almeno il rango Traveller per poter potenziare ascensori già esistenti.\n" .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "Drifter Rig. Quando calpestate, diventeranno deviate (opzionale con il rango Voyager sbloccato).",
	["drifterevent"] = event .. "Devia Scale.",
	["drifteraltevent"] = event .. "Solleva Scale in Alto.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Devia Scale"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,

	--HERETIC
	["createcursed"] = "Genera una scala maledetta nella direzione indicata, distruggendo eventuali scale in mezzo.\nSblocca il rango Banished per poter demolire eventuali scale maledette in mezzo.",
	["curse"] = "Maledice la scala colpita se non lo è già, altrimenti rimuove la maledizione.",
	["curseabove"] = "Maledice la scala posizionata direttamente sopra a quella colpita e la solleva leggermente, permettendoti di passarci sotto e scalarla. Se la scala è già maledetta, rimuove la maledizione.",
	["curseinter"] = "Ti fa passare attraverso l'intersecazione lasciando indietro un maleficio, se non ci sono scale in mezzo.\nSblocca il rango Infidel per poter eseguire l'incantesimo su intersecazioni con malefici.",
	["autodown"] = "Solleva una copia della parte inferiore della scala colpita, permettendoti di raggiungere una nuova piattaforma. Tale copia può essere scalata solo da altri Heretic o da giocatori con il sortilegio Unione Spettrale attivo.",
	["autoup"] = "Abbassa la parte superiore della scala colpita, lasciando al suo posto una copia. Tale copia può essere scalata solo da altri Heretic o da giocatori con il sortilegio Unione Spettrale attivo.",

	["malediction"] = timed .. "Permette di generare scale maledette in continuazione, per 60 secondi." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "Heretic Rig. Chi le calpesta diventa posseduto, inibendo gli incantesimi (ignorato con il rango Unbeliever sbloccato). I giocatori posseduti si possono liberare raccogliendo Mana.\nSblocca il rango Exiled per guadagnare 1 Mana per giocatore posseduto.",
	["hereticevent"] = event .. "Scisma Randomico.",
	["hereticaltevent"] = event .. "Maledici Scale.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Scisma Randomico"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Combina la scala colpita con un'altra parallela in base alla direzione scelta. Se non ci sono scale presenti nella destinazione indicata, ne verrà generata una nuova.\nSblocca il rango Transformer per poter combinare scale già unite.",
	["twistrotate"] = "Combina la scala colpita con un'altra adiacente in base alla direzione scelta. Se non ci sono scale presenti nella destinazione indicata, ne verrà generata una nuova.\nSblocca il rango Transformer per poter combinare scale già unite.",
	["twistup"] = "Combina la scala colpita con quella posizionata direttamente sopra.\nSblocca il rango Transformer per poter combinare scale già unite.",
	["canceltwist"] = "Ripristina la scala combinata colpita.\nSblocca il rango Combiner per poter lanciare questo incantesimo sulle piattaforme.\nSblocca il rango Mixer per rimuovere il costo di esecuzione.\nSblocca il rango Optimus per guadagnare 1 Mana per scala ripristinata con questo incantesimo.",
	["split2"] = "Taglia in due la scala colpita, garantendoti accesso a tutte e quattro le piattaforme.",
	["splitalt"] = "Divide la scala colpita, permettendoti di aggirare la scala posizionata direttamente sopra e scalarla.",

	["twister"] = timed .. "Permette di combinare scale in continuazione, per 60 secondi." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "Splicer Rig. Quando calpestate, si combineranno con altre scale in modo casuale (opzionale con il rango Assembler sbloccato).",
	["splicerevent"] = event .. "Combina Scale a Caso.",
	["spliceraltevent"] = event .. "Taglia Scale.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Combina Scale a Caso"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	--NECROMANCER
	["createdual"] = "Genera una scala per te e la tua controfigura nella direzione indicata.\nSblocca il rango Skeleton per poter ignorare scale maledette e malefici dalla parte della controfigura.\nSblocca il rango Lich per poter demolire eventuali scale in mezzo per entrambi.",
	["copyplatform"] = "Copia le scale nella piattaforma della tua controfigura sulla tua, e vice versa. Le scale copiate saranno normali.\nSblocca il rango Revenant per poter rimuovere le maledizioni.",
	["soulbridge"] = "Genera un ponte nella direzione indicata, collegando due piattaforme diagonalmente. Se l'incantesimo viene lanciato al centro, verrà generato un incrocio a X. Sia il ponte che l'incrocio ruoteranno automaticamente.",
	["undeadabove"] = "Prosciuga la scala posizionata direttamente sopra a quella colpita. Lo stesso vale per la controfigura, ma in assenza di scale ne verrà generata una nuova. Le scale prosciugate non bloccano il passaggio e possono essere scalate, ma svaniscono dopo 60 secondi.",
	["revival"] = "Crea un punto d'appoggio sulla piattaforma della tua controfigura, teletrasportandoti lì qualora ti trovassi in un piano inferiore. Il punto d'appoggio svanisce dopo l'utilizzo, quando completi una scalata, quando ne crei uno nuovo e quando usufruisci di Chameleon.\nSblocca il rango Acolyte per poter chiamare la sfera finale (in cima).",
	["regen"] = "Ottieni 6 Mana e offri 3 Mana a chi sta vicino alla tua controfigura.\nSblocca il rango Deathbringer per aumentare i valori a 10 e 5.",

	["duality"] = timed .. "Permette di generare scale gemelle in continuazione, per 60 secondi. Eventuali scale in mezzo saranno sempre demolite." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name),
	["necromancerrigevent"] = rig .. "Necromancer Rig. Quando calpestate, verranno prosciugate.",
	["necromancerevent"] = fill ..  "Le scale generate saranno prosciugate e svaniranno dopo 60 secondi.",
	["necromanceraltevent"] = event .. "Prosciuga Scale. Queste scale svaniranno dopo 60 secondi.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Prosciuga Scale"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "Genera una scala provvista di uno specchio nella direzione indicata, camminaci attraverso per unirti o separarti dalla tua controfigura. La tua controfigura non raccoglierà mana per conto tuo, ma sarai in grado di camminare sugli specchi.\nSblocca il rango Poltergeist per poter demolire eventuali scale in mezzo.",
	["bigmirror"] = "Genera uno specchio che si estende sull'intero piano, attraversabile solo da giocatori uniti con la loro controfigura. Gli specchi estesi sostituiscono quelli piccoli.\nSblocca il rango Presence per aumentare la durabilità a 15 secondi.",
	["smallmirror"] = "Genera un piccolo specchio nella direzione indicata, attraversabile solo da giocatori uniti con la loro controfigura.\nSblocca il rango Presence per aumentare la durabilità a 10 secondi.",
	["outermirror"] = "Genera uno specchio nella direzione indicata e dalla parte opposta del piano, camminaci attraverso per teletrasportarti e unirti/separarti dalla tua controfigura. Gli specchi svaniranno dopo 60 secondi. Va lanciato sulle piattaforme perimetrali.",
	["merge"] = "Unisciti con la tua controfigura.\nSblocca il rango Replica per poterti separare dalla tua controfigura con questo incantesimo. La tua controfigura non raccoglierà mana per conto tuo, ma sarai in grado di camminare sugli specchi.",
	["oneway"] = "Rende la scala colpita a senso unico (puoi scegliere la direzione da bloccare), camminaci attraverso per unirti o separarti dalla tua controfigura.\nSblocca il rango Alien per diventarne immune. La tua controfigura non raccoglierà mana per conto tuo, ma sarai in grado di camminare sugli specchi.",

	["reflection"] = timed .. "Permette di generare specchi estesi in continuazione, per 60 secondi. Ti unirai automaticamente alla tua controfigura." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "Reaver Rig. Quando calpestate, diventeranno a senso unico casualmente (opzionale con il rango Wight sbloccato).",
	["reaverevent"] = event .. "Scale a Senso Unico.",
	["reaveraltevent"] = event .. "Scale a Senso Unico (Sola Salita).",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Scale a Senso Unico"),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	["tram"] = "Genera un Tram nella direzione indicata. Queste scale sono più corte del solito e si spostano subito dopo la generazione, tuttavia possono essere riportanti indietro saltandoci sopra.\nSblocca il rango Fiend per poter richiamare i Tram dalle piattaforme.",
	["screwdown"] = "Avvolge la scala colpita al contrario, rendendone la scalata un'impresa.\nSblocca il rango Daemon per poter decidere il verso dell'avvolgimento (potrebbe non funzionare in presenza di altri Daemon).",
	["screwup"] = "Avvolge la scala posizionata direttamente sopra a quella colpita, rendendone la discesa un'impresa.\nSblocca il rango Daemon per poter decidere il verso dell'avvolgimento (potrebbe non funzionare in presenza di altri Daemon).",
	["revolve"] = "Rende la scala colpita girevole, permettendonti di decidere la direzione. Queste scale si capovolgeranno completamente di 180 gradi ogni breve intervallo.",
	["trapstairs"] = "Trasforma la scala colpita in una trappola. Quando calpestate, gireranno su se stesse facendo cadere i malcapitati al piano di sotto.\nSblocca il rango Goblin per rilevarle, e il rango Diablo per diventarne immune",
	["spinplatform"] = "Fa ruotare l'intera piattaforma di 90 gradi per quattro volte, permettendoti di decidere la direzione. Anche le scale maledette verranno ruotate insieme alla piattaforma.",

	["tramway"] = timed .. "Permette di generare Tram in continuazione, per 60 secondi." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "Gremlin Rig. Chi le calpesta diventa ipnotizzato, invertendo i comandi di movimento (ignorato con il rango Hobgoblin sbloccato). I giocatori ipnotizzati si possono liberare raccogliendo Mana.",
	["gremlinevent"] = event .. "Scale Girevoli.",
	["gremlinaltevent"] = fill .. "Le scale generate saranno dei Tram.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Scale Girevoli"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "Sprofonda la scala colpita di un piano.\nSblocca il rango Controller di Keeper per poter sprofondare qualsiasi scala non maledetta.",
	["chamswap"] = "Copia la tua controfigura. Tuttavia, a differenza di Unione di Reaver, questo incantesimo è solo visivo.",
	["chamdraw"] = "Trasforma la scala colpita in un ponte levatoio, sottraendo la parte inferiore e rendendo la discesa impossibile.",
	["chamdrawabove"] = "Trasforma la scala posizionata direttamente sopra a quella colpita in un ponte levatoio, sottraendo la parte inferiore e rendendo la salita impossibile. Il rango che influenzava questo incantesimo non ha più effetto.",
	["ditch"] = "Genera una scala nella direzione opposta a quella colpita.",
	["warp"] = "Piega la scala colpita verso la piattaforma indietro.",

	["chameleonrigevent"] = rig .. "Chameleon Rig. L'effetto viene scelto in modo casuale tra quelli esistenti.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","Sorpresa!"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,
}

local CommonPerksInsertALignment = {
	[1] = "Questo è il primo rango di %s.",
	[2] = "Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità %s.",
}

local CommonPerksInsertTimedSpell = {
	[3] = "Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) lancia il sortilegio %s.",
	[7] = "Il sortilegio %s dura di più del 50% (90s).",
}

module.gui.ranks = {
	["title"] = "IL TUO RANGO",

	--none
	["none_1"] = "Nessuna classe selezionata!",
	["none_2"] = "Non puoi lanciare alcun incantesimo in questo stato.",
	["none_3"] = "Salta sopra un trasformatore (locati al centro della mappa) per rimediare.",

	--shared
	["higher"] = "POSSIEDI UN RANGO MIGLIORE",
	["current"] = "RANGO ATTUALE",
	["lower"] = "RANGO BLOCCATO",

	["more"] = "Ti mancano %d ascese per ottenere questo rango.",
	["done"] = "Rango già sbloccato. Questo effetto è incluso nel tuo rango attuale.",
	["max"] = "Ultimo rango raggiunto!\nIn totale hai completato %d scalate con %s.",
	["next"] = "Premi sulla freccia verso destra per scoprire gli altri ranghi.",

	["PATRON"] = {
		[4] = "La durata dei collegamenti è raddoppiata (120s).",
		[5] = "La durata dei portali è raddoppiata (120s).",
		[6] = "Richiama Sfera richiede 2 Mana per l'esecuzione (da 3 Mana).",
		[8] = "Solo ed esclusivamente quando sei a corto di Mana, puoi eseguire un salto sopra una piattaforma per ricevere in dono 1 Mana.",
		[9] = "La sfera viene richiamata più velocemente.",
	}, 
	["JOKER"] = { 
		[4] = "Sei immune alle scale festose.",
		[5] = "Puoi rilevare le scale invisibili e hai l'opzione di non svelarle quando le calpesti.",
		[6] = "Puoi rilevare le botole e le scale illusorie.",
		[8] = "Puoi camminare sulle scale illusorie.",
		[9] = "Ricevi 1 Mana quando qualcuno cade per le tue trappole (una volta per giocatore).",
	},
	["WICKED"] = {
		[4] = "Puoi camminare sulle scale frantumate.",
		[5] = "L'incantesimo Demolisci Scale non richiede Mana per l'esecuzione.",
		[6] = "Ottieni 1 Mana per scala alterata demolita.",
		[8] = "Ricevi l'opzione per non attivare le scale alterate da Wicked Rig quando le calpesti.",
		[9] = "Puoi demolire le scale maledette.",
	},
	["SPECTRE"] = { 
		[4] = "Ottieni 1 Mana aggiuntivo quando la tua controfigura colleziona Mana.",
		[5] = "L'incantesimo Spettralizza Scale non richiede Mana per l'esecuzione.",
		[6] = "La tua controfigura può toccare la sfera finale al tuo posto.",
		[8] = "Ricevi l'opzione per non attivare le scale alterate da Spectre Rig quando le calpesti.",
		[9] = "Puoi camminare sulle scale spettralizzate.",
	},
	["KEEPER"] = {
		[4] = "Le scale non sprofondano più con l'incantesimo Spostamento Randomico e il sortilegio Keeper Rig.",
		[5] = "Puoi spostare qualsiasi scala che non sia maledetta.",
		[6] = "L'incantesimo Ripristina Scale non richiede Mana per l'esecuzione.",
		[8] = "Ricevi l'opzione per non attivare le scale alterate da Keeper Rig quando le calpesti.",
		[9] = "Puoi ripristinare le scale maledette ed i malefici.",
	},
	["HACKER"] = {
		[4] = "Ricevi l'opzione per non attivare le scale mobili quando le calpesti.",
		[5] = "L'esecuzione dell'incantesimo Passaggio è più veloce del 50%.",
		[6] = "L'esecuzione dell'incantesimo Smaterializzazione è più veloce del 50%.",
		[8] = "Aggiunge l'opzione per non attivare le scale alterate da Hacker Rig quando le calpesti.",
		[9] = "Quando usi l'incantesimo Scale Anomale in cima alla torre, vieni teletrasportato nelle vicinanze della sfera finale (se possibile).",
	},
	["THIEF"] = {
		[4] = "Le tue Scorciatoie durano il doppio del tempo (da 60s a 120s).",
		[5] = "Le tue scale a spirale durano il doppio del tempo (da 60s a 120s).",
		[6] = "Puoi rubare qualsiasi scala che non sia maledetta.",
		[8] = "Solo ed esclusivamente quando sei a corto di Mana, puoi eseguire un salto sopra una piattaforma per rubare 1 Mana.",
		[9] = "Puoi rubare due scale alla volta.",
	},
	["ARCHON"] = {
		[4] = "Puoi lanciare l'incantesimo Scollega Portali Dimensionali sulle piattaforme.",
		[5] = "L'incantesimo Scollega Portali Dimensionali non richiede Mana per l'esecuzione.",
		[6] = "Diventi immune ai portali dimensionali che teletrasportano verso il basso.",
		[8] = "Puoi cambiare la destinazione di un portale dimensionale già esistente.",
		[9] = "Ricevi l'opzione per ignorare qualsiasi tipo di portale dimensionale ad eccezioni di quelli che teletrasportano verso l'alto.",
	},
	["DRIFTER"] = {
		[4] = "Le piattaforme colpite dal sortilegio Ascensore e dall'incantesimo Elevazione si muovono più velocemente del 50%.",
		[5] = "Puoi roteare e deviare scale già deviate.",
		[6] = "Puoi potenziare gli ascensori con il sortilegio Ascensore e l'incantesimo Elevazione. Il rango Vagabond non viene applicato.",
		[8] = "Ricevi l'opzione per non attivare le scale alterate da Drifter Rig quando le calpesti.",
		[9] = "Puoi potenziare di nuovo gli ascensori con il sortilegio Ascensore e l'incantesimo Elevazione. Il rango Vagabond non viene applicato.",
	},
	["HERETIC"] = {
		[4] = "Solo ed esclusivamente quando sei a corto di Mana, puoi toccare una scala maledetta per ripristinarla e guadagnare 1 Mana.",
		[5] = "Sei immune all'effetto Posseduto.",
		[6] = "Puoi usare l'incantesimo Crea Maleficio per rimuovere malefici.",
		[8] = "L'incantesimo Genera Scale Maledette ed il sortilegio Sciagura possono demolire eventuali scale in mezzo.",
		[9] = "Ottieni 1 Mana quando qualcuno viene Posseduto.",
	},
	["SPLICER"] = {
		[4] = "Puoi ripristinare le giunture dalle piattaforme.",
		[5] = "L'incantesimo Ripristina Giuntura non richiede Mana per l'esecuzione.",
		[6] = "Ricevi l'opzione per non attivare le scale alterate da Splicer Rig quando le calpesti.",
		[8] = "Puoi combinare le scale già combinate.",
		[9] = "Ricevi 1 Mana per giuntura ripristinata.",
	},
	["REAVER"] = {
		[4] = "Puoi eseguire l'incantesimo Unione per separarti dalla tua controfigura.",
		[5] = "I tuoi specchi durano di più del 50%. (15s esteso, 9s normale)",
		[6] = "Ricevi l'opzione per non attivare le scale alterate da Reaver Rig quando le calpesti.",
		[8] = "Puoi demolire eventuali scale in mezzo con l'incantesimo Genera Scale Specchiate.",
		[9] = "Diventi immune alle scale a senso unico.",
	},
	["NECROMANCER"] = {
		[4] = "La tua controfigura ignora i malefici e le scale in mezzo quando esegui l'incantesimo Genera Scale Gemelle.",
		[5] = "Attrae la Sfera Finale sulla piattaforma dove viene eseguito Punto di Appoggio (solo in cima).",
		[6] = "L'incantesimo Imita Piattaforma della Controfigura può rimuovere malefici se necessario.",
		[8] = "Puoi demolire eventuali scale in mezzo quando esegui l'incantesimo Genera Scale Gemelle.",
		[9] = "Rigenera Mana ripristina 10 mana invece di 6, e 5 a chi si trova vicino alla tua controfigura.",
	},
	["GREMLIN"] = {
		[4] = "Puoi rilevare le Scale Trappola.",
		[5] = "Puoi richiamare i Tramm dalle piattaforme.",
		[6] = "Sei immune all'effetto Ipnotizzato.",
		[8] = "Sei immune alle Scale Trappola.",
		[9] = "Ottieni l'opzione per fermare le scale avvolte (potrebbero esserci problemi con più Gremlin)", --TODO
	},
	["MUGGLE"] = { 
		[2] = "Ricarica salto ridotta di 0.125 secondi.",
		[3] = "Ricarica salto ridotta di 0.25 secondi.",
		[4] = "Ricarica salto ridotta di 0.375 secondi.",
		[5] = "Ricarica salto ridotta di 0.5 secondi.",
		[6] = "Velocità di movimento aumentata del 10%.",
		[7] = "Velocità di movimento aumentata del 20%.",
		[8] = "Velocità di movimento aumentata del 30%.",
		[9] = "Potenza del salto aumentata del 20%.",
	},
	["CHAMELEON"] = {
		[1] = "Questo è il primo rango di CHAMELEON. Gli effetti dei ranghi delle altre classi vengono applicati se sbloccati.",
		[2] = "ATTENZIONE! Il tuo contenitore Mana viene riempito regolarmente SOLO mentre i Droni sono in modalità CHAMELEON.",
		[3] = "Le trasformazioni durano molto di meno.",
		[4] = "Gli altri giocatori non sono più in grado di comprendere quale classe stai imitando quando selezioni un incantesimo.",
		[5] = "Le scale normali e quelle illusiore sono indistinguibili.",
		[6] = "Ottieni l'accesso a 4 incantesimi proibiti.",
		[7] = "Ottieni l'accesso ad altri 2 incantesimi proibiti.",
		[8] = "Ottieni l'opzione per rendere le trasformazioni instantanee. Gli altri giocatori non sanno più quando imiti altre classi.",
		[9] = "Ottieni il sortilegio Chameleon Rig.",
	},
}

module.gui.reshuffle = {
	["title"] = "MESCOLAZIONE FORZATA?",

	["body"] = "Le scale in movimento potrebbero scontrarsi con altre scale. Nel caso succeda, queste verranno distrutte. Premi NO se vuoi evitare un mescolamento forzato.",
}

module.gui.multitokens = {
	["title"] = "CONVERTI I TUOI GETTONI MULTIUSO",

	["info"] = "Sono necessari 3 gettoni per sbloccare un nuovo incantesimo.",
	["notokens"] = "Hai esaurito i Gettoni Multiuso.",
	["nopass"] = "NON POSSIEDI QUESTA CLASSE...",
}

module.gui.feedback = {
	["title"] = "FACCI SAPERE LA TUA",

	["prompt"] = "Premi qui per iniziare a scrivere un messaggio, verrà poi letto dallo sviluppatore di ScaleMania! (almeno 20 caratteri richiesti)",
	["send"] = "INVIA",
	["locked"] = "ATTENDI",
}

module.gui.settings = {
	["title"] = "IMPOSTAZIONI DI GIOCO",

	["ANIM"] = "IMPOSTAZIONI\nANIMAZIONE",
	["MISC"] = "IMPOSTAZIONI\nGENERALI",
	["INTER"] = "IMPOSTAZIONI\nINTERFACCIA",
	["INTER2"] = "IMPOSTAZIONI\nINTERFACCIA AGGIUNTIVE",

	["list"] = "Attiva lista giocatori animata",
	["morph"] = "Mostra animazioni di trasformazione di CHAMELEON (Deceiver/Usurper)",
	["billboard"] = "Mostra ad altri giocatori informazioni sulla tua classe",
	["rank"] = "Mostra ad altri giocatori il tuo ruolo",
	["switchback"] = "Ritorna alla lista di incantesimi dopo aver lanciato un sortilegio",
	["safecancel"] = "Mostra conferma quando vuoi interrompere un sortilegio temporaneo",
	["multi"] = "Mostra convertitore Gettoni Multiuso al termine delle scalate",
	["kchoices"] = "Mostra icone direzionali per KEEPER (solo PC)",
	["hchoices"] = "Mostra icone direzionali per HACKER (solo PC)",
	["achoices"] = "Mostra icone direzionali per ARCHON (solo PC)",
	["rchoices"] = "Mostra icone direzionali per REAVER (solo PC)",
	["schoices"] = "Mostra icone direzionali per SPLICER (solo PC)",
	["gchoices"] = "Mostra icone direzionali per GREMLIN (solo PC)",
	["stats"] = "Mostra informazioni aggiuntive quando selezioni un sortilegio",
}

module.gui.gameover = {}

module.gui.gameover.results = {
	["class"] = "LA TUA CLASSE",
	["time"] = "TEMPO CRONOMETRATO",
	["climbs"] = "ASCESE GUADAGNATE",
	["tokens"] = "GETTONI RICEVUTI",
	["rank"] = "RANGO ATTUALE",
}

module.gui.gameover.messages = {
	["PATRON"] = {
		"AIUTA, PROTEGGI e CREA",
		"Questi fannulloni hanno bisogno del nostro aiuto",
		"La nostra presenza è fondamentale!",
		"Mi do un 11 su 10 per la mia prestazione",
		"Condividere è un gesto di bontà",
		"Metto un'altra scala qui, giusto per stare tranquilli",
		"La P in Patron sta per Perfezione, Passione, Prestigio, Pazienza e Presun— *AHEM* Precisione",
		"Non puoi avere una scala senza gradini",
		"Ho svolto un ottimo lavoro, mi merito una pacca sulla spalla",
	},
	["JOKER"] = {
		"INGANNA, CONFONDI e RIDI SOTTO I BAFFI",
		"Se i Droni mi ripristinano un'altra scala illusoria...",
		"Questa scalinata è uno scherzo",
		"Tutta questa serietà è angosciante...",
		"Grosse risate",
		"Seguitemi a vostro rischio e pericolo",
		"Non te la prendere, o almeno fammi vedere la reazione",
		"Fino a prova contraria, rientra tutto nel regolamento",
		"Che noia sarebbe senza un pizzico di sale?",
		"Guarda quante belle scale da scalare! Fidati di me",
	},
	["WICKED"] = {
		"PREVIENI, BLOCCA e DISTRUGGI",
		"Non era mia intenzione far fuori tutte quelle scale",
		"Queste scale hanno vissuto la loro vita",
		"Qualcuno vuole dei popcorn?",
		"Ci sono troppe scale, devo rimediare",
		"Distruggerò tutto ciò che ti sta caro... partendo dalle scale",
		"Perché state scappando tutti quanti?",
		"Queste scale lasciano il tempo che trovano",
		"La tensione è palpabile",
	},
	["SPECTRE"] = {
		"SPARISCI, NASCONDITI e TELETRASPORTATI",
		"È stato scientificamente provato che il teletrasporto è sicuro",
		"Sono fuori dalla tua portata!",
		"Il teletrasporto è la soluzione a tutti i problemi",
		"Credi ancora che i fantasmi non esistano?",
		"I problemi non si risolvono, si evitano!",
		"State sereni, le scale non le tocco... ci pensano i miei spiriti",
		"Ci sono troppe scale spettralizzate? E dove sta il problema?",
		"Stammi dietro se ci riesci!",
	},
	["MUGGLE"] = {
		"CAMMINA, SALTA e CADI",
		"Ai miei tempi gli incantesimi non esistevano...",
		"Sono abbastanza sicuro di aver visto un Drone ridere di me",
		"Ci sta sempre una strada da seguire",
		"Chi ha messo questa scala qui?",
		"Il mio segreto? Fermati e pensa",
		"Non credo nella magia",
		"Ho già provato a salire sopra un Drone",
		"Perché sono l'unico a non avere incantesimi?",
	},
	["CHAMELEON"] = {
		"COPIA, IMITA e SORPRENDI",
		"Non mi pagano abbastanza per inventare incantesimi miei",
		"Più siamo, meglio è",
		"Formate alleanze? Io sono un'alleanza vivente!",
		"Essere propensi al cambiamento ripaga",
		"So prendere le mie decisioni... anche se cambio idea spesso",
		"Hai massimizzato una classe? Spettacolare, ma io le ho tutte!",
		"Scusate, ma perché usare solo una classe quando puoi averle tutte?",
		"O caos, mio spirito guida",
	},
	["KEEPER"] = {
		"MUOVI, RUOTA e SORVEGLIA",
		"Le mie scale, NON. SI. TOCCANO!",
		"Missione compiuta!",
		"Avevo finito di lucidare la torre giusto ieri...",
		"Mi piace l'ordine",
		"Caos domato",
		"Hai di fronte a te un modello da seguire",
		"Un giorno sistemerò questa torre per bene",
		"Scale trattate bene sono scale felici",
		"Un altro successo da mettere in tasca",
	},
	["THIEF"] = {
		"PRENDI IN PRESTITO, USA E RESTITUISCI",
		"Il reato di cui mi stai accusando è molto grave",
		"Le scale piatte sono affascinanti",
		"Non sono così meschino come pensi, non ho toccato alcuna piattaforma!",
		"Se non vuoi essere derubato, beh... non farti derubare, ovvio",
		"Hai prove tangibili di me che rubo?",
		"Seguo i passi di Robin Hood, rubo ai ricchi per donare a me stesso",
		"Ma a te, se prendo una scala, ti cambia qualcosa?",
		"Io sono una vittima delle circostanze",
	},
	["HACKER"] = {
		"SFRUTTA, CREA ERRORI e RESETTA",
		"Gioco sportivo? Fammi il piacere",
		"Un momento, tutto questo è una simulazione? Qualcuno mi comanda?",
		"01010011 01000011 01000001 01001100 01000101 00100000 01001101 01000001 01001110 01001001 01000001",
		"Non so leggere, quindi le regole non si applicano a me",
		"Sarei io quello che sta barando?",
		"Sto semplicemente aggiungendo delle... migliorie al gioco",
		"Ho inventato le scale mobili",
		"Stai certo, prima o poi raggiungerò i MUGGLE",
	},
	["HERETIC"] = {
		"TU NON PASSERAI",
		"Bandire la magia nera equivale a bandire il divertimento",
		"Essere posseduti non è poi così male. Provare per credere",
		"Morte e deterioramento",
		"Rituale completato",
		"Non esiste limite alla follia",
		"Oh, sei stato posseduto? Ti sta bene",
		"Non permetterti mai più di ripristinare le mie scale",
		"Hai scelto l'oscurità... e non te ne pentirai",
	},
	["ARCHON"] = {
		"CREA PORTALI DIMENSIONALI, ???, GUADAGNO",
		"Un tempo regnavo sovrano in queste torri",
		"Bisogna anticipare ogni evenienza",
		"Mettiti sotto coi libri e poi ne riparliamo",
		"I portali dimensionali sono il futuro",
		"Non posso usando il mio potale dimensinale",
		"La torta è una bugia",
		"C'è una soluzione a tutto",
		"Evviva i portali dimensionali!",
	},
	["DRIFTER"] = {
		"VOLA, VIAGGIA e VISITA",
		"Piccolo dettaglio: siamo nello SPAZIO",
		"Le scale sono una perdita di tempo",
		"C'è una bella pace cosmica",
		"Assenza di gravità... che figata!",
		"Aladino ed il suo tappeto mi fanno un baffo",
		"Continua a navigare, non c'è nessuno nei paraggi",
		"Le piattaforme non mi deludono mai",
		"A tutta rotta!",
	},
	["SPLICER"] = {
		"DEVIA, COMBINA e DIVIDI",
		"Non si può andare sempre dritti",
		"Che casino ho combinato!?",
		"Le scale sono fatte per essere deviate",
		"Gli altri lo chiamano caos, io lo chiamo arte",
		"So combinare queste scale meglio di chiunque altro",
		"Creare relazioni tra le scale è il mio forte",
		"Le scale sono come le persone, hanno bisogno di essere unite",
		"Prometto che non sono partito di testa",
		"Combinare o dividere, questa è la questione",
		"Mille grazie Markerquest, mi hai salvato",
		"Questa torre è troppo dritta per i miei gusti",
	},
	["REAVER"] = {
		"RIFLETTI, RIMPIAZZA E UNISCI",
		"Gli specchi sono come le porte",
		"Questa torre è un'illusione",
		"La tua anima risiede negli specchi",
		"Chi sta guardando chi?",
		"Sette anni di sfortuna se rompi uno specchio… ma non per me",
		"Chi sta dalla parte sbagliata dello specchio?",
		"Io vedo il mondo attraverso gli specchi",
		"Specchio riflesso se ti muovi hai perso",
		"Ma ti sei visto? Io posso",
		"Non ti avvicinare di soppiatto in quel modo!",
	},
	["NECROMANCER"] = {
		"SEGUI, RIANIMA E RACCOGLI",
		"Vogliamo solo giocare, non spaventarti... troppo",
		"La tua anima mi spetta di diritto",
		"R.I.P.",
		"Prosciugare le scale mi ridà vita",
		"È giunta l'ora di collezionare le anime",
		"I tabloid ci hanno rovinato la reputazione, colpa di Hollywood",
		"La mia necromanzia è a vostra disposizione",
		"Ho bisogno di anim- MANA! Intendevo Mana",
 		"Prevenire è meglio che curare",
	},
	["GREMLIN"] = {
		"AVVOLGI, GIRA E IPNOTIZZA",
		"Giochiamo insieme!",
		"You spin me right 'round, baby, right 'round",
		"Questa scalinata è ultra noiosa",
		"Adesso ci metto le mani io",
		"Che ne pensi del mio capolavoro? No? Fattelo piacere ugualmente",
		"Il dottore mi ha prescritto di rilassarmi, e questo è il modo migliore per farlo",
		"Prendi nota, Joker! No, ok, scherzavo... Riassumimi al circo, per favoreee!",
		"Dov'è finita quella scala?",
		"Yippeeeeeeeeeeee!!!!!!!",
	},
}

module.gui.gameover.maxrank ={
	["SAVIOUR"] = "Modello da seguire",
	["IT"] = "La burla, la risata, la comicità...",
	["ANNIHILATOR"] = "Hai distrutto tutto, ma a che costo?",
	["AETHER"] = "Benvenuto nel regno degli inferi",
	["DABSFORLIF"] = "Incantesimi non disponibili",
	["USURPER"] = "Mi piacciono tutti gli incantesimi",
	["ADMIRAL"] = "Comandante in piena regola",
	["OUTLAW"] = "L'avidità in persona",
	["ZERO"] = "Devo solo premere questo pulsante...",
	["EXILED"] = "Scomunica",
	["ILLUMINATI"] = "L'illuminazione divina",
	["STRIDER"] = "Prenderò l'ascensore, grazie",
	["DEATHBRINGER"] = "Alzati per me!",
	["OPTIMUS"] = "Combinazione perfetta",
	["ALIEN"] = "L'unione",
	["DAEMON"] = "Quante dita vedi?",
}

module.gui.gameover.credits = {
	"CRAZY STAIRS",
	"Gioco concettualizzato, progettato e sviluppato da Sleazel",
	"Aiuto progettazione - cakegirlserina",
	"Modelli provveduti da ZielonyLeszek",
	"Sfondi provveduti dal generatore di @wwwtyro",
	"Modulo di salvataggio, DataStore2, provveduto da Kampfkarren",
	"Script originale della classifica provveduto da ThatTimothy",
	"COLLAUDATORI:",
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
	"TRADUZIONI:",
	"English - Sleazel",
	"Polski - Sleazel",
	"French - Alexnumbers",
	"Italiano - Roloversion",
	"Nederlandse - Sanderk35_2",
	"Romana - NoobMaster38271",
	"= ??? - ambronium",
	"Português - Cosmo",
	"???? - OZEPJAH",
	"??????? - NoobMaster38271",
	"Ce tina - killerproXxgood",
	"Bahasa Indonesia - echocentrical",
	"Español - TDtheTV",
	"Deutsch - 05_hallo",
	"Slovensk  - Ondrik132",
	"Bosanski - xootynator",
	"RINGRAZIAMENTI SPECIALI PER:",
	"kolcer",
	"ThatTimothy",
	"SerpentineKing",
	"WhereDidTheSunGo",
	"b3ntheplay3r2",
	"TehEpix2",
	"Narvog1",
	"shark66655",
	"MUSICA (catalogo APM):",
	"Audio iniziale - Allure da Martin Albert Sponticcia",
	"Audio finale di \"None\" - Deceived da Martin Albert Sponticcia",
	"Audio di Muggle - Hyperdrive da Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Audio finale di Muggle - Reflections da Milan Pilar",
	"Audio di Patron - Tranquilize da Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Audio finale di Patron - Dreamers da Joseph Alexander",
	"Audio di Joker - Crosswind da Martin Albert Sponticcia",
	"Audio finale di Joker - Fender Stab da Steven Raymond Bush",
	"Audio di Wicked - Wicked da Daniel Jay Nielsen, Nathan Duvall",
	"Audio finale di Wicked - Something Wicked da Cris Velasco",
	"Audio di Spectre - Reflections da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio finale di Spectre - Cosmic Dust da Milan Pilar",
	"Audio di Keeper - Automotion da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio finale di Keeper - Synth On The Highway da Richard Adrian Maxwell Preston",
	"Audio di Hacker - Network da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio finale di Hacker - Descending Into Oblivion da Richard Adrian Maxwell Preston",
	"Audio di Thief - Reaching Out da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio finale di Thief - Soaring da Richard Adrian Maxwell Preston",
	"Audio di Archon - Aperture da Paul Emons, Richard Goodliff, Ian Robson",
	"Audio finale di Archon - Rendezvous da Paul Emons, Richard Goodliff, Ian Robson",
	"Audio di Drifter - Communique da Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Audio finale di Drifter - Fragile da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio di Heretic - Mother da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio finale di Heretic - Being Me da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio di Chameleon - Rah da Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Audio finale di Chameleon - Midnight Runner da Richard Adrian Maxwell Preston",
	"Audio di Unione Spettrale - Amber Garden da Paul Emons, Richard Goodliff, Ian Robso",
	"Audio Possedimento - Dark Souls da David Arkenstone",
	"Audio scale festose di Joker - To The Disco da Gordon Zola",
	"Audio piattaforme di Drifter - Radioactivity da Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Se sei arrivato fin qui, grazie per aver giocato!",
}

module.static = {
	["cla_1"] = "Come si gioca?",
	["cla_2"] = "Prima di iniziare, ti consigliamo di completare il tutorial. Se non l'hai ancora fatto, esci e rientra nel server, altrimenti l’esperienza di gioco potrebbe risultare confusa.",
	["cla_3"] = "L'obiettivo del gioco è raggiungere la cima e raccogliere la Sfera Finale. Prima di iniziare, scegli la tua classe saltando sui trasformatori al centro della mappa.",
	["cla_4"] = "Felice con la tua scelta, puoi iniziare a scalare la torre collezionando le sfere di Mana mentre procedi; ti saranno utili per poter lanciare gli incantesimi. Fai uso della varietà di incantesimi che ogni classe offre.",
	["cla_5"] = "Come si lanciano gli incantesimi?",
	["cla_6"] = "Ogni incantesimo ha un costo in Mana. Quando ne hai abbastanza, clicca sull’icona dell’incantesimo. Le tue mani inizieranno a brillare, segno che l’incantesimo è pronto.",
	["cla_7"] = "Dopo aver selezionato l’incantesimo, devi eseguirlo saltando. A seconda dell’incantesimo, dovrai saltare su scale o piattaforme. Segui le frecce guida per indicazioni.",
	["cla_8"] = "Ogni salita completata ti darà 3 gettoni da usare per sbloccare incantesimi. Puoi scalare la torre quante volte vuoi. I gettoni sono specifici per la classe scelta e non possono essere usati per altre classi.",
	["cla_9"] = "Come si lanciano i sortilegi?",
	["cla_10"] = "Per lanciare i sortilegi devi prima sbloccare tutti gli incantesimi base. I sortilegi non vanno sbloccati, ma consumano Gettoni invece di Mana.",
	["cla_11"] = "Per sbloccare tutti gli incantesimi di una classe, scala la torre almeno 6 volte. Puoi guadagnare Gettoni extra vincendo le gare, oppure acquistarli nel negozio. L’icona dei sortilegi si trova a sinistra degli incantesimi.",
	["cla_12"] = "Alcuni sortilegi sono temporanei e non richiedono il salto per essere attivati. Annullare questi sortilegi non restituisce i gettoni spesi. Per maggiori dettagli, consulta le descrizioni nei santuari delle Classi.",

	["pro_1"] = "TORRE PROFESSIONALE",
	["pro_2"] = "Vincolo dei piani pari",
	["pro_3"] = "Nella torre professionale, alcuni incantesimi non possono essere usati sui piani pari. Crea Trappola, Crea Portale, Emersione, Posiziona Scale a Spirale e altri possono essere lanciati solo sui piani dispari.",
	["pro_4"] = "Neanche i Drifter possono usare queste piattaforme. Sono facilmente riconoscibili grazie al cerchio rosso al centro.",
	["pro_5"] = "Scale maledette",
	["pro_6"] = "Nella Torre Professionale i Droni possono creare scale maledette o trasformare quelle normali in maledette con una probabilità del 20%. Le frecce guida scompaiono vicino a queste",
	["pro_7"] = "Le scale maledette sono immuni alla maggior parte degli incantesimi, inclusi Smaterializzazione e Scatto Fantasma. In conclusione, qualsiasi incantesimo che porterebbe alla distruzione di queste scale non ha effetto.",
	["pro_8"] = "Solo Heretic e Keeper possono ripristinare le scale maledette. Anche l'Evento Annichilazione e l'Evento Restaurazione possono rispettivamente distruggere e ripristinare le scale maledette. I Droni non resteranno con le mani in mano, tuttavia.",
	["pro_9"] = "Malefici",
	["pro_10"] = "Come se non fosse abbastanza, i Droni possono anche creare malefici. Le intersecazioni normali hanno il 20% di diventare maledette. Le frecce guida nelle vicinanze di malefici prenderanno le sembianze di una croce rossa.",
	["pro_11"] = "I malefici inibiscono tutti gli incantesimi che vengono lanciati sulle frecce, pertanto quelli che portano alla generazione di scale o che teletrasportano l'utente su altre piattaforme non possono essere lanciati.",
	["pro_12"] = "Solo Heretic, Keeper e i Droni possono rimuovere tali malefici. Seguendo lo stesso esempio delle scale maledette, anche i malefici vengono rimossi in seguito all'Evento Annichilazione, tuttavia la Rigenerazione ne creerà di nuovi.",

	["inf_1"] = "INFINITE TOWER",
	["inf_2"] = "CORSA OBBLIGATORIA",
	["inf_3"] = "I giocatori sono obbligati a partecipare a una gara e agli spettatori non è concesso l'uso di incantesimi (quindi non riceveranno ricompense). La sfera finale conferisce 10 Mana al tocco.",
	["inf_4"] = "Per vincere premi in una corsa nella torre senza fine, devi restare in gioco più a lungo possibile! Riceverai eventuali ricompense in base alla tua posizione in classifica.",
	["inf_5"] = "Drone Anziano",
	["inf_6"] = "Il Drone Anziano svolge un ruolo di maggiore importanza nella torre senza fine.",
	["inf_7"] = "Durante ogni intervallo, il Drone Anziano crea 2 nuovi piani. Le piattaforme nei piani pari sono vincolate. Inoltre, è possibile che vengano generate scale maledette o malefici.",
	["inf_8"] = "Il primo intervallo dura 20 secondi. Ogni prolungamento della torre riduce la durata degli intervalli di 0,5 secondi.",
	["inf_9"] = "La Soglia",
	["inf_10"] = "La soglia si solleverà man mano che la torre viene prolungata. Cadere sotto la soglia comporta l'eliminazione; se ci tieni a rimanere in gara, stanne alla larga!",
	["inf_11"] = "Sia il Drone Anziano che la Soglia guadagnano velocità nel tempo. Tuttavia la Soglia non arriverà mai a cancellare 2 piani alla volta.",
	["inf_12"] = "I pezzi della torre che vengono toccati dalla Soglia svaniscono, scala la torre il più velocemente possibile senza rimanere indietro in modo da assicurarti premi migliori.",

	["cus_1"] = "TORRE PERSONALIZZABILE",
	["cus_2"] = "A TE LA SCELTA!",
	["cus_3"] = "In questa torre puoi modificare le impostazioni a tuo piacimento.",
	["cus_4"] = "Per una questione di correttezza, le ricompense sono dimezzate. Premi ottenibili: 1 Gettone ogni 12 piani e 1 Ascesa ogni 30 piani.",
	["cus_5"] = "Impostazioni della torre",
	["cus_6"] = "Puoi modellare la torre come preferisci. Genera nuovi piani, attiva vincoli oppure abilita la Torre Senza Fine.",
	["cus_7"] = "Solo il proprietario del server può modificare le impostazioni.",
	["cus_8"] = "Impostazioni dei droni",
	["cus_9"] = "Sfoga la tua rabbia contro i Droni qui. Puoi metterli a dormire, oppure modificare il limite minimo e massimo di scale come più ti aggrada.",

	["vr_1"] = "Quando giochi a ScaleMania in Realtà Virtuale, puoi diventare Architect.",
	["vr_2"] = "A differenza degli altri giocatori, il tuo obiettivo non è quello di scalare la torre. Ti offro una scelta: aiuta chi sta in difficoltà, oppure semina il caos.",
	["vr_3"] = "Sarai il prossimo eroe sulle copertine o il cattivo della storia? Forse vuoi solo passare il tempo? Procedi pure!",
	["vr_4"] = "Come mi muovo?",
	["vr_5"] = "Usa il joystick sinistro per muoverti orizzontalmente.",
	["vr_6"] = "Usa il joystick destro per muoverti verticalmente.",
	["vr_7"] = "Evita di rimanere tra le scale per garantire una migliore esperienza di gioco.",
	["vr_8"] = "Come lancio gli incantesimi?",
	["vr_9"] = "Per selezionare un incantesimo, tieni premuto il pulsante laterale del controller. Apparirà un puntatore laser con cui puoi mirare scale e piattaforme.",
	["vr_10"] = "Lancia un incantesimo premendo il pulsante centrale del controller, tenendo premuto anche quello laterale. Ogni classe dispone di due incantesimi: uno per le scale e uno per le piattaforme. L'effetto varia in base all'elemento colpito.",
	["vr_11"] = "Per cambiare classe, tieni premuto solo il pulsante centrale del controller e seleziona l'opzione desiderata.",

	["home_1"] = "CASA DI MUGGLE",
	["home_2"] = "LA NOSTRA MASSIMA:\nCAMMINA\nSALTA\nE\nCADI",
	["home_3"] = "PRO:\nSei più veloce degli altri (con i ranghi)\nTi puoi vantare\nCONTRO:\nNiente incantesimi\nPotresti perderti spesso",
	["home_4"] = "'Ai miei tempi gli incantesimi non esistevano...'\ncitazione dal nostro fondatore",

	["oasis_1"] = "CHAMELEON'S OASIS",
	["oasis_2"] = "OUR MOTTO:\nCOPY\nIMITATE\nAND\nSURPRISE",
	["oasis_3"] = "PROS:\nCan change alignments anywhere, anytime\nCONS:\nCosts Robux\nRanking up all classes takes time",
	["oasis_4"] = "'I am too lazy to come up with my own spells.'\nour founder's quote",

	["nexus_1"] = "HERETIC'S NEXUS",
	["nexus_2"] = "OUR MOTTO:\nYOU\nSHALL\nNOT\nPASS",
	["nexus_3"] = "PROS:\nBest in pro tower\nCannot be stopped\nCONS:\nTeaming is tricky\nMana hungry",
	["nexus_4"] = "'Banning black magic is like banning fun.'\nour founder's quote",

	["guild_1"] = "THIEF'S GUILD",
	["guild_2"] = "OUR MOTTO:\nBORROW\nUSE\nAND\nRETURN",
	["guild_3"] = "PROS:\nMana efficient\nVersatile\nCONS:\nNeeds to steal stairs\nCannot destroy crossing stairs",
	["guild_4"] = "'It's called borrowing actually.'\nour founder's quote",

	["nether_1"] = "SPECTRE'S NETHER",
	["nether_2"] = "OUR MOTTO:\nDISAPPEAR\nHIDE\nAND\nTELEPORT",
	["nether_3"] = "PROS:\nFast spells\nPerfect for solo play\nCONS:\nCosts Robux\nNot recommended for teams",
	["nether_4"] = "'Of course teleporting is safe.'\nour founder's quote (MIA)",

	["study_1"] = "ARCHON'S STUDY",
	["study_2"] = "OUR MOTTO:\nOPEN\nPORTAL\n???\nPROFIT",
	["study_3"] = "PROS:\nUseful Rig\nConfuses opponents\nCONS:\nHardest to learn\nRequires planning",
	["study_4"] = "'I used to rule this staircase.'\nour founder's quote",

	["haven_1"] = "PATRON'S HAVEN",
	["haven_2"] = "OUR MOTTO:\nHELP\nPROTECT\nAND\nCREATE",
	["haven_3"] = "PROS:\nEasiest to learn\nTeam player\nCONS:\nUses a lot of Mana\nMay attract leechers",
	["haven_4"] = "'Those noobs need our help!'\nour founder's quote",

	["shelter_1"] = "DRIFTER'S SHELTER",
	["shelter_2"] = "OUR MOTTO:\nSURF\nRIDE\nAND\nGLIDE",
	["shelter_3"] = "PROS:\nVersatile\nTeam player\nCONS:\nRequires some parkour skills\nTricky in pro towers",
	["shelter_4"] = "'Who needs stairs anyway? We're in space!'\nour founder's quote",

	["circus_1"] = "JOKER'S CIRCUS",
	["circus_2"] = "OUR MOTTO:\nDECEIVE\nCONFUSE\nAND\nLAUGH",
	["circus_3"] = "PROS:\nMade for trolling\nFlips are very useful\nCONS:\nExpensive spells\nYou may ruin friendships",
	["circus_4"] = "'This staircase is a joke.'\nour founder's quote",

	["base_1"] = "KEEPER'S BASE",
	["base_2"] = "OUR MOTTO:\nMOVE\nROTATE\nAND\nCONTROL",
	["base_3"] = "PROS:\nCan restore stairs\nCan reuse stairs\nCONS:\nRequires parkour to use correctly\nUseless without stairs",
	["base_4"] = "'Stop messing up my staircase!'\nour founder's quote",

	["chamber_1"] = "WICKED'S CHAMBER",
	["chamber_2"] = "OUR MOTTO:\nPREVENT\nBLOCK\nAND\nDESTROY",
	["chamber_3"] = "PROS:\nCan destroy any stairs\nCan purge whole staircase\nCONS:\nOver-reliant on stairs",
	["chamber_4"] = "'I'm not evil, there are just too many stairs.'\nour founder's quote",

	["backdoor_1"] = "HACKER'S BACKDOOR",
	["backdoor_2"] = "OUR MOTTO:\nEXPLOIT\nGLITCH\nAND\nBREAK",
	["backdoor_3"] = "PROS:\nFastest alignment\nHard to follow\nCONS:\nOver-reliant on stairs\nUseless in teams",
	["backdoor_4"] = "'Fair play? There's no such thing.'\nour founder's quote",

	["hub_1"] = "SPLICER'S HUB",
	["hub_2"] = "OUR MOTTO:\nTWIST\nSPLICE\nAND\nCONNECT",
	["hub_3"] = "PROS:\nVersatile\nGood in teams\nCONS:\nBit confusing.\nTakes time to learn",
	["hub_4"] = "'Never go in a straight line for too long.'\nour founder's quote",

	["shack_1"] = "GREMLIN'S SHACK",
	["shack_2"] = "OUR MOTTO:\nROTATE\nREVOLVE\nAND\nHYPNOTIZE",
	["shack_3"] = "PROS:\nNo pros\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE",
	["shack_4"] = "'Come play with me.'\nour founder's quote",

	["mirror_1"] = "REAVER'S MIRROR",
	["mirror_2"] = "OUR MOTTO:\nREFLECT\nREPLACE\nAND\nMERGE",
	["mirror_3"] = "PROS:\nMirrors can be used by other players\nCONS:\nMerge and unmerge mechanic may be confusing.",
	["mirror_4"] = "'Mirrors are just doorways.'\nour founder's quote",

	["grave_1"] = "NECROMANCER'S GRAVE",
	["grave_2"] = "OUR MOTTO:\nFOLLOW\nREVIVE\nAND\nBENEFIT",
	["grave_3"] = "PROS:\nWorks well if other players follow your ghost.\nSpells help you and others as well.\nCONS:\nHeaviest alignment on mana.\nDifficult to get used to watching your ghost.",
	["grave_4"] = "'We aren’t actually haunting you, we just wanna be friends.'\nour founder's quote",

	--SHARED
	["leader_pro"] = "Pro Tower counts as 2 climbs",	
	["leader_update"] = "Update in: ",	
	["leader_updating"] = "Updating...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "CLIMBS REQ",
	["leader_off"] = "Custom tower does not support leaderboards.",

	--OVERALL
	["over_title"] = "OVERALL RANKS",
	["over_desc"] = "Each acquired rank adds 1 point",
	["over_rank"] = "RANK",
	["over_req"] = "POINTS REQ",
	["emperor_req"] = "* Requires Chamelon OR Spectre",
	["overmind_req"] = "** Requires Chamelon AND Spectre",
	["over_prefix"] = "PREFIX",
	["over_passes"] = "GAME PASSES\nREQUIRED",
	["over_notgroup"] = "OLIVE COLOR - not in group",
	["over_group"] = "TEAL COLOR - in the group",
	["over_mod"] = "MODERATOR - player is a moderator",
	["over_admin"] = "ADMIN - player is an admin", -- pwease sleazel uwu
	["over_owner"] = "PRANK ME - Game creator (sleazel)",

	--OTHER
	["muggle_lead"] = "HASTY MUGGLES",
	["muggle_ranks"] = "MUGGLE RANKS",

	["hacker_lead"] = "ENCRYPTED HACKERS",
	["hacker_ranks"] = "HACKER RANKS",

	["wicked_lead"] = "VIOLENT WICKEDS",
	["wicked_ranks"] = "WICKED RANKS",

	["keeper_lead"] = "PREPARED KEEPERS",
	["keeper_ranks"] = "KEEPER RANKS",

	["joker_lead"] = "CRAZY JOKERS",
	["joker_ranks"] = "JOKER RANKS",

	["drifter_lead"] = "RAPID DRIFTERS",
	["drifter_ranks"] = "DRIFTER RANKS",

	["patron_lead"] = "NOBLE PATRONS",
	["patron_ranks"] = "PATRON RANKS",

	["archon_lead"] = "AGILE ARCHONS",
	["archon_ranks"] = "ARCHON RANKS",

	["spectre_lead"] = "FLYING SPECTRES",
	["spectre_ranks"] = "SPECTRE RANKS",

	["thief_lead"] = "STEALTHY THIEVES",
	["thief_ranks"] = "THIEF RANKS",

	["heretic_lead"] = "RUTHLESS HERETICS",
	["heretic_ranks"] = "HERETIC RANKS",

	["necromancer_lead"] = "UNDEAD NECROMANCERS",
	["necromancer_ranks"] = "NECROMANCER RANKS",

	["splicer_lead"] = "TWISTED SPLICERS",
	["splicer_ranks"] = "SPLICER RANKS",

	["reaver_lead"] = "REFLECTED REAVERS",
	["reaver_ranks"] = "REAVER RANKS",

	["gremlin_lead"] = "LUCKY GREMLINS",
	["gremlin_ranks"] = "GREMLIN RANKS",

	["chameleon_lead"] = "SWIFT CHAMELEONS",
	["chameleon_ranks"] = "CHAMELEON RANKS",

	["dailies"] = "TODAY'S RECORDS",
	["most_climbs"] = "MOST CLIMBS",
	["most_wins"] = "MOST RACE WINS", 

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Welcome to Crazy Stairs!",
	["tut_big_2"] = "First learn how to morph.",
	["tut_big_3"] = "You are now a Patron, Patrons can create stairs.",
	["tut_big_4"] = "All spells need to be executed by jumping.",
	["tut_big_5"] = "Cool, huh? Now morph to Joker. Jokers can flip stairs.",
	["tut_big_6"] = "You are now a Joker, use this spell to flip stairs.",
	["tut_big_7"] = "Some spells need to be executed on stairs.",
	["tut_big_8"] = "Now morph to Keeper. Keepers can move stairs.",
	["tut_big_9"] = "You are now a Keeper, use this spell to move stairs.",
	["tut_big_10"] = "Jump on the forward arrow to move stairs.",
	["tut_big_11"] = "You will encounter many blocking stairs in this game.",
	["tut_big_12"] = "You are now a Wicked, use this spell to destroy blocking stairs.",
	["tut_big_13"] = "You can destroy above stairs, by jumping on below ones.",
	["tut_big_14"] = "Before we begin, let me show you the premium alignment.",
	["tut_big_15"] = "You are now a Spectre, Spectre is a premium alignment best for solo play.",
	["tut_big_16"] = "Your goal - reach the top and grab the orb. Good luck!",

	["tut_select"] = "Select this spell.",

	["tut_small_init"] = "Jump to spawn tutorial",
	["tut_small_morph"] = "Jump on morph.",
	["tut_small_arrow"] = "Jump on arrow.",
	["tut_small_stairs"] = "Jump on stairs.",

}

module.where = {

	["platform"] = "Must be executed on platform. Won't work on bottom nor even levels in pro towers.",
	["arrow"] = "Must be executed on platform's arrows.",
	["stairs"] = "Must be executed on stairs.",
	["above"] = "Must be executed on below stairs, to affect the above stairs. Works on links too.",
	["dynamic"] = "May affect both below and above stairs.",
	["both"] = "Can be executed on either platform's arrows or stairs.",
	["both2"] = "Can be executed on either platform or stairs.",
	["anywhere"] = "Can be executed anywhere.",
	["nowhere"] = "This spell does not require an execution.",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "Can be executed on an empty intersections or through non-blocking stairs",
		--["restore"] = "Can be executed next to.",
		["superforced"] = "Can be executed on an empty intersection, or through crossing stairs. Rank up to BANISHED to demolish crossing cursed stairs.",
		["flicker"] = "Can be executed on an empty intersection. Rank up to Infidel to execute on a cursed intersection.",
		["any"] = "Can be executed on any un-cursed intersection.",
		["wall"] = "Can be executed on any un-cursed intersection, without a Wall or Gate in the way.",
		--["ghosted"] = "Can be only used on normal, rigged or ghosted stairs",
		--["deltwists"] = "Can be only used on spliced stairs.",
		["forced"] = "Can be executed on an empty intersection, or through un-cursed crossing stairs.",
		["halfsoft"] = "Can be executed on an empty intersection, or through un-cursed crossing stairs on higher ranks.",
		["soft"] = "Can be executed on an empty intersection only.",
		["flatten"] = "Can be executed on an intersection with normal or rigged crossing stairs only.",
		["hack"] = "Can be executed on an intersection with any un-cursed crossing stairs only.",
		["sidepass"] = "Can be executed on any un-cursed intersection without a Bypass yet.",
	},

	["platform"]= {
		

		--platform
		["middle"] = "This spell has no special requirements.",
		["diag"] = "Can be executed in both inner and outer diagonal directions.",
		["outer"] = "Can be executed in perpendicular outer directions only.",
		["centre"] = "This spell will demolish any small mirrors already on the current level, but not the big one.",
		["inner"] = "Can be executed in inner diagonal directions only, without a link yet.",
		["prevolve"] = "Can be executed in both clockwise and counterclockwise directions.",
		["top"] = "Can be exectued on top platforms only.",
	},
	
	["stairs"] ={
		
		["cursed"] = "Can be exectued on normal, rigged or cursed stairs.",
		["all"] = "Can be executed on any stairs. Rank up to Annihilator to destroy cursed stairs.",
		["steal"] = "Can be executed on normal or rigged stairs. Rank up to Hijacker to steal any un-cursed stairs.",
		["onedirection"] = "Can be executed on normal or rigged stairs. Rank up to Controller to move any un-cursed stairs.",
		["straight"] = "Can be executed on normal or rigged stairs. Rank up to Controller to move any un-cursed stairs.",
		["rotate"] = "Can be executed on normal or rigged stairs. Rank up to Controller to move any un-cursed stairs.",
		["flip"]= "Can be executed on normal, flipped or rigged stairs.",
		["gate"] = "Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates.",
		["gatestr"] = "Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates",
		["gaterot"] = "Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates",
		["twist"] = "Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		["twiststr"] = "Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		["twistrot"] = "Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		["spin"] = "Can be executed on normal or rigged stairs. Rank up to Nomad to spin already drifted stairs.",
		["drift"] = "Can be executed on normal or rigged stairs. Rank up to Nomad to drift already drifted stairs.",
		["escalator"] = "Can be executed on normal or rigged stairs only.",
		["oneway"] = "Can be executed on normal or rigged stairs only.",
		["revolve"] = "Can be executed on normal or rigged stairs only.",
		["normalrig"] = "Can be executed on normal or rigged stairs only.",

	},
	
	["above"] = {
		
		["cursed"] = "Can be exectued below normal, rigged or cursed stairs.",
		["all"] = "Can be executed below any stairs. Rank up to Annihilator to destroy above cursed stairs.",
		["steal"] = "Can be executed below normal or rigged stairs. Rank up to Hijacker to steal any above un-cursed stairs.",
		["flip"]= "Can be executed below normal, flipped or rigged stairs.",
		["onedirection"] = "Can be executed below normal or rigged stairs. Rank up to Controller to move any above un-cursed stairs.",
		["slide"] = "This spell lets you bypass any un-cursed blocking stairs.",
		["normalrig"] = "Can be executed below normal or rigged stairs only.",

	},
	
	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Can be executed on or below normal, flipped or rigged stairs. If above execution fails for any reason, below stairs will be affected instead.",
		['normalrig'] = "Can be executed on or below any normal or rigged stairs. Spell will be applied to both above and below stairs.",
		['slide'] = "Can be executed on normal or rigged stairs. If there are blocking un-cursed stairs above, they will be removed.",
	},
	
	["both"] = {
		['restore'] = "Can be executed on any stairs or on platform's arrow with any adjacent stairs. Rank up to Admiral to restore cursed stairs.",
		['deltwists'] = "Can be executed on twisted stairs only or on platform's arrow with adjacent twisted stairs. Rank up to Combiner to restore de-attached stairs from platform.",
		['ghosted'] = "Can be executed on normal, rigged or ghosted stairs or on platfrom's arrow with adjacent normal, rigged or ghosted stairs.",

	},
	
	['both2'] = {
		['delsplits'] = "Can be excuted on gated stairs only. Rank up to Disciple to use this spell to remove Platform's gates."
	},
	
	['anywhere'] = {
		['anywhere'] = "This spell can be executed anywhere.",
	},
	
	["nowhere"] = {
		['slide'] = "This spell does not require an execution.",
		
	},

}



module.spells.manacosts = {
	"0 Mana",
	"1 Mana",
	"2 Mana",
	"3 Mana",
	"4 Mana", 
	"0 Mana + stairs",
	"1 Mana + stairs",
	"2 Mana + stairs",
	"3 Mana + stairs", 
	"", 
	"10 Mana" 
}

module.spells.tokencosts = {

	"1 Token",
	"2 Tokens",
	"3 Tokens",

	["chameleonrigevent"] = "2 Multi Tokens",
	["unlock"] = "(unlock for 3 tokens)",
}

module.serverfeedback = {
	 
	--failed spell (local)
	["nomana"] = "Not enough Mana!",
	["notokens"] = "Not enough tokens!",
	["coolwait"] = "You can't cast rigs and events now, please wait ",
	["nomirror"] = "You need to be joined with ghost to walk on mirrors",
	["regenused"] = "Regen already used during this climb.",

	--failed spell (server)
	["unknown"] = "Unknown issue.", --this should not show for normal players, only exploiters
	["lockedspell"] = "This spell is locked!",
	["possessed"] = "You can't use spells while possessed.",
	["spelllock"] = "You cannot cast spells now",
	["nothere"] = "You can't use this spell in the tutorial.",
	["onlyracers"] = "Only racing players can cast spells.",
	["cancelfirst"] = "You need to cancel current spell first...",
	["stashfull"] = "Your stairs stash is full.",
	["stashempty"] = "You have to steal stairs before casting this spell.",
	["ultwait"] = "Another ultimate spell is in progress. Please wait.",
	["notdefault"] = "Drones need to be back in default mode first. Please wait.",
	["regwait"] = "You cannot cast rigs and events, while the Staircase is regenerating.",
	["cooldownwait"] = "You can't cast rigs and events now, please wait %d seconds.",
	["nospellsnow"] = "You cannot cast spells right now.",
	["noreshuffle"] = "Choose reshuffle mode first!",
	["oneoverload"] = "You can't have multiple Mana Overloads active.",
	["cursed"] = "These stairs are cursed!",
	["cursed2"] = "Cursed stairs are in the way!",
	["blocked"] = "This intersection is cursed.",
	["locked"] = "These stairs are locked.",
	["platformlocked"] = "Target platform is locked.",
	["normalrig"] = "This spell works only on normal or rigged stairs.",
	["cantblock"] = "Cannot curse, there are stairs here. (might be invisible)",
	["cantblock2"] = "Cannot curse, there are crossing stairs in the way. (might be invisible)",
	["noway"] = "Stairs are in the way. (might be invisible)",
	["noway2"] = "Crossing stairs are in the way. (might be invisible)",
	["noplatform"] = "No platform found in that direction.",
	["nopass"] = "Pass can only be created on the outer platforms.",
	["pass"] = "Pass is already here.",
	["link"] = "Link is already here.",
	["noblink"] = "You can only blink through blocking stairs.",
	["noblink2"] = "You cannot blink on bridges and bent down stairs.",
	["noflip"] = "Only normal, flipped or rigged stairs can be flipped.",
	["nothingtocopy"] = "No staircases are available to copy for you nor your ghost.",
	["wrongdirection"] = "You cannot cast this spell in that direction.",
	["notfound"] = "Stairs not found.",
	["nocursedblink"] = "You can't blink around cursed stairs.",
	["nostairs"] = "There are no stairs here.",
	["noground"] = "This spell cannot be cast on the ground level.",
	["oddonly"] = "This spell cannot be cast on this level.",
	["noabove"] = "No stairs found directly above.",
	["linklimit"] = "Only \"above spells\" can be executed on links.",
	["lock"] = "You cannot cast spells now",
	["outdrift"] = "Outside drift can only be created on the outer platforms.",
	["cantgate"] = "This direction is blocked.",
	["wall"] = "Wall is already here.",
	["nocurse"] = "Only normal, cursed or rigged stairs can be cursed/uncursed.",
	["nogate"] = "These stairs are not gated.",
	["noghost"] = "Only ghosted stairs can be de-ghostified.",
	["wrongsplit"] = "Other gate must be in the game area.",
	["blockedplit"] = "Can't create split, target intersection is cursed.",
	["cursedtarget"] = "There are Cursed Stairs in that destination.",
	["lockedsplit"] = "Cannot create split yet, other stairs are locked.",
	["failedgate"] = "Split creation has failed.",
	["notwist"] = "Those stairs are not twisted.",--*
	["wrongmove"] = "Stairs cannot be moved out of game area.",
	["blockedmove"] = "Can't move stairs, target intersection is cursed.",
	["lockedmove"] = "Cannot move stairs yet, blocking stairs are locked.",
	["normal"] = "These stairs are normal.",
	["lockedinter"] = "This intersection is locked.",
	["toponly"] = "The 'Call the Orb' spell can only be cast on the top level.",
	["duplicatemirror"] = "There is already a mirror on this level.",
	["norestore"] = "Thief bypasses and spirals cannot be restored.",

	--higher rank required
	["admiral2"] = "Rank up to Admiral to uncurse Stairs.",
	["admiral"] = "Rank up to Admiral to uncurse intersections.",
	["infidel"] = "Rank up to Infidel flicker on cursed intersection.",
	["banished"] = "Rank up to Banished, to destroy crossing Cursed Stairs.",
	["annihilator"] = "Rank up to Annihilator to destroy Cursed Stairs.",
	["disciple"] = "Rank up to Disciple to destroy Platform Splits.",
	["nomad"] = "Rank up to Nomad to spin already drifted stairs.",
	["prodigy"] = "Rank up to Prodigy, to override Gates.",
	["traveller"] = "Rank up to Traveller to boost Elevators.",
	["controller"] = "Rank up to Controller, to move any uncursed stairs.",--*
	["replica"] = "Rank up to Replica, to use this spell to unmerge.",--*
	["lich"] = "Rank up to Lich to demolish crossing stairs.",
	["hijacker"] = "Rank up to Hijacker to steal any uncursed stairs.",
	["transformer"] = "Rank up to Transformer to splice already spliced stairs.",
	["strider"] = "Rank up to Strider to double boost UP DRIFTS.",
	["poltergeist"] = "Rank up to Poltergeist to demolish crossing stairs.",

	--rig activation
	["keeperrig"] = "Stairs are moving!",
	["hackerrig"] = "Stairs have glitched!",
	["jokerrig"] = "Stairs have flipped!",
	["wickedrig"] = "Stairs are collapsing!",
	["spectrerig"] = "Stairs have ghosted!",
	["notspectrerig"] = "Stairs have NOT ghosted!",
	["patronrig"] = "You have received 1 Mana, courtesy of %s!",
	["thiefrig"] = "%s has stolen 1 Mana!",
	["mythiefrig"] = "You have stolen 1 mana from %s",
	["notthiefrig"] = "%s is no longer a thief - no mana stolen.",
	["leftthiefrig"] = "Thief has left the game -  no mana stolen.",
	["hereticrig"] = "You have been possessed!",
	["archonrig"] = "Phase teleport!",
	["drifterrig"] = "Stairs are spinning!",
	["splicerrig"] = "Stairs are twisting!",
	["necrorig"] = "Stairs are fading!",
	["reaverrig"] = "Stairs are now one way only!",
	["gremlinrig"] = "You have been hypnotized!",
	["reveal"] = "You have revealed invisible stairs!",
	
	--drifer lifts
	["boosted"] = "Drift boosted!",
	["noboost"] = "Cannot boost, no more platforms above.",
	["noupplatform"] = "Cannot boost, no more platforms above.",
	
	--mana overload
	["overstarted"] = "You have activated Mana Overload!",
	["overended"] = "Mana Overload ended.",
	
	--mana share
	["2minshare"] = "At least 2 mana required...",
	["noshare"] = "No nearby players to receive mana...",
	["noinf"] = "You cannot share infinite mana!",
	["toomuch"] = "%s has maximum Mana!",
	["shared"] = "Mana shared with %s!",
	["received"] = "%s has shared some Mana with you!",
	
	--prompts
	["scancel"] = "Cancel your spell to change alignments.",
	["morph"] = "Jump here to become %s!",
	
	--race
	["raceclosed"] = "Race is now closed.",
	["stay"] = "Stay in the ring to take part in the race!",
	["falsestart"] = "False Start.",
	["charreset"] = "Character reset elimination.",

	--misc
	["secret"] = "Secret found!",
	["unlocked"] = "Spell unlocked!",

	--chameleon exceptions	
	["chamtutorial"] = "You can't use CHAMELEON in the tutorial!",
	["champossessed"] = "You can't use chameleon while possessed.",
	["chamhypnotized"] = "You can't use chameleon while hypnotized.",
	["chamspell"] = "Please execute or cancel current spell first.",
	["morphpossessed"] = "You can't change alignment while possessed.",
	["morphhypnotized"] = "You can't change alignment while hypnotized.",
	
	["nocode"] = "Please enter the code first.",
	["invalid"] = "This code is invalid.",
	["old"] = "This code is no longer active.",
	["accepted"] = "Code accepted.",
	
	--free demos
	["tryspectre"] = "Spectre unlocked for 10 minutes! Do not leave server.",
	["endspectre"] = "Spectre demo will end in 1 minute!",
	["trycham"] = "Chameleon unlocked for 10 minutes! Do not leave server.",
	["new20pass"] = "Mana limit increased!",
	["newchampass"] = "You can now change alignment during climb!",
	["newspectrepass"] = "You can now become a SPECTRE!",
	["endcham"] = "Chameleon demo will end in 1 minute!",
	["trymana"] = "Bigger storage unlocked for 10 minutes! Do not leave server.",
	["endmana"] = "Bigger storage demo will end in 1 minute!",
	
	
	["used"] = "Code has been used already.",
	["tooshort"] = "Your message was too short and not sent.",
	["sent"] = "Your message was sent successfully, thank you.",
	
	--private server moderation (might be re-implemented in the future)
	["muted"] = "% is now muted.",
	["unmuted"] =  "%s is now unmuted.",
	["kicked"] = "%s has been kicked!",
	["banned"] = "%s has been banned!",
	["mekicked"] = "%s has kicked you from their server.",
	["mebanned"] = "%s has banned you from their server.",
	["permban"] = "%s has banned you from this game.",
	["kick"] = "%s has kicked you from the game.",
	["48ban"] = "%s has banned you for 48 hours.",
	["exiled"] = "You are banned from this private server! THIS IS NOT A GAME BAN",
	["permbanned"] = "You are banned from this game.",
	["timeout"] = "Your ban will end in: %02i hours and %02i minutes.",
	
	--custom tower feedbacks
	["notinrace"] = "You cannot switch to infinite mode during a race!",
	["notinreg"] = "You cannot switch the infinite mode during a regeneration!",
	["infinite"] = "Server is now in the infinite mode!",
	["classic"] = "Server is now in the classic mode",
	["casual"] = "Casual players can now cast spells!",
	["nocasual"] = "Casual players can no longer cast spells",
	["purge"] = "Purge will now cause a regeneration in classic mode!",
	["nopurge"] = "Purge will no longer cause a regeneration in classic mode!",
	["noevens"] = "Even levels are now restricted",
	["evens"] = "Even levels are now fully enabled",
	["orbmoves"] = "Endgame Orb will now move randomly on its own!",
	["orbstopped"] = "Endgame Orb will no longer move on its own!",
	["infreg"] = "Staircase will regenerate after infinite round!",
	["noinfreg"] = "Staircase will not regenerate after infinite round!",
	["drones"] = "Small Drones enabled!",
	["nodrones"] = "Small Drones disabled!",
	["dronefix"] = "Drones will restore stairs!",
	["nodronefix"] = "Drones will not restore stairs!",
	["droneunlock"] = "Drones will remove cursed intersections!",
	["nodroneunlock"] = "Drones will not remove cursed intersections!",
	["droneuncurse"] = "Drones will restore cursed stairs!",
	["nodroneuncurse"] = "Drones will not restore cursed stairs",
	["dronemove"] = "Drones will move stairs in the default mode!",
	["nodronemove"] = "Drones will not move stairs in the default mode!",
	["dronespin"] = "Drones will spin stairs in the default mode!",
	["nodronespin"] = "Drones will not spin stairs in the default mode!",
	["noinput"] = "Please input a value!",
	["nonumber"] = "Please input a number!",
	["notrace"] = "You cannot change tower levels during a race!",
	["notultimate"] = "You cannot change tower levels during an ultimate spell!",
	["notregen"] = "You cannot change tower levels during a regeneration!",
	["wait"] = "Tower levels are being changed, please wait...",
	["duration"] = "Race duration changed (it will not affect current race)",
	["init"] = "Initial infinite interval time changed",
	["reduction"] = "Infinite reduction time changed",
	["mininf"] = "Minimum infinite interval time changed",
	["cooldown"] = "Rig and event spell cooldown changed",
	["speed"] = "Small drones speed changed",
	["spin"] = "Small drones casting duration changed",
	["max"] = "Maximum target staircases amount changed",
	["min"] = "Minimum target staircases amount changed",
	["curse"] = "Drone curse stairs chance changed",
	["block"] = "Drone curse intersection chance changed",
	


}

module.serverbroadcast = {
	["pranked"] = "%s pranked %s!",
	["found"] = "%s has found %s's invisible stairs!",
	["disco"] = "%s is enjoying %s's disco music.",
	["trap"] = "%s has fallen for %s trap.",
	["obby"] = "%s is attempting %s's obby.",
	["default"] = "Drones are now back in the default mode.",
	["reg"] = "Staircase is regenerating.",
	["done"] = "Staircase regeneration complete.",
	["union"] = "%s has merged with their ghost!",
	["eliminated"] = "%s has been eliminated.",
	["won"] = "%s has won the race!",
	["falsestart"] = "False Start",
	["countdown"] = "Race in %d seconds!",
	["2min"] = "Minimum two players required for the classic race!",
	["noplayers"] = "No racing players, infinite mode will not start!",
	["nojoin"] = "Race is now closed - no new players can join.",
	["allfalse"] = "All players have False Started!",
	["safety"] = "Tower levels have changed, this race will not start.",
	["leader"] = "%s has taken the lead!",
	["toolate"] = "Nobody has reached the top in time!",
	["go"] = "GO!",
	["over"] = "Race over!",

}

module.localfeedback = {

	["cancel"] = "Cancel other spell first!",
	["nomana"] = "Not enough Mana!",
	["notokens"] = "Not enough Tokens!",
	["unlocked"] = "Spell unlocked!",
	["maxmana"] = "Your mana is already at maximum!",
	["nopurchase"] = "You do not need to purchase mana in the tutorial!",
	["hascham"] = "You already have the Chameleon Pass!",
	["hasspectre"] = "You already have the Spectre Pass!",
	["hasmana"] = "You already have the Bigger Storage Pass!",
	["nomuggle"] = "You thought there were secret ultimate spells for Muggle but there weren't.",
	["nonone"] = "You thought there were secret ultimate spells for None but there weren't.",
	["nounlocks"] = "Unlock all basic spells to access ultimate spells!",
	["onetoken"] = "You have been awarded one %s Spell Token!",
	["moretokens"] = "You have been awarded some %s Spell Tokens!",
	["music"] = "Music changed successfully.",
	["nomusic"] = "Music failed to load.",
	["noteleport"] = "Teleport failed!", 
	["norefresh"] = "You cannot refresh yet.",

}

module.switchon = {

	["JOKER"] = "You will no longer reveal invisible stairs.",
	["WICKED"] = "You will no longer trigger below Wicked Rigs.",
	["KEEPER"] = "You will no longer trigger below Keeper Rigs.",
	["SPECTRE"] = "You will no longer trigger below Spectre Rigs.",
	["HACKER"] = "Escalators and rig immunity on.",
	["ARCHON"] = "Only upward splits will teleport you.",
	["DRIFTER"] = "You will no longer trigger below Drifter Rigs.",
	["SPLICER"] = "You will no longer trigger below Splicer Rigs.",
	["REAVER"] = "You will no longer trigger below Reaver Rigs.",
	["GREMLIN"] = "Nearby Corkscrews locked.",

}

module.switchoff = {

	["JOKER"] = "You will now reveal invisible stairs.",
	["WICKED"] = "You will now trigger below Wicked Rigs.",
	["KEEPER"] = "You will now trigger below Keeper Rigs.",
	["SPECTRE"] = "You will now trigger below Spectre Rigs.",
	["HACKER"] = "Escalators and rig immunity off.",
	["ARCHON"] = "All except down splits will teleport you.",
	["DRIFTER"] = "You will now trigger below Drifter Rigs.",
	["SPLICER"] = "You will now trigger below Splicer Rigs.",
	["REAVER"] = "You will now trigger below Reaver Rigs.",
	["GREMLIN"] = "Nearby Corkscrews unlocked.",
}

local timedSpell = "%s just cast the %s spell!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s has just rigged all normal stairs with Mana Gift!",
	["patronevent"] = "%s has just overloaded the tower with stairs!",
	["patronaltevent"] = "%s has just shrunk all normal stairs!",

	["jokerrigevent"] = "%s has just rigged all normal stairs with the Flip spell!",
	["jokerevent"] = "%s has just hidden all normal stairs!",
	["jokeraltevent"] = "%s has just flipped all normal stairs!",

	["wickedrigevent"] = "%s has just rigged all normal stairs with Destroy spell!",
	["wickedevent"] = "%s has just destroyed all normal stairs!",
	["wickedaltevent"] = "%s has just destroyed ALL stairs!",

	["keeperrigevent"] = "%s has just rigged all normal stairs with the Random Move spell!",
	["keeperevent"] = "%s has just shuffled all normal stairs!",
	["keeperaltevent"] = "%s has just restored all stairs!",

	["spectrerigevent"] = "%s has just rigged all normal stairs with a 50% chance of ghosting!",
	["spectreevent"] = "%s has just phantom shuffled all normal stairs!",
	["spectrealtevent"] = "%s has just ghosted all normal stairs!",

	["hackerrigevent"] = "%s has just rigged all normal stairs with the Glitch spell!",
	["hackerevent"] = "%s has turned all normal stairs into Escalators!",
	["hackeraltevent"] = "%s has turned all normal stairs into upwards Escalators!",

	["thiefrigevent"] = "%s has rigged all normal stairs with Mana Steal!",
	["thiefevent"] = "%s has flattened all normal stairs!",
	["thiefaltevent"] = "%s has created bypasses on all levels!",

	["archonrigevent"] = "%s has just rigged all normal stairs with Phase spell!",
	["archonevent"] = "%s has just randomly gated all normal stairs!",
	["archonaltevent"] = "%s has just vertically gated all normal stairs!",

	["drifterrigevent"] = "%s has just rigged all stairs with Spin spell!",
	["drifterevent"] = "%s has just randomly drifted all normal stairs!",
	["drifteraltevent"] = "%s has just lifted all normal stairs!",

	["hereticrigevent"] = "%s has just rigged all normal stairs with Possess spell!",
	["hereticevent"] = "%s has just schismatized all normal stairs!",
	["hereticaltevent"] = "%s has just cursed all normal stairs!",

	["splicerrigevent"] = "%s has just rigged all normal stairs with Splice spell!",
	["splicerevent"] = "%s has just spliced all normal stairs!",
	["spliceraltevent"] = "%s has just split all normal stairs!",

	["necromancerrigevent"] = "%s has just rigged all normal stairs with Soulless spell!",
	["necromancerevent"] = "%s has just overloaded the tower with Soulless stairs!",
	["necromanceraltevent"] = "%s has just turned all normal stairs Soulless!",

	["gremlinrigevent"] = "%s has just rigged all normal stairs with Hypnotize spell!",
	["gremlinevent"] = "%s has just revolved all normal stairs!",
	["gremlinaltevent"] = "%s has just overloaded the tower with Tram stairs!",

	["reaverrigevent"] = "%s has just rigged all normal stairs with One-Way spell!",
	["reaverevent"] = "%s has just turned all normal stairs into random One-Ways!",
	["reaveraltevent"] = "%s has turned all normal stairs into upward One-Ways!",

	["newmode"] = "%s has just switched drones into %s mode!",

	["chameleonrigevent"] = "%s has just rigged all normal stairs with a Mystery spell!"
}

module.spells.extras = {

	["Prompt"] = "Click a spell below, to learn how to use it",
	["Title1"] = "Basic spells",
	["Title2"] = "Unique ultimate spells",
	["Title3"] = "Shared ultimate spells",
	["ManaCost"] = "Mana Cost: %s", 
	["TokenCost"] = "Token Cost: %s", 
	["Special"] = "Special requirements: %s",
	["Execution"] = "Execution: %s",
	["Description"] = "Description: %s",
	["basic"] = "Basic",
	["ultimate"] = "Ultimate",
	["unlock"] = "0 (3 to unlock)",
	["none"] = "No special requirements",
}

module.gui.basic.jumpdelay = "jump delay"
module.gui.basic.dancetime = "DANCE TIME!"

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "GHOST",
	["spirit"] = "SPIRIT", --only for spirit spectres
	["welcome"] = "WELCOME",
	["drones"] = "DRONES",
	["orb"] = "ORB",
	["refill"] = "REFILL", --for all 2nd rank bonuses
	["overload"] = "OVERLOAD",
	["steal"] = "STEAL",
	["gift"] = "GIFT",
	["share"] = "SHARE",
	["prank"] = "PRANK",
	["possession"] = "POSSESSION",
	["ritual"] = "RITUAL",
	["purge"] = "PURGE",
	["blessing"] = "BLESSING",
	["hack"] = "HACK",
	["stash"] = "STASH",
	["backdoor"] = "BACKDOOR",
	["chamber"] = "CHAMBER",
	["base"] = "BASE",
	["circus"] = "CIRCUS",
	["shelter"] = "SHELTER",
	["haven"] = "HAVEN",
	["study"] = "STUDY",
	["nether"] = "NETHER",
	["guild"] = "GUILD",
	["nexus"] = "NEXUS",
	["oasis"] = "OASIS",
	["hub"] = "HUB",
	["mirror"] = "MIRROR",
	["grave"] = "GRAVE",
	["shack"] = "SHACK",
	["regen"] = "REGENERATE",
	["optimus"] = "OPTIMUS",

}

module.gui.hints = {
	["bcancel"] = "Press B to cancel", --xbox b
	["acancel"] = "Click again to cancel",
	["ocancel"] = "Cancel other spell first", 
}

module.gui.gameover.extras = {

	["noobs"] = "Tutorials are for noobs!",
	["possessed"] = "Those annoying Heretics!",
	["hypnotized"] = "Where am I?",
	["new"] = "New rank acquired - %s",
	["none1"] = "WAIT! WHAT?",
	["none2"] = "Does this game",
	["none3"] = "have spells?"

}

module.gui.gameover.raceplacements = {
	"YOU HAVE WON THE RACE!",
	"SECOND PLACE!",
	"THIRD PLACE!",
	"You have placed fourth.",
	"You have placed fifth.",
	"You have placed sixth.",
	"You have placed seventh.",
	"You have placed eighth.",
	"You have placed ninth.",
	"You have placed tenth.",
	"You have placed eleventh.",
	"You have placed twelfth.",
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
