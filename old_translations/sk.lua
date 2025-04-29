
local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "ÁNO",
	["no"] = "NIE",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "PREDVOLENÉ",
	["validate"] = "POTVRDI",
	["play"] = "HRA",
	["skip"] = "PRESKOÈI\nTUTORIÁL",
	["loading"] = "NAÈÍTANIE, PROSÍM ÈAKAJTE...",
	["mode"] = "%s\nMÓD",
	["cd"] = "ZDRANIE\nULTIMÁT",
}

module.gui.switcher = {

	["title"] = "ZMENI SERVER",

	["public"] = "VEREJNİ SERVER",
	["private"] = "SÚKROMNİ SERVER",
	["join"] = "PRIPOJI SA",
	["friends"] = "PRIATELIA ONLINE",
	["refresh"] = "obnovuje sa...",
	["fail"] = "NEPODARILO SA OBNOVI!",

}

module.gui.serversettings = {

	["title"] = "NASTAVENIA VLASTNÍKA",

	["Moderation"] = "MODEROVANIE",
	["rules"] = "Tvoj server, Tvoje pravidlá.",
	["temp"] = "Všetky umlèania a bany sú doèasné.",
	["kick"] = "VYHODI",
	["ban"] = "BAN",
	["mute"] = "UMLÈA",

	["Drones"] = "NASTAVENIA DRÓNOV",
	["DronesReadOnly"] = "NASTAVENIA DRÓNOV (iba na preèítanie)",
	["DroneEnabled"] = "Dróny zapnuté",
	["DroneFix"] = "Dróny obnovujú schodiská",
	["DroneRemove"] = "Dróny odstraòujú zakliaté kriovatky",
	["DroneUnCurse"] = "Dróny obnovujú zakliaté schodiská",
	["DroneMove"] = "Dróny posúvajú schodiská v základnom móde",
	["DroneSpin"] = "Dróny otáèajú schodiská v základnom móde",
	["DroneSpeed"] = "Rıchlos pohybu drónov (poschodie/s)",
	["DroneDelay"] = "Trvanie otáèania drónov (s)",
	["DroneMax"] = "Maximálny poèet schodísk (dróny budú vınimoène nièi nad tımto limitom)",
	["DroneMin"] = "Minimálny poèet schodísk (dróny budú vınimoène tvori pod tımto limitom)",
	["DroneBlock"] = "Šanca zakliatej kriovatky pri stretnutí s prázdnou kriovatkou (percent)",
	["DroneCurse"] = "Šanca zakliatıch schodísk pri stretnutí so schodiskom alebo prázdnou kriovatkou (percent)",

	["Tower"] = "NASTAVENIA VEE",
	["TowerReadOnly"] = "NASTAVENIA VEE (iba na preèítanie)",
	["InfMode"] = "Nekoneènı mód (nemôe sa zmeni poèas pretekov alebo regenerácie)",
	["CasualPlayers"] = "Normálny hráèi smú èarova",
	["Regeneration"] = "Automatická regenerácia vee po Wicked's oèiste (nebude fungova v nekoneènom móde)",
	["EvenLevels"] = "Párne poschodia zablokované",
	["OrbMoves"] = "Koneèná gu¾a sa hıbe",
	["InfRegeneration"] = "Automatická generácia vee na novıch serveroch, menení poètu poschodí a po konci nekoneènıch pretekov",
	["TowerLevels"] = "Poschodia vee (alebo aktívne poschodia v nekoneènom móde. Nemôe sa meni poèas regenerácie alebo pretekov.",
	["RaceDuration"] = "Maximálny èas pretekov. Nezmení súèasné preteky. (s)",
	["InfStart"] = "Zaèiatoènı interval kola v nekoneènom móde (2 poschodia sú vytvorené kadé kolo) (s)",
	["InfReduction"] = "Zmenšenie intervalu v nekoneènom móde (kadé kolo je kratšie o) (s)",
	["InfMin"] = "Minimálny interval kola v nekoneènom móde (s)",
	["Cooldown"] = "Dåka zdrania po ultimáte (s)",


}

module.gui.shop = {

	["title"] = "ŠIALENÉ SCHODISKO: OBCHOD",

	["chameleon"] = "Chameleon môe meni rolu poèas šplhania..",
	["spectre"] = "Spectre je rola zameraná na teleportovanie, najlepšie pre solo hry.",
	["mana"] = "Zväèši kapacitu energie o 10 bodov.",

	["3tokens"] = "Odomkneš 1 kúlo alebo vyèaruješ do 3 ultimát.",
	["30tokens"] = "Odomkneš 10 kúziel alebo vyèaruješ do 30 ultimát.",
	["300tokens"] = "Dostatok na odomknutie všetkıch kúziel s 153 prebytoènımi etónmi.",

	--below messages apper on mouse hover
	["3TOKENS"] = "3 Multietóny (R$%d)",
	["30TOKENS"] = "30 Multietóny (R$%d)",
	["300TOKENS"] = "300 Multietóny (R$%d)",
	["SPECTRE PASS"] = "Spectre prístup (R$%d)",
	["MANA PASS"] = "Kapacita 20 energie (R$%d)",
	["CHAMELEON PASS"] = "Chameleon prístup. (R$%d)",

}

module.gui.spellbar = {

	["share"] = "ZDIELA\nENERGIU",
	["nocasual"] = "IBA PRETEKÁRI SMÚ ÈAROVA.",

} 

module.gui.stats = {

	["total"] = "Všetky šplhania: %d / Vıhry: %d",
	["class"] = "Vıhry ako %s: %d",
	["best"] = "Najlepší %s èas: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "POSADNUTİ! (nájdi Energiu pre oslobodenie)",
	["released"] = "UVO¼NENİ",
	["timesup"] = "èas vypršal...",

}


module.gui.activatecham = {

	["title"] = "AKTIVOVA CHAMELEON",
	["body"] = "eláš si zapnú Chameleon mód?\nOstane aktivovanı do konca šplhania."

}

module.gui.caceltimed = {

	["title"] = "ZRUŠI ÈASOVANÉ KÚZLO",
	["body"] = "eláš si zruši toto èasované kúzlo? etóny nebudú vrátené."

}

module.gui.climbtimer = {

	["prompt"] = "Šplhaj po\nschodoch!",
	["floor"] = "Poschodie",
	["last"] = "Poslednı èas",

}

module.gui.codes = {

	["title"] = "ZADAJTE KÓD",
	["body"] = "Zadaj svoj kód sem:",
	["prompt"] = "(kód)",
	["button"] = "POUI", -- Translated to "USE" for better wording purposes. -O

}

module.gui.gauges = {

	["prompt"] = "Skoè pre pokraèovanie, klikni znovu pre zrušenie.",

	["found"] = "%d schodísk nájdenıch (%.1f%% vyplnenie)",
	["special"] = "%d sú špeciálne (%.1f%%)",
	["affected"] = "%d schodísk budú zmenené (%.1f%%)",
	["cursed"] = "%d zaèarovanıch kriovatiek nájdenıch (%.1f%%)",
	["fill"] = "%d schodísk bude vytvorenıch (%.1f%%)",
	["purge"] = "%d objektov bude znièenıch (%.1f%%)",
	["normal"] = "%d u sú normálne (%.1f%%)",
	["restore"] = "%d schodísk budú obnovené (%.1f%%)",
	["bypass1"] = "%d kliatieb sú v cest (%.1f%%)",
	["bypass2"] = "%d obchádzky u existujú (%.1f%%)",
	["bypass3"] = "%d obchádziek bude vytvorenıch (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "JUKEBOX",

	["master"] = "HLAVNÁ HLASITOS",
	["default"] = "(pouíva hlavnú hlasitos)",
	["climb"] = "LEZECKÁ HUDBA",
	["endgame"] = "KONEÈNÁ HUDBA",
	["failed"] = "[nepodarilo sa naèíta]",

}

module.gui.results = {

	["title"] = "VİSLEDKY PRETEKOV",

	["place"] = "UMIESTNENIE",
	["name"] = "MENO",
	["level"] = "NAJVYŠŠIE POSCHODIE",
	["time"] = "ÈAS",
	["rank"] = "RANK",
	["not"] = "N/A",
	[1] = "VİHERCA",
	[2] = "2.",
	[3] = "3.",
	[4] = "4.",
	[5] = "5.",
	[6] = "6.",
	[7] = "7.",
	[8] = "8.",
	[9] = "9.",
	[10] = "10.",
	[11] = "11.",
	[12] = "12.",

}

module.gui.racetimer = {

	["gather"] = "Nie si\nna pretekoch.",
	["race"] = "PRETEKY\nSKONÈILI!",
	["inf"] = "Eliminovanı!",
	["off"] = "ÈASOVAÈ\nPRETEKOV.",
	["wait"] = "Preteky o",
	["on"] = "Umiestnenie", -- Assuming this means current place of the player, translated to "Place" -O

}

local GetBonusManaForDrone = "Dostaneš bonusovú energiu, kedykolvek sú dróny v móde "
-- Translates to "You will get bonus Mana, everytime the drones are in mode ..."

module.gui.ranks = {

	["title"] = "TVOJ RANK",

	--none
	["none_1"] = "Ešte si si nevybral rolu!",
	["none_2"] = "Nebudeš ma prístup k iadnym kúzlam!",
	["none_3"] = "Skoè na morf (v strede mapy) - pre zmenu roly.",

	--shared
	["higher"] = "VYŠŠÍ RANK DOSIAHNUTİ",
	["current"] = "TVOJ SÚÈASNİ RANK",
	["lower"] = "RANK NEDOSIAHNUTİ",

	["more"] = "Potrebuješ %d viac šplhov ako %s na dosiahnutie tohto ranku.",
	["done"] = "U vlastníš vyšší rank. Efekty všetkıch niších rankov sa pridavajú k súèasnému ranku.",
	["max"] = "Toto je najvyšši rank. Vykonal si %d šplhov ako %s.",



	["PATRON"] = {
		"Toto je tvoj zaèiatoènı PATRON rank.",
		GetBonusManaForDrone .. "PATRON.",
		"Ak niekto vyèaruje VYVOLÁVAÈ, tvoja energia bude vyplnená.",
		"Tvoje spoje budú trva 2x dlhšie (120s).",
		"Tvoje portály budú aktívne 2x dlhšie (120s).",
		"Cena vyèarova Zavola Gu¾u je zmenšená na 2 body energie.",
		"Tvoje kúzlo VYVOLÁVAÈ bude trva 50% dlhšie (90s).",
		"Ak ti došla energia, skoè na poschodie pre poehnanie jednou energiou.",
		"Privolaná Gu¾a bude cestova 2x rıchlejšie.",
	}, 
	["JOKER"] = { 
		"Toto je tvoj zaèiatoènı JOKER rank.",
		GetBonusManaForDrone .. "JOKER.",
		"Ak niekto vyèaruje OTÁÈAÈ, tvoja energia bude vyplnená.",
		"Disko schodiská nebudú na teba vplıva.",
		"Môeš vidie všetky nevidite¾né schodiská. Máš monos ich neodhali.",
		"Môeš vidie pasce na poschodí a falošné schodiská.",
		"Tvoje kúzlo OTÁÈAÈ bude trva 50% dlhšie (90s).",
		"Môeš kráèa po falošnıch schodiskách.", 
		"Dostaneš bonusovú energiu, keï niekto aktivuje tvoje pasce. (iba raz za pascu za hráèa)",
	},
	["WICKED"] = {
		"Toto je tvoj zaèiatoènı WICKED rank.",
		GetBonusManaForDrone .. "WICKED.",
		"Ak niekto vyèaruje OHİBAÈ, tvoja energia bude vyplnená.",
		"Teraz môeš kráèa po parkúrovıch schodiskách, ako na benıch schodiskách.",
		"Kúzlo ZNIÈI DOLE je zadarmo.",
		"Dostaneš bonusovú energiu za znièenie špeciálnych schodísk.",
		"Tvoje kúzlo OHİBAÈ bude trva 50% dlhšie (90s).",
		"Máš monos neaktivova Rigy pre znièenie.",
		"Môeš nièi zakliaté schodiská..",
	},
	["SPECTRE"] = { 
		"Toto je tvoj zaèiatoènı SPECTRE rank.",
		GetBonusManaForDrone .. "SPECTRE.",
		"Ak niekto vyèaruje TRBLIETANIE, tvoja energia bude vyplnená.",
		"Dostaneš 1 bonusovú energiu keï zobereš kryštály cez tvojho ducha.", 
		"Kúzlo ODDUCHOVA je teraz zadarmo.",
		"Teraz môeš dokonèi šplh, získaním koneènou gu¾ou tvojím duchom.",
		"Tvoje kúzlo TRBLIETANIE bude trva 50% dlhšie (90s).",
		"Máš monos neaktivova Rigy pre eklipsu.", 
		"Môeš kráèa po duchovıch schodiskách.",
	},
	["CHAMELEON"] = { 
		"Toto je tvoj zaèiatoènı CHAMELEON rank. Ranky vybranej roly stále platia.",
		"VİNIMKA! Dostaneš bonusovú energiu IBA keï sú dróny v CHAMELEON móde.",
		"Zmena roly je teraz ove¾a rıchlejšia.",
		"Tvoje ruky teraz budú svieti fialovo, zakrıvajúc tvoje motívy.",
		"Kúzla FALOŠNÉ SCHODISKO a VYTVORI SCHODISKO budú ma teraz fialovı efekt.",
		"Teraz môzeš vyèarova odmiednuté kúzla POSUNÚ NIŠIE, PADACÍ MOST a PREKRÍENÉ SCHODY.",
		"Teraz môeš vyèarova odmietnuté kúzla OHNÚ DOLE a HORE PADACÍ MOST.",
		"Zmena roly je teraz nevšimnute¾né..",
		"Teraz môeš vyèova RIG PRE ZÁHADU (potrebné multietóny)",
	},
	["MUGGLE"] = { 
		"Toto je tvoj zaèiatoènı MUGGLE rank.",
		"Vychladnutie skákania zmenšené o 0.125s.",
		"Vychladnutie skákania zmenšené o 0.25s.",
		"Vychladnutie skákania zmenšené o 0.375s.",
		"Vychladnutie skákania zmenšené o 0.5s.",
		"Tvoja rıchlos chôdce je zvıšená o 10%.",
		"Tvoja rıchlos chôdce je zvıšená o 20%.",
		"Tvoja rıchlos chôdce je zvıšená o 30%.",
		"Tvoja sila skákania je zvıšená o 20%.",
	},
	["KEEPER"] = {
		"Toto je tvoj zaèiatoènı KEEPER rank.",
		GetBonusManaForDrone .. "KEEPER.",
		"Ak niekto vyèaruje NANEBOVSTÚPENIE, tvoja energia bude vyplnená.",
		"Kúzlo POSUNÚ NÁHODNE a Rigy pre posun ktoré aktivuješ nikdy neposunú schodisko smerom dole.",
		"Teraz môeš posúva otoèené schodiská.",
		"Kúzlo OBNOVI SCHODISKO je zadarmo.", 
		"Tvoje kúzlo NANEBOVSTÚPENIE bude trva 50% dlhšie (90s).",
		"Má monos neaktivova Rigy pre posun.",
		"Teraz môeš obnovi zakliaté schodiská a zakliaté kriovatky.",
	},
	["HACKER"] = { 
		"Toto je tvoj zaèiatoènı HACKER rank.",
		GetBonusManaForDrone .. "HACKER.",
		"Ak niekto vyèaruje CHEAT NA RİCHLOS, tvoja energia bude vyplnená.", -- Ultimate translated to "Cheat for speed". -O
		"Eskalátor nadol nebude bea, kım na òom si.",
		"Kúzlo HORIZONTÁLNY SKOK je 50% rıchlejšie.",
		"Kúzlo PREHLIADNUTIE je 50% rıchlejšie.",
		"Ak ti došla energia, skoè na poschodie pre hacknutie si jednu energiu.", 
		"Máš monos neaktivova Rigy pre závady.",
		"Ak je aspoò jedna vo¾ná kriovatka, vyèarovanie závady na najvyššom poschodí poloí schodisko pri guli.", 
	},
	["THIEF"] = {
		"Toto je tvoj zaèiatoènı THIEF rank.",
		GetBonusManaForDrone .. "THIEF.",
		"Ak niekto vyèaruje LÚPE, tvoja energia bude vyplnená.",
		"Kúzlo BOÈNİ PRECHOD bude trva 2x dlhšie (120s).",
		"Kúzlo HORNİ PRECHOD bude trva 2x dlhšie (120s).",
		"Môeš ukradnú kadé schodiská, okrem zakliatıch.",
		"Tvoje kúzlo LÚPE bude trva 50% dlhšie (90s).",
		"Ak ti došla energia, skoè na poschodie pre získanie 1 energie z tvojej skrıše.", 
		"Teraz môeš ma súèasne 2 ukradnuté schodiská.",
	},
	["ARCHON"] = {
		"Toto je tvoj zaèiatoènı ARCHON rank.",
		GetBonusManaForDrone .. "ARCHON.",
		"Ak niekto vyèaruje ROZDE¼OVAÈ, tvoja energia bude vyplnená.",
		"Môeš vyèarova ZNIÈI ROZDELENIE na poschodiach.",
		"Kúzlo ZNIÈI ROZDELENIE je zadarmo.",
		"Rozdelenia a nikdy neteleportujú dole.",
		"Tvoje kúzlo ROZDE¼OVAÈ bude trva 50% dlhšie (90s).",
		"Môeš èarova rozdelovacie kúzla na u rozdelenıch schodiskách.",
		"Máš monos ignorova všetky okrem hornıch rozdelení.",
	},
	["DRIFTER"] = {
		"Toto je tvoj zaèiatoènı DRIFTER rank.",
		GetBonusManaForDrone .. "DRIFTER.",
		"Ak niekto vyèaruje POVSTANIE, tvoja energia bude vyplnená.",
		"Tvoje vertikálne drifty sa objavia a budú sa pohybova 50% rıchlejšie.",
		"Teraz môeš otáèa driftované schodiská.",
		"Teraz môeš zosilni HORNÉ DRIFTY pomocou POVSTANIE a kúzlom HORNİ DRIFT.",
		"Tvoje kúzlo POVSTANIE bude trva 50% dlhšie (90s)",
		"Máš monos neaktivova Rigy pre drifty.",
		"Teraz môeš dvojmo zosilni HORNÉ DRIFTY, pomocou POVSTANIE a kúzlom HORNİ DRIFT.",
	},
	["HERETIC"] = {
		"Toto je tvoj zaèiatoènı HERETIC rank.",
		GetBonusManaForDrone .. " HERETIC.",
		"Ak niekto vyèaruje PREKLÍNANIE, tvoja energia bude vyplnená.",
		"Ak ti došla energia, stupni na prekliaté schody pre obnovenie schodov a získanie 1 energie.",
		"Teraz si imunnı na Rigy pre posadnutie",
		"Teraz môeš vyèarova BLIKOT pre obnovenie zakliatej kriovatky.",
		"Tvoje kúzlo PREKLÍNANIE bude trva 50% dlhšie (90s)",
		"Kúzla VYTVORI ZAKLIATÉ SCHODISKO a PREKLÍNANIE teraz môu znièi blokujúce zakliaté schodiská.",
		"Dostaneš bonusovú energiu keï bude niekto posadnutı.",
	},


}

module.gui.reshuffle = {

	["title"] = "MÓD PREHODENIA SCHODÍSK",

	["body"] = "Chceš, aby sa schodiská vyhıbali kolíziam? Ak nie, schodiská v ceste budú znièené.",

}

module.gui.multitokens = {

	["title"] = "VYBER ETÓNY",

	["info"] = "Potrebuješ 3 etóny pre odomknutie kúzla.",
	["notokens"] = "Nemáš iadné multietóny",
	["nopass"] = "NEMÁŠ PRÍSTUP",

}

module.gui.feedback = {

	["title"] = "POSLA RECENZIU",

	["prompt"] = "Klikni sem pre poslanie správy vıvojarom hry! (minimum 20 charakterov)",
	["send"] = "POSLA",
	["locked"] = "ZAMKNUTÉ",

}

module.gui.settings = {

	["title"] = "NASTAVENIA HRY",

	["ANIM1"] = "NASTAVENIA\nANIMÁCIÍ",	
	["ANIM2"] = "NASTAVENIA\nDODATOÈNİCH ANIMÁCIÍ",
	["MISC"] = "RôZNE\nNASTAVENIA",
	["INTERFACE"] = "NASTAVENIA\nROZHRANIA",	

	["size"] = "Ukáza animácie ve¾kosti",
	["color"] = "Ukáza animácie farby",
	["escalator"] = "Ukáza animácie eskalátorov",
	["sanctuary"] = "Ukáza animácie útulku",
	["list"] = "Ukáza animovanı zoznam hráèov",
	["ghosts"] = "Animova duchov",
	["distance"] = "Zvıši maximálnu vzdialenos animácií",
	["morph"] = "Ukáza animáciu morfovania pre Deceiver alebo Usurper",
	["billboard"] = "Ukáza svoj vlastnı avatarovı billboard",
	["rank"] = "Ukáza svoju rolu v tvojom avatarovom billboarde",
	["switchback"] = "Automaticky vráti k základnım kúzlom po vyèarovaní ultimátu",
	["safecancel"] = "Ukáza okno pre potvrdenie pri zrušení èasovaného ultimátu",
	["multi"] = "Ukáza okno vıberu multi-etónov po dokonèení šplhu",
	["kchoices"] = "Ukáza okno vıberu smeru pre Keeper (nebude fungova na Xboxe)",
	["achoices"] = "Ukáza okno vıberu smeru pre Archon (nebude fungova na Xboxe)",
	["stats"] = "Ukáza dodatoèné informácie pri vyèarovaní ultimátu",


}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "TVOJA ROLA",
	["time"] = "TVOJ ÈAS ŠPLHU",
	["climbs"] = "ŠPLHY PRIDELENÉ",
	["tokens"] = "ETÓNY PRIDELENÉ",
	["rank"] = "TVOJ SÚÈASNİ RANK",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"POMô, OCHRÁÒ a VYTVOR",
		"Títo nováèikovia potrebujú našu pomoc",
		"Bez nás Patrónov nebude iadna nádej",
		"11 z 10 na škále milosti",
		"Zdielanie je staranie",
		"Nikdy nemôeš ma dostatok schodísk",
		--"There is no I in Team, but there is definetely a Patron", Invalid for language
		"Nemôeš ma schodisko bez schodov",
		"Ïalšia práca skvelo vykonaná",
	},
	["JOKER"] = {
		"OKLAM, ZME a SMEJ SA",
		"Toto schodisko je vtip",
		"Preèo by takı seriózny?",
		"HA! HA! HA!",
		"Relaxuj a pozoruj, ako padajú",
		"Si naštvanı?",
		"Poznáš pravidla, a ja tie",
		"Bezomòa by to bolo nudné",
		"Falošné schodiská sú pravé",
	},
	["WICKED"] = {
		"ZABRÁÒ, BLOKUJ a ZNIÈ",
		"Niesom zlı, je tu proste ve¾a schodísk",
		"Tieto schodiska musia ís",
		"Pozoruj ako horí svet",
		"Toto schodisko vyzerá lepšie bez iadnych schodov",
		"Znièím tvoju myse¾, dušu a telo (a schody)",
		"1)Vytvor obby 2)Pozoruj nováèikov 3)Ui si",
		"Všetky veci raz zomrú",
		"Oèisti si myse¾ - ale pred tım oèisti schodisko",
	},
	["SPECTRE"] = {
		"ZMIZNI, SKRY SA a TELEPORTUJ",
		"Samozrejme, e teleportovanie je bezpeèné",
		"Nechytíš ma",
		"Krása duchovıch schodov je neporovnate¾ná",
		"¼udia padajú? Preèo by ma to malo zaujíma?",
		"Môeš vyrieši všetky svoje problémy teleportovaním",
		"Raz zaèneš teleportova, nebudeš môc presta",
		"Aspoò neteleportujem schodiská",
		"Švihnite si, nováèci!",
	},
	["MUGGLE"] = {
		"KRÁÈAJ, SKÁÈ a PADAJ",
		"Kedysi neexistovali takéto kúzla",
		"Prisahám, e tie dróny sú zmanipulované",
		"Vdy je cesta",
		"Skákanie okolo schodísk je talent",
		"Moje tajomstvo? Zastavi a porozmıšla",
		"Neverím v zázrakoch",
		"Niekedy je treba poèka na dróny - ako v reálnom ivote",
		"¼udia pouívajú kúzla? Amatéri!",
	},
	["CHAMELEON"] = {
		"KOPÍRUJ, IMITUJ a PREKVAPUJ",
		"Som moc lenivı vymyslie si vlastné kúzla",
		"Viac variácie - viac zábavy",
		"Spolupracova je pomalé - morfova je rıchle",
		"Schopnos prispôsobi sa je základ ivota",
		"SOM rozhodnı, len rád mením názor",
		"Zvládol si rolu? Ja som ich zvládol všetky",
		"Iba jedna rola? Nuda!",
		"Milujem chaos",
	},
	["KEEPER"] = {
		"POSÚVAJ, OTÁÆAJ a NASTAVUJ",
		"Prestaò manipulova s mojím schodiskom!",
		"Ïalší obrovskı úspech pre Keepers",
		"Misia dokonèená!",
		"Mám rád poriadok",
		"Chaos skrotenı",
		"Som jediná pravá rola",
		"Jedného dòa opravím toto schodisko",
		"Opravené schody - šastné schody",
	},
	["THIEF"] = {
		"POIÈAJ, POUI a VRÁ",
		"Vlastne sa tomu hovorí poièanie",
		"Ploché schody sú nádherné",
		"Aspoò nekradnem poschodia",
		"Tak nekráèaj po Rigoch pre kradnutie",
		"Videl si ma kradnú?",
		"Som ako Jánošík - Kradnem od bohatıch a dávam sebe",
		"Nikto si nevšimne jedno chıbajúce schodisko",
		"Redistribúcia schodísk zabraòuje anarchií",
	},
	["HACKER"] = {
		"ZNEUI, GLITCH a ZNIÈ",
		"Férová hra? Niè také neexistuje",
		"Toto schodisko nie je reálne... Je to iba simulácia...",
		--"01101000 01101001 00100000 01110011 01101100 01100101 01100001 01111010 01100101 01101100", would be too long
		"Videl si niekde zoznam pravidiel?",
		"Ja podvádzam? Kadı tu podvádza",
		"Zopár zmien - niè zlé",
		"Rıchlos je všetko na èom záleí",
		"Nech ijú eskalátory",
	},
	["HERETIC"] = {
		"NEPREJDEŠ!",
		"Zakáza èiernú mágiu je ako zakáza šastie",
		"Posadni ¾udí. Nech je Overmind nasıtenı.",
		"Smr a rozklad",
		"Èierny rituál dokonèenı",
		"Nemali by sme sa obmedzova",
		"Posadni ich všetkıch",
		"Vıber si tmavú stranu - je to ¾ahšie ako Iluminácia",
		"Preèo by ma malo zaujíma, e ¾udia uviaznú?",
	},
	["ARCHON"] = {
		"OTVOR PORTÁL, ???, ZISK",
		"Kedysi som vládol nad tımto schodiskom",
		"Plánuj vopred pre úspech",
		"Usilovne študuj a budeš úspešnı",
		"Schopnos rozdeli schodisko je umenie",
		--"Phase out yourself",
		"Torta je lo",
		"Kadı problém má svoje rozdelenie",
		"Všetkıch si zmiatol",
	},
	["DRIFTER"] = {
		"SURFUJ, JAZDI a KÅZ",
		"Kto potrebuje schody? Veï sme vo vesmíre!!",
		"Lietajte, blázni!",
		"Surfuj v solárnom vetri",
		"Nie je iadné dole vo vesmíre - skáè bez strachu",
		"Driftuj - vyskoè do víazstva",
		"Neprestávaj - stále driftuj",
		"Milujem jazdi na poschodiach",
		"Stále jazdi",
	},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Nenachaj za sebou nikoho",
	["IT"] = "artovanie je ivot",
	["ANNIHILATOR"] = "Zniè všetko!",
	["AETHER"] = "Vstúp do spodnej ríše",
	["DABSFORLIF"] = "Kúzla sú preceòované",
	["USURPER"] = "Proste sa mi páèia všetky kúzla",
	["ADMIRAL"] = "Poriadok obnovenı",
	["OUTLAW"] = "Moje, moje, všetko MOJE!",
	["ZERO"] = "Rootkit nainštalovanı",
	["EXILED"] = "Exkomunikácia",
	["ILLUMINATI"] = "Illuminati dokázanı",
	["STRIDER"] = "Pôjdem vıahom",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {

	"ŠIALENÉ SCHODISKÁ",
	"Hra vymyslená, vytvorená a napísaná - Sleazel",
	"Pomoc s dizajnom - cakegirlserina",
	"Modely - ZielonyLeszek",
	"Skyboxy - @wwwtyro's generátor",
	"Modul ukladania dát - DataStore2 - od Kampfkarren",
	"Original leaderboard script by ThatTimothy",
	"Slovenskı preklad: Ondrik132", -- "Slovenskı translation: Ondrik132"
	"TESTERI:",
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
	"PREKLADY:",
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
	"Slovenskı - Ondrik132",
	"Bosanski - xootynator",
	"SPECIAL THANKS TO:",
	"kolcer",
	"ThatTimothy",
	"SerpentineKing",
	"WhereDidTheSunGo",
	"b3ntheplay3r2",
	"TehEpix2",
	"Narvog1",
	"shark66655",
	"HUDBA (APM katalóg):",
	"Úvodná hudba - Allure od Martin Albert Sponticcia",
	"\"None\" koneèná hudba - Deceived od Martin Albert Sponticcia",
	"Muggle hudba - Hyperdrive od Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Muggle koneèná hudba - Reflections od Milan Pilar",
	"Patron hudba - Tranquilize od Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Patron koneèná hudba - Dreamers od Joseph Alexander",
	"Joker hudba - Crosswind od Martin Albert Sponticcia",
	"Joker koneèná hudba - Fender Stab od Steven Raymond Bush",
	"Wicked hudba - Wicked od Daniel Jay Nielsen, Nathan Duvall",
	"Wicked koneèná hudba - Something Wicked od Cris Velasco",
	"Spectre hudba - Reflections od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Spectre koneèná hudba - Cosmic Dust od Milan Pilar",
	"Keeper hudba - Automotion od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Keeper koneèná hudba - Synth On The Highway od Richard Adrian Maxwell Preston",
	"Hacker hudba - Network od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Hacker koneèná hudba - Descending Into Oblivion od Richard Adrian Maxwell Preston",
	"Thief hudba - Reaching Out od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Thief koneèná hudba - Soaring od Richard Adrian Maxwell Preston",
	"Archon hudba - Aperture od Paul Emons, Richard Goodliff, Ian Robson",
	"Archon koneèná hudba - Rendezvous od Paul Emons, Richard Goodliff, Ian Robson",
	"Drifter hudba - Communique od Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Drifter koneèná hudba - Fragile od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic hudba - Mother od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic koneèná hudba - Being Me od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon hudba - Rah od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon koneèná hudba - Midnight Runner od Richard Adrian Maxwell Preston",
	"Duševnı spoj hudba - Amber Garden od Paul Emons, Richard Goodliff, Ian Robso",
	"Zakliatı hudba - Dark Souls od David Arkenstone",
	"Joker disko hudba - To The Disco od Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Drifter poschodie hudba - Radioactivity od Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Ïakujeme za hranie!",	
}



module.static = {

	--INTRODUCTION SCREENS

	["cla_1"] = "Ako hra?",
	["cla_2"] = "Najprv, je vysoko doporuèené prejs tutoriálom, bez neho môe by táto skúsenos komplikovaná.",
	["cla_3"] = "Gól tejto hry je vyšplha sa na najvyššie poschodie a získa energickú gu¾u. Najprv si vyberte rolu skoèením na podsvietené kruhy v strede mapy.",
	["cla_4"] = "A ste spokojnı s vıberom, môte zaèa splha. Energiu získate zbieraním levitujúcich tvaroch. Šplh si u¾ahèíte vyèarovaním kúziel.",
	["cla_5"] = "Ako vyèarova kúzla?",
	["cla_6"] = "Kadé kúzlo stojí nieko¾ko energie, ktoré je potrebné na vyèarovanie. Keï máe dostatok energie, kliknite na kúzlo. Vaše ruky zaènú svieti, ukazujúc úspešné vykúzlenie.",
	["cla_7"] = "Po vyèarovaní, kúzlo musí by stále vykonané. Všetky kúzla sú vykonané skokom. Záleí na kúzle, èi skoèíte na poschodie alebo schodisko. Nápovedné šípky sa zobrazia pre pomoc pri vykonaní kúzla.",
	["cla_8"] = "Po dokonèení šplhu, získate 3 etóny, ktoré vám umonia odomknú jedno kúzlo. Dokonèite šplh znovu pre odomknutie viac kúziel. Nemôete poui etóny jednej role na druhej.",
	["cla_9"] = "Ako vykúzli ultimáty?",
	["cla_10"] = "Pre odomknutie ultimátov potrebujete ma odomknuté všetky základné kúzla. Ultimáty nemusia by odomknuté, ale pre vykúzlenie sa spotrebúvajú etóny, nie energia.",
	["cla_11"] = "Dokonèite šplh dostatoènı poèet krát. Mono budete chcie vyhra preteky pre dodatoèné etóny. Tie existuje monos kúpi etóny. Po odomknutí, kliknite tlaèítko úplne v¾avo, alebo stlaète 'C'.",
	["cla_12"] = "Niektoré ultimáty sú èasované, a nepotrebujú vykonanie. Preèítajte si informácie o ultimátoch v miestnostiach jednotlivıch rolí. Zrušenie èasovaného kúzla nevráti pouité etóny.",

	["pro_1"] = "PRO SCHODISKO",
	["pro_2"] = "Obmedzenia párnych poschodí",
	["pro_3"] = "Na tomto schodisku sa môu isté kúzla nemôu vykona na párnych poschodiach. Pasca, Vytvori Portal, Vertikálny Teleport, Špirálové Schodisko a Náhodnı Teleport sa môu vyèarova iba na nepárnych poschodiach.",
	["pro_4"] = "Drifteri taktie nemôu jazdi po tıchto poschodiach. Párne poschodia sú oznaèené prázdnym èervenım kruhom v strede.",
	["pro_5"] = "Prekliaté Schody",
	["pro_6"] = "Na Pro Schodisku sa náhodne budu vytvára nové, alebo meni existujúce na prekliaté schody. Je 20% šanca zjavenia prekliatıch schodov. Pomocné šípky nebudú zobrazené pri prekliatıch schodoch.",
	["pro_7"] = "Prekliaté schody sú imunné na väèšinu kúziel. Nemôeš sa cez ne teleportova, ani okolo nich poui kúzlo murknutie. Okrem toho, kúzla ktoré by spôsobili deštrukciu prekliatıch schodov nebudú fungova (ako Keeperov Pohyb).",
	["pro_8"] = "Only Heretics and Admirals can restore Cursed Stairs. Purge Event and Restoration will get rid of all cursed stairs too. However Drones will always create new ones in Pro Tower.",
	["pro_9"] = "Prekliaté Kriovatky",
	["pro_10"] = "Na Pro Schodisku budú taktie dróny náhodne vytvára prekliaté kriovatky. Ak nájde drón prázdnu kriovatku, existuje 20% šanca pre prekliatie. Pomocné šípky sa zmenia na X-ká okolo prekliatıch kriovatkách.",
	["pro_11"] = "Prekliaté kriovatky blokujú všetky kúzla urèené pre poschodie, ktoré sú vykonané na šípkach. Nemôeš vytvori schodisko, mosty, ani sa teleportova cez prekliaté kriovatky.",
	["pro_12"] = "Iba Heretic, Admiral a dróny sú schopné obnovi prekliaté schodiská. Ako pri prekliatıch schodoch, Wickedová Oèista vymae všetky prekliatia, ale vytvoria sa nové pri regenerácii.",

	["inf_1"] = "NEKONEÈNÉ SCHODISKO",
	["inf_2"] = "POVINNÉ PRETEKY",
	["inf_3"] = "V nekoneènom schodisku sú preteky povinné. Normálny hráèi nemôu vyèarova kúzla a nedostanú vıhry za šplh. Získanie koneènej gule iba dá 10 bodov energie.",
	["inf_4"] = "Pre 'dokonèenie' nekoneèného schodiska sa musíš pripoji do pretekov a skúsi osta na schodisko najdlhšie, ako sa dá. Vıhry (ak nejaké dostaneš), získaš po eliminácii.",
	["inf_5"] = "Hriešny Drón",
	["inf_6"] = "Na rozdiel od klasickej a pro schodísk, Hriešny Drón zohráva na nekoneènom schodisku špeciálnu úlohu.",
	["inf_7"] = "Kadı interval zvıšenia, Hriešny Drón vytvorí 2 nové poschodia. Kadé párne poschodie budé zamknuté. Okrem toho, nejaké schody a kriovatky môu by prekliaté.",
	["inf_8"] = "Prvı interval trvá 20 sekúnd. Kadé zvıšenie zníi interval o polovicu sekundy, kım sú poschodia vytvorené rıchlejšie ako môu by vyšplhané.",
	["inf_9"] = "Guma",
	["inf_10"] = "Guma je špeciálne silové pole ktoré bude stúpa spolu so schodiskom a vymazáva spodné poschodia. Padnutie pod gumu eliminuje hráèa. Toto je podobné stúpajúcej láve v inıch hrách.",
	["inf_11"] = "Tak ako Hriešny Drón sa bude guma zrıchlova. Bude ale stúpa stabilne, a nie vymazáva 2 poschodia naraz.",
	["inf_12"] = "Schody a poschodia ktoré sa dotknú gumy budú vymazané. Sna sa vyhıba gume tak dlho ako sa dá pre zabezpeèenie vıhry.",

	["cus_1"] = "VLASTNÉ SCHODISKO",
	["cus_2"] = "TY ROZHODUJEŠ!",
	["cus_3"] = "Na vlastnom schodisku môeš meni nastavenia ako chceš.",
	["cus_4"] = "Vıhry na vlastnom schodisku sú zníené o polovicu. Dostaneš etón kadıch 12 poschodí a štatistickı šplh kadıch 30 poschodí.",
	["cus_5"] = "Nastavenia schodiska",
	["cus_6"] = "Zmenením nastavení môeš ma schodisko také, aké chceš. Vyber poschodia, zablokuj párne poschodia alebo dokonca nastav schodisko na nekoneènı mód.",
	["cus_7"] = "Iba majite¾ servera smie meni nastavenia. Z toho dôvodu verejné servery nie sú podporované pre vlastné schodisko.",
	["cus_8"] = "Nastavenia drónov",
	["cus_9"] = "Taktie môeš meni nastavenia drónov. Zmeò maximálny poèet schodov, minimálny poèet alebo dokonca ich kompletne vypnú.",

	["vr_1"] = "Zapnutím tejto hry v móde VR sa automaticky stávaš Architekt.",
	["vr_2"] = "Na rozdiel od normálnych hráèov, Architekt nemusí šplha schodisko. Tvoj gól je pomôc alebo zabráni ostatnım hráèom v šplhu.",
	["vr_3"] = "Vıber je tvoj. Budeš hrozba alebo záchranca? Alebo si to chceš jednoducho ui? Zabav sa!",
	["vr_4"] = "Ako navigova?",
	["vr_6"] = "Poui svoj pravı thumbstick pre pohyb hore a dole. Otáèaním pravım thumbstickom do¾ava a doprava spôsobí 'bleskové' otáèenie kamerou.",
	["vr_7"] = "Skús zosta mimo schodiska pre lepší vıh¾ad a jednoduchšie cielenie.",
	["vr_8"] = "Ako vyèarova kúzla?",
	["vr_9"] = "Pre vyèarovanie kúzla, stlaète magickú gu¾u pomoci tlaèítka pre uchopenie. Objaví sa laserové ukazovátko ktoré pomôe zacieli schodiská a poschodia pre vykonanie kúzla.",
	["vr_10"] = "Vykonaj kúzlo pomoci tlaèítka pre spúš, zatia¾ èo stále je podrané tlaèítko pre uchopenie. Kadá rola vo VR má dve kúzla. Jedno pre poschodie a druhé pre schody. V závislosti od zacieleného objektu sa vyberie správne kúzlo.",
	["vr_11"] = "Pre zmenenie roly vo VR móde, stlaè a podr tlaèítko pre spúš, bez tlaèítka pre uchopenie. Potom môeš meni rolu pomocou thumbsticku.",

	--ROOMS DOOR TEXTS

	["home_1"] = "MUGGLE DOMOV",
	["home_2"] = "NAŠE MOTTO:\nKRÁÈAJ\nSKÁÈ\nA\nPADAJ",
	["home_3"] = "KLADY:\nBonus pre rıchlos a skok na vyšších rankoch\nPrávo sa chváli\nZÁPORY:\niadné kúzla\n¼ahko sa zasekne",
	["home_4"] = "'V alfa štádiu sme nemali tieto kúzla!'\ncitát nášho zakladate¾a",

	["oasis_1"] = "CHAMELEON OÁZA",
	["oasis_2"] = "NAŠE MOTTO:\nKOPÍRUJ\nIMITUJ\nA\nPREKVAPUJ",
	["oasis_3"] = "KLADY:\nMôe meni rolu kedyko¾vek, kdeko¾vek\ZáPORY:\nKúpuje sa s Robux\nZískanie vyšších rankoch v rolách trvá nejakú dobu",
	["oasis_4"] = "'Som moc lenivı prís na vlastné kúzla.'\ncitát nášho zakladate¾a",

	["nexus_1"] = "HERETIC NEXUS",
	["nexus_2"] = "NAŠE MOTTO:\nNEMôEŠ\nPREJS",
	["nexus_3"] = "KLADY:\nExcelentnı na Pro schodisku\nNemôe by zastavenı\nZÁPORY:\nTímovanie je aké\nHladnı na energiu",
	["nexus_4"] = "'Zakáza èiernej mágie je ako zakáza zábavu.'\ncitát nášho zakladate¾a",

	["guild_1"] = "THIEF SPOLOK",
	["guild_2"] = "NAŠE MOTTO:\nPOIÈAJ\nPOUI\nA\nVRÁ",
	["guild_3"] = "KLADY:\nEfektívny na energiu\nUniverzálny\nZÁPORY:\nMusí kradnú schodiská\nNedokáe demolova blokujúce schody",
	["guild_4"] = "'Vlastne sa tomu hovorí poièiavanie.'\ncitát nášho zakladate¾a",

	["nether_1"] = "SPECTRE RÍŠA",
	["nether_2"] = "NAŠE MOTTO:\nMIZNI\nSKRY SA\nA\nTELEPORTUJ",
	["nether_3"] = "KLADY:\nRıchlé kúzla\nPerfektné pre hranie sólo\nZÁPORY:\nKúpuje sa s Robux\nNedoporuèuje sa tímovanie",
	["nether_4"] = "'Samozrejme, e teleportovanie je bezpeèné.'\ncitát nášho zakladate¾a (MIA)",

	["study_1"] = "ARCHON ŠTÚDIUM",
	["study_2"] = "NAŠE MOTTO:\nOTVOR\nPORTÁL\n???\nZÍSKAJ",
	["study_3"] = "KLADY:\nUitoènı Rig\nMätie nepriate¾ov\nZÁPORY:\nNajašie sa nauèi\nPotrebuje plánovanie",
	["study_4"] = "'Kedysi som vládol tomuto schodisku.'\ncitát nášho zakladate¾a",

	["haven_1"] = "PATRON NEBO",
	["haven_2"] = "NAŠE MOTTO:\nPOMô\nOCHRAÒUJ\nA\nVYTVÁRAJ",
	["haven_3"] = "KLADY:\nNajjednoduchšie sa nauèi\nTímovı hráè\nZÁPORY:\nSpotrebúva ve¾a energie\nMôe priahova pijavice",
	["haven_4"] = "'Tí nováèci potrebujú našu pomoc!'\ncitát nášho zakladate¾a",

	["shelter_1"] = "DRIFTER PRÍSTREŠIE",
	["shelter_2"] = "NAŠE MOTTO:\nSURFUJ\nJAZDI\nA\nKÅZ SA",
	["shelter_3"] = "KLADY:\nUniverzálny\nTímovı hráè\nZÁPORY:\nVyaduje parkour zruènosti\nakı na Pro schodisku",
	["shelter_4"] = "'Kto potrebuje schodiská, veï sme vo vesmíre!'\ncitát nášho zakladate¾a",

	["circus_1"] = "JOKER CIRKUS",
	["circus_2"] = "NAŠE MOTTO:\nOKLAM\nPOMä\nA\nSMEJ SA",
	["circus_3"] = "KLADY:\nVytvorené pre trolovanie\nPrevrátenie je uitoèné\nZÁPORY:\nDrahé kúzla\nMôeš skazi priate¾stvá",
	["circus_4"] = "'Toto schodisko je vtip.'\ncitát nášho zakladate¾a",

	["base_1"] = "KEEPER ZÁKLADÒA",
	["base_2"] = "NAŠE MOTTO:\nPOHYBUJ\nOTÁÈAJ\nA\nKONTROLUJ",
	["base_3"] = "KLADY:\nMôe obnovova schody\nMôe opätovne poui schody\nZÁPORY:\nVyaduje parkour zruènosti\nZbytoènı bez schodov",
	["base_4"] = "'Prestaòte mi kazi schodisko!'\ncitát nášho zakladate¾a",

	["chamber_1"] = "WICKED KOMORA",
	["chamber_2"] = "NAŠE MOTTO:\nZABRAÒUJ\nBLOKUJ\nA\nNIÈ",
	["chamber_3"] = "KLADY:\nMôe znièi akéko¾vek schody\nMôe oèisti schodisko\nZÁPORY:\nPríliš závislı od schodov",
	["chamber_4"] = "'Nie som zlı, je tu proste príliš ve¾a schodov.'\ncitát nášho zakladate¾a",

	["backdoor_1"] = "HACKER ZADNÉ DVERE",
	["backdoor_2"] = "NAŠE MOTTO:\nZNEUI\nGLITCHUJ\nA\nKAZ",
	["backdoor_3"] = "KLADY:\nNajrıchlejšia rola\nako sa prenasleduje\nZÁPORY:\nPrílš závislı od schodov\nZbytoènı v tímoch",
	["backdoor_4"] = "'Férová hra? Niè také neexistuje.'\ncitát nášho zakladate¾a",

	--LEADERBOARD DESCRIPTIONS

	--SHARED
	["leader_pro"] = "Pro Schodisko sa ráta za 2 šplhy",	
	["leader_update"] = "Aktualizuje sa o: ",	
	["leader_updating"] = "Aktualizovanie...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "ŠPLHY",
	["leader_off"] = "Vlastné schodisko nepodporuje rebríèky.",

	--OVERALL
	["over_title"] = "CELKOVÉ RANKY",
	["over_desc"] = "Kadı získanı rank pridáva bod",
	["over_rank"] = "RANK",
	["over_req"] = "BODY",
	["emperor_req"] = "* Vyaduje Chameleón ALEBO Spectre",
	["overmind_req"] = "** Vyaduje Chameleón A Spectre",
	["over_prefix"] = "TITUL",
	["over_passes"] = "HERNÉ PASY\nPOTREBNÉ",
	["over_notgroup"] = "OLIVOVÁ FARBA - nie je v skupine",
	["over_group"] = "MODROZELENÁ FARBA - je v skupine",
	["over_mod"] = "MODERÁTOR - hráè je moderátor",
	["over_admin"] = "ADMIN - hráè je administrátor",
	["over_owner"] = "PRANK ME - majite¾ hry (Sleazel)",

	--OTHER
	["muggle_lead"] = "RİCHLI MUGGLOVIA",
	["muggle_ranks"] = "MUGGLE RANKY",

	["hacker_lead"] = "ZAŠIFROVANÍ HACKERI",
	["hacker_ranks"] = "HACKER RANKY",

	["wicked_lead"] = "NÁSILNÍ WICKEDI",
	["wicked_ranks"] = "WICKED RANKY",

	["keeper_lead"] = "PRIPRAVENÍ KEEPERI",
	["keeper_ranks"] = "KEEPER RANKY",

	["joker_lead"] = "ŠIALENÍ JOKERI",
	["joker_ranks"] = "JOKER RANKY",

	["drifter_lead"] = "RAPIDNÍ DRIFTERI",
	["drifter_ranks"] = "DRIFTER RANKY",

	["patron_lead"] = "UŠ¼ACHTILÍ PATRÓNI",
	["patron_ranks"] = "PATRON RANKY",

	["archon_lead"] = "SVINÍ ARCHONI",
	["archon_ranks"] = "ARCHON RANKY",

	["spectre_lead"] = "LIETAJÚCI SPECTROVIA",
	["spectre_ranks"] = "SPECTRE RANKY",

	["thief_lead"] = "TAJNÍ THIEVOVIA",
	["thief_ranks"] = "THIEF RANKY",

	["heretic_lead"] = "NEMILOSRDNÍ HERETICI",
	["heretic_ranks"] = "HERETIC RANKY",

	["chameleon_lead"] = "OKAMITÍ CHAMELEÓNI",
	["chameleon_ranks"] = "CHAMELEON RANKY",

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Vitaj na Šialenom Schodisku!",
	["tut_big_2"] = "Najprv sa nauè ako morfova.",
	["tut_big_3"] = "Teraz si Patron. Patron dokáe vytvára schodiská.",
	["tut_big_4"] = "Všetky kúzla musia by vykonané skoèením.",
	["tut_big_5"] = "Dobré, nie? Teraz sa morfuj na Joker. Joker môe prevráti schody.",
	["tut_big_6"] = "Teraz si Joker, poui toto kúzlo pre prevrátenie schodov.",
	["tut_big_7"] = "Niektoré kúzla musia by vykonané na schodoch.",
	["tut_big_8"] = "Teraz sa morfuj na Keeper. Keeper môe posúva schody.",
	["tut_big_9"] = "Teraz si Keeper, poui toto kúzlo pre posúvanie schodov.",
	["tut_big_10"] = "Skoè na prednú šípku pre posun vpred.",
	["tut_big_11"] = "V tejto hre stretneš ve¾a blokujúcich schodísk.",
	["tut_big_12"] = "Teraz si Wicked, poui toto kúzlo pre znièenie hornıch schodov.",
	["tut_big_13"] = "Teraz môeš znièi horné schody skoèením na spodnıch.",
	["tut_big_14"] = "Pred tım ako zaèneme, predstavím prémiovú rolu.",
	["tut_big_15"] = "Teraz si Spectre, Spectre je prémiová rola urèená na hranie sólo.",
	["tut_big_16"] = "Tvoj gól - vyšplha sa na vrch a získa koneènú gu¾u. Ve¾a šastia!",

	["tut_select"] = "Vyber toto kúzlo.",

	["tut_small_morph"] = "Skoè na morf.",
	["tut_small_arrow"] = "Skoè na šípku.",
	["tut_small_stairs"] = "Skoè na schody.",


}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

	["notground"] = "Nemôe by vykonané na prízemí.",
	["restore"] = "Môe by vykonané iba na vrchu.",
	["event"] = "Nemôe by vykonané poèas inej udalosti.",
	["drones"] = "Môe by vykonané iba ak sú dróny v zákládnom móde.",
	["oneover"] = "Môeš ma súèasne aktívne iba jedno Preaenie Energie.",
	["soft"] = "Nemôe by vykonané cez blokujúce schody.",
	["flatten"] = "Sú poadované schody oproti vo vybranom smere.",
	["wickedaltevent"] = "Nemôe by vykonané poèas inej udalosti ani regenerácie.",
	["confined"] = "Nemôeš posunú schody mimo hernej zóny. Vyaduje vo¾bu smeru.",
	["onesteal"] = "Môeš ukradnú iba jedny schody súèasne.",
	["softthief"] = "Vyaduje ukradnuté schody. Nemôe by vykonané cez blokujúce schody.",
	["uppass"] = "Vyaduje ukradnuté schody. Môe by vykonané iba na vonkajších poschodiach nad prízemím.",
	["sidepass"] = "Vyaduje ukradnuté schody. Nemôe by vykonané na prízemí.",
	["noescape"] = "Druhá brána musí by v hernej zóne.",
	["outdrift"] = "Môe by vykonané iba na vonkajších poschodiach nad prízemím.",
	["drifting"] = "Poadované poschodie nemôe driftova. Nemôe by vykonané na prízemí.",
	["impostor"] = "Vyaduje minimálny rank Impostor pre prístup.",
	["charlatan"] = "Vyaduje minimálny rank Charlatan pre prístup.",
	["chameleonrigevent"] = "Nemôe by vykonané poèas inej udalosti. Vyaduje Usurper rank. Vyaduje nepouité multi-etóny. ", 

}

module.executioninfo = {

	["arrows"] = "Musí by vykonané na šípkach poschodia.",
	--call the orb!
	["restore"] = "Musí by vykonané iba na vrchu.",
	["below"] = "Musí by vykonané iba na normálnych alebo zmanipulovanıch schodoch.",
	["above"] = "Môe by vykonané na ktorıchko¾vek schodoch alebo spojení s normálnymi alebo zmanipulovanımi schodmi nad nimi.",
	["centre"] = "Musí by vykonané na poschodí.",
	["arrowstimed"] = "Musí by vykonané (opakovane) na šípkach poschodiach.",
	["anywhere"] = "Môe by vykonané kdeko¾vek.",
	["noexe"] = "Toto kúzlo nevyaduje vykonanie.",
	["flip"] = "Musí by vykonané na normálnych, prevrátenıch alebo zmanipulovanıch schodoch.",
	["flipabove"] = "Môe by vykonané na ktorıchko¾vek schodoch alebo spojení s normálnymi, prevrátenımi alebo zmanipulovanıch schodoch nad nimi.",
	["flipper"] = "Musí by vykonané (opakované) na schodoch. Nad (alebo pod) schodmi musia by normálne, prevrátené alebo zmanipulované schody.",
	["destroy"] = "Môe by vykonané na ktorıchko¾vek neprekliatıch schodoch.",
	["destroyabove"] = "Môe by vykonané na ktorıchko¾vek schodoch alebo spojení s neprekliatımi schodmi nad nimi.",
	["flatten"] = "Musí by vykonané na šípkach poschodia s normálnymi schodmi oproti kriovatke.",
	["bender"] = "Musí by vykonané (opakovane) na schodoch. Vrchné a/alebo spodné schody musia by normálne.",
	--restore!!!
	["movedown"] = "Môe by vykonané na šípkach poschodia, alebo na ktorıchko¾vek špeciálnych schodoch.",
	["ascension"] = "Musí by vykonané (opakovane) na normálnych alebo zmanipulovanıch schodoch (alebo prevrátenıch s vyššími rankami).",
	["blink"] = "Môe by vykonané na ktorıchko¾vek schodoch alebo spojení s blokujúcimi, neprekliatımi schodmi nad nimi.",
	["outer"] = "Musí by vykonané iba na vonkajších poschodiach.",
	["riser"] = "Musí by vykonané (opakovane) na poschodiach.",
	["curse"] = "Musí by vykonané na normálnych, prekliatıch alebo zmanipulovanıch schodoch.",
	["curseabove"] = "Môe by vykonané na ktorıchko¾vek schodoch alebo spojení s normálnymi, prekliatımi alebo zmanipulovanımi schodmi nad nimi.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

	--PATRON
	["summon"] = "Vytvori Schody",
	["restore"] = "Zavola Gu¾u", 
	["split"] = "Rozdeli Schody",
	["shrinkabove"] = "Scvrknú Horné Schody",
	["link"] = "Vytvori Spojenie",
	["portal"] = "Vytvori Portál",

	["summoner"] = "Vyvolávaè",
	["patronrigevent"] = "Rig pre Mana Gift",
	["patronevent"] = "Preaenie Schodov",
	["patronaltevent"] = "Scvrknutie Schodov",
	["patronmode"] = "Dróny Patrón mód",
	["patronrefill"] = "Preaenie Energie (Patrón)",
	["patronunion"] = "Únia s Duchom (Patrón)",

	--JOKER 
	["flip"] = "Prevráti Schody",
	["flipabove"] = "Prevráti Horné Stairs",
	["fake"] = "Vytvori Falošné Schody",
	["invisible"] = "Vytvori Nevidite¾né Schody",
	["disco"] = "Disko Schody",
	["trap"] = "Vytvori Pascu",

	["flipper"] = "Prevráèaè",
	["jokerrigevent"] = "Rig pre Prevrátenie",
	["jokerevent"] = "Zahalenie Schodov",
	["jokeraltevent"] = "Prevrátenie Schodov",
	["jokermode"] = "Dróny Joker mód",
	["jokerrefill"] = "Preaenie Energie (Joker)",
	["jokerunion"] = "Únia s Duchom (Joker)",

	--WICKED
	["destroy"] = "Znièi Schody",
	["destroyabove"] = "Znièi Horné Schody",
	["bend"] = "Ohnú Horné Schody",
	["damage"] = "Poškodi Horné Schody",
	["flatten"] = "Ohnú Opaèné Schody Dole",
	["wall"] = "Vytvori Stenu" ,

	["bender"] = "Ohıbaè",
	["wickedrigevent"] = "Rig pre Znièenie",
	["wickedevent"] = "Znièenie Schodov",
	["wickedaltevent"] = "Oèista Schodiska",
	["wickedmode"] = "Dróny Wicked mód",
	["wickedrefill"] = "Preaenie Energie (Wicked)",
	["wickedunion"] = "Únia s Duchom (Wicked)",

	--KEEPER
	["move"] = "Posunú Schody",
	["rotate"] = "Otoèi Schody",
	["moveup"] = "Posunú Schody Hore",
	["movedown"] = "Obnovi Schody",
	["moverandom"] = "Náhodne Posunú Horné",
	["rig"] = "Náhodne Posunú",

	["ascension"] = "Nanebovstúpenie",
	["keeperrigevent"] = "Rig pre Pohyb",
	["keeperevent"] = "Prehodenie Schodov",
	["keeperaltevent"] = "Obnovenie Schodov",
	["keepermode"] = "Dróny Keeper mód",
	["keeperrefill"] = "Preaenie Energie (Keeper)",
	["keeperunion"] = "Únia s Duchom (Keeper)",

	--SPECTRE
	["phantom"] = "Vytvori Prízraèné Schody",
	["ghost"] = "Zduchovnie Horné Schody",
	["shadow"] = "Od-duchovnie Schody",
	["horizontal"] = "Horizontálny Teleport",
	["random"] = "Náhodnı Teleport",
	["vertical"] = "Vertikálny Teleport",

	["traveller"] = "Trblietanie",
	["spectrerigevent"] = "Rig pre Zatmenie",
	["spectreevent"] = "Prízraènenie Schodov",
	["spectrealtevent"] = "Zduchovnenie Schodov",
	["spectremode"] = "Dróny Spectre mód",
	["spectrerefill"] = "Preaenie Energie (Spectre)",
	["spectreunion"] = "Únia s Duchom (Spectre)",

	--HACKER
	["dash"] = "Skok",
	["blink"] = "Priehladnutie",
	["swap"] = "Vımena",
	["slide"] = "Eskalátor Smerom Nadol",
	["slideup"] = "Eskalátor Smerom Nahor",
	["glitch"] = "Pokazi Schody",

	["speedup"] = "Hekova Rıchlos",
	["hackerrigevent"] = "Rig pre Pokazenie",
	["hackerevent"] = "Eskalácia Schodov",
	["hackeraltevent"] = "Porušenie Schodov",
	["hackermode"] = "Dróny Hacker mód",
	["hackerrefill"] = "Preaenie Energie (Hacker)",
	["hackerunion"] = "Únia s Duchom (Hacker)",

	--THIEF
	["steal"] = "Ukradnú Schody",
	["stealabove"] = "Ukradnú Horné Schody",
	["place"] = "Poloi Schody",
	["uppass"] = "Špirálovité Schody",
	["sidepass"] = "Vytvori Obchádzku",
	["drop"] = "Vyhlbi Schody",

	["heist"] = "Lúpe",
	["thiefrigevent"] = "Rig pre Kradnutie Energie",
	["thiefevent"] = "Zrovnanie Schodiska",
	["thiefaltevent"] = "Vytvori Obchádzky",
	["thiefmode"] = "Dróny Thief mód",
	["thiefrefill"] = "Preaenie Energie (Thief)",
	["thiefunion"] = "Únia s Duchom (Thief)",

	--ARCHON
	["splitup"] = "Vytvori Horné Rozdelenie",
	["splitrotate"] = "Vytvori Otoèné Rozdelenie",
	["splitside"] = "Vytvori Rovné Rozdelenie",
	["splitrandom"] = "Vytvori Náhodné Rozdelenie",
	["cancelsplit"] = "Znièi Rozdelenie",
	["splitforward"] = "Vytvori Rozdelenie Poschodia",

	["splitter"] = "Rozde¾ovaè",
	["archonrigevent"] = "Rig pre Phase",
	["archonevent"] = "Rozdelenie Schodov",
	["archonaltevent"] = "De¾ba Schodov",
	["archonmode"] = "Dróny Archon mód",
	["archonrefill"] = "Preaenie Energie (Archon)",
	["archonunion"] = "Únia s Duchom (Archon)",

	--DRIFTER
	["indrift"] = "Surfova",
	["outdrift"] = "Vytvori Vonkajší Drift",
	["updrift"] = "Zdvihnú",
	["diagdrift"] = "Vytvori Vnútornı Drift",
	["spin"] = "Vykrúti Schody",
	["driftabove"] = "Zdvihnú Horné Schody",

	["riser"] = "Zdvíhaè",
	["drifterrigevent"] = "Rig pre Driftovanie",
	["drifterevent"] = "Driftovanie Schodov",
	["drifteraltevent"] = "Zdvíhanie Schodov",
	["driftermode"] = "Dróny Drifter mód",
	["drifterrefill"] = "Preaenie Energie (Drifter)",
	["drifterunion"] = "Únia s Duchom (Drifter)",

	--HERETIC
	["createcursed"] = "Vytvori Prekliaté Schody",
	["curse"] = "Preklia/Odpreklia Schody",
	["curseabove"] = "Preklia/Odpreklia Horné Schody",
	["curseinter"] = "Bliknú",
	["autodown"] = "Zdvihnú Schizmu",
	["autoup"] = "Zníi Schizmu",

	["malediction"] = "Kliatba",
	["hereticrigevent"] = "Rig pre Posadnutie",
	["hereticevent"] = "Vytvori Schizmy",
	["hereticaltevent"] = "Prekliatie Schodov",
	["hereticmode"] = "Dróny Heretic mód",
	["hereticrefill"] = "Preaenie Energie (Heretic)",
	["hereticunion"] = "Únia s Duchom (Heretic)",

	--CHAMELEON
	["ditch"] = "Prekríi Schody",
	["warp"] = "Prekrúti Schody",
	["chamdown"] = "Posunú Schody Dole",
	["chamdraw"] = "Dolnı Vysúvací Most",
	["chamdrawabove"] = "Hornı Vysúvací Most",

	["chameleonrigevent"] = "Záhadnı Rig",
	["chameleonmode"] = "Dróny Chameleón mód",
	["chameleonrefill"] = "Preaenie Energie (Chameleón)",
	["chameleonunion"] = "Únia s Duchom (Chameleón)",

}

--translate these too!!!
local union = "Toto je èasované Spojenie s duchom. V móde Spojenie s duchom, môeš prechádza cez blokujúce schody a kráèa na zduševnenıch, parkúrovıch a falošnıch schodoch. Špeciálne schody na teba nebudú ma efekt, a zmanipulované schody na teba nebudu reagova. V tomto móde sa nemôu vykonáva kúzla."
local overload = "Toto je kúzlo Preaenie. Udelí ti 1 bod energie na da¾šiu minútu (spolu 10). Môeš ma súèasne aktívne maximálne 1 preaenie."

module.spells.descriptions = {

	--PATRON
	["summon"] = "Toto kúzlo ti dovolí vytvori jedny schody vo vybranom smere. Ak sú v ceste blokujúce schody, budú znièené.",
	["restore"] = "Toto kúzlo privolá cie¾ovú gu¾u na hornom poschodí na tvoju pozíciu. Dosiahni rank Defender pre zníenie ceny na 2 body energie. Dosiahni rank Saviour pre zdvojnásobenie rıchlosti gule.",
	["shrinkabove"] = "Toto kúzlo scvrkne horné schody, dovolujúc ti okolo nich prejs.",
	["link"] = "Toto kúzlo vytvorí energetickı most medzi poschodiami na 60 sekúnd. Iba jedna strana diery bude pokrytá, aby sa dalo okolo mosta prejs. Dosiahni rank Creator pre predåenie èasu na 120 sekúnd.",
	["split"] = "Toto kúzlo rozdelí schody na dve proti¾ahlé schodiská, dovolujúc ti prístup na všetky 4 poschodia.",
	["portal"] = "Toto kúzlo vytvorí portál, ktorı teleportuje všetkıch hráèov o jedno poschodie hore. Portál trvá 60 sekúnd. Dosiahni rank Protector pre predåenie èasu na 120 sekúnd.",

	["summoner"] = "Toto kúzlo je èasované. Dovolí ti vytvori nekoneène ve¾a schodov na jednu minútu. Skáè na šípky pre vytvorenie schodov. Dosiahni rank Guardian pre predåenie èasu na 90 sekúnd. Vykonanie tohto kúzla taktie obnoví energiu pre všetkıch Patronov s minimálnym rankom Friend.",
	["patronrigevent"] = "Toto je manipulovacie kúzlo. Zmanipuluje všetky normálne schody s Darèekom Energie. Schody, keï sú aktivované, dodajú spúšaèovi jeden bod energie. Ak má hráè maximum energie, schody sa neaktivujú. Po aktivovaní sa schody znormalizujú.",
	["patronevent"] = "Toto je udalostné kúzlo. Vytvorí schody v kadej vo¾nej, neprekliatej kriovatke.",
	["patronaltevent"] = "Toto je udalostné kúzlo. Scvrkne všetky normálne schody, jeden za druhım.",
	["patronmode"] = "Toto je drónové kúzlo. Zmení mód drónu na Patrón. Patron dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzlo Scvrknutia a Darèek Energie na normálnych schodoch. Špeciálne schody budú znièené. Mimo medziach, dróny budú vytvára a nièi.",
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Toto kúzlo prevráti schody naopak, e sa vrch stane spodom a opaène. Prevrátené schody sú imunné na kúzla, okrem nièenia, kradnutia a pohybu. Môeš prevráti schody spä.",
	["flipabove"] = "Toto kúzlo prevráti horné schody naopak, e sa vrch stane spodom a opaène. Prevrátené schody sú imunné na kúzla, okrem nièenia, kradnutia a pohybu. Môeš prevráti schody spä.",
	["fake"] = "Toto kúzlo vytvorí falošné schody v zvolenom smere. Ak sú v ceste blokujúce schody, budú znièené. Ktorıko¾vek hráè (vrátane teba), ktorı sa na nich pokúsi kráèa, spadne cez ne, okrem Tricksterov, ITov a hráèov v móde Spojenie s duchom.",
	["invisible"] =  "Toto kúzlo vytvorí nevidite¾né schody. Toto kúzlo neznièí blokujúce schody tak ako Patrónové kúzla, take ich môeš vytvori iba na vo¾nıch kriovatkách. Dosiahni rank Jester pre videnie nevidite¾nıch schodov, a ma monos ich neodha¾ova.",
	["disco"] = "Toto kúzlo premení schody na disko schody. Ktorıko¾vek hráè (vrátane teba) zastavia hráèa a roztancuje ich na 5 sekúnd (väèšinou dvakrát). Dosiahni rank Comic pre získanie imunity na disko schody.",
	["trap"] = "Toto kúzlo premení poschodie na pascu na 60 sekúnd. Ktorıko¾vek hráè (vrátane teba), ktorı stupnú na pascu spadnú na poschodie dole. Dosiahni rank Jokester pre detekovanie pascí.",

	["flipper"] = "Toto je èasované kúzlo. Dovolí ti prevráti nekoneène vela schodov na 1 minútu. Vdy budú prevrátené horné schody, ak tam sú. Ak nie, prevrátia sa spodné schody. Toto kúzlo taktie obnoví energiu pre všetkıch Jokerov s minimálnym rankom Fool.",
	["jokerrigevent"] = "Toto je manipulovacie kúzlo. Zmanipuluje všetky normálne schody s Kúzlom Prevrátenia. Schody, keï sú aktivované, sa automaticky prevrátia.",
	["jokerevent"] = "Toto je udalostné kúzlo. Znevidite¾ní všetky normálne schody. Správy objavenia sa nezobrazia, aby sa vyhlo spamu.",
	["jokeraltevent"] = "Toto je udalostné kúzlo. Prevráti všetky normálne schody.",
	["jokermode"] = "Toto je drónové kúzlo. Zmení mód drónu na Joker. Joker dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzlo Znevidite¾nenia a Rig pre Prevrátenie na normálnych schodoch. Špeciálne schody budú znièené. Mimo medziach, dróny budú vytvára a nièi.",
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Toto kúzlo nièí schody. Na rozdiel od ostatnıch kúziel, dá sa vyèarova na všetkıch schodoch. Dosiahni rank Vile pre vyèarovanie kúzla zadarmo. Dosiahni rank Vicious pre získanie 1 bod energie kedykolvek znièíš špeciálne schody. Dosiahni rank Annihilator pre znièenie prekliatıch schodov.",
	["destroyabove"] = "Toto kúzlo nièí horné schody. Na rozdiel od ostatnıch kúziel, dá sa vyèarova na všetkıch schodoch. Dosiahni rank Vicious pre získanie 1 bod energie kedykolvek znièíš špeciálne schody. Dosiahni rank Annihilator pre znièenie prekliatıch schodov.",
	["bend"] = "Toto kúzlo ohne schody nahor. Poui toto kúzlo pre prístup na poschodie.",
	["damage"] = "Toto kúzlo spraví zo schodov parkúr, odstránením väèšinu krokov. Pred pokusom, spomeò si na cooldown pre skok. Dosiahni rank Destroyer pre kráèanie na parkúr schodoch ako na normálnych.",
	["flatten"] = "Toto kúzlo ohne opaèné schody nadol. Poui toto kúzlo pre prístup na poschodie oproti.",
	["wall"] = "Toto kúzlo vytvorí energetickú stenu na poschodí plus most na poschodie oproti na 60 sekúnd. Iba Wicked môe prejs cez tieto steny a kráèa po moste. Stena môe by ignorovaná Spectre teleportom, Hacker skok alebo mód Spojenie s duchom.",

	["bender"] = "Toto je èasované kúzlo. Dovolí ti ohnú nekoneène ve¾a schodov na 1 minútu. Obe dolné aj horné schody budú ohnuté súèasne ak sú podmienky priaznivé. Dosiahni rank Nemesis pre predåenie èasu na 90 sekúnd. Toto kúzlo taktie obnoví energiu pre všetkıch Wicked s minimálnym rankom Mean.",
	["wickedrigevent"] = "Toto je manipulovacie kúzlo. Zmanipuluje všetky normálne schody s Kúzlom Znièenia. Schody, keï sú aktivované, sa automaticky znièia. Dosiahni rank Devil pre kráèanie po Wicked Rigoch bez toho, aby si ich aktivoval.",
	["wickedevent"] = "Toto je udalostné kúzlo. Znièí to všetky normálne schody na schodisku. Regenerácia sa neaktivuje.",
	["wickedaltevent"] = "Toto je udalostné kúzlo. Znièí to všetky schody a prekliatia na schodisku, bez vynímok. Regenerácia sa aktivuje.",
	["wickedmode"] =  "Toto je drónové kúzlo. Zmení mód drónu na Wicked. Wicked dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Ohnutia a Wicked Rig na normálnych schodoch. Špeciálne schody budú znièené. Mimo medziach, dróny budú vytvára a nièi.",
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Toto kúzlo horizontálne posunie schody, znièením ktorıchko¾vek blokujúcich schodov. Po vybratí sa zobrazí okienko pre vıber smeru pohybu. Schody nemôu by posunuté mimo hernú zónu. Dosiahni rank Controller pre pohyb prevrátenıch schodov.",
	["rotate"] = "Toto kúzlo horizontálne otoèí schody, znièením ktorıchko¾vek blokujúcich schodov. Po vybratí sa zobrazí okienko pre vıber smeru pohybu. Schody nemôu by posunuté mimo hernú zónu. Dosiahni rank Controller pre pohyb prevrátenıch schodov.",
	["moveup"] = "Toto kúzlo posunie schody hore, znièením ktorıchko¾vek blokujúcich schodov. Schody nemôu by posunuté nad najvyššie poschodie. Dosiahni rank Controller pre pohyb prevrátenıch schodov.",
	["movedown"] = "Toto kúzlo opraví špeciálne schody. Ak u sú schody normálne, toto kúzlo sa nevykoná. Dosiahni rank Captain pre vyèarovanie tohto kúzla zadarmo. Dosiahni rank Admiral pre schopnos opravenia prekliatıch schodov a prekliatıch kriovatiek.",
	["moverandom"] = "Toto kúzlo náhodne posunie alebo otoèí horné schody v náhodnom smere, znièením ktorıchko¾vek blokujúcich schodov. Dosiahni rank Operator pre zabránenie pohyb schodov dole. Dosiahni rank Controller pre pohyb prevrátenıch schodov.",
	["rig"] = "Toto kúzlo náhodne posunie alebo otoèí schody v náhodnom smere, znièením ktorıchko¾vek blokujúcich schodov. Dosiahni rank Operator pre zabránenie pohyb schodov dole. Dosiahni rank Controller pre pohyb prevrátenıch schodov.",

	["ascension"] = "Toto je èasované kúzlo. Dovolí ti vykúzli nekoneène ve¾a kúziel pre pohyb hore na 1 minútu. Dosiahni rank Commander pre predåenie èasu na 90 sekúnd. Toto kúzlo taktie obnoví energiu pre všetkıch Keeperov s minimálnym rankom Handler.",
	["keeperrigevent"] = "Toto je manipulovacie kúzlo. Zmanipuluje všetky normálne schody s Kúzlom Náhodného pohybu. Schody, keï sú aktivované, sa náhodne posunú alebo otoèia. Dosiahni rank Operator pre zabránenie aktivovanıch schodov posunú sa dole. Dosiahni rank Sentinel pre kráèanie po Keeper Rigoch bez toho, aby si ich aktivoval.",
	["keeperevent"] = "Toto je udalostné kúzlo. Pred vykonaním si musíš vybra mäkkı alebo tvrdı mód. V mäkkom móde, toto kúzlo posunie alebo otoèí všetky normálne schody v náhodnom smere, bez toho, aby sa schody znièili. V tvrdom móde sa budú blokujúce schody nièi.",
	["keeperaltevent"] = "Toto je udalostné kúzlo. Obnoví to všetky špeciálne schody na schodisku, vrátane prekliatıch. Na rozdiel od Oèisty toto kúzlo nevymae prekliaté kriovatky.",
	["keepermode"] = "Toto je drónové kúzlo. Zmení mód drónu na Keeper. Keeper dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Pohybu alebo Kúzla Otáèania a Keeper Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Toto kúzlo vytvorí \"phantom\" schody v zvolenom smere. Ak sú v ceste blokujúce schody, budú znièené. Phantom schody rıchlo zmiznú po vykúzlení, a kım kompletne zmiznú.",
	["ghost"] = "Toto kúzlo ti dovolí zduševni horné schody. Môeš prechádza cez zduševnené schody, ale nemôeš po nich kráèa, kım nedosiahneš rank Aether.",
	["shadow"] = "Toto kúzlo ti dovolí odduševni schody, premenením ich spä na normálne. Dosiahni rank Phantom pre vyèarovanie tohto kúzla zadarmo.",
	["horizontal"] = "Toto kúzlo ti dovolí teleportova sa horizontálne v zvolenom smere. Môeš sa teleportova cez ktoréko¾vek blokujúce schody.",
	["random"] = "Toto kúzlo a teleportuje na náhodné poshodie v tej istej vıške.",
	["vertical"] = "Toto kúzlo a teleportuje nahor, na poschodie hore.",

	["traveller"] = "Toto je èasované kúzlo. Dovolí ti vykúzli nekoneène ve¾a kúziel pre horizontálny teleport na 1 minútu. Dosiahni rank Shadow pre predåenie èasu na 90 sekúnd. Toto kúzlo taktie obnoví energiu pre všetkıch Spectre s minimálnym rankom Shade.",
	["spectrerigevent"] = "Toto je manipulovacie kúzlo. Zmanipuluje všetky normálne schody s Kúzlom Eklipsy. Schody, keï sú aktivované, majú 50% šancu pre zduševnenie. Dosiahni rank Vision pre kráèanie po Spectre Rigoch bez toho, aby si ich aktivoval.",
	["spectreevent"] = "Toto je udalostné kúzlo. Pred vykonaním si musíš vybra mäkkı duševnı alebo tvrdı duševnı mód. V mäkkom duševnom móde, toto kúzlo posunie alebo otoèí všetky normálne schody v náhodnom smere, bez toho, aby sa schody znièili. V tvrdom duševnom móde sa budú blokujúce schody nièi.",
	["spectrealtevent"] = "Toto je udalostné kúzlo. Zduševní to všetky normálne schody. Dosiahni rank Aether pre kráèanie po zduševnenıch schodoch. V móde Spojenie s duchom sa tie dá kráèa po zduševnenıch schodoch.",
	["spectremode"] = "Toto je drónové kúzlo. Zmení mód drónu na Spectre. Spectre dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Mäkkı duševnı pohyb alebo kúzla otáèania a Spectre Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Toto kúzlo a teleportuje vo zvolenom smere. Na rozdiel od Spectre kúzla, nemôeš sa teleportova cez schody. Dosiahni rank Cracker pre zrıchlenie kúzla o 50%.",
	["blink"] = "Toto kúzlo a teleportuje okolo hornıch blokujúcich schodov. Schody musia by na opaènej strane ako sú spodné schody aby kúzlo fungovalo. Dosiahni rank Exploiter pre zrıchlenie kúzla o 50%.",
	["swap"] = "Toto kúzlo a teleportuje na miesto kde je tvoj duch. Na rozdiel od inıch kúziel, Vımena sa dá vykona kdeko¾vek.",
	["slide"] = "Toto kúzlo premení schody na dolné eskalátory. Eskalátor funguje iba keï sú na tom hráèi. Dosiahni rank Scripter pre automatické zastavenie dolnıch eskalátorov.",
	["slideup"] = "Toto kúzlo premení schody na horné eskalátory. Eskalátor funguje iba keï sú na tom hráèi.",
	["glitch"] = "Toto kúzlo glitchuje schody, teleportujúce sami seba a teba na rôzne miesto v tej istej vıške. Dosiahni rank Zero, pre teleportovanie schodov blízko k guli, ak si na najvyššom poschodí.",

	["speedup"] = "Toto je èasované kúzlo. Nevyaduje vykonanie. Zvıši tvoju rıchlos o 50% na 1 minútu. Nemôeš vykonáva iné kúzla kım je toto aktívne. Toto kúzlo taktie obnoví energiu pre všetkıch Hackerov s minimálnym rankom Geek.",
	["hackerrigevent"] = "Toto je zmanipulovacie kúzlo. Zmanipuluje to všetky schody s Kúzlom Glitch. Keï sú aktivované, schody a hráè sa teleportujú na náhodné miesto v rovnakej vıške. Iba jeden hráè bude teleportovanı. Dosiahni rank Reaper pre kráèanie po Hacker Rigoch bez toho, aby si ich aktivoval.",
	["hackerevent"] = "Toto je udalostné kúzlo. Premení to všetky normálne schody, jeden za druhım, na buï horné alebo dolné eskalátory",
	["hackeraltevent"] = "Toto je udalostné kúzlo. Premení to všetky normálne schody, jeden za druhım, na horné eskalátory.",
	["hackermode"] =  "Toto je drónové kúzlo. Zmení mód drónu na Hacker. Hacker dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Eskalátorov alebo Glitch Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Toto kúzlo ti umoòuje ukradnú normálne alebo zmanipulované schody. Buï toto alebo \"Ukradnú Hore\" je potrebné pre vykonanie ostatnıch základnıch kúziel. Dosiahni rank Hijacker pre monos ukradnú akéko¾vek schody. Dosiahni rank Outlaw pre monos ma súèasne 2 schody.",
	["stealabove"] = "Toto kúzlo ti umoòuje ukradnú horné normálne alebo zmanipulované schody. Buï toto alebo \"Ukradnú Dole\" je potrebné pre vykonanie ostatnıch základnıch kúziel. Dosiahni rank Hijacker pre monos ukradnú akéko¾vek schody. Dosiahni rank Outlaw pre monos ma súèasne 2 schody.",
	["place"] = "Toto kúzlo ti umoòuje vráti schody vo zvolenom smere. Na rozdiel od kúziel Patróna, toto kúzlo neznièí blokujúce schody, take to musí by vykonané na vo¾nej kriovatke.",
	["uppass"] = "Toto kúzlo ti umoòuje vytvori špirálovité schody z ukradnutıch. Môe by vykonané iba na vonkajších plošinách a trvá 60 sekúnd. Špirálovité schody sú imunné na všetky kúzla. Dosiahni rank Bandit pre predåenie èasu na 2 minúty.",
	["sidepass"] = "Toto kúzlo ti umoòuje vytvori ohnutú obchádzku z ukradnutıch. Bude vytvorená vo zvolenom smere a trvá 60 sekúnd. Obchádzka je imunná na všetky kúzla. Dosiahni rank Robber pre predåenie èasu na 2 minúty.",
	["drop"] = "Toto kúzli ti umoòuje vytvori priekopu z ukradnutıch schodov. Musíš najs vo¾nú kriovatku. Priekopy sú rovné schody.",

	["heist"] = "Toto je èasované kúzlo. Dovolí ti vykona nekoneène ve¾a kúziel poloenia schodov na 1 minútu. Na rozdiel od klasického kúzla, toto môe by vykonané cez blokujúce schody, keïe v tomto móde budu schody automaticky ukradnuté. Toto kúzlo taktie obnoví energiu pre všetkıch Thief s minimálnym rankom Crook.",
	["thiefrigevent"] = "Toto je zmanipulovacie kúzlo. Zmanipuluje to všetky schody s Kradnutím Energie. Schody, keï sú aktivované, ukradnú jeden bod energie hráèovi a dajú tebe. Energiu nedostaneš ak u máš maximum energie. Taktie nedostaneš energiu ak zmeníš rolu.",
	["thiefevent"] = "Toto je udalostné kúzlo. Premení to všetky normálne schody, jeden za druhım, na priekopy.",
	["thiefaltevent"] = "Toto je udalostné kúzlo. Vytvorí to obchádzku na kadej vnútornej kriovatke, june a severne. Obchádzka sa nevytvorí, ak je kriovatka prekliatá.",
	["thiefmode"] = "Toto je drónové kúzlo. Zmení mód drónu na Thief. Thief dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Poloenia/Ukradnutia alebo Thief Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitup"] = "Toto kúzlo spojí schody so schodmi hore portálom. Ak tam nie sú iadné schody, budú vytvorené. Dosiahni rank Prodigy pre prepísanie existujúceho portálu. Dosiahni rank Sage pre ignorovanie dolnıch spojoch.",
	["splitrotate"] = "Toto kúzlo spojí schody so schodmi otoèené horizontálne, v ¾ubovo¾nom smere. Ak tam nie sú iadné schody, budú vytvorené. Dosiahni rank Prodigy pre prepísanie existujúceho portálu. Dosiahni rank Illuminati pre monos prechádza cez portály.",
	["splitside"] = "Toto kúzlo spojí schody so schodmi v ¾ubovo¾nom smere portálom. Ak tam nie sú iadné schody, budú vytvorené. Dosiahni rank Prodigy pre prepísanie existujúceho portálu. Dosiahni rank Illuminati pre monos prechádza cez portály.",
	["splitrandom"] = "Toto kúzlo spojí schody s náhodnou kriovatkou v tej istej vıške portálom. Ak tam nie sú iadné schody, budú vytvorené. Dosiahni rank Illuminati pre monos prechádza cez portály.",
	["cancelsplit"] = "Toto kúzlo vymae existujúce portály. Dosiahni rank Disciple pre monos vymazania plošinovıch portálov. Dosiahni rank Scholar pre vykonanie tohto kúzla zadarmo.",
	["splitforward"] = "Toto kúzlo spojí dve plošiny v ¾ubovo¾nom smere, v tej istej vıške portálom. Dosiahni rank Disciple tpre monos vymazania plošinovıch portálov. Blokujúce schody nebudú blokova spoj. Dosiahni rank Illuminati pre monos prechádza cez portály.",

	["splitter"] = "Toto je èasované kúzlo. Dovolí ti vytvori nekoneène ve¾a plošinovıch portálov na 1 minútu. Dosiahni rank Savant pre predåenie èasu na 90 sekúnd. Vyèarovanie tohto kúzla taktie obnoví energiu pre všetkıch Archon s minimálnym rankom Adept.",
	["archonrigevent"] = "Toto je zmanipulovacie kúzlo. Zmanipuluje to všetky normálne schody s Phase Rig. Schody, keï sú aktivované, teleportujú hráèa vo smere v ktorom kráèali, prechádzajúc cez blokujúce schody. Po aktivovaní sa schody obnovia.",
	["archonevent"] = "Toto je udalostné kúzlo. Vytvorí náhodné portály na všetkıch normálnych schodoch.",
	["archonaltevent"] = "Toto je udalostné kúzlo. Vytvorí vertikálne portály na všetkıch normálnych schodoch.",
	["archonmode"] = "Toto je drónové kúzlo. Zmení mód drónu na Archon. Archon dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Náhodného Portálu alebo Phase Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["outdrift"] = "Toto kúzlo spraví, aby plošina krúila okolo hernej zóny, v rovnakej vıške. Môe by vyèarované iba na vonkajších plošinách.",
	["indrift"] = "Toto kúzlo vytvorí doèasnú dosku, ktorá a posunie v ¾ubovo¾nom smere.",
	["updrift"] = "Toto kúzlo vytvorí vıah z dolnej a hornej plošiny. Plošiny budú po istom èase obnovené. Dosiahni rank Vagabond pre zrıchlenie pohybu. Dosiahni rank Traveller pre schopnos zosilni vıah. Dosiahni rank Strider pre monos opä zosilni vıah na 3. poschodie.",
	["diagdrift"] = "Toto kúzlo vytvorí boènı vıah so spodnou plošiou a plošinou v ¾ubovo¾nom diagonálnom smere. Plošiny budú obnovené po istom èase.",
	["spin"] = "Toto kúzlo otoèí schody 180 stupòov. Dosiahni rank Nomad pre monos otoèi driftované schody.",
	["driftabove"] = "Toto kúzlo zdvihne horné schody, tak aby si mohol prejs pod ne a kráèa po nich.",

	["riser"] = "Toto je èasované kúzlo. Dovolí ti vytvori nekoneène ve¾a vertikálych vıahov na 1 minútu. Ak máš dostatoènı rank, kúzlom tie môeš zosilni vıahy. Dosiahni rank Wayfarer pre predåenie èasu na 90 sekúnd. Vykonanie tohto kúzla taktie obnoví energiu pre všetkıch Drifterov s minimálnym rankom Wanderer.",
	["drifterrigevent"] = "Toto je zmanipulovacie kúzlo. Zmanipuluje to všetky normálne schody s Drift Rig. Schody, keï sú aktivované, sa otoèia. Dosiahni rank Voyager pre získanie imunity na tento rig.",
	["drifterevent"] = "Toto je udalostné kúzlo. Náhodne otoèí všetky normálne schody.",
	["drifteraltevent"] =  "Toto je udalostné kúzlo. Zdvihne to všetky schody, dovolujúc ti prejs pod ne.",
	["driftermode"] = "Toto je drónové kúzlo. Zmení mód drónu na Drifter. Drifter dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Driftu alebo Drifter Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Toto kúzlo ti umoòuje vytvori prekliaté schody vo vybranom smere. Blokujúce schody budú znièené. Dosiahni rank Banished pre schopnos znièi blokujúce prekliaté schody.",
	["curse"] = "Toto kúzlo ti umoòuje preklia alebo odpreklia spodné schody, pod¾a toho, èi u sú prekliaté.",
	["curseabove"] = "Toto kúzlo ti umoòuje preklia alebo odpreklia horné schody, pod¾a toho, èi u sú prekliaté. Schody sa na chví¾ku zdvihnú, umoòujúc ti prejs zo spodu.",
	["curseinter"] = "Toto kúzlo ti umoòuje bliknú na druhú stranu, na opaènú plošinu, ak v ceste nie sú blokujúce schody. Kriovatka sa stane prekliatá po tomto kúzle, take ostatní hráèi s òou nemôu pracova. Dosiahni rank Infidel pre monos poui toto kúzlo na vymazanie prekliatej kriovatky.",
	["autodown"] = "Poui toto kúzlo pre vytvorenie a zdvihnutie špeciálnej, zrkadlovej sekcie spodnej èasti schodov. Iba tí v móde Spojenie s duchom a Heretici môu po tej sekcii kráèa.",
	["autoup"] = "Poui toto kúzlo pre vytvorenie a zdvihnutie špeciálnej, zrkadlovej sekcie hornej èasti schodov. Iba tí v móde Spojenie s duchom a Heretici môu po tej sekcii kráèa.",

	["malediction"] = "Toto je èasované kúzlo. Dovolí ti vytvorit nekoneène ve¾a prekliatıch schodov na 1 minútu. Dosiahni rank Accursed pre predåenie èasu na 90 sekúnd. Vykonanie tohto kúzla taktie obnoví energiu všetkım Hereticom s minimálnym rankom Stranger.",
	["hereticrigevent"] = "Toto je zmanipulovacie kúzlo. Zmanipuluje to všetky normálne schody s Possess Rig. Schody, keï sú aktivované, posadnú hráèa, ktorı aktivoval schody. Budú musie nájs gu¾u energie pre oslobodenie. Posadnutí hráèi nemôu kúzli. Dosiahni rank Unbeliever pre získanie imunity na tento rig. Dosiahni rank Exiled pre získanie 1 bod energie kadı krát, keï niekto bude posadnutı.",
	["hereticevent"] = "Toto je udalostné kúzlo. Zmení to všetky normálne schody na horné alebo dolné schizmy.",
	["hereticaltevent"] = "Toto je udalostné kúzlo. Zmení všetky normálne schody na prekliaté.",
	["hereticmode"] = "Toto je drónové kúzlo. Zmení mód drónu na Heretic. Heretic dróny, ak je poèet schodov v medziach, budú náhodne vykonáva Kúzla Schizmy alebo Possess Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--CHAMELEON
	["ditch"] = "Toto kúzlo patrilo kedysi Thief. Premení normálne alebo zmanipulované schody na prekríené schodisko.",
	["warp"] = "Toto kúzlo patrilo kedysi Wicked. Ohne to normálne alebo zmanipulované schody spä na plošinu.",
	["chameleonrigevent"] = "Toto je zmanipulovacie kúzlo. Zmanipuluje to všetky normálne schody Záhadnym Rigom. Schody, keï sú aktivované, vykonajú náhodnı efekt z inıch rigoch.",
	["chamdown"] = "Toto kúzlo patrilo kedysi Keeper. Posunie to normálne alebo zmanipulované schody dole. Ak máš v role Keeper minimálny rank Captain, môeš posunú aj prevrátené schody.",
	["chamdraw"] = "Toto kúzlo patrilo kedysi Heretic. Premení to schody na padací most, èo spôsobuje, e zostup je nemonı, ak to inı hráè neaktivuje zo spodu.",
	["chamdrawabove"] = "Toto kúzlo patrilo kedysi Heretic. Premení to horné schody na padací most, dovolujúc ti prejs zo spodu. Stúpanie je nemoné, ak inı hráè schody neaktivuje z hora. Starı Unbeliever rank u nie je aktívny a automatické vysunutie zo spodu u nie je moné.",
	["chameleonmode"] =  "Toto je drónové kúzlo. Zmení mód drónu na Chameleon. Chameleon dróny, ak je poèet schodov v medziach, budú náhodne vykonáva rôzne kúzla z inıch módov alebo Záhadnı Rig na normálnych schodoch. Špeciálne schody budú obnovené. Mimo medziach, dróny budú vytvára a nièi.",
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}

--do not remove the unused ones, for compatibility
module.spells.manacosts = {
	"0 Energie",
	"1 Energia",
	"2 Energie",
	"3 Energie",
	"4 Energie", 
	"0 Energie + schody",
	"1 Energia + schody",
	"2 Energie + schody",
	"3 Energie + schody", 
	"", 
	"10 Energie" 
}

module.spells.tokencosts = {

	"1 etón",
	"2 etóny",
	"3 etóny",

	["chameleonrigevent"] = "2 Multi-etóny",
	["unlock"] = "(odomknú za 3 etóny)",
}

module.serverfeedback = {

	["scancel"] = "Zruš kúzlo pre zmenu roly",
	["morph"] = "Skoè sem aby si sa stal %s",
	["raceclosed"] = "Preteky sa zatvorili.",
	["stay"] = "Ostaò v kruhu pre zúèastnenie sa pretekov!",
	["falsestart"] = "Falošnı Štart",
	["secret"] = "Našiel si tajomstvo!",
	["traveller"] = "Získaj rank Traveller pre zosilnenie HORNİCH DRIFTOV.",
	["noboost"] = "Nedá sa zosilni, vyššie nie sú poschodia.",
	["platformlocked"] = "Poschodie je zamknuté.",
	["strider"] = "Získaj rank Strider pre dvojité zosilnenie HORNİCH DRIFTOV.",
	["noupplatform"] = "Nedá sa zosilni, neexistujú vyššie poschodia.",
	["boosted"] = "Drift zosilnenı!",
	["wrongdirection"] = "Toto kúzlo nemôeš vykona tımto smerom.",
	["cursed"] = "V ceste sú prekliaté schody!",
	["banished"] = "Získaj rank Banished pre znièenie blokujúcich prekliatıch schodov.",
	["blocked"] = "Táto kriovatka je prekliatá.",
	["infidel"] = "Získaj rank Infidel pre odkliatie kriovatiek.",
	["admiral"] = "Získaj rank Admiral pre odkliatie kriovatiek.",
	["nostairs"] = "Tu nie sú iadné schody.",
	["noground"] = "Toto kúzlo nesmie by vykonané na prízemí.",
	["oddonly"] = "Toto kúzlo nesmie by vykonané na tomto poschodí.",
	["reveal"] = "Odhalil si nevidite¾né schody!",
	["keeperrig"] = "Schody sa hıbu!",
	["hackerrig"] = "Schody sa pokazili!",
	["jokerrig"] = "Schody sa prevrátili!",
	["wickedrig"] = "Schody sa zrúcajú!",
	["spectrerig"] = "Schody zduševneli!",
	["notspectrerig"] = "Schody NEzduševneli!",
	["patronrig"] = "Získal si 1 Energiu, majetok %s!",
	["notpatronrig"] = "Získal si 1 Energiu, majetok (hráè odišiel)!",
	["thiefrig"] = "%s ukradol 1 Energiu!",
	["mythiefrig"] = "Ukradol si 1 energiu od %s",
	["notthiefrig"] = "%s u nie je Thief - energia neukradnutá.",
	["leftthiefrig"] = "Thief odišiel z hry -  energia neukradnutá.",
	["hereticrig"] = "Bol si posadnutı!",
	["archonrig"] = "Phase teleport!",
	["drifterrig"] = "Schody sa toèia!",
	["noabove"] = "iadné schody nenájdené presne hore.",
	["noblink"] = "Môeš prehliadnú iba cez blokujúce schody.",
	["noblink2"] = "Nemôeš prehliadnú na mostoch a schodoch ohnutıch dole.",
	["linklimit"] = "Iba \"horné kúzla\" môu by vykonané na spojoch.",
	["new20pass"] = "Limit energie zvıšenı!",
	["newchampass"] = "Teraz môeš zmeni rolu poèas šplhu!",
	["newspectrepass"] = "Teraz sa môeš sta SPECTRE!",
	["charreset"] = "Eliminácia resetovaním avatara.",
	["chamtutorial"] = "Nemôeš poui CHAMELEÓN v tutoriáli!",
	["champossessed"] = "Nemôeš poui CHAMELEÓN ako posadnutı.",
	["chamspell"] = "Najprv vykonaj alebo zruš súèasne vybrané kúzlo.",
	["morphpossessed"] = "Nemôeš zmeni rolu ako posadnutı.",
	["nocode"] = "Prosím napíš kód.",
	["invalid"] = "Tento kód je nesprávny.",
	["old"] = "Tento kód u nie je aktívny.",
	["accepted"] = "Kód akceptovanı.",
	["tryspectre"] = "SPECTRE odomknutı na 10 minút!.",
	["endspectre"] = "SPECTRE demo bude ukonèené za 1 minútu!",
	["trycham"] = "CHAMELEÓN odomknutı na 10 minút!",
	["endcham"] = "CHAMELEÓN demo bude ukonèené za 1 minútu!",
	["trymana"] = "Väèšia kapacita energie odomknutá na 10 minút!",
	["endmana"] = "Väèšia kapacita energie demo skonèí za 1 minútu!",
	["used"] = "U si pouil tento kód.",
	["tooshort"] = "Tvoja správa bola príliš krátka a nebola poslaná.",
	["sent"] = "Tvoja správa bola poslaná, ïakujeme.",
	["noreshuffle"] = "Najprv si vyber mód preskupenia!",
	["oneoverload"] = "Nemôeš ma súèasne viac ako jedno PREAENIE ENERGIE aktívne.",
	["overstarted"] = "Aktivoval si PREAENIE ENERGIE!",
	["overended"] = "Preaenie Energie skonèilo.",
	["2minshare"] = "Potrebuješ aspoò 2 body energie...",
	["noshare"] = "iadny hráèi nie sú pri tebe...",
	["noinf"] = "Nemôeš zdiela nekoneènú energiu!",
	["toomuch"] = "%s má maximum energie!",
	["shared"] = "Energie zdie¾aná s %s!",
	["received"] = "%s s tebou zdie¾al energiu!",
	["muted"] = "% je teraz umlèanı.",
	["unmuted"] =  "%s u nie je umlèanı.",
	["kicked"] = "%s bol vyhodenı!",
	["banned"] = "%s bol zabanovanı!",
	["mekicked"] = "%s a vyhodil z jeho servera.",
	["mebanned"] = "%s a zabanoval z jeho servera.",
	["permban"] = "%s a zabanoval z tejto hry.",
	["kick"] = "%s a vyhodil z tejto hry.",
	["48ban"] = "%s a zabanoval na 48 hodín.",
	["exiled"] = "Si zabanovanı z tohto servera! TOTO NIE JE BAN Z HRY",
	["permbanned"] = "Si zabanovanı z tejto hry.",
	["timeout"] = "Tvoj ban skonèí o %02i hodín a %02i minút.",
	["notinrace"] = "Nemôeš prepnú na nekoneènı mód poèas pretekov!",
	["notinreg"] = "Nemôeš prepnú na nekoneènı mód poèas regenerácie!",
	["infinite"] = "Server je teraz v nekoneènom móde!",
	["classic"] = "Server je teraz v klasickom móde!",
	["casual"] = "Hráèi teraz môu kúzli!",
	["nocasual"] = "Hráèi teraz nemôu kúzli!",
	["purge"] = "Oèista teraz spôsobí regeneráciu v klasickom móde!",
	["nopurge"] = "Oèista teraz nespôsobí regeneráciu v klasickom móde!",
	["noevens"] = "Párne poschodia sú teraz zamknuté",
	["evens"] = "Párne poschodia sú teraz plne prístupné",
	["orbmoves"] = "Koneèná Gu¾a sa teraz bude sama pohybova!",
	["orbstopped"] = "Koneèná Gu¾a sa teraz nebude sama pohybova!",
	["infreg"] = "Schodisko sa regeneruje po nekoneènom kole!",
	["noinfreg"] = "Schodisko sa teraz nebude regenerova po nekoneènom kole!",
	["drones"] = "Malé Dróny zapnuté!",
	["nodrones"] = "Malé Dróny vypnuté!",
	["dronefix"] = "Dróny teraz budú obnovova schody!",
	["nodronefix"] = "Dróny teraz nebudú obnovova schody!",
	["droneunlock"] = "Dróny teraz budú vymazáva prekliaté kriovatky!",
	["nodroneunlock"] = "Dróny teraz nebudú vymazáva prekliaté kriovatky!",
	["droneuncurse"] = "Dróny teraz budú obnovova prekliaté schody!",
	["nodroneuncurse"] = "Dróny teraz nebudú obnovova prekliaté schody!",
	["dronemove"] = "Dróny teraz budu posúva schody v klasickom móde!",
	["nodronemove"] = "Dróny teraz nebudú posúva schody v klasickom móde!",
	["dronespin"] = "Dróny teraz budú otáèa schody v klasickom móde!",
	["nodronespin"] = "Dróny teraz nebudú otáèa schody v klasickom móde!",
	["noinput"] = "Prosím napíš hodnotu!",
	["nonumber"] = "Prosím napíš èíslo!",
	["notrace"] = "Nemôeš zmeni poèet poschodí poèas pretekov!",
	["notultimate"] = "Nemôeš zmeni poèet poschodí poèas ultimátneho kúzla!",
	["notregen"] = "Nemôeš zmeni poèet poschodí poèas regenerácie!",
	["wait"] = "Poèet poschodí sa mení, prosím èakajte...",
	["duration"] = "Dåka pretiek zmenená (neovplyvní to súèasné preteky)",
	["init"] = "Zaèiatoènı interval v nekoneènom móde zmenenı",
	["reduction"] = "Èas redukcie v nekoneènom móde zmenenı",
	["mininf"] = "Minimálny interval v nekoneènom móde zmenenı",
	["cooldown"] = "Cooldown pre rigy a udalosti zmenenı",
	["speed"] = "Rıchlos Malıch Drónov zmenená",
	["spin"] = "Dåka vykonávania kúziel Malıch Drónov zmenená",
	["max"] = "Poèet maximálnych cie¾ov zmenenı",
	["min"] = "Poèet minimálnych cie¾ov zmenenı",
	["curse"] = "Šanca prekliatia schodov zmenená",
	["block"] = "Šanca prekliatia kriovatiek zmenená",
	["lock"] = "Teraz sa nemôe kúzli",
	["ultwait"] = "Iné ultimátne kúzlo sa práve vykonáva. Prosím èakajte.",
	["regwait"] = "Nemôeš vykúzli rigy a udalosti, keï sa schodisko regeneruje.",
	["coolwait"] = "Teraz nemôeš vykúzli rigy a udalosti, prosím èakajte.",
	["notfound"] = "Schody nenájdené.",
	["normalrig"] = "Toto kúzlo funguje iba na normálne a zmanipulované schody.",
	["locked"] = "Tieto schody sú ešte zamknuté.",
	["nocursedblink"] = "Nemôeš murknú okolo prekliatıch schodov.",
	["isblocked"] = "Táto kriovatka u je prekliatá.",
	["cantblock"] = "Nedá sa preklia, sú tu schody. (môu by nevidite¾né)",
	["cantblock2"] = "Nedá sa preklia, v ceste sú schody. (môu by nevidite¾né)",
	["noway"] = "V ceste sú schody. (môu by nevidite¾né)",
	["noway2"] = "Blokujúce schody sú v ceste. (môu by nevidite¾né)",
	["noplatform"] = "iadné poschodie nenájdené v tomto smere.",
	["nopass"] = "Prechod môe by vytvorenı iba na vonkajších poschodiach.",
	["pass"] = "Prechod tu u je.",
	["link"] = "Spoj tu u je.",
	["outdrift"] = "Vonkajší drift môe by vytvorenı iba na vonkajších poschodiach.",
	["cantgate"] = "Tento smer je zablokovanı.",
	["wall"] = "Stena tu u je.",
	["nocurse"] = "Iba normálne, prekliaté alebo zmanipulované schody môu by prekliaté/odprekliaté.",
	["nogate"] = "Tieto schody nie sú spojené.",
	["noghost"] = "Iba zduševnené schody môu by obnovené.",
	["noflip"] = "Iba normálne, prevrátené alebo zmanipulované schody môu by prevrátené.",
	["prodigy"] = "Dosiahni rank Prodigy, pre nahradenie spojov.",
	["wrongsplit"] = "Druhá brána musí by v hernej zóne.",
	["blockedplit"] = "Nedá sa vytvori brána, cielená kriovatka je prekliatá.",
	["cursedtarget"] = "V ceste sú prekliaté schody.",
	["lockedsplit"] = "Ešte sa nedá vytvori brána, druhé schody sú zamknuté.",
	["failedgate"] = "Vytvorenie brány neúspešné.",
	["nomove"] = "Iba normálne, prevrátené a zmanipulované schody môu by posunuté.",
	["controller"] = "Dosiahni rank Controller, pre posun prevrátenıch schodov.",
	["wrongmove"] = "Schody nemôu by posunuté von z hernej zóny.",
	["blockedmove"] = "Schody nemôu by posunuté, cielená kriovatka je prekliatá.",
	["lockedmove"] = "Ešte nemôu by schody posunuté, blokujúce schody sú zamknuté.",
	["normal"] = "Tieto schody sú normálne.",
	["nomad"] = "Dosiahni rank Nomad pre otoèenie driftované schody.",
	["hijacker"] = "Dosiahni rank Hijacker pre ukradnutie rôznych neprekliatıch schodov.",
	["nocursesteal"] = "Prekliaté schody nemôu by ukradnuté.",
	["lockedinter"] = "Táto kriovatka je zamknutá.",
	["possessed"] = "Nemôeš kúzli ako posadnutı.",
	["lockedspell"] = "Toto kúzlo je zamknuté!",
	["unlocked"] = "Kúzlo odomknuté",
	["nomana"] = "Nedostatok energie!",
	["spelllock"] = "Teraz nemôeš vykonáva kúzla",
	["notokens"] = "Nedostatok etónov!",
	["nothere"] = "Nemôeš poui toto kúzlo v tutoriáli.",
	["onlyracers"] = "Iba pretekári môu vykonáva kúzla.",
	["cancelfirst"] = "Najprv musíš zruši vybrané kúzlo...",
	["stashfull"] = "Tvoja skrıša schodov je plná.",
	["stashempty"] = "Musíš ukradnú schody pre vykonanie tohto kúzla.",
	["notdefault"] = "Dróny musia by v normálnom móde. Prosím èakajte.",
	["cooldownwait"] = "Teraz nemôeš vykonáva rigy a udalosti, prosím poèkaj %d sekúnd.",
	["nospellsnow"] = "Teraz nemôeš vykonáva kúzla.",

	["unknown"] = "Neznáma chyba.",

}

module.serverbroadcast = {
	["pranked"] = "%s vyprankoval %s!",
	["found"] = "%s našiel neviditelné schody hráèa %s!",
	["disco"] = "%s si uíva disko schody hráèa %s.",
	["obby"] = "%s sa pokúša dokonèi parkúr hráèa %s.",
	["default"] = "Dróny sú opä v klasickom móde.",
	["regen"] = "Schodisko sa regeneruje.",
	["done"] = "Regenerácia dokonèená.",
	["union"] = "%s sa spojil s duchom!",
	["eliminated"] = "%s je eliminovanı.",
	["won"] = "%s vyhral preteky!",
	["falsestart"] = "Falošnı Štart",
	["countdown"] = "Preteky o %d sekúnd!",
	["2min"] = "Minimálne 2 pretekári sú potrebnı pre zaèiatok klasickıch pretekov!",
	["noplayers"] = "iadny pretekári, nekoneèné preteky nemôu zaèa!",
	["nojoin"] = "Preteky sú teraz zatvorené - nikto sa u nemôe zúèastni.",
	["allfalse"] = "Všetci hráèi urobili Falošnı Štart!",
	["safety"] = "Poèet poschodí sa zmenil, tieto preteky nezaènú.",
	["leader"] = "%s prevzal vedenie!",
	["toolate"] = "Nikto sa nedostal vèas do konca!",

}

module.localfeedback = {

	["cancel"] = "Najprv zruš vybrané kúzlo!",
	["nomana"] = "Nedostatok energie!",
	["notokens"] = "Nedostatok etónov!",
	["unlocked"] = "Kúzlo odomknuté!",
	["maxmana"] = "U máš maximum energie!",
	["nopurchase"] = "Nemusíš si kúpi energiu v tutoriáli!",
	["hascham"] = "U vlastníš Chameleón!",
	["hasspectre"] = "U vlastníš Spectre!",
	["hasmana"] = "U vlastníš Väèšiu kapacitu energie!",
	["nomuggle"] = "Myslel si si, e sú tajné kúzla pre Muggle ale nie sú.",
	["nocham"] = "Myslel si si, e sú tajné kúzla pre Chameleón ale nie sú.",
	["nonone"] = "Myslel si si, e sú tajné kúzla pre None ale nie sú.",
	["nounlocks"] = "Odomkni všetky klasické kúzla pre prístup k ultimátnym kúzlam!",
	["onetoken"] = "Dostal si %s etón!",
	["moretokens"] = "Dostal si %s etónov!",
	["music"] = "Hudba úspešne zmenená.",
	["nomusic"] = "Hudba sa nenaèítala.",
	--this is teleport to other tower
	["noteleport"] = "Teleport neúspešnı!", 
	["norefresh"] = "Ešte nemôeš obnovi.",

}

module.switchon = {

	["JOKER"] = "Teraz nebudeš odha¾ova neviditelné schody.",
	["WICKED"] = "Teraz nebudeš spúša Wicked Rigy.",
	["KEEPER"] = "Teraz nebudeš spúša Keeper Rigy.",
	["SPECTRE"] = "Teraz nebudeš spúša Spectre Rigy.",
	["HACKER"] = "Teraz nebudeš spúša Hacker Rigy.",
	["ARCHON"] = "Teleportujú a iba brány smerujúce nahor.",
	["DRIFTER"] = "Teraz nebudeš spúša Drifter Rigy.",

}

module.switchoff = {

	["JOKER"] = "Teraz budeš odha¾ova neviditelné schody.",
	["WICKED"] = "Teraz budeš spúša Wicked Rigy.",
	["KEEPER"] = "Teraz budeš spúša Keeper Rigy.",
	["SPECTRE"] = "Teraz budeš spúša Spectre Rigy.",
	["HACKER"] = "Teraz budeš spúša Hacker Rigy.",
	["ARCHON"] = "Všetky brány nesmerujúce nadol a teleportujú.",
	["DRIFTER"] = "Teraz budeš spúša Drifter Rigy.",
}

module.events = {
	["patronrigevent"] = "PREBIEHA PATRÓN RIG",
	["patronevent"] = "PREBIEHA PREAENIE SCHODOV",
	["patronaltevent"] = "SCRVKNUTIE",
	["jokerrigevent"] = "PREBIEHA JOKER RIG",
	["jokeraltevent"] = "PREBIEHA OTÁÈANIE SCHODOV",
	["jokerevent"] = "ZAHALENIE",
	["wickedrigevent"] = "PREBIEHA WICKED RIG",
	["wickedaltevent"] = "PREBIEHA OÈISTA",
	["wickedevent"] = "ZNIÈENIE",
	["keeperrigevent"] = "PREBIEHA KEEPER RIG",
	["keeperevent"] = "PREBIEHA PREHODENIE",
	["keeperaltevent"] = "OBNOVENIE",
	["spectrerigevent"] = "PREBIEHA SPECTRE RIG",
	["spectreevent"] = "PREBIEHA PRÍZRAK",
	["spectrealtevent"] = "ZDUŠEVNENIE",
	["hackerrigevent"] = "PREBIEHA HACKER RIG",
	["hackerevent"] = "PREBIEHA ESKALÁCIA",
	["hackeraltevent"] = "PORUCHA",
	["thiefrigevent"] = "PREBIEHA THIEF RIG",
	["thiefevent"] = "PREBIEHA ZROVNANIE",
	["thiefaltevent"] = "OBCHÁDZKA",
	["hereticrigevent"] = "PREBIEHA HERETIC RIG",
	["hereticevent"] = "PREBIEHA SCHIZMA",
	["hereticaltevent"] = "PREKLIATIE",
	["archonrigevent"] = "PREBIEHA ARCHON RIG",
	["archonevent"] = "PREBIEHA ROZDELENIE",
	["archonaltevent"] = "DE¼BA",
	["drifterrigevent"] = "PREBIEHA DRIFTER RIG",
	["drifterevent"] = "PREBIEHA DRIFT",
	["drifteraltevent"] = "ZDVIHNUTIE",
	["chameleonrigevent"] = "PREBIEHA CHAMELEÓN RIG",

}

module.finished = {

	["patronrigevent"] = "PATRÓN RIG DOKONÈENİ",
	["patronevent"] = "PREAENIE SCHODOV DOKONÈENÉ",
	["patronaltevent"] = "SCRVKNUTIE DOKONÈENÉ",
	["jokerrigevent"] = "JOKER RIG DOKONÈENİ",
	["jokeraltevent"] = "OTÁÈANIE SCHODOV DOKONÈENÉ",
	["jokerevent"] = "ZAHALENIE DOKONÈENÉ",
	["wickedrigevent"] = "WICKED RIG DOKONÈENİ",
	["wickedaltevent"] = "OÈISTA DOKONÈÉNÁ",
	["wickedevent"] = "ZNIÈENIE DOKONÈENÉ",
	["keeperrigevent"] = "KEEPER RIG DOKONÈENİ",
	["keeperevent"] = "PREHODENIE DOKONÈENÉ",
	["keeperaltevent"] = "OBNOVENIE DOKONÈENÉ",
	["spectrerigevent"] = "SPECTRE RIG DOKONÈENİ",
	["spectreevent"] = "PRÍZRAK DOKONÈENİ",
	["spectrealtevent"] = "ZDUŠEVNENIE DOKONÈENÉ",
	["hackerrigevent"] = "HACKER RIG DOKONÈENİ",
	["hackerevent"] = "ESKALÁCIA DOKONÈENÁ",
	["hackeraltevent"] = "PORUCHA DOKONÈENÁ",
	["thiefrigevent"] = "THIEF RIG DOKONÈENİ",
	["thiefevent"] = "ZROVNANIE DOKONÈENÉ",
	["thiefaltevent"] = "OBCHÁDZKA DOKONÈENÁ",
	["hereticrigevent"] = "HERETIC RIG DOKONÈENİ",
	["hereticevent"] = "SCHIZMA DOKONÈENÁ",
	["hereticaltevent"] = "PREKLIATIE DOKONÈENÉ",
	["archonrigevent"] = "ARCHON RIG DOKONÈENİ",
	["archonevent"] = "ROZDELENIE DOKONÈENÉ",
	["archonaltevent"] = "DE¼BA DOKONÈENÁ",
	["drifterrigevent"] = "DRIFTER RIG DOKONÈENİ",
	["drifterevent"] = "DRIFT DOKONÈENİ",
	["drifteraltevent"] = "ZDVIHNUTIE DOKONÈENÉ",
	["chameleonrigevent"] = "CHAMELEÓN RIG DOKONÈENİ",

}

module.timedspells = {
	["summoner"] = "%s práve vykúzlil kúzlo VYVOLÁVAÈ!",
	["flipper"] = "%s práve vykúzlil kúzlo PREVRÁCAÈ!",
	["bender"] = "%s práve vykúzlil kúzlo OHİBAÈ!",
	["ascension"] = "%s práve vykúzlil kúzlo NANEBOVSTÚPENIE!",
	["traveller"] = "%s práve vykúzlil kúzlo TRBLIETANIE!",
	["speedup"] = "%s práve vykúzlil kúzlo EXPLOIT RİCHLOSTI!",
	["heist"] = "%s práve vykúzlil kúzlo LÚPE!",
	["splitter"] = "%s práve vykúzlil kúzlo ROZDE¼OVAÈ!",
	["riser"] = "%s práve vykúzlil kúzlo STÚPAÈ!",
	["malediction"] = "%s práve vykúzlil kúzlo PREKLIATIE!",

}

module.eventspells = {

	["patronrigevent"] = "%s práve zmanipuloval všetky schody Darèekom Energie!",
	["patronaltevent"] = "%s práve scvrkol všetky normálne schody!",
	["patronevent"] = "%s práve zahltil veu schodmi!",
	["jokeraltevent"] = "%s práve prevrátil všetky normálne schody!",
	["jokerrigevent"] = "%s práve zmanipuloval všetky schody kúzlom otáèania!",
	["jokerevent"] = "%s práve skryl všetky normálne schody!",
	["wickedrigevent"] = "%s práve zmanipuloval všetky schody kúzlom nièenia!",
	["wickedaltevent"] = "%s práve znièil VŠETKY schody!",
	["wickedevent"] = "%s práve znièil všetky normálne schody!",
	["keeperrigevent"] = "%s práve zmanipuloval všetky schody kúzlom náhodného pohybu!",
	["keeperevent"] = "%s práve náhodne posunul všetky normálne schody!",
	["keeperaltevent"] = "%s práve obnovil všetky schody!",
	["spectrerigevent"] = "%s práve zmanipuloval všetky schody s 50% šancou zduševnenia!",
	["spectreevent"] = "%s práve prízraène posunul všetky schody!",
	["spectrealtevent"] = "%s práve zduševnel všetky schody!",
	["hackerrigevent"] = "%s práve zmanipuloval všetky schody kúzlom Glitch!",
	["hackerevent"] = "%s práve premenil všetky normálne schody na eskalátory!",
	["hackeraltevent"] = "%s práve premenil všetky normálne schody na horné eskalátory!",
	["thiefrigevent"] = "%s práve zmanipuloval všetky schody Kradnutím Energie!",
	["thiefevent"] = "%s práve splošil všetky schody!",
	["thiefaltevent"] = "%s práve vytvoril obchádzku pre všetky schody!",
	["newmode"] = "%s práve zmenil mód dronov na %s!",
	["archonrigevent"] = "%s práve zmanipuloval všetky schody kúzlom PHASE!",
	["archonevent"] = "%s práve náhodne rozdelil všetky normálne schody!",
	["archonaltevent"] = "%s práve vertikálne rozdelil všetky normálne schody!",
	["drifterrigevent"] = "%s práve zmanipuloval všetky schody kúzlom Otoèenia!",
	["drifterevent"] = "%s práve náhodne oddriftoval všetky schody!",
	["drifteraltevent"] = "%s práve zdvihol všetky normálne schody!",
	["hereticrigevent"] = "%s práve zmanipuloval všetky normálne schody kúzlom Posadnutia!",
	["hereticevent"] = "%s práve schizmatizoval všetky normálne schody!",
	["hereticaltevent"] = "%s práve preklial všetky normálne schody!",
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
	["chameleonrigevent"] = "%s práve zmanipuloval všetky schody Záhadnım Rigom!"
}


--stuff that was wrong
module.gui.settings["rank"] = "Zobrazi tvoj všeobecnı rank v bilboarde"
module.spells.descriptions["link"] = "Toto kúzlo vytvorí energetickı most medzi plošinami na 60 sekúnd. Spoje sú zo spodu nehmatate¾né. Dosiahni rank Creator pre predåenie èasu na 120 sekúnd."
module.spells.descriptions["outdrift"] = "Toto kúzlo spraví, aby plošina krúila okolo hernej zóny, v rovnakej vıške. Môe by vyèarované iba na vonkajších plošinách."
module.spells.descriptions["indrift"] = "Toto kúzlo vytvorí doèasnú dosku, ktorá a posunie v ¾ubovo¾nom smere."
module.spells.descriptions["move"] = "Toto kúzlo horizontálne posunie schody, znièením ktorıchko¾vek blokujúcich schodov. Po vybratí sa zobrazí okienko pre vıber smeru pohybu. Schody nemôu by posunuté mimo hernú zónu. Dosiahni rank Controller pre pohyb prevrátenıch schodov."
module.spells.descriptions["rotate"] = "Toto kúzlo horizontálne otoèí schody, znièením ktorıchko¾vek blokujúcich schodov. Po vybratí sa zobrazí okienko pre vıber smeru pohybu. Schody nemôu by posunuté mimo hernú zónu. Dosiahni rank Controller pre pohyb prevrátenıch schodov."

--stuff that was missing
module.static["vr_5"] = "Poui svoj ¾avı thumbstick pre pohyb dopredu a dozadu. Otáèanie ¾avého thumbsticku do boku a tak posunie do¾ava a doprava."
module.gui.ranks["next"] = "Klikni na šípku vpravo, pre zobrazenie podmienok pre da¾ší rank."
module.serverfeedback["admiral2"] = "Dosiahni rank Admiral pre odprekliatie schodov."
module.serverfeedback["annihilator"] = "Dosiahni rank Annihilator pre znièenie prekliatıch schodov."
module.serverfeedback["disciple"] = "Dosiahni rank Disciple pre znièenie plošinovıch portálov."
module.serverfeedback["toponly"] = "'Zavola Gu¾u' môe by vykonané iba na najvyššiom poschodí."
module.serverbroadcast["go"] = "ŠTART!"
module.serverbroadcast["over"] = "Preteky ukonèené!"
module.tutorial["tut_small_init"] = "Skoè pre zaèiatok tutoriálu"

module.static["dailies"] = "DNEŠNÉ REKORDY"
module.static["most_climbs"] = "NAJVIAC ŠPLHOV"
module.static["most_wins"] = "NAJVIAC VİHIER" 

module.events["regen"] = "Schodisko sa regeneruje"
module.finished["regen"] = "Regenerácia dokonèená"

module.spells.extras = {

	["Prompt"] = "Klikni na kúzlo dole pre informácie",
	["Title1"] = "Základné kúzla",
	["Title2"] = "Vınimoèné ultimáty",
	["Title3"] = "Univerzálne ultimáty",
	["ManaCost"] = "Cena Energie: %s", 
	["TokenCost"] = "Cena etónov: %s", 
	["Special"] = "Špeciálne podmienky: %s",
	["Execution"] = "Vykonanie: %s",
	["Description"] = "Popis: %s",
	["basic"] = "Základné",
	["ultimate"] = "Ultimátné",
	["unlock"] = "0 (3 pre odomknutie)",
	["none"] = "iadne špeciálne podmienky",
}

module.gui.basic.jumpdelay = "prosím èakaj"
module.gui.basic.dancetime = "ÈAS TANCOVA!"

--mana bar and mana messages - those will appear on the mana bars
module.gui.mana = {

	["mana"] = "ENERGIA", --main name
	["ghost"] = "DUCH",
	["spirit"] = "SPIRIT", --only for spirit spectres
	["welcome"] = "VITAJ",
	["drones"] = "DRÓNY",
	["orb"] = "GU¼A",
	["refill"] = "OBNOVENIE", --for all 2nd rank bonuses
	["overload"] = "PREAENIE",
	["steal"] = "KRÁDE",
	["gift"] = "DAR",
	["share"] = "ZDIE¼ANIE",
	["prank"] = "PRANK",
	["possession"] = "POSADNUTIE",
	["ritual"] = "RITUÁL",
	["purge"] = "OÈISTA",
	["blessing"] = "POEHNANIE",
	["hack"] = "HACK",
	["stash"] = "SKRİŠA",
	["backdoor"] = "BACKDOOR",
	["chamber"] = "MIESTNOS",
	["base"] = "ZÁKLADÒA",
	["circus"] = "CIRKUS",
	["shelter"] = "PRÍSTREŠIE",
	["haven"] = "NEBO",
	["study"] = "KABINET",
	["nether"] = "SVET",
	["guild"] = "SPOLOK",
	["nexus"] = "NEXUS",
	["oasis"] = "OÁZA",
}

module.gui.hints = {
	["bcancel"] = "Zmaèkni B pre zrušenie", --xbox b
	["acancel"] = "Klikni znovu pre potvrdenie",
	["ocancel"] = "Najprv zruš súèasné kúzlo", 
}

module.gui.gameover.extras = {

	["noobs"] = "Tutoriály sú pre amatérov!", -- Translated to "amateurs", why not
	["possessed"] = "Tí otravní Heretici!",
	["new"] = "Dosiahnutı novı rank - %s",
	["none1"] = "POÈKA! ÈO?",
	["none2"] = "Táto hra",
	["none3"] = "má kúzla?"

}

module.gui.gameover.raceplacements = {
	"VYHRAL SI PRETEKY!",
	"DRUHÉ MIESTO!",
	"TRETIE MIESTO!",
	"Bol si umiestnenı 4.",
	"Bol si umiestnenı 5.",
	"Bol si umiestnenı 6.",
	"Bol si umiestnenı 7.",
	"Bol si umiestnenı 8.",
	"Bol si umiestnenı 9.",
	"Bol si umiestnenı 10.",
	"Bol si umiestnenı 11.",
	"Bol si umiestnenı 12.",
}

return module

