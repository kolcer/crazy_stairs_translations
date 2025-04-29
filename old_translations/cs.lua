
local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "ANO",
	["no"] = "NE",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "VÝCHOZÍ",
	["validate"] = "OVERIT",
	["play"] = "HRÁT",
	["skip"] = "PRESKOCIT\nTUTORIÁL",
	["loading"] = "NACÍTÁNÍ, PROSÍM CEKEJ...",
	["mode"] = "%s\nMÓD",
	["cd"] = "ULTIMÁTNÍ\nCAS OBNOVENÍ",
}

module.gui.switcher = {

	["title"] = "ZMENIT SERVER",

	["public"] = "VEREJNÝ SERVER",
	["private"] = "SOUKROMÝ SERVER",
	["join"] = "PRIPOJIT SE",
	["friends"] = "KAMARÁDI ONLINE",
	["refresh"] = "obnovování...",
	["fail"] = "NEPODARILO SE OBNOVIT!",

}

module.gui.serversettings = {

	["title"] = "NASTAVENÍ VLASTNÍKA",

	["Moderation"] = "MODERACE",
	["rules"] = "Tvuj server, Tvoje pravidla.",
	["temp"] = "Všechny muty a bany jsou pouze docasné",
	["kick"] = "KICK",
	["ban"] = "BAN",
	["mute"] = "MUTE",

	["Drones"] = "NASTAVENÍ DRONU",
	["DronesReadOnly"] = "NASTAVENÍ DRONU (pouze k prectení)",
	["DroneEnabled"] = "Drony jsou zapnuté",
	["DroneFix"] = "Drony obnoví schody",
	["DroneRemove"] = "Drony odstraní prokleté križovatky",
	["DroneUnCurse"] = "Drony obnoví zakleté schody",
	["DroneMove"] = "Drony pohybují se schody ve výchozím módu",
	["DroneSpin"] = "Drony roztocují schody ve výchozím módu",
	["DroneSpeed"] = "Cestovací rychlost dronu (v úrovni/sekundy)",
	["DroneDelay"] = "Trvání rotace dronu (v sekundách)",
	["DroneMax"] = "Maximální pocet schodišt (drony se exkluzivne sebedestruktují nad tímto limitem)",
	["DroneMin"] = "Minimální pocet schodišt (drony se exkluzivne sebedestruktují pod tímto limitem)",
	["DroneBlock"] = "Šance pro zakletou križovatku pri setkání každé prázdné križovatce (v procentech)",
	["DroneCurse"] = "Šance pro stvorení zakletých schodu pri setkání normálních schodu (v procentech)",

	["Tower"] = "NASTAVENÍ VEŽE",
	["TowerReadOnly"] = "NASTAVENÍ VEŽE (pouze k prectení)",
	["InfMode"] = "Nekonecný Mód (nemuže být zmeneno pri závodu nebo regeneraci)",
	["CasualPlayers"] = "Normální hráci povolení pronést kouzla",
	["Regeneration"] = "Automatická generace schodu po Wickedove ociste (nebude fungovat v nekonecném módu)",
	["EvenLevels"] = "Stejné Úrovne Omezeny",
	["OrbMoves"] = "Endgameová koule zmení pozici",
	["InfRegeneration"] = "Automatická generace schodu v novém serveru, úrovne veže se zmení po nekonecném závode",
	["TowerLevels"] = "Úrovne veže (nebo aktivní úrovne v nekonecném módu. Nelze zmenit pri závode nebo regeneraci",
	["RaceDuration"] = "Maximální doba trvání závodu. Nebude mít efekt na aktuální závod. (v sekundách)",
	["InfStart"] = "Interval pocátecního nekonecného kola (2 úrovne jsou vytvorené každé kolo) (v sekundách)",
	["InfReduction"] = "Redukce intervalu nekonecného módu (každé kolo je kratší o) (v sekundách)",
	["InfMin"] = "Minimální doba trvání intervalu nekonecného módu (v sekundách)",
	["Cooldown"] = "Doba, mezi každou událostí a plochou (v sekundách)",


}

module.gui.shop = {

	["title"] = "OBCHOD ŠÍLENÝCH SCHODU",

	["chameleon"] = "Chameleoni mohou zmenit zarovnání pri lezení.",
	["spectre"] = "Príznak je zarovnání založené na teleportu nejlepší k solo hre.",
	["mana"] = "Rozšir si svojí kapacity úložište Many o 10 bodu.",

	["3tokens"] = "Odemkni jedno kouzlo nebo prones až 3 ultimátní kouzla.",
	["30tokens"] = "Odemkni jedno kouzlo nebo prones až 30 ultimátních kouzel.",
	["300tokens"] = "Dost na to aby jsi odemkl všechny kouzla se 153 zbylými tokenamy.",

	--below messages apper on mouse hover
	["3TOKENS"] = "3 Multi Tokeny (R$%d)",
	["30TOKENS"] = "30 Multi Tokenu (R$%d)",
	["300TOKENS"] = "300 Multi Tokenu (R$%d)",
	["SPECTRE PASS"] = "Príznak gamepass. (R$%d)",
	["MANA PASS"] = "20 bodu úložište Mana gamepass. (R$%d)",
	["CHAMELEON PASS"] = "Chameleon gamepass. (R$%d)",

}

module.gui.spellbar = {

	["share"] = "SDÍLET\nMANU",
	["nocasual"] = "POUZE ZÁVODNÍCI MOHOU PRONÉST KOUZLA",

} 

module.gui.stats = {

	["total"] = "Celkove vystoupáno: %d / Výhry: %d",
	["class"] = "Stoupání jako %s: %d",
	["best"] = "Nejlepší %s cas: %.2f",
	["na"] = "N/D",

}

module.gui.timedspell = {

	["possessed"] = "POSEDLÝ! (najdu Mana k osvobození)",
	["released"] = "PROPUŠTEN",
	["timesup"] = "cas vypršel...",

}


module.gui.activatecham = {

	["title"] = "AKTIVOVAT CHAMELEONA",
	["body"] = "Preješ si aktivovat mód Chameleona?\nBude aktivován po zbytek výstupu."

}

module.gui.caceltimed = {

	["title"] = "ZRUŠEN CASOVANÉ KOUZLO",
	["body"] = "Preješ si zrušit tento casované kouzlo? Tokeny nebudou vráceny."

}

module.gui.climbtimer = {

	["prompt"] = "Vyjdi\nschody!",
	["floor"] = "Podlaha",
	["last"] = "Poslední cas",

}

module.gui.codes = {

	["title"] = "VLOŽ KÓD",
	["body"] = "Zadej Tvuj kód sem:",
	["prompt"] = "(kód)",
	["button"] = "UPLATNIT",

}

module.gui.gauges = {

	["prompt"] = "Pokracuj skokem, klikni znovu pro zrušení.",

	["found"] = "%d naleznuté schody (%.1f%% vyplneny)",
	["special"] = "%d jsou speciální (%.1f%%)",
	["affected"] = "%d schodu bude postiženo (%.1f%%)",
	["cursed"] = "%d nalezeno prokletých križovatek (%.1f%%)",
	["fill"] = "%d schodu bude vytvoreno (%.1f%%)",
	["purge"] = "%d objektu bude zniceno (%.1f%%)",
	["normal"] = "%d jsou už normální (%.1f%%)",
	["restore"] = "%d schodu bude obnoveno (%.1f%%)",
	["bypass1"] = "%d kouzel je v ceste (%.1f%%)",
	["bypass2"] = "%d obchvatu již existuje (%.1f%%)",
	["bypass3"] = "%d obchvatu bude vytvoreno (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "HUDEBNÍ AUTOMAT",

	["master"] = "OBECNÁ HLASITOST",
	["default"] = "(používá se obecná hlasitost)",
	["climb"] = "LEZECKÁ HUDBA",
	["endgame"] = "ENDGAME HUDBA",
	["failed"] = "[nepodarilo se nacíst]",

}

module.gui.results = {

	["title"] = "VÝSLEDKY ZÁVODU",

	["place"] = "MÍSTO",
	["name"] = "JMÉNO",
	["level"] = "MAXIMÁLNÍ ÚROVEN",
	["time"] = "CAS",
	["rank"] = "ÚROVEN",
	["not"] = "N/D",
	[1] = "VÍTEZ",
	[2] = "DRUHÝ",
	[3] = "TRETÍ",
	[4] = "CTVRTÝ",
	[5] = "PÁTÝ",
	[6] = "ŠESTÝ",
	[7] = "SEDMÝ",
	[8] = "OSMÝ",
	[9] = "DEVÁTÝ",
	[10] = "DESÁTÝ",
	[11] = "JEDENÁCTÝ",
	[12] = "DVANÁCTÝ",

}

module.gui.racetimer = {

	["gather"] = "Nejsi v\nzávode",
	["race"] = "KONEC\nZÁVODU!",
	["inf"] = "Eliminován!",
	["off"] = "CASOVAC\nZÁVODU.",
	["wait"] = "Závod v",
	["on"] = "Úroven",

}

module.gui.ranks = {

	["title"] = "TVOJE ÚROVEN",

	--none
	["none_1"] = "Nezvolil jsi si zarovnání!",
	["none_2"] = "Nebudeš mít žádný prístup k žádným kouzlum!",
	["none_3"] = "Skoc na morf (uprostred mapy) - aby jsi zmenil zarovnání.",

	--shared
	["higher"] = "POTREBUJEŠ VYŠŠÍ ÚROVEN",
	["current"] = "TVOJE AKTUÁLNÍ ÚROVEN",
	["lower"] = "ÚROVEN NEBYLA ZÍSKÁNA",

	["more"] = "Potrebuješ o %d víc výstupu aby jsi dostal úroven %s.",
	["done"] = "Již vlastníš vyšší úroven. Všechny efekty nižších úrovní již jsou ve tvém aktuální úrovni.",
	["max"] = "Toto je nejvyšší úroven. S úrovní %s jsi udelal %d výstupu.",



	["PATRON"] = {
		"Toto je tvoje startovní úroven PATRON.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu PATRONA.",
		"Pokud nekdo pronese kouzlo VYVOLÁVACE, tvoje Mana bude naplnena.",
		"Tvoje odkazy vydrží 2x déle (120 sekund).",
		"Tvoje portály vydrží 2x déle (120 sekund).",
		"Kouzlo Vyvolání Koule bude stát 2 Many.",
		"Tvoje kouzlo VYVOLÁVACE vydrží o 50% déle (90 sekund).",
		"Pokud ti dojde Mana, vyskoc na platformu a dostaneš 1 Manu (epické).",
		"Vyvolaná koule bude cestovat ve 2x vetší rychlosti.",
	}, 
	["JOKER"] = { 
		"Toto je tvoje startovní úroven JOKER.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu JOKERA.",
		"Pokud nekdo pronese kouzlo PLOUTVE, tvoje Mana bude naplnena.",
		"Disco schody nemají na tebe žádný efekt.",
		"Od ted mužeš videt všechny neviditelné schody. Máš možnost je NEodhalit.",
		"Od ted mužeš detekovat pasti a falešné schody.",
		"Tvoje kouzlo PLOUTVE vydrží o 50% déle (90 sekund).",
		"Od ted mužeš chodit po falešných schodech.", 
		"Dostaneš bonusovou Manu pokaždé, když nekdo spustí jakýkoliv prank. (pouze jeden prank na jednoho hráce)",
	},
	["WICKED"] = {
		"Toto je tvoje startovní úroven WICKED.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu WICKEDA.",
		"Pokud nekdo pronese kouzlo OHÝBACE, tvoje Mana bude naplnena.",
		"Mužeš chodit na skákackách stejne jako na normálních schodech.",
		"Kouzlo ZNIC POD SEBOU je nyní zadarmo.",
		"Dostaneš bonusovou Manu za nicení speciálních schodu.",
		"Tvoje kouzlo OHÝBACE vydrží o 50% déle (90 sekund).",
		"Máš možnost vyhnout se spuštení Znicení Podlahy pod sebou.",
		"Od ted mužeš znicit zakleté schody.",
	},
	["SPECTRE"] = { 
		"Toto je tvoje startovní úroven SPECTRE.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu SPECTRA.",
		"Pokud nekdo pronese kouzlo TRPITKU, tvoje Mana bude naplnena.",
		"Dostaneš extra 1 Manu když budeš sbírat krystaly se Svým Duchem.", 
		"Kouzlo OD-DUCHNENÍ je nyní zdarma.",
		"Od ted mužeš dokoncit výstup tím, že se dostaneš k endgame kouli se Svým Duchem.",
		"Tvoje kouzlo TRIPTKU vydrží o 50% déle (90 sekund).",
		"Máš možnost vyhnout se spuštení zatmení podlahy pod tebou.", 
		"Nyní mužeš chodit po schodech duchu.",
	},
	["CHAMELEON"] = { 
		"Toto je tvoje startovní úroven CHAMELEON. Bonusy aktuálních zarovnání úrovne porád platí.",
		"VÝJIMKA! Dostaneš bonusovou Manu POUZE když drony jsou v módu CHAMELEONA.",
		"Menení zarovnání je mnohem rychlejší od ted.",
		"Tvoje ruce nyní budou svítit fialove, maskují tvoje motivy.",
		"Kouzla FALEŠNÉ SCHODY a PREDVOLÁNÍ SCHODU od ted budou mít fialový efekt.",
		"Nyní mužeš pronést kouzla POHYBOVAT SE SCHODY POD SEBOU, PADACÍ MOST a PRÍCNÉ SCHODY.",
		"Nyní mužeš pronést kouzla ZVLNENÍ SCHODU a NAD PADACÍM MOSTEM.",
		"Od ted je zmena zarovnání kompletne perfektní.",
		"Od ted mužeš pronést kouzlo TAJEMNÁ PODLAHA. (vícenásobno tokenu potreba)",
	},
	["MUGGLE"] = { 
		"Toto je tvoje startovní úroven MUGGLE.",
		"Tvuj cas mezi každým možným skokem je o 0.125 sekund menší.",
		"Tvuj cas mezi každým možným skokem je o 0.25 sekund menší.",
		"Tvuj cas mezi každým možným skokem je o 0.375 sekund menší.",
		"Tvuj cas mezi každým možným skokem je o 0.5 sekund menší.",
		"Tvoje rychlost je zvýšená o 10%.",
		"Tvoje rychlost je zvýšená o 20%.",
		"Tvoje rychlost je zvýšená o 30%.",
		"Tvoje rychlost je zvýšená o 20%.",
	},
	["KEEPER"] = {
		"Toto je tvoje startovní úroven KEEPER.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu KEEPERA.",
		"Pokud nekdo pronese kouzlo STOUPÁNÍ, tvoje Mana bude naplnena.",
		"Kouzla POSUN NÁHODNE a POSUN PODLAHU, které proneseš ty nikdy nebudou mít dusledek padajících schodu.",
		"Nyní mužeš pohybovat s otocenými schody.",
		"Tvoje kouzlo OBNOVENÍ je nyní zadarmo.", 
		"Tvoje kouzlo STOUPÁNÍ vydrží o 50% déle (90 sekund).",
		"Nyní máš možnost vyhnout se spuštení Posunutí Podlahy pod tebou.",
		"Nyní mužeš obnovit zakleté schody a zakleté križovatky.",
	},
	["HACKER"] = { 
		"Toto je tvoje startovní úroven HACKER.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu HACKERA.",
		"Pokud nekdo pronese kouzlo PODVOD RYCHLOSTI, tvoje Mana bude naplnena.",
		"Eskalátor dolu nepobeží, pokud budeš na nem.",
		"Tvuj horizontální koulo SPRINT je nyní o 50% rychlejší.",
		"Tvoje kouzlo MRKNUTÍ pres schody nad sebou je nyní o 50% rychljší.",
		"Jeslti nemáš Manu, skoc na platformu a nacheatuj si 1 Manu.", 
		"Nyní máš možnost vyhnout se spuštení Zaseknutí Podlahy pod tebou.",
		"Pokud je alespon jedna prázdná križovatka, pronesení glitche na nejvyšším levelu znovu zhmotní schody vedle koule.", 
	},
	["THIEF"] = {
		"Toto je tvoje startovní úroven THIEF.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu THIEFA.",
		"Pokud nekdo pronese kouzlo LOUPEŽ, tvoje Mana bude naplnena.",
		"Tvoje kouzlo BOCNÍ PRUCHOD vydrží 2x déle (120 sekund).",
		"Tvoje kouzlo HORNÍ PRUCHOD vydrží 2x déle (120 sekund).",
		"Od ted mužeš ukrást jakékoliv schody, jenom ne zakleté/zacarované.",
		"Tvoje kouzlo LOUPEŽ nyní vydrží o 50% déle (90 sekund).",
		"Jeslti nemáš Manu, skoc na platformu a ukradni si 1 Manu.", 
		"Nyní si mužeš nechat 2 ukradené schody najednou.",
	},
	["ARCHON"] = {
		"Toto je tvoje startovní úroven ARCHON.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu THIEFA.",
		"Pokud nekdo pronese kouzlo ŠTÍPACKY, tvoje Mana bude naplnena.",
		"Nyní mužeš pronést kouzlo ZNICIT ROZDELENÉ na platformách.",
		"Tvoje kouzlo ZNICIT ROZDELENÉ je nyní zdarma.",
		"Rozdelky te nikdy neteleportují dolu.",
		"Tvoje kouzlo ROZDELENÍ nyní bude trvat 90 sekund.",
		"Nyní mužeš pronést kouzlo rozdelení na již rozdelených schodech.",
		"Máš možnost vyhnout se teleportaci na všech cástech krome tech nad tebou.",
	},
	["DRIFTER"] = {
		"Toto je tvoje startovní úroven DRIFTER.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu DRIFTERA.",
		"Pokud nekdo pronese kouzlo STOUPACKA, tvoje Mana bude naplnena.",
		"Tvoje vertikální drifty na platformách budou o 50% rychlejší.",
		"Nyní mužeš roztocit zdriftované schody.",
		"Nyní mužeš zrychlit POSUNY NAHORU s kouzly VYSTOUPENÍ a HORNÍ DRIFT.",
		"Tvoje kouzlo VYSTOUPENÍ vydrží o 50% déle (90 sekund)",
		"Máš možnost vyhnout se Driftovacím Platformám pod tebou.",
		"Nyní mužeš double-zrychlovat POSUNY NAHORU s kouly VYSTOUPENÍ a HORNÍ DRIFT.",
	},
	["HERETIC"] = {
		"Toto je tvoje startovní úroven HERETIC.",
		"Dostaneš bonusovou Manu, kdykoliv když drony jsou v módu HERETICA.",
		"Pokud nekdo pronese kouzlo ZAKLETÍ, tvoje Mana bude naplnena.",
		"Jestli nemáš Manu, skoc na zakleté schody aby jsi se odzaklel a dostal jednu Manu.",
		"Nyní jsi immuní k Posedlým Podlahám.",
		"Pokud proneseš kouzlo BLIKACE, mužeš odzakletit zakletou križovatku.",
		"Tvoje kouzlo Prokletí nyní vydrží o 50% déle (90 sekund)",
		"Kouzla VYTVORIT ZAKLETÉ SCHODY a ZAKLETÍ nyní mužou znicit dvoje spojující se schody stejného typu zakletí.",
		"Dostaneš bonusovou Manu pokaždé když je nekdo posedlý.",
	},


}

module.gui.reshuffle = {

	["title"] = "MÓD PRESKUPENÍ SCHODU",

	["body"] = "Chceš aby se schody vyvarovali kolizi pri pohybu? Jestli ne, jakékoliv schody v ceste budou zniceny.",

}

module.gui.multitokens = {

	["title"] = "VYBER SI SVOJE TOKENY",

	["info"] = "Potrebuješ 3 tokeny aby jsi odemkl kouzlo.",
	["notokens"] = "Nezbyly ti žádné multitokeny",
	["nopass"] = "NEVLASTNÍŠ GAMEPASS",

}

module.gui.feedback = {

	["title"] = "POSLAT ZPETNOU VAZBU",

	["prompt"] = "Klikni sem k poslání zpráve vývojárum (minimálne 20 písmen)",
	["send"] = "POSLAT",
	["locked"] = "ZAMCENO",

}

module.gui.settings = {

	["title"] = "NASTAVENÍ HRY",

	["ANIM1"] = "NASTAVENÍ\nANIMACE",	
	["ANIM2"] = "NASTAVENÍ\nEXTRA ANIMACÍ",
	["MISC"] = "SMÍŠENÉ\nNASTAVENÍ",
	["INTERFACE"] = "NASTAVENÍ\nGRAFICKÝCH OKEN",	

	["size"] = "Ukazovat Velikost Animací",
	["color"] = "Ukazovat Barvu Animací",
	["escalator"] = "Ukazovat Animace Eskalátoru",
	["sanctuary"] = "Ukazovat Azylové Animace",
	["list"] = "Ukazovat Animovaný List Hrácu",
	["ghosts"] = "Animovat duchy",
	["distance"] = "Zvýšit maximální dosah animace",
	["morph"] = "Ukazovat animace pretvorení pri užívání Podvodníka nebo Uchvalitele",
	["billboard"] = "Ukazovat billboard Tvého vlastního avatara",
	["rank"] = "Ukazovat Tvojí úroven na billboardu avatara",
	["switchback"] = "Automaticky prepnout zpet ze základních kouzel po provedení ultimátního kouzla",
	["safecancel"] = "Ukazovat okno pro potvrzení pri zrušení  casovaného ultimátního kouzla",
	["multi"] = "Ukazovat okno pro multitokeny po vyšplhání",
	["kchoices"] = "Ukazovat okno pro výber smeru pro Keepera (nebude fungovat na Xboxu)",
	["achoices"] = "Ukazovat okno pro výber smeru pro Archona (nebude fungovat na Xboxu)",
	["stats"] = "Ukazovat extra statistiky pri pronesení kouzel podlahy & událostí",


}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "TVOJE ZAROVNÁNÍ",
	["time"] = "CELKOVÝ CAS VÝSTUPU",
	["climbs"] = "VÝSTUPY OCENENY",
	["tokens"] = "UDELENÉ TOKENY",
	["rank"] = "TVOJE AKTUÁLNÍ ÚROVEN",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"POMÁHEJ, BRAN a TVOR",
		"Tamti nooberi potrebujou naší pomoc",
		"Bez Patrona tady není žádná šance",
		"Na žebrícku hezkosti 11 z 10",
		"Sdílíš? Pomáháš!",
		"Neexistuje 'moc schodu'",
		"Ve slove Team není I, ve slove Patron ale urcite je",
		"Nemužeš mít schodište bez schodu",
		"Další dobrá práce (jako vždycky)",
	},
	["JOKER"] = {
		"KLAMAT, MÁST a SMÁT",
		"Tyhle schody jsou k smíchu (jako ty)",
		"Proc tak vážne?",
		"HAHAHA!",
		"Relaxuj a koukej jak padaj",
		"Nejak naštvanej brácho",
		"Já a ty, oba známe pravidla",
		"Bylo by to moc nudný beze me",
		"Falešný schody jsou reálný",
	},
	["WICKED"] = {
		"PREDCHÁZET, BLOKOVAT A NICIT",
		"Nejsem zlej, je tu proste moc schodu",
		"Tyhle schody brzo vypadnou z mýho domu",
		"Koukej se jak celej svet horí",
		"Tohle schodište vypadá líp bez schodu",
		"Znicim ti mysl, duši a telo (a schody)",
		"1)Vytvor skákacku 2)Koukej se jak to noobrum nejde 3)Užívej",
		"Všechno vlaste za cas umre, tak co",
		"Vycisti si mysl - alee první vycisti tohle schodište",
	},
	["SPECTRE"] = {
		"ZMIZET, SCHOVAT SE a TELEPORTOVAT SE",
		"Teleportování je urcite (ne)bezpecné",
		"Nemužeš me jen tak chytit",
		"Nádhernost duchových schodu je.. zkrátka nemá obdoby",
		"Lidi padaj? Proc bych se mel starat? (lol)",
		"Problém? Teleportuj se!",
		"Jakmile se zacneš teleportovat, budeš na tom závislej",
		"Hej, alespon neteleportuju schody",
		"Vzchopte se vy nooberi",
	},
	["MUGGLE"] = {
		"CHODIT, SKÁKAT a PADAT",
		"Jo za nás když byla alpha, to jsme nemeli žádný 'kouzla'",
		"Prísahám že tyhle drony jsou prokletý",
		"Vždycky tu je cesta",
		"Schodoskákání je umení",
		"Moje.. tajemství? Stuj a premýšlej",
		"Neverím v magii",
		"Nekdy potrebuješ cekat na drona.. jako v reálném živote",
		"Lidi co používají kouzla? Nooberi!",
	},
	["CHAMELEON"] = {
		"KOPÍROVAT, IMITOVAT a PREKVAPIT",
		"Moc línej na to abych prišel na vlastní kouzla",
		"Víc výberu - víc zábavy",
		"Týmování je sakra pomalý, morphování se sakra rychlý",
		"Možnost zvednout je základ k prežití",
		"JÁ JSEM nerozhodnej, já.. já jen mám rád si zmenit mysl",
		"Ty jsi zvládl trídu? Já jsem je zvládl na rozdíl od tebe všechny",
		"Jen jedno zarovnání? Nuda.",
		"Miluju chaos",
	},
	["KEEPER"] = {
		"POHYBOVAT SE, TOCIT SE a KONTROLOVAT",
		"PRESTAN NICIT MOJE SCHODIŠTE!",
		"Další mizernnej úspech pro Keepery",
		"Mise splnena! Respekt +",
		"Mám rád porádek",
		"Chaos zkrocen",
		"Já jsem ten jediný pravý zarovnání",
		"Jeden den celou tuhle vež srovnám",
		"Opravený schody - Štastný schody",
	},
	["THIEF"] = {
		"PUJCIT SI NECO, POUŽÍT TO a VRÁTIT TO",
		"Vlastne se to jmenuje pujcování",
		"Plochá zeme je nádherná",
		"Alespon nekradu podlahy",
		"Proste nechod na železnejch podlahách, smh",
		"Videl jsi me nekdy neco ukrást?",
		"Jsem jako Robbin' Hood - Kradu od bohatých a vracím to sobe",
		"Nikdo si nevšimne když jedno schodište bude chybet",
		"Redistribuce schodu zahání anarchii",
	},
	["HACKER"] = {
		"PODVÁDET, GLITCHOVAT a NICIT",
		"Co to je 'fér play?'",
		"Pockej.. tyhle schody nejsou reálný.. Nežijeme náhodou ve 3D hre??",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"Nevidim žádný pravidla",
		"Já podvádím? Všichni podvádí beztak",
		"Trochu vychytávek sem a tam, neni to podvádení",
		"Rychlost",
		"Co bych dal za eskalátor..",
	},
	["HERETIC"] = {
		"NEMEL BYS PROJÍT",
		"Banování cerný magie je jako banování zábavy",
		"Posedlý lidi.",
		"Smrt a rozložení se",
		"Cerný rituál kompletní",
		"Nemeli bysme se shazovat",
		"Posedni se",
		"Zvol si cernou starnu - lehcí jak (tvuj) život",
		"Proc bych se mel zajímat jestli tyhle lidi uvíznou?",
	},
	["ARCHON"] = {
		"OTEVRÍT PORTÁL, ???, PROFITUJ",
		"Za mejch casu jsem tomu tady vládl",
		"Plánuj pred sebe a vyhraj",
		"Uc se a vyhraješ",
		"Možnost rozdelit schody je umení",
		"Fázuj se sám",
		"Dort je lež",
		"Je potreba rozdelit každý problém",
		"Zmást všechny!",
	},
	["DRIFTER"] = {
		"SURFUJ, RID a GLIDUJ",
		"Kdo potrebuje schody, jsme ve vesmíru",
		"Jen lette.",
		"Surfuj na Solárním Vzduchu",
		"Neboj se, ve vesmíru není 'dolu'",
		"Driftuj všechno - výhra",
		"Nezastavuj se - porád driftuj",
		"Miluju podlahy",
		"Furt surfuj",
	},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Nenechávej žádnýho noobera za sebou",
	["IT"] = "Prankování = život",
	["ANNIHILATOR"] = "Znic všechno!",
	["AETHER"] = "Bež do dolní oblasti",
	["DABSFORLIF"] = "Kouzla jsou precenovaný",
	["USURPER"] = "Miluju všechny kouzla",
	["ADMIRAL"] = "porádek obnoven",
	["OUTLAW"] = "Moje, moje VEECHNO MOJE!",
	["ZERO"] = "Rootkit instalován",
	["EXILED"] = "Exkomunikace",
	["ILLUMINATI"] = "Potvrzený illuminát",
	["STRIDER"] = "Vezmu si výtah",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {

	"ŠÍLENÝ SCHODY",
	"Hra konceptalizovaná, designovaná a scriptovaná hrácem Sleazel",
	"Pomoc s designem - cakegirlserina",
	"Modely - ZielonyLeszek",
	"Oblohy - @wwwtyro's generator",
	"Modul cloud úložište, Datastore2 - Kampfkarren",
	"Leaderboard - ThatTimothy",
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
	"Slovenský - Ondrik132",
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
	"HUDBA (APM katalog):",
	"Intro hudba - Allure od Martin Albert Sponticcia",
	"\"None\" endgame hudba - Deceived od Martin Albert Sponticcia",
	"Muggle hudba - Hyperdrive od Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Muggle endgame hudba - Reflections od Milan Pilar",
	"Patron hudba - Tranquilize od Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Patron endgame hudba - Dreamers od Joseph Alexander",
	"Joker hudba - Crosswind od Martin Albert Sponticcia",
	"Joker endgame hudba - Fender Stab od Steven Raymond Bush",
	"Wicked hudba - Wicked od Daniel Jay Nielsen, Nathan Duvall",
	"Wicked endgame hudba - Something Wicked od Cris Velasco",
	"Spectre hudba - Reflections od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Spectre endgame hudba - Cosmic Dust od Milan Pilar",
	"Keeper hudba - Automotion od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Keeper endgame hudba - Synth On The Highway od Richard Adrian Maxwell Preston",
	"Hacker hudba - Network od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Hacker endgame hudba - Descending Into Oblivion od Richard Adrian Maxwell Preston",
	"Thief hudba - Reaching Out od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Thief endgame hudba - Soaring od Richard Adrian Maxwell Preston",
	"Archon hudba - Aperture od Paul Emons, Richard Goodliff, Ian Robson",
	"Archon endgame hudba - Rendezvous od Paul Emons, Richard Goodliff, Ian Robson",
	"Drifter hudba - Communique od Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Drifter endgame hudba - Fragile od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic hudba - Mother od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic endgame hudba - Being Me od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon hudba - Rah od Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon endgame hudba - Midnight Runner od Richard Adrian Maxwell Preston",
	"Ghost Union hudba - Amber Garden od Paul Emons, Richard Goodliff, Ian Robso",
	"Possessed hudba - Dark Souls od David Arkenstone",
	"Joker's disco stairs hudba - To The Disco od Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Drifter's platform hudba - Radioactivity od Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Dekujeme za hraní :)",	
}



module.static = {

	--INTRODUCTION SCREENS

	["cla_1"] = "Jak hrát?",
	["cla_2"] = "Zaprvé, vysoce doporucuji aby jsi si zahrál tutoriál. Tahle hra muže být hodne divná jestli ne. Jestli jsi tak ješte neudelal, odpoj a pripoj se zpet do hry a hraj tutoriál.",
	["cla_3"] = "Gól téhle hry je dostat se na vrchol a získat všechny koule s energií. Nejdrív si vyber trídu tím, že skociš na svítíci podlahy uprostred mapy.",
	["cla_4"] = "Jakmile jsi spokojen se svým výberem, získej levitující tvary aby jsi doplnil Manu k vystoupání schodu. Používej kouzla své trídy aby jsi si pomohl.",
	["cla_5"] = "Jak pronést kouzla?",
	["cla_6"] = "Každé kouzlo stojí Manu aby jsi ho mohl pronést. Jakmile budeš mít dost Many klikni na kouzlo. Pokud tvoje ruce zacnou svítit, tak jsi úspešne pronesl kouzlo.",
	["cla_7"] = "Po pronesení kouzla, potrebuje být aplikováno. Všechny kouzla jsou aplikovány skákáním. Podle typu kouzla budeš muset skocit bud na schody, nebo na platformu. Šipky ti vetšinou pomohou.",
	["cla_8"] = "Jakmile dokoncíš výstup, dostaneš 3 tokeny, které ti odemknou jedno kouzlo. Dokonci výstup znovu aby jsi odemkl více kouzel. Nemužeš použít tokeny z jedné trídy na odemknutí kouzel v jiné tríde.",
	["cla_9"] = "Jak pronést ultimátní kouzla?",
	["cla_10"] = "Nejdríve potrebuješ odemknout všechny základní kouzla aby jsi odemkl ultimátní kouzla. Ultimátní kouzla nepotrebují odemknutí tokenamy, ale používají tokeny za každé jejich pronesení.",
	["cla_11"] = "Dokonci výstup tolikrát, dokud neodemkneš všechny základní kouzla. Aby jsi dostal extra tokeny, vyhrávej v závodech. Alternativne si mužeš tokeny koupit. Jakmile to budeš mít odemknuté, zmáckni 'C'",
	["cla_12"] = "Nejaké ultimátní kouzla jsou casované a nepotrebují aplikaci. Rušení casovaných kouzel NEVRÁTÍ TOKENY",

	["pro_1"] = "PRO VEŽ",
	["pro_2"] = "Stejné úrovne",
	["pro_3"] = "Nejaké kouzla pro platformy nemohou být pronesené. Past, Vytvorit portál, Vertikální teleport, Schodište spirály a Náhodný teleport lze provést pouze na lichých úrovních.",
	["pro_4"] = "Drifteri nemužou driftovat na techto platfomách taky. Všechny platformy s restrikcema jsou oznacené cervenou teckou.",
	["pro_5"] = "Zakleté schody",
	["pro_6"] = "V pro veži drony budou náhodne tvorit zakleté schody. Je tady 20% šance že se tak stane. Šipky se nebudou ukazovat u zakletých schodu.",
	["pro_7"] = "Zakleté schody jsou immuní proti vetšine kouzlum. Nemužeš se nimi teleportovat nebo použít Mrknutí Hackera. Všechny kouzla které by meli znicit schodu nebudou fungovat (napr. Keeperuv tah).",
	["pro_8"] = "Jenom HERETIC a ADMIRAL mouhou zmenit zakleté schodu. Ocista a Znovuobnovení se zbaví všech zakletých schodu také.",
	["pro_9"] = "Zakleté križovatky",
	["pro_10"] = "V pro veži drony boudou náhodne generovat zakleté križovatky. Jakmile dron najde prázdnou križovatku, je tu 20% šance k zakletí.",
	["pro_11"] = "Zakleté križovatky jsou immuní proti všem platformovým kouzlum. Nemužeš vytvorit schody, odkazy nebo teleportovat pres zakleté križovatky",
	["pro_12"] = "Jen HERETIC, ADMIRAL a drony mohou zmenit zakleté križovatky. Wickeda Ocista odstraní všechny zakletí. Pri regeneraci se boudou nové zakleté križovatky objevovat znovu.",

	["inf_1"] = "NEKONECNÁ VEŽ",
	["inf_2"] = "ZÁVOD JE NUCEN",
	["inf_3"] = "Normální hráci nejsou povoleni k pronesením kouzel a nedostanou nic za výstup veže. Získání endgame koule pouze ocení hráce s 10 Manou.",
	["inf_4"] = "K dokoncení nekonecné veže se musí hrác pripojit do závodu a pokusit se být v nem po co nejdelší dobu. Dostaneš odmeny (jestli vubec) pri eliminaci.",
	["inf_5"] = "Padlý dron",
	["inf_6"] = "Narozdíl od klasické a pr veže, padlý dron má speciální úkol.",
	["inf_7"] = "Každý interval zvýšení vytvorí Padlý Dron 2 nové úrovne. Každá sudá úroven bude omezena. Navíc nekteré schody nebo križovatky mohou být dokonce prokleté.",
	["inf_8"] = "První interval trvá 20 sekund. Každé vyzdvyhnutí zmenší interval o pul sekundy, dokud je toto zvladatelné.",
	["inf_9"] = "Guma",
	["inf_10"] = "Guma je speciální kolo ochrany které vyzdvyhne vež a 'vymaže' dolní úrovne. Pokud spadnete pod gumu, jste eliminováni.",
	["inf_11"] = "Guma bude progresivne rychlejší.",
	["inf_12"] = "Všechny schody a platformy kterých se guma dotkne budou vymazány. Pokus se vyhýbat gume po co nejdelší dobu a vyhraješ.",

	["cus_1"] = "VLASTNÍ VEŽ",
	["cus_2"] = "TVOJE VOLBA!",
	["cus_3"] = "Veechna nastavení jsou možná.",
	["cus_4"] = "Ceny v této veži jsou polovicní. Dostaneš tokeny každých 12 levelu a klalifikacním výstupem každých 30 levelu.",
	["cus_5"] = "Nastavení veže",
	["cus_6"] = "Dají se zmenit levely, zmenit typ veže, obecne ji zvolit - je to na tobe!",
	["cus_7"] = "Pouze vlastník serveru muže zmenit nastavení.",
	["cus_8"] = "Nastavení dronu",
	["cus_9"] = "Mužeš aké zmenit nastavení malých dronu. Mužeš zmenit kolik jich maximálne muže být, minimále nebo je kompletne vypnout.",

	["vr_1"] = "Jakmile spustíte Šílený Schody ve VR módu, automaticky jste architekt.",
	["vr_2"] = "Nepotrebujete vystoupat schody, Váš gól je zamezit ostatním hrácum výstup schodu.",
	["vr_3"] = "Volba je na tobe? Budeš krutý, nebo milý? Nebo is jen chceš hrát?",
	["vr_4"] = "Jak se navigovat?",
	["vr_6"] = "Použij svuj pravý palec k pohybu nahoru a dolu. Naklánet se mužeš pomocí naklánení pravého ovladace doleva nebo doprava.",
	["vr_7"] = "Pokus nebýt ve schodišti pro lepší pohled a jednodušší mírení.",
	["vr_8"] = "Jak pronést kouzla?",
	["vr_9"] = "K pronesení kouzla budeš muset mackat magickou kouli s rukojetním tlacítkem. Laserové šipky ti pomužou.",
	["vr_10"] = "Aktivuj kouzlo s tlacítkem spoušte, pri držení rukojetního tlacítka. Každé zarovnání ve VR má dve kouzla. Jedno pro platformy a jedno pro schody. Príslušné kouzlo bude zvoleno podle cíle.",
	["vr_11"] = "Jestli chceš zmenit zarovnání ve VR módu, drž tlacítko spoušte.",

	--ROOMS DOOR TEXTS

	["home_1"] = "MUGGLEUV DOMOV",
	["home_2"] = "NAŠE MOTTO:\nCHODIT\nSKÁKAT\nA\nPADAT",
	["home_3"] = "PROS:\nBonusy pro skok a rychlost na vyšších úrovních\nPrávo na vychloubání\nCONS:\nŽádné kouzla\nZasekne se jednodušše",
	["home_4"] = "'Za mejch casu jsme žádný kouzla nemeli!'\n- zakladatel MUGGELU",

	["oasis_1"] = "CHAMELEONOVA OÁZA",
	["oasis_2"] = "NAŠE MOTTO:\nKOPÍROVAT\nIMITOVAT\nA\nPREKVAPIT",
	["oasis_3"] = "PROS:\nDokáže zmenit zarovnání kdekoliv a kdykoliv\nCONS:\nStojí robuxy\nPotrebuje trpelivost",
	["oasis_4"] = "'Moc línej na to abych si vymyslel vlastní kouzla.'\n- zakladatel CHAMELEONU",

	["nexus_1"] = "HERETICOVA SPOJITOST",
	["nexus_2"] = "NAŠE MOTTO:\nTY\nBYS\nNEMEL\nPROJÍT",
	["nexus_3"] = "PROS:\nNejlepší\nNejde zastavit\nCONS:\nTýmování je taktický\nPotrebuje HODNE Many",
	["nexus_4"] = "'Banování cerné magie je jako banování zábavy.'\n- zakladatel HERETICA",

	["guild_1"] = "THIEFUV SPOLEK",
	["guild_2"] = "NAŠE MOTTO:\nPUJCIT\nPOUŽÍT\nA\nVRÁTIT",
	["guild_3"] = "PROS:\nMana efektivní\nUniversální\nCONS:\nPotrebuje krást schody\nNemuže znicit prekracující schody",
	["guild_4"] = "'Vlastne se tomu ríká privlastnení.'\n- zakladatel THIEFA",

	["nether_1"] = "SPECTROVO PEKLO",
	["nether_2"] = "NAŠE MOTTO:\nZMIZET\nSCHOVÁVAT SE\nA\nTELEPORTOVAT SE",
	["nether_3"] = "PROS:\nRychlý kouzla\nPerfektní pro solo\nCONS:\nStojí (sakra) hodne robuxu\nNení doporuceno pro týmy",
	["nether_4"] = "'Jasne že je teleportování bezpecné.'\n- zakladatel SPECTRA (MIA)",

	["study_1"] = "ARCHONOVA ŠKOLA",
	["study_2"] = "NAŠE MOTTO:\nOTEVRÍT\nPORTÁL\n???\nPROFIT",
	["study_3"] = "PROS:\nZkrátka dobrej\nZmate ostatní\nCONS:\nNejtežšší na naucení\nPotrebuje plánování",
	["study_4"] = "'Tenkrát tohle schodište bylo moje.'\n- zakladatel ACHRONA",

	["haven_1"] = "PATRONOVO NEBE",
	["haven_2"] = "NAŠE MOTTO:\nPOMÁHAT\nBRÁNIT\nA\nTVORIT",
	["haven_3"] = "PROS:\nNejjednodušší na naucení\nTýmový hrác\nCONS:\nPoužívá hodne Many\nMuže být toxický",
	["haven_4"] = "'Ty nooberi potrebujou naší pomoc'\n- zakladatel PATRONA",

	["shelter_1"] = "DRIFTERUV PRÍSTREŠEK",
	["shelter_2"] = "NAŠE MOTTO:\nSURFUJ\nRID\nA\nGLIDUJ",
	["shelter_3"] = "PROS:\nUNIverzální\nTýmový hrác\nCONS:\nPotrebuje trochu parkurových skillu\nMuže být težšší v pro vežích",
	["shelter_4"] = "'Kdo potrebuje schody? Jsme ve vesmíru'\n- zakladatel DRIFTERA",

	["circus_1"] = "JOKERUV CIRKUS",
	["circus_2"] = "NAŠE MOTTO:\nPONÍŽIT\nZMÁST\nA\nSMÁT SE",
	["circus_3"] = "PROS:\nUdelán pro trollování™?\nFlippy jsou velmi výhodné\nCONS:\nDrahý kouzla\nMužeš si znicit prátelství",
	["circus_4"] = "'Tohle schodište je vtip.'\n- zakladatel JOKERA",

	["base_1"] = "KEEPEROVA ZÁKLADNA",
	["base_2"] = "NAŠE MOTTO:\nPOHYBOVAT SE\nOTÁCET SE\nA\nKONTROLOVAT",
	["base_3"] = "PROS:\nDokáže zmenit schody\nMuže znovu použít schody\nCONS:\nPotrebuje znalost v parkouru\nJinak beze schodu",
	["base_4"] = "'Prestan menit tohle schodište'\n- zakladatel KEEPERA",

	["chamber_1"] = "WICKEDOVA MÍSTNOST",
	["chamber_2"] = "NAŠE MOTTO:\nZABRÁNIT\nBLOKOVAT\nA\nNICIT",
	["chamber_3"] = "PROS:\nDokáže nicit schody\nDokáže 'ocistit' celé schodište\nCONS:\nPríliš závislý na schodech",
	["chamber_4"] = "'Nejsem zlý, jen je tu moc schodu.'\n- zakladatel WICKEDA",

	["backdoor_1"] = "HACKEROVA ZADNÍ VRÁTKA",
	["backdoor_2"] = "NAŠE MOTTO:\nPODVÁDET\nGLITCHOVAT\nA\nROZBÍJET",
	["backdoor_3"] = "PROS:\nNejrychlejší zarovnání\nTežký na sledování\nCONS:\nPríliš závislý na schodech\nK nicemu v týmech",
	["backdoor_4"] = "'Co to je fér play?'\n- zakladatel HACKERA",

	--LEADERBOARD DESCRIPTIONS

	--SHARED
	["leader_pro"] = "Pro Vež pocítá jako 2 výstupy",	
	["leader_update"] = "Update v: ",	
	["leader_updating"] = "Updatování...",	
	["leader_rank"] = "ÚROVEN",
	["leader_req"] = "POTREBA VÝSTUPU",
	["leader_off"] = "Vlastní Vež nepodporuje žebrícek.",

	--OVERALL
	["over_title"] = "CELKOVE ÚROVNE",
	["over_desc"] = "Za každou odemknutou úroven dostanete 1 bod",
	["over_rank"] = "ÚROVEN",
	["over_req"] = "POTREBA BODU",
	["emperor_req"] = "* Potrebuje Chameleona NEBO Spectre",
	["overmind_req"] = "** Potrbuje Chameleona A Spectre",
	["over_prefix"] = "PREFIX",
	["over_passes"] = "GAMEPASS\nPOTREBNÁ",
	["over_notgroup"] = "OLIVOVÁ BARVA - nejsi ve skupine",
	["over_group"] = "MODROZELENÁ BARVA - jsi ve skupine",
	["over_mod"] = "MODERATOR - hrác je moderátor",
	["over_admin"] = "ADMIN - hrác je admin",
	["over_owner"] = "PRANK ME - zakladatel hry (sleazel)",

	--OTHER
	["muggle_lead"] = "ZBRKLÍ MUGGLERI",
	["muggle_ranks"] = "ÚROVNE MUGGLERA",

	["hacker_lead"] = "ENKRYPTOVANÍ HACKERI",
	["hacker_ranks"] = "ÚROVNE HACKERA",

	["wicked_lead"] = "KRUTÍ WICKEDI",
	["wicked_ranks"] = "ÚROVNE WICKEDA",

	["keeper_lead"] = "PRIPRAVENÍ KEEPERI",
	["keeper_ranks"] = "ÚROVNE KEEPERA",

	["joker_lead"] = "ŠÍLENÍ JOKERI",
	["joker_ranks"] = "ÚROVNE JOKERA",

	["drifter_lead"] = "RAPIDNÍ DRIFTERI",
	["drifter_ranks"] = "ÚROVNE DRIFTERA",

	["patron_lead"] = "UŠLECHTILÍ PARTONI",
	["patron_ranks"] = "ÚROVNE PARTONA",

	["archon_lead"] = "KREHCÍ ARCHONI",
	["archon_ranks"] = "ÚROVNE ACHRONA",

	["spectre_lead"] = "LÉTAJÍCÍ SPECTRA",
	["spectre_ranks"] = "ÚROVNE SPECTRA",

	["thief_lead"] = "TICHÝ ZLODEJI",
	["thief_ranks"] = "ÚROVNE THIEFA",

	["heretic_lead"] = "NEMILOSRDNÍ HERETICI",
	["heretic_ranks"] = "ÚROVNE HERETICA",

	["chameleon_lead"] = "RYCHLÍ CHAMELEONI",
	["chameleon_ranks"] = "ÚROVNE CHAMELEONA",

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Vítej v Šílených Schodech!",
	["tut_big_2"] = "Nejdrív by jsi se mel naucit morphovat.",
	["tut_big_3"] = "Ted jsi Patron, Patroni mouhou treba tvorit schody.",
	["tut_big_4"] = "Všechny kouzla mužeš aplikovat tím, že skocíš.",
	["tut_big_5"] = "Cool, uh? Ted se namorhpuj na Jokera. Jokeri mužou otácet schody.",
	["tut_big_6"] = "Ted jsi Joker, použij tohle kouzlo abys otocil tychle schody.",
	["tut_big_7"] = "Urcitý kouzla musí bejt aplikovaný na schodech.",
	["tut_big_8"] = "Ted se morphuj na Keepera. Keeperi mužou hýbat se schodama.",
	["tut_big_9"] = "Ted jsi keeper, použij tohle kouzlo abys mhl pohnout se schody.",
	["tut_big_10"] = "Skoc na tu šipku rovne aby jsi pohnul se schodama.",
	["tut_big_11"] = "V týhle hre se setkáš s hodne blokujícíma schodama.",
	["tut_big_12"] = "Nyní jsi Wicked. Použij tohle kouzlo aby jsi znicil blokující schody.",
	["tut_big_13"] = "Když ted skocíš na schody pod tebou, znicíš ty nad tebou.",
	["tut_big_14"] = "Pred tím než zacneš, zkus si prémiové zarovnání.",
	["tut_big_15"] = "Ted jsi Spectre, prémiové zarovnání pro solo hru.",
	["tut_big_16"] = "Tvuj gól - dostan se nahoru a seber tu kouli. Hodne štestí!",

	["tut_select"] = "Vyber tohle kouzlo.",

	["tut_small_morph"] = "Skoc na morph.",
	["tut_small_arrow"] = "Skoc na šipku.",
	["tut_small_stairs"] = "Skoc na schody.",


}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

	["notground"] = "Nemuže být proneseno na zemi.",
	["restore"] = "Muže být proneseno pouze na vrcholu.",
	["event"] = "Nemuže být proneseno pri jiné události.",
	["drones"] = "Muže být proneseno jen kdyý drony jsou v normálním režimu.",
	["oneover"] = "Mužeš mít jenom jeden Prenálož Many aktivní najednou.",
	["soft"] = "Nemuže být proneseno pres prekracující se schody.",
	["flatten"] = "Naprotichudné schody jsou požadovány v jedné križovatce.",
	["wickedaltevent"] = "Nemuže být proneseno pri jiné události nebo regeneraci.",
	["confined"] = "Nejde dát schody pryc z herní arény.",
	["onesteal"] = "Mužeš ukradnout jen jedno schodište naráz.",
	["softthief"] = "Potrebuješ ukradnout schody.",
	["uppass"] = "Potrebuješ ukradnout schody.",
	["sidepass"] = "Potrebuješ ukradnout schody.",
	["noescape"] = "Jiná brána musí bý v areálu hry.",
	["outdrift"] = "Muže být pronesena jenom na jiných platformách nad zemí.",
	["drifting"] = "Cílová platforma nemuže být driftovaná.",
	["impostor"] = "Musíš být minimálne Impostor k prístupu.",
	["charlatan"] = "Musíš být minimálne Charlatan k prístupu.",
	["chameleonrigevent"] = "Nemuže být proneseno pri jiné události,  potrebuješ být Usurper a mít tokeny. ", 

}

module.executioninfo = {

	["arrows"] = "Musí být proneseno na šipkách platformy.",
	--call the orb!
	["restore"] = "Musí být aplikováno na vrcholních platformách.",
	["below"] = "Musí být aplikováno na normálních nebo zmanipulovaných schodech.",
	["above"] = "Muže být aplikováno na jakýkoliv normálních nebo zmanipulovaných schodechnebo zmanipulovaných schodech na tebou.",
	["centre"] = "Musí být aplikováno na platforme.",
	["arrowstimed"] = "Musí být aplikováno (opakovane) na šipkách platformy.",
	["anywhere"] = "Muže být aplikováno kdekoliv.",
	["noexe"] = "Toto kouzlo nevyžaduje aplikaci.",
	["flip"] = "Musí být aplikováno na otocených, normálních nebo zmanipulovaných schodech.",
	["flipabove"] = "Muže být aplikováno na jakýkoliv normálních, otocených nebo zmanipulovaných schodech nad tebou.",
	["flipper"] = "Musí být aplikováno (opakovane) na schodech. Schody nad (nebo pod) musí být normální, otocený nebo zmanipulovaný.",
	["destroy"] = "Muže být aplikováno na jakýkoliv nezakleých schodech.",
	["destroyabove"] = "Muže být aplikováno na schodech nad tebou.",
	["flatten"] = "Musí být aplikováno na šipkách platform s normálními nebo schody naproti sobe, které blokují križovatku.",
	["bender"] = "Musí být aplikováno (opakovane) na schodech. Schody nad nebo pod tebou musí být normální nebo zmanipulované.",
	--restore!!!
	["movedown"] = "Muže být aplikováno na šipkách platformy nebo na jakýkoliv speciálních schodech.",
	["ascension"] = "Musí být aplikováno (opakovane) na normálních nebo zakletýchz schodech.",
	["blink"] = "Muže být aplikováno na jakýkoliv schodech nebo blokujících, nebo nezakletých schodech nad tebou.",
	["outer"] = "Musí být aplikováno na platformách.",
	["riser"] = "Musí být aplikováno (opakovane) na platformách.",
	["curse"] = "Musí být aplikováno na normálních, zakletých nebo zmanipulovaných schodech.",
	["curseabove"] = "Muže být aplikováno na normálních schodech, nebo zakletými nad tebou.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

	--PATRON
	["summon"] = "Vytvorit Schody",
	["restore"] = "Zavolat Kouli", 
	["split"] = "Rozdelit Schody",
	["shrinkabove"] = "Zmenšit Schody Nad Tebou",
	["link"] = "Vytvorit Link",
	["portal"] = "Vytvorit Portál",

	["summoner"] = "Tvoric",
	["patronrigevent"] = "Dárkek S Manou",
	["patronevent"] = "Pretížení Schodu",
	["patronaltevent"] = "Událost Zmenšení",
	["patronmode"] = "Patron Mód Pro Drony",
	["patronrefill"] = "Pretížení Many (Patron)",
	["patronunion"] = "Svaz Duchu (Patron)",

	--JOKER 
	["flip"] = "Otocit Schody",
	["flipabove"] = "Otocit Schody Nad Tebou",
	["fake"] = "Vytvorit Falešný Schody",
	["invisible"] = "Vytvorit Neviditelné Schody",
	["disco"] = "Disco Schody",
	["trap"] = "Vytvorit Past",

	["flipper"] = "Otácec",
	["jokerrigevent"] = "Otocit Plochu",
	["jokerevent"] = "Událost Plášte",
	["jokeraltevent"] = "Událost Otocení",
	["jokermode"] = "Joker Mód Dronu",
	["jokerrefill"] = "Pretížení Many (Joker)",
	["jokerunion"] = "Svaz Duchu (Joker)",

	--WICKED
	["destroy"] = "Znicit Schody",
	["destroyabove"] = "Znicit Schody Nad Tebou",
	["bend"] = "Zlomit Schody Nahoru",
	["damage"] = "Ponicit Schody Nad Tebou",
	["flatten"] = "Zlomit Schody Naproti Dolu",
	["wall"] = "Vytvorit zed" ,

	["bender"] = "Lomic",
	["wickedrigevent"] = "Znicit Podlahu",
	["wickedevent"] = "Znicit Událost",
	["wickedaltevent"] = "Ocistit Událost",
	["wickedmode"] = "Wicked Mód Dronu",
	["wickedrefill"] = "Pretížení Many (Wicked)",
	["wickedunion"] = "Svaz Duchu (Wicked)",

	--KEEPER
	["move"] = "Posunout Schody",
	["rotate"] = "Otocit Schody",
	["moveup"] = "Posunout Schody Nahoru",
	["movedown"] = "Obnov Schody",
	["moverandom"] = "Náhodný Pohyb Nad Tebou",
	["rig"] = "Náhodný Pohyb",

	["ascension"] = "Slezení",
	["keeperrigevent"] = "Pohnout Podlahu",
	["keeperevent"] = "Událost Preskupení",
	["keeperaltevent"] = "Obnovit Všechny Schody",
	["keepermode"] = "Keeper Mód Dronu",
	["keeperrefill"] = "Pretížení Many (Keeper)",
	["keeperunion"] = "Svazek Duchu (Keeper)",

	--SPECTRE
	["phantom"] = "Vytvorit Phantom Schody",
	["ghost"] = "Zduchovat Schody Nad Tebou",
	["shadow"] = "Od-zduchnit Schody",
	["horizontal"] = "Horizontalní Teleport",
	["random"] = "Náhodný Teleport",
	["vertical"] = "Vertikální Teleport",

	["traveller"] = "Tripytení",
	["spectrerigevent"] = "Plocha Zatmení",
	["spectreevent"] = "Událost Phantom",
	["spectrealtevent"] = "Událost Duchu",
	["spectremode"] = "Spectre Mód Dronu",
	["spectrerefill"] = "Pretížení Many (Spectre)",
	["spectreunion"] = "Svazek Duchu (Spectre)",

	--HACKER
	["dash"] = "Pomlcka",
	["blink"] = "Mrknutí",
	["swap"] = "Vymenit",
	["slide"] = "Eskalátor Dolu",
	["slideup"] = "Eskalátor Nahoru",
	["glitch"] = "Glitchnou Schody",

	["speedup"] = "Hacknout Rychlost Chuze",
	["hackerrigevent"] = "Glitch Plocha",
	["hackerevent"] = "Událost Eskalace",
	["hackeraltevent"] = "Událost Porušení",
	["hackermode"] = "Hacker Mód Dronu",
	["hackerrefill"] = "Pretížení Many (Hacker)",
	["hackerunion"] = "Svaz Duchu (Hacker)",

	--THIEF
	["steal"] = "Ukradnout Schody",
	["stealabove"] = "Ukradnout Schody Nad Tebou",
	["place"] = "Položit Schody",
	["uppass"] = "Spirálové Schodište",
	["sidepass"] = "Vytvorit Bypass",
	["drop"] = "Pustit Schody",

	["heist"] = "Loupež",
	["thiefrigevent"] = "Plocha Pro Kradení Many",
	["thiefevent"] = "Událost Flat Land",
	["thiefaltevent"] = "Bypassnout Všechny Schody",
	["thiefmode"] = "Thief Mód Dronu",
	["thiefrefill"] = "Pretížení Many (Thief)",
	["thiefunion"] = "Svaz Duchu (Thief)",

	--ARCHON
	["splitup"] = "Vytvorit Rozdelení Nad Tebou",
	["splitrotate"] = "Vytvorit Otocené Rozdelelní",
	["splitside"] = "Vytvorit Rovné Rozdelení",
	["splitrandom"] = "Vytvorit Náhodné Rozdelení",
	["cancelsplit"] = "Znicit Rozdelení",
	["splitforward"] = "Vytvorit Rozdelení Platformy",

	["splitter"] = "Rozdelovac",
	["archonrigevent"] = "Fáze Plochy",
	["archonevent"] = "Událost Rozdelení",
	["archonaltevent"] = "Událost Divize",
	["archonmode"] = "Achron Mód Dronu",
	["archonrefill"] = "Pretížení Many (Archon)",
	["archonunion"] = "Svazek Duchu (Archon)",

	--DRIFTER
	["indrift"] = "Surf",
	["outdrift"] = "Vytvorit Vnejší Drift",
	["updrift"] = "Vyzvednout",
	["diagdrift"] = "Vytvorit Vnejší Drift",
	["spin"] = "Roztocit Schody",
	["driftabove"] = "Vyzvednout Schody Nad Tebou",

	["riser"] = "Vstávac",
	["drifterrigevent"] = "Drift Plocha",
	["drifterevent"] = "Událost Drift",
	["drifteraltevent"] = "Událost Vyzvednutí",
	["driftermode"] = "Drifter Mód Dronu",
	["drifterrefill"] = "Pretížení Many (Drifter)",
	["drifterunion"] = "Svaz Duchu (Drifter)",

	--HERETIC
	["createcursed"] = "Vytvorit ZakletéCreate Cursed Stairs",
	["curse"] = "Zaklést/Od-zaklést Schody",
	["curseabove"] = "Zaklést/Od-zaklést Schody Nad Tebou",
	["curseinter"] = "Blikac",
	["autodown"] = "Zvýšit Rozkol",
	["autoup"] = "Snížit Rozkol",

	["malediction"] = "Prokletí",
	["hereticrigevent"] = "Posedlá Plocha",
	["hereticevent"] = "Událost Rozkolu",
	["hereticaltevent"] = "Událost Zacarování",
	["hereticmode"] = "Heretic Mód Dronu",
	["hereticrefill"] = "Pretížení Many (Heretic)",
	["hereticunion"] = "Svaz Duchu (Heretic)",

	--CHAMELEON
	["ditch"] = "Prekrocit Schody",
	["warp"] = "Zvlnit Schody",
	["chamdown"] = "Posunout Schody Dolu",
	["chamdraw"] = "Padací Most Pod Tebou",
	["chamdrawabove"] = "Padací Most Nad Tebou",

	["chameleonrigevent"] = "Záhadná Plocha",
	["chameleonmode"] = "Chameleon Mód Dronu",
	["chameleonrefill"] = "Pretížení Many (Chameleon)",
	["chameleonunion"] = "Svaz Duchu (Chameleon)",

}

--translate these too!!!
local union = "Toto je casované kouzlo Svaz Duchu. Jakmile jsi v módu Svazu duchu, mužeš clipovat pres blokující schody a chodit na duchách, skákackách a falešnými schody. Speciální schody nebudou mít žádný efekt na tebe, a nebudeš pouštet pasti. Nelze pronést kouzla."
local overload = "Toto je kouzlo pretížení. Garantuje ti JEDNU Manu každých 6 sekund pro další minutu (10 celkem). Mužeš mít jen jeden aktivovaný najednou."

module.spells.descriptions = {

	--PATRON
	["summon"] = "Toto kouzlo ti umožní vytvorit jedny schody ve vybraném smeru. Pokud budou v ceste nejaké precházející schody, budou zbourány.",
	["restore"] = "Toto kouzlo privolá kouli na nejvyšší úrovni na zvolenou platformu. Dostan se na Defendera a snižte cenu na 2 many. Dostante se na Savioura a zdvojnásobte rychlost, kterou k vám bude koule cestovat.",
	["shrinkabove"] = "Toto kouzlo se zmenšuje schody nad tebou a umožnuje ti je obejít.",
	["link"] = "Toto kouzlo vytvorí energetický most mezi platformami po dobu 60 sekund. Bude zakryta pouze jedna strana mezery, aby bylo možné ji obejít. Dostan se na Creatora a prodlouží se ti cas na 120 sekund.",
	["split"] = "Toto kouzlo rozdeluje schody na dve protilehlá schodište, což ti umožní prístup na všechny ctyri platformy.",
	["portal"] = "Toto kouzlo vytvorí portál, který teleportuje všechny hráce o jednu platformu výš. Portál vydrží 60 sekund. Dostan se na Protectora a prodlouží se ti cas na 120 sekund.",

	["summoner"] = "Toto kouzlo je nacasováno. Umožnuje ti vytvorit tolik schodu, kolik chcete za jednu minutu. Pokracujte ve skákání na šipky a vytvoríš schody.  Dostan se na Guardiana a prodlouží se ti cas na 90 sekund. Seslání tohoto kouzla také doplní manu všem patronum s alespon hodností prítele.",
	["patronrigevent"] = "Toto je kouzlo Rig. Vybaví všechny normální schody, jedno po druhém, pomocí Mana Gift. Schodište, jakmile se spustí, zvýší spouštecí hrácskou manu o jednu. Pokud má hrác maximum many, schody se nespustí. Po spuštení se schody opet stanou normálními.",
	["patronevent"] = "Toto kouzlo je událost. V každé volné, neprokleté križovatce vytvorí schody.",
	["patronaltevent"] = "Toto kouzlo je událost Zmenší všechny normální schody, jedno po druhém.",
	["patronmode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Patron. Patron Drony, pokud je pocet schodu v mezích, náhodne sesílají Kouzlo Zmenšení a Plocha Dárku na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Toto kouzlo prevrací schody, takže horní se zmení na spodní a naopak. Po prevrácení jsou schody imunní vuci kouzlum, krome nicení, krádeže v hodnocení a pohybu v hodnocení. Mužete však otocit schody zpet.",
	["flipabove"] = "Toto kouzlo se otácí nad schody, takže horní se stane spodním a naopak. Po prevrácení jsou schody imunní vuci kouzlum, krome nicení, krádeže v hodnocení a pohybu v hodnocení. Mužete však otocit schody zpet.",
	["fake"] = "Toto kouzlo ti umožnuje vytváret falešné schody ve zvoleném smeru. Pokud budou v ceste nejaké precházející schody, budou zbourány. Každý hrác (vcetne vás), který se je pokusí vylézt, propadne, s výjimkou Tricksters, IT a hrácu v režimu Ghost Union.",
	["invisible"] =  "Toto kouzlo vytvárí neviditelné schody. To však neznicí precházející schody jako u kouzel Patrona, takže schody mužete umístit pouze do prázdné križovatky. Postavte se k Jesterovi, abyste videli všechny neviditelné schody, a máte možnost je neodhalit.",
	["disco"] = "Toto kouzlo zmení schody na diskotékový režim. Jakýkoli hrác (vcetne tebe) se na nich zastaví a tancí na 5 sekund (obvykle dvakrát). Úrovne Comic a vyšší jsou imunní vuci diskotékovým schodum.",
	["trap"] = "Toto kouzlo zmení plošinu na padací dvere na 60 sekund. Každý hrác (vcetne tebe), který pujde po pasti, spadne na plošinu níže. Dostan se na Jokestra, aby jsi byl schopný odhalit pasti na plošine.",

	["flipper"] = "Toto kouzlo je nacasováno. Umožnuje vám po dobu jedné minuty sesílat tolik kouzel preklápecích schodu, kolik chcete. Vždy nad schody budou prevráceny, pokud budou nalezeny. Pokud ne, pod schody se místo toho prevrátí. Toto kouzlo také doplní manu všem Jokerum s alespon hodností Fool.",
	["jokerrigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, pomocí kouzla prevrácení. Schody se po spuštení automaticky preklopí.",
	["jokerevent"] = "Toto kouzlo je událost. Zmení všechny normální schody neviditelnými. Nalezené zprávy se nezobrazí, aby se zabránilo spamu.",
	["jokeraltevent"] = "Toto kouzlo je událost. Prevrátí všechny bežné schody.",
	["jokermode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Jokera. Joker Drony, pokud je pocet schodu v rámci limitu, sesílají náhodne neviditelné kouzlo a Flip Rig na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Toto kouzlo nicí schody. Na rozdíl od jiných kouzel bude fungovat na jakýchkoli schodech. Postavte se na Vile a seslání tohoto kouzla zdarma. Zvyšte se na Vicious a získejte 1 manu pokaždé, když znicíte nejaké speciální schody. Postavte se na Annihilator a znicte prokleté schody.",
	["destroyabove"] = "Toto kouzlo nicí nad schody. Na rozdíl od jiných kouzel bude fungovat na jakýchkoli schodech. Zvyšte se na Vicious a získejte 1 manu pokaždé, když znicíte nejaké speciální schody. Postavte se na Annihilator a znicte prokleté schody.",
	["bend"] = "Toto kouzlo ohýbá schody nahoru. Použijte jej k získání prístupu na výše uvedenou platformu.",
	["damage"] = "Toto kouzlo se nad schody promení v obby odstranením vetšiny schodu. Než se o to pokusíte, nezapomente na cooldown skoku. Postavte se na Destroyera, abyste mohli chodit po obbies stejne jako po normálních schodech.",
	["flatten"] = "Toto kouzlo se ohýbá naproti schodum dolu. Použijte jej k získání prístupu na protejší platformu.",
	["wall"] = "Toto kouzlo vytvorí energetickou zed na plošine plus spojení s protejší plošinou po dobu 60 sekund. Takovou zdí a na odkazu mohou projít pouze Wickeds. Zed muže být vynucena teleportem strašidla, hackerským úletem nebo Svazem Duchu.",

	["bender"] = "This spell is timed. It allows you to cast as many bend up stairs as you like for one minute. Both below and above stairs will be bent at the same time if requirements are met. Rank up to Nemesis to increase the time limit to 90 seconds. This spell will also refill Mana for all Wickeds with at least Mean rank.",
	["wickedrigevent"] = "Toto je kouzlo Plochy. It will Rig all normal stairs, one by one, with destroy spell. Stairs, once triggered, will destroy automatically. Rank up to Devil to walk on Wicked Rigs without triggering them.",
	["wickedevent"] = "Toto kouzlo je událost. It will destroy all normal stairs in the game. Regeneration will not be triggered.",
	["wickedaltevent"] = "Toto kouzlo je událost. It will destroy all the stairs and curses in the game. No exceptions. Regeneration will be triggered.",
	["wickedmode"] =  "Toto kouzlo je pro Drony. Zmení režim dronu na Wicked. Wicked Drony, pokud je pocet schodu v mezích, náhodne sesílají Kouzlo Ohnutí a Znicit Plochu na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Toto kouzlo posune schody vodorovným zpusobem a znicí všechny schody v ceste. Po seslání se objeví okno s výzvou k výberu smeru. Schodište nelze presunout mimo herní plochu. Postavte se na Ovladace, abyste mohli presunout prevrácené schody.",
	["rotate"] = "Toto kouzlo otocí schody vodorovným zpusobem a znicí všechny schody v ceste. Po seslání se objeví okno, které vás vyzve k výberu smeru a otocení. Schodište nelze otácet mimo herní plochu. Postavte se na Ovladace, abyste mohli presunout prevrácené schody.",
	["moveup"] = "Toto kouzlo posune schody nahoru a znicí všechny schody v ceste. Schody nelze posunout nad nejvyšší úroven. Postavte se na Ovladace, abyste mohli presunout prevrácené schody.",
	["movedown"] = "Toto kouzlo opravuje všechny speciální schody. Pokud jsou schody již normální, toto kouzlo se neprovede. Postavte se na kapitána a sesílejte toto kouzlo zdarma. Postavte se na admirála, abyste mohli opravit Cursed Stairs a Cursed Intersections.",
	["moverandom"] = "Toto kouzlo se bude pohybovat nebo otácet nad schody v náhodném smeru a nicit všechny schody v ceste. Postavte se na operátora, abyste se vyhnuli sestupu schodu. Postavte se na Ovladace, abyste mohli presunout prevrácené schody.",
	["rig"] = "Toto kouzlo bude posouvat nebo otácet schody v náhodném smeru a nicit všechny schody v ceste. Postavte se na operátora, abyste se vyhnuli sestupu schodu. Postavte se na Ovladace, abyste mohli presunout prevrácené schody.",

	["ascension"] = "Toto kouzlo je nacasováno. Umožnuje vám po dobu jedné minuty sesílat tolik kouzel, kolik chcete. Postavte se na velitele a prodloužíte casový limit na 90 sekund. Toto kouzlo také doplní manu všem Keeperum s minimálne hodností Handler.",
	["keeperrigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, kouzlem Posunout Náhodné. Schody se po spuštení budou pohybovat nebo otácet v náhodném smeru. Zaradte se na operátora za to, že žádné návazce, které spustíte, nikdy neklesnou. Postavte se na Sentinel, abyste mohli chodit po Keeper Rigs, aniž byste je spustili.",
	["keeperevent"] = "Toto kouzlo je událost. Pred spuštením si mužete vybrat mekký nebo vynucený režim. V mekkém režimu toto kouzlo posune nebo otocí všechny normální schody v náhodném smeru, aniž by pritom cokoliv znicilo. V nuceném režimu toto kouzlo posune nebo otocí všechny schody v náhodném smeru a znicí všechna schodište v ceste.",
	["keeperaltevent"] = "Toto kouzlo je událost. Obnoví všechny schody ve hre, vcetne tech prokletých. Na rozdíl od Purge neodstraní prokleté križovatky.",
	["keepermode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Keeper. Keeper Drony, pokud je pocet schodu v rámci limitu, sesílají náhodne kouzla nuceného pohybu nebo rotace a pohyb zarízení na normálních schodech. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Toto kouzlo vytvorí \"phantom\" schody ve zvoleném smeru. Pokud budou v ceste nejaké precházející schody, budou zbourány. Fantomové schody po odlití rychle zmizí a úplne zmizí.",
	["ghost"] = "Tato kouzla vám umožní delat duchy nad schody. Mužete projít prízracnými schody, ale nemužete po nich chodit, pokud nejste zarazeni do Aetheru.",
	["shadow"] = "Toto kouzlo vám umožní zbavit se duchu schodu a vrátit je zpet do normálu. Postavte se na Phantoma a seslání tohoto kouzla zdarma.",
	["horizontal"] = "Toto kouzlo vám umožní vodorovne se teleportovat ve zvoleném smeru. Mužete se teleportovat pres jakékoli schody v ceste.",
	["random"] = "Toto kouzlo vás teleportuje na náhodnou platformu na stejné úrovni.",
	["vertical"] = "Toto kouzlo vás teleportuje nahoru, na plošinu nahore.",

	["traveller"] = "Toto je nacasované kouzlo. Umožnuje vám seslat tolik kouzel horizontálního teleportu, kolik chcete po dobu jedné minuty. Poradí až Shadow zvýšit limit na 90 sekund. Toto kouzlo také doplní manu všem Spectrem s minimálne hodností Shade.",
	["spectrerigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, kouzlem Eklipsa. Schody, jakmile se spustí, budou mít 50% šanci na duchy. Postavte se na Vision, abyste mohli chodit po Spectre ploše, aniž byste je spoušteli.",
	["spectreevent"] = "Toto kouzlo je událost. Pred spuštením si mužete vybrat režim mekkých duchu nebo nucených duchu. V režimu mekkých duchu bude toto kouzlo pohybovat nebo otácet normálními schody v náhodném smeru, aniž by pritom cokoliv znicilo. V režimu nucených duchu toto kouzlo posune nebo otocí všechny schody v náhodném smeru a znicí všechna schodište v ceste.",
	["spectrealtevent"] = "Toto kouzlo je událost. Bude to strašit všechny normální schody. Postavte se k Aetherovi a jdete po strašidelných schodech. Svaz Duchu lze také použít k chuzi po prízracných schodech.",
	["spectremode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Spectre. Spectre Drones, pokud je pocet schodu v mezích, sesílají náhodne Mekké Pohyby duchu nebo Otácet Kouzla a Eklipsa Plochy na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Zmení režim dronu na Spectre. Spectre Drones, pokud je pocet schodu v mezích, sesílají náhodne Soft Ghost Move nebo Rotate Spells a Eclipse Rig na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["blink"] = "Toto kouzlo vás teleportuje kolem blokování nad schody. Aby to fungovalo, musí být schody v opacném smeru než pod schody. Zaradte na Exploitera, abyste toto kouzlo urychlili o 50 %.",
	["swap"] = "Toto kouzlo vás teleportuje na místo, kde je váš duch. Na rozdíl od jiných základních kouzel lze Swap seslat kdekoli.",
	["slide"] = "Toto kouzlo zmení schody na eskalátor dolu. Eskalátor pobeží pouze tehdy, když jsou na nem hráci. Chcete-li automaticky pozastavit všechny eskalátory dolu, prejdete do Scripteru.",
	["slideup"] = "Toto kouzlo zmení schody na eskalátor nahoru. Eskalátor pobeží pouze tehdy, když jsou na nem hráci.",
	["glitch"] = "Toto kouzlo pokazí schody a teleportuje vás i vás samotné na jiné místo na stejné úrovni. Posunte se na nulu a teleportujte schody vedle koule, pokud jste již na nejvyšší úrovni.",

	["speedup"] = "Toto je nacasované kouzlo. Nevyžaduje provedení, zvýší rychlost vaší chuze o 50 % na jednu minutu. V tomto režimu nemužete sesílat jiná kouzla. Toto kouzlo také doplní manu všem hackerum s minimálne geekskou hodností.",
	["hackerrigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, pomocí kouzla Glitch. Po spuštení teleportuje hráce a schody na jiné místo na stejné úrovni. Teleportuje se pouze jeden hrác. Postavte se Reaperovi, abyste mohli chodit po Hacker Rigs, aniž byste je spustili.",
	["hackerevent"] = "Toto kouzlo je událost. Otocí všechny normální schody, jedno po druhém, na eskalátor nahoru nebo eskalátor dolu.",
	["hackeraltevent"] = "Toto kouzlo je událost. Otocí všechny normální schody, jedno po druhém, na eskalátor nahoru.",
	["hackermode"] =  "Toto kouzlo je pro Drony. Zmení režim dronu na Hacker. Hackerské drony, pokud je pocet schodu v mezích, budou náhodne sesílat eskalátorová kouzla nebo Glitched Plocha na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Toto kouzlo vám umožní ukrást pod normální nebo zfalšované schody. K sesílání dalších základních zlodejských kouzel je potreba bud toto, nebo krást výše. Postavte se na únosce, abyste mohli ukrást jakékoli schody. Postavte se na Outlawa, abyste mohli ukrást 2 schodište najednou.",
	["stealabove"] = "Toto kouzlo vám umožnuje ukrást nad normální nebo zfalšované schody. K sesílání dalších základních zlodejských kouzel je potreba bud toto, nebo krást níže. Postavte se na únosce, abyste mohli ukrást jakékoli schody. Postavte se na Outlawa, abyste mohli ukrást 2 schodište najednou.",
	["place"] = "Toto kouzlo vám umožní umístit schody zpet ve zvoleném smeru. To však neznicí precházející schody jako u kouzla Patron, takže schody mužete umístit pouze do prázdné križovatky.",
	["uppass"] = "Toto kouzlo vám umožní vytvorit tocité schodište z ukradených schodu. Muže být odlit pouze na vnejší platformy a bude trvat jednu minutu. Tocité schodište je nezranitelné vuci všem kouzlum. Postavte se k Banditovi, aby schodište trvalo dve minuty.",
	["sidepass"] = "Toto kouzlo vám umožní vytvorit ohnutý obchvat z ukradených schodu. Bude vytvoren ve zvoleném smeru a bude trvat jednu minutu. Bypass je nezranitelný vuci všem kouzlum. Postavte se Robberovi, aby obchvat trval dve minuty.",
	["drop"] = "Toto kouzlo vám umožní srazit schody zdarma. Budete však muset najít prázdnou križovatku. Kopané schody jsou ploché.",

	["heist"] = "Toto je nacasované kouzlo. Umožnuje vám seslat kouzlo schodište, kolikrát chcete. Na rozdíl od bežného kouzla místa lze toto kouzlo seslat pres schody, protože schody budou v tomto režimu automaticky odcizeny. Toto kouzlo také doplní manu všem zlodejum s alespon hodností Crook.",
	["thiefrigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, pomocí Mana Steal Rig. Po spuštení Schody ukradnou spouštejícímu hráci jednu manu a pridají ji do vaší vlastní many. Manu nedostanete, pokud je vaše mana maximum. Mana také nedostanete, pokud zmeníte zarovnání.",
	["thiefevent"] = "Toto kouzlo je událost. Promení všechna normální schodište, jedno po druhém, na príkopové ploché schody.",
	["thiefaltevent"] = "Toto kouzlo je událost. Vytvorí obchvat v každé vnitrní severní a jižní križovatce. Pokud je križovatka prokletá, obchvat se nevytvorí.",
	["thiefmode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Thief. Thief Drony, pokud je pocet schodu v mezích, budou náhodne sesílat Kouzla Krást/Položit a Ukradnout Plochu na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitup"] = "Toto kouzlo se spojí pod schody se schody nahore s portálem. Pokud schody nejsou, vytvorí se. Umístete se na Prodigy a prepište existující pripojení. Chcete-li ignorovat sestupná pripojení, prejdete na Sage.",
	["splitrotate"] = "Toto kouzlo se spojí pod schody s dalším v otoceném horizontálním smeru dle vašeho výberu pomocí portálu. Pokud schody nejsou, vytvorí se. Umístete se na Prodigy a prepište existující pripojení. Postavte se k Iluminátum, abyste mohli procházet portály.",
	["splitside"] = "Toto kouzlo se spojí pod schody s dalším v horizontálním smeru dle vašeho výberu pomocí portálu. Pokud schody nejsou, vytvorí se. Umístete se na Prodigy a prepište existující pripojení. Postavte se k Iluminátum, abyste mohli procházet portály.",
	["splitrandom"] = "Toto kouzlo se pripojí pod schody k jakékoli platné križovatce ve stejném patre. Pokud schody nejsou, vytvorí se. Postavte se k Iluminátum, abyste mohli procházet portály.",
	["cancelsplit"] = "Toto kouzlo odhodí všechny portály na schodech. Zaradte se až na Ucedníka, abyste mohli odstranit rozdelení platforem. Postavte se Scholarovi a sesílejte toto kouzlo zdarma.",
	["splitforward"] = "Toto kouzlo spojí dve plošiny ve vodorovném smeru podle vašeho výberu portálem. Zaradte se až na Ucedníka, abyste mohli odstranit rozdelení platforem. Použití schodu nebude blokovat spojení. Postavte se k Iluminátum, abyste mohli procházet portály.",

	["splitter"] = "Toto kouzlo je nacasováno. Umožnuje vám vytvorit tolik rozdelení platformy, kolik chcete, po dobu jedné minuty. Postavte se na Savanta a prodloužíte cas na 90 sekund. Seslání tohoto kouzla také doplní manu všem Archonum s alespon hodností Adept.",
	["archonrigevent"] = "Toto je kouzlo Plochy. Vybaví všechna normální schodište, jedno po druhém, pomocí Phase Rig. Schody, jakmile se spustí, teleportují hráce do smeru, kterým šel, a prejdou blokující schody. Po spuštení se schody opet stanou normálními.",
	["archonevent"] = "Toto kouzlo je událost. Na všech normálních schodech vytvorí náhodné rozdelení.",
	["archonaltevent"] = "Toto kouzlo je událost. Vertikální rozdelení vytvorí pouze na všech normálních schodech.",
	["archonmode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Archon. Archon Drony, pokud je pocet schodu v mezích, náhodne sesílá náhodná kouzla Rozdelit a Fáze Plochy na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["outdrift"] = "Toto kouzlo bude kroužit pod plošinou kolem celé herní oblasti na stejné úrovni. Lze vrhnout pouze na vnejší platformy. Postavte se na Stridera a získejte bonusovou Manu ve výtahu.",
	["indrift"] = "Toto kouzlo vytvorí docasné surfovací prkno, které vás presune na plošinu ve smeru, který si zvolíte. Postavte se na Stridera a získejte bonusovou Manu ve výtahu.",
	["updrift"] = "Toto kouzlo vytvorí výtah pomocí spodní a horní plošiny. Platformy budou obnoveny po urcité dobe. Postavte se k Vagabondovi, abyste urychlili pohyb. Postavte se na Traveler, abyste mohli zvýšit výtah na druhou úroven. Posunte se na Strider, abyste mohli znovu zvýšit vztlak na tretí úroven.",
	["diagdrift"] = "Toto kouzlo vytvorí bocní výtah pomocí spodní a jakékoli plošiny v diagonálním stylu. Platformy budou obnoveny po urcité dobe.",
	["spin"] = "Toto kouzlo se pod schody otocí o 180 stupnu. Postavte se na Nomada, abyste mohli tocit driftovanými schody.",
	["driftabove"] = "Toto kouzlo se zvedne nad schody, takže po nich mužete projít a vylézt, pokud se tak rozhodnete.",

	["riser"] = "Toto kouzlo je nacasováno. Umožnuje vám vytvorit tolik vertikálních plošinových výtahu, kolik chcete po dobu jedné minuty. Pri používání tohoto kouzla mužete také zvýšit vztlak, pokud jste dostatecne vysoko. Postavte se na Wayfarer a prodloužíte cas na 90 sekund. Seslání tohoto kouzla také doplní manu všem Drifterum s alespon hodností Wanderer.",
	["drifterrigevent"] = "Toto je kouzlo Plochy. Vybaví všechna normální schodište, jedno po druhém, pomocí Driftovací Plochy. Schody, jakmile se spustí, se budou tocit dokola. Postavte se na Voyager, abyste získali imunitu vuci tomuto zarízení.",
	["drifterevent"] = "Toto kouzlo je událost. Náhodne otocí všechny normální schody.",
	["drifteraltevent"] =  "Toto kouzlo je událost. Zvedne všechny bežné schody a umožní vám prejít zpod nich.",
	["driftermode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Drifter. Drifter Drony, pokud je pocet schodu v mezích, náhodne sesílá Kouzlo Driftu a Otácet Plochy na normální schody. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Toto kouzlo vám umožnuje vytváret prokleté schody ve zvoleném smeru. Prípadné prechodové schody budou zbourány. Postavte se na Banished a znicte precházející prokleté schody.",
	["curse"] = "Toto kouzlo prokleje nebo zruší prokletí pod schody, v závislosti na tom, zda jsou již prokleti.",
	["curseabove"] = "Toto kouzlo prokleje nebo zruší kletbu nad schody, v závislosti na tom, zda jsou již prokleti. Schody se na okamžik zvednou a umožní vám prejít.",
	["curseinter"] = "Toto kouzlo vám umožní prejít na protejší plošinu, pokud v ceste nejsou žádné schody. Intersection se po tomto kouzlu stane prokletým, takže ho ostatní hráci již nemohou používat. Postavte se k Neverícím, abyste mohli toto kouzlo použít k odstranení prusecíkové kletby.",
	["autodown"] = "Použijte toto kouzlo k vytvorení a zvednutí speciální zrcadlené cásti spodní cásti schodište. V tomto úseku mohou chodit pouze svazky duchu a kacíri.",
	["autoup"] = "Pomocí tohoto kouzla vytvorte speciální zrcadlovou cást horní cásti schodište. Pravidelné schody budou sníženy. V tomto úseku mohou chodit pouze svazky duchu a kacíri.",

	["malediction"] = "Toto kouzlo je nacasováno. Umožnuje vám na jednu minutu vytvorit tolik prokletých schodu, kolik chcete. Poradí až po Accursed pro prodloužení casu na 90 sekund. Seslání tohoto kouzla také doplní manu všem Hereticum s minimálne Úrovní Stranger.",
	["hereticrigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, pomocí Possess Rig. Schody, jakmile jsou spušteny, budou mít spouštecího hráce. Budou muset najít Mana, aby byli propušteni. Posedlí hráci nemohou kouzlit. Postavte se na Unbeliever, abyste získali imunitu vuci tomuto zarízení. Umístete se na úroven Exiled a získejte 1 manu pokaždé, když je hrác posedlý.",
	["hereticevent"] = "Toto kouzlo je událost. Promení všechna normální schodište ve vzestupné nebo nižší rozkoly.",
	["hereticaltevent"] = "Toto kouzlo je událost. Prokleje všechny normální schody.",
	["hereticmode"] = "Toto kouzlo je pro Drony. Zmení režim dronu na Heretic. Heretic Drones, pokud je pocet schodu v mezích, náhodne sesílají Schism Spells nebo Possess Rig na normálních schodech. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--CHAMELEON
	["ditch"] = "Toto dríve bylo kouzlo Thiefa, než to bylo zamítnuto. Promení normální nebo zpevnené schody na zkrížené schodište.",
	["warp"] = "Toto dríve bylo kouzlo Wickeda. Zkroutí normální nebo zmanipulované schody zpet na plošinu.",
	["chameleonrigevent"] = "Toto je kouzlo Plochy. Vybaví všechny normální schody, jedno po druhém, pomocí Mystery Rig. Jakmile jsou schody spušteny, spustí se náhodný efekt ze všech ostatních zarízení.",
	["chamdown"] = "Toto dríve bylo kouzlo Keepera, než to bylo zamítnuto. Presune dolu jakékoli normální nebo zmanipulované schody. Pokud jste Keepera zaradili na kapitána, mužete také presunout prevrácené schody.",
	["chamdraw"] = "Toto dríve bylo kouzlo Heretica, než to bylo zamítnuto. Promení schody v padací most a znemožní sestup, pokud jiný hrác neaktivuje most zespodu.",
	["chamdrawabove"] = "Toto dríve bylo kouzlo Heretica, než to bylo zamítnuto. Nad schody se zmení na padací most, který vám umožní projít. Vzestup není možný, pokud jiný hrác neaktivuje most shora. Hodnost Old Unbeliever již není aktivní a automatické kreslení zdola již není možné.",
	["chameleonmode"] =  "Toto kouzlo je pro Drony. Zmení režim dronu na Chameleona. Chameleon Drony, pokud je pocet schodu v mezích, sesílají náhodne kouzlo ze všech ostatních režimu nebo Mystery Rig na normálních schodech. Místo toho budou obnoveny speciální schody. Mimo limity budou drony vytváret a nicit.",
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}

--do not remove the unused ones, for compatibility
module.spells.manacosts = {
	"0 Many",
	"1 Mana",
	"2 Many",
	"3 Many",
	"4 Many", 
	"0 Many + schody",
	"1 Mana + schody",
	"2 Many + schody",
	"3 Many + schody", 
	"", 
	"10 Many" 
}

module.spells.tokencosts = {

	"1 Token",
	"2 Tokeny",
	"3 Tokeny",

	["chameleonrigevent"] = "2 Multi Tokeny",
	["unlock"] = "(odemknout za 3 tokeny)",
}

module.serverfeedback = {

	["scancel"] = "Zrušením kouzla zmeníte zarovnání",
	["morph"] = "Skocte sem a stante se %s",
	["raceclosed"] = "Závod je nyní uzavren.",
	["stay"] = "Zustante v ringu a zúcastnete se závodu!",
	["falsestart"] = "Chybný start",
	["secret"] = "Tajemství nalezeno!",
	["traveller"] = "Umístete se na Traveler, abyste zvýšili POSUN NAHORU.",
	["noboost"] = "Nelze zvýšit, žádné další platformy výše.",
	["platformlocked"] = "Cílová plošina je uzamcena.",
	["strider"] = "Umístete na Strider a zdvojnásobte tak DRIFTY NAHORU.",
	["noupplatform"] = "Nelze zvýšit, žádné další platformy výše.",
	["boosted"] = "Drift posílen!",
	["wrongdirection"] = "Nemužete seslat toto kouzlo tímto smerem.",
	["cursed"] = "Prokleté schody jsou v ceste!",
	["banished"] = "Postavte se k Banished, abyste znicili precházející prokleté schody.",
	["blocked"] = "Tato križovatka je prokletá.",
	["infidel"] = "Postavte se k Neverícím a zrušte prokletí križovatek.",
	["admiral"] = "Postavte se k Admirálum a zrušte prokletí križovatek.",
	["nostairs"] = "Nejsou zde žádné schody.",
	["noground"] = "Toto kouzlo nelze seslat na úrovni zeme.",
	["oddonly"] = "Toto kouzlo nelze seslat na této úrovni.",
	["reveal"] = "Odhalili jste neviditelné schody!",
	["keeperrig"] = "Schody se pohybují!",
	["hackerrig"] = "Schody se pokazily!",
	["jokerrig"] = "Schody se prevrátily!",
	["wickedrig"] = "Schody se hroutí!",
	["spectrerig"] = "Schody mají duchy!",
	["notspectrerig"] = "Schody NEJSOU duchy!",
	["patronrig"] = "Obdrželi jste 1 manu, laskave od %s!",
	["notpatronrig"] = "Obdrželi jste 1 manu, s laskavým svolením (hrác odešel)!",
	["thiefrig"] = "%s ukradl 1 manu!",
	["mythiefrig"] = "Ukradli jste 1 manu od %s",
	["notthiefrig"] = "%s už není zlodej - žádná mana ukradená.",
	["leftthiefrig"] = "Thief opustil hru – žádná mana nebyla ukradena.",
	["hereticrig"] = "Byli jste posedlí!",
	["archonrig"] = "Fázový teleport!",
	["drifterrig"] = "Schody se tocí!",
	["noabove"] = "Prímo nahore nebyly nalezeny žádné schody.",
	["noblink"] = "Pres blokující schody mužete pouze mrknout.",
	["noblink2"] = "Nemužete mrkat na mostech a sehnout ze schodu.",
	["linklimit"] = "Na odkazech lze provádet pouze \"nad kouzly\".",
	["new20pass"] = "Limit many zvýšen!",
	["newchampass"] = "Nyní mužete zmenit orientaci behem stoupání!",
	["newspectrepass"] = "Nyní se mužete stát SPECTRE!",
	["charreset"] = "Eliminace - resetována postava.",
	["chamtutorial"] = "V tutoriálu nemužete použít CHAMELEONA!",
	["champossessed"] = "Nemužete používat chameleona, když jste posedlí.",
	["chamspell"] = "Nejprve prosím spustte nebo zrušte aktuální kouzlo.",
	["morphpossessed"] = "Když jste posedlí, nemužete zmenit zarovnání.",
	["nocode"] = "Nejprve zadejte kód.",
	["invalid"] = "Tento kód je neplatný.",
	["old"] = "Tento kód již není aktivní.",
	["accepted"] = "Kód prijat.",
	["tryspectre"] = "Spectre odemcen na 10 minut! Neopouštejte server.",
	["endspectre"] = "Spectre demo skoncí za 1 minutu!",
	["trycham"] = "Chameleon odemcen na 10 minut! Neopouštejte server.",
	["endcham"] = "Chameleon demo skoncí za 1 minutu!",
	["trymana"] = "Vetší úložište odemknuto na 10 minut! Neopouštejte server.",
	["endmana"] = "Ukázka vetšího úložište skoncí za 1 minutu!",
	["used"] = "Kód již byl použit.",
	["tooshort"] = "Vaše zpráva byla príliš krátká a nebyla odeslána.",
	["sent"] = "Vaše zpráva byla úspešne odeslána, dekujeme.",
	["noreshuffle"] = "Nejprve zvolte režim preskupení!",
	["oneoverload"] = "Nemužete mít aktivních více pretížení many.",
	["overstarted"] = "Aktivovali jste Pretížení Many!",
	["overended"] = "Pretížení Many skoncilo.",
	["2minshare"] = "Vyžaduje se alespon 2 many...",
	["noshare"] = "Žádní okolní hráci, kterí by dostávali manu...",
	["noinf"] = "Nemužete sdílet nekonecné množství many!",
	["toomuch"] = "%s má maximum many!",
	["shared"] = "Mana sdílená s %s!",
	["received"] = "%s s vámi sdílí trochu many!",
	["muted"] = "% je nyní ztlumený.",
	["unmuted"] =  "%s je nyní odzlutmený.",
	["kicked"] = "%s dostal kick!",
	["banned"] = "%s dostal ban!",
	["mekicked"] = "%s vás vykopl ze svého serveru.",
	["mebanned"] = "%s vám zakázal prístup na svuj server.",
	["permban"] = "%s vám zakázal prístup k této hre.",
	["kick"] = "%s vás vyhodil ze hry.",
	["48ban"] = "%s vám zakázal prístup na 48 hodin.",
	["exiled"] = "Máte zakázán prístup na tento soukromý server! TOTO NENÍ ZÁKAZ HRY",
	["permbanned"] = "Máte zakázáno hrát tuto hru. (Zkrátka ban, rip)",
	["timeout"] = "Tvuj ban vyprší v: %02i hodin a %02i minut.",
	["notinrace"] = "Behem závodu nemužete prepnout do nekonecného režimu!",
	["notinreg"] = "Behem regenerace nelze prepnout nekonecný režim!",
	["infinite"] = "Server je nyní v nekonecném režimu!",
	["classic"] = "Server je nyní v klasickém režimu!",
	["casual"] = "Príležitostní hráci nyní mohou kouzlit!",
	["nocasual"] = "Príležitostní hráci již nemohou kouzlit",
	["purge"] = "Ocista nyní zpusobí regeneraci v klasickém režimu!",
	["nopurge"] = "Ocista již nebude zpusobovat regeneraci v klasickém režimu!",
	["noevens"] = "Rovné úrovne jsou nyní omezeny",
	["evens"] = "Sudé úrovne jsou nyní plne povoleny",
	["orbmoves"] = "Endgame Orb se nyní bude pohybovat náhodne sám!",
	["orbstopped"] = "Endgame Orb se již nebude pohybovat sám od sebe!",
	["infreg"] = "Schodište se po nekonecném kole regeneruje!",
	["noinfreg"] = "Schodište se po nekonecném kole neregeneruje!",
	["drones"] = "Malé drony povoleny!",
	["nodrones"] = "Malé drony zakázány!",
	["dronefix"] = "Drony obnoví schody!",
	["nodronefix"] = "Drony schody neobnoví!",
	["droneunlock"] = "Drony odstraní prokleté križovatky!",
	["nodroneunlock"] = "Drony neodstraní prokleté križovatky!",
	["droneuncurse"] = "Drony obnoví prokleté schody!",
	["nodroneuncurse"] = "Drony neobnoví prokleté schody",
	["dronemove"] = "Drony budou ve výchozím režimu pohybovat po schodech!",
	["nodronemove"] = "Drony se ve výchozím režimu nebudou pohybovat po schodech!",
	["dronespin"] = "Drony budou ve výchozím režimu tocit schody!",
	["nodronespin"] = "Drony nebudou ve výchozím režimu tocit schody!",
	["noinput"] = "Zadejte hodnotu!",
	["nonumber"] = "Zadejte prosím císlo!",
	["notrace"] = "Behem závodu nemužete menit úrovne veží!",
	["notultimate"] = "Behem konecného kouzla nemužete menit úrovne veží!",
	["notregen"] = "Behem regenerace nemužete menit úrovne veže!",
	["wait"] = "Úrovne veží se mení, cekejte prosím...",
	["duration"] = "Délka závodu zmenena (neovlivní aktuální závod)",
	["init"] = "Pocátecní cas nekonecného intervalu se zmenil",
	["reduction"] = "Zmenila se doba nekonecné redukce",
	["mininf"] = "Minimální cas nekonecného intervalu se zmenil",
	["cooldown"] = "Cooldown zarízení a kouzla události se zmenil",
	["speed"] = "Rychlost malých dronu se zmenila",
	["spin"] = "Doba trvání odlévání malých dronu se zmenila",
	["max"] = "Maximální cílový pocet schodišt se zmenil",
	["min"] = "Minimální cílový pocet schodišt se zmenil",
	["curse"] = "Šance na schody dronu se zmenila",
	["block"] = "Šance na prunik kletby dronu se zmenila",
	["lock"] = "Nyní nemužete kouzlit",
	["ultwait"] = "Probíhá další konecné kouzlo. Prosím, cekejte.",
	["regwait"] = "Dokud se Schodište regeneruje, nemužete sesílat zarízení a události.",
	["coolwait"] = "Nyní nemužete nahazovat návazce a události, cekejte prosím",
	["notfound"] = "Schody nenalezeny.",
	["normalrig"] = "Toto kouzlo funguje pouze na normálních a zfalšovaných schodech.",
	["locked"] = "Ty schody jsou zamcené.",
	["nocursedblink"] = "Nemužeš mrkat kolem prokletých schodu.",
	["isblocked"] = "Tato križovatka je již prokletá.",
	["cantblock"] = "Nemužu nadávat, jsou tady schody. (muže být neviditelný)",
	["cantblock2"] = "Nelze proklínat, v ceste jsou krížící se schody. (muže být neviditelný)",
	["noway"] = "V ceste stojí schody. (muže být neviditelný)",
	["noway2"] = "V ceste jsou prechodové schody. (muže být neviditelný)",
	["noplatform"] = "V tomto smeru nebylo nalezeno žádné nástupište.",
	["nopass"] = "Pruchod lze vytvorit pouze na vnejších platformách.",
	["pass"] = "Pruchod už tady je.",
	["link"] = "Odkaz je již zde.",
	["outdrift"] = "Vnejší drift lze vytvorit pouze na vnejších platformách.",
	["cantgate"] = "Tento smer je zablokován.",
	["wall"] = "Stena už tady je.",
	["nocurse"] = "Pouze normální, prokleté nebo zmanipulované schody mohou být prokleté/neprokleté.",
	["nogate"] = "Tato schodište nejsou vrata.",
	["noghost"] = "Pouze strašidelné schody mohou být zbaveny duchu.",
	["noflip"] = "Prevrátit lze pouze normální, prevrácené nebo zmanipulované schody.",
	["prodigy"] = "Postavte se na Prodigy, abyste prekonali brány.",
	["wrongsplit"] = "Další brána musí být v herním prostoru.",
	["blockedplit"] = "Nelze vytvorit rozdelení, cílový prusecík je prokletý.",
	["cursedtarget"] = "V té destinaci jsou prokleté schody.",
	["lockedsplit"] = "Rozdelení zatím nelze vytvorit, ostatní schody jsou zamcené.",
	["failedgate"] = "Vytvorení rozdelení se nezdarilo.",
	["nomove"] = "Posouvat lze pouze normální, prevrácené nebo zmanipulované schody.",
	["controller"] = "Postavte se na Ovladace, abyste posunuli prevrácené schody.",
	["wrongmove"] = "Schody nelze presunout mimo herní plochu.",
	["blockedmove"] = "Nemohu se pohybovat po schodech, cílová križovatka je prokletá.",
	["lockedmove"] = "Po schodech zatím nelze pohnout, blokující schody jsou zamcené.",
	["normal"] = "Tyto schody jsou normální.",
	["nomad"] = "Postavte se k Nomadovi a roztocte driftované schody.",
	["hijacker"] = "Postavte se na únosce a ukradnete všechny neprokleté schody.",
	["nocursesteal"] = "Prokleté schody se nedají ukrást.",
	["lockedinter"] = "Tato križovatka je uzamcena.",
	["possessed"] = "Když jste posedlí, nemužete používat kouzla.",
	["lockedspell"] = "Toto kouzlo je uzamceno!",
	["unlocked"] = "Kouzlo odemceno!",
	["nomana"] = "Nedostatek many!",
	["spelllock"] = "Nyní nemužete kouzlit",
	["notokens"] = "Nedostatek tokenu!",
	["nothere"] = "Toto kouzlo nemužete v tutoriálu použít.",
	["onlyracers"] = "Kouzla mohou kouzlit pouze závodní hráci.",
	["cancelfirst"] = "Nejprve musíte zrušit aktuální kouzlo...",
	["stashfull"] = "Vaše skrýš na schodech je plná.",
	["stashempty"] = "Pred sesláním tohoto kouzla musíte ukrást schody.",
	["notdefault"] = "Drony se musí nejprve vrátit do výchozího režimu. Prosím, cekejte.",
	["cooldownwait"] = "Nyní nemužete odlévat soupravy a události, pockejte prosím %d sekund.",
	["nospellsnow"] = "Momentálne nemužete kouzlit.",

	["unknown"] = "Neznámá chyba :(",

}

module.serverbroadcast = {
	["pranked"] = "%s vyprankoval %s!",
	["found"] = "%s našel %s neviditelné schody!",
	["disco"] = "%s si užívá %s's disco hudbu.",
	["obby"] = "%s se pokouší o skákacku %s.",
	["default"] = "Drony jsou nyní zpet ve výchozím režimu.",
	["regen"] = "Schodište se regeneruje.",
	["done"] = "Regenerace je dokoncena.",
	["union"] = "%s se spojil s duchem!",
	["eliminated"] = "%s byl eliminován.",
	-- careful when inserting the player's name, might cause problems and might not be understood by czech people
	["won"] = "%s vyhrál závod!",
	["falsestart"] = "Chybný start",
	["countdown"] = "Závod za %d sekund!",
	["2min"] = "Pro klasický závod jsou potreba minimálne dva hráci!",
	["noplayers"] = "Žádní závodní hráci, nekonecný režim se nespustí!",
	["nojoin"] = "Závod je nyní uzavren - žádní noví hráci se nemohou pripojit.",
	["allfalse"] = "Všichni hráci mají Chybní Start!",
	["safety"] = "Úrovne veží se zmenily, tento závod nezacne.",
	["leader"] = "%s se ujal vedení!",
	["toolate"] = "Nikdo nedosáhl vrcholu vcas!",

}

module.localfeedback = {

	["cancel"] = "Nejprve zrušte jiné kouzlo!",
	["nomana"] = "Nedostatek many!",
	["notokens"] = "Nedostatek tokenu!",
	["unlocked"] = "Kouzlo odemceno!",
	["maxmana"] = "Vaše mana je již na maximu!",
	["nopurchase"] = "V tutoriálu nemusíte kupovat manu!",
	["hascham"] = "Chameleon Pass již máte!",
	["hasspectre"] = "Spectre Pass již máte!",
	["hasmana"] = "Již máte Vetší Úložiste gamepass!",
	["nomuggle"] = "Myslel sis, že pro Muggla existují tajná konecná kouzla, ale nebyla.",
	["nocham"] = "Mysleli jste si, že pro Chameleona existují tajná konecná kouzla, ale nebyla.",
	["nonone"] = "Mysleli jste si, že existují tajná ultimátní kouzla pro Žádné, ale nebyla.",
	["nounlocks"] = "Odemknete všechna základní kouzla a získejte prístup ke konecným kouzlum!",
	["onetoken"] = "Byl vám udelen jeden %s žeton pravopisu!",
	["moretokens"] = "Bylo vám udeleno nekolik %s žetonu kouzel!",
	["music"] = "Hudba se úspešne zmenila.",
	["nomusic"] = "Hudbu se nepodarilo nacíst.",
	--this is teleport to other tower
	["noteleport"] = "Teleport se nezdaril!", 
	["norefresh"] = "Zatím nemužete obnovit.",

}

module.switchon = {

	["JOKER"] = "Neviditelné schody už neodhalíte.",
	["WICKED"] = "Pod Wicked Rigs již nespustíte.",
	["KEEPER"] = "Keeper Plochy pod sebou již nespustíte.",
	["SPECTRE"] = "Spectre Plochy pod sebou již nespustíte.",
	["HACKER"] = "Hacker Plochy pod sebou již nespustíte.",
	["ARCHON"] = "Teleportují vás pouze vzestupné rozdelení.",
	["DRIFTER"] = "Drifter Plochy pod sebou již nespustíte.",

}

module.switchoff = {

	["JOKER"] = "Nyní odhalíte neviditelné schody.",
	["WICKED"] = "Nyní spustíte Wicked Plochy pod sebou.",
	["KEEPER"] = "Nyní spustíte Keeper Plochy pod sebou.",
	["SPECTRE"] = "Nyní spustíte Spectre Plochy pod sebou.",
	["HACKER"] = "Nyní spustíte Hacker Plochy pod sebou.",
	["ARCHON"] = "All except down splits will teleport you.",
	["DRIFTER"] = "Nyní spustíte Drifter Plochy pod sebou.",
}

module.events = {
	["patronrigevent"] = "PROBÍHÁ PATRONOVANÁ VÝTAŽKA",
	["patronevent"] = "PROBÍHÁ PRETÍŽENÍ SCHODIŠT",
	["patronaltevent"] = "UDÁLOST ZMENŠOVÁNÍ",
	["jokerrigevent"] = "JOKER RIG PROBÍHÁ",
	["jokeraltevent"] = "AKCE FLIPPING",
	["jokerevent"] = "AKCE PLÁŠT",
	["wickedrigevent"] = "WICKED PLOCHA PROBÍHÁ",
	["wickedaltevent"] = "UDÁLOST OCISTY",
	["wickedevent"] = "UDÁLOST ZNICIT",
	["keeperrigevent"] = "PROBÍHAJÍCÍ VÝTAŽNÍK",
	["keeperevent"] = "OBNOVOVACÍ AKCE",
	["keeperaltevent"] = "AKCE RESTAURACE",
	["spectrerigevent"] = "SPECTRE PLOCHA PROBÍHÁ",
	["spectreevent"] = "AKCE FANTOM",
	["spectrealtevent"] = "AKCE DUCHA",
	["hackerrigevent"] = "PROBÍHÁ VYBAVENÍ HACKERU",
	["hackerevent"] = "ESKALACNÍ UDÁLOST",
	["hackeraltevent"] = "AKCE PORUŠENÍ",
	["thiefrigevent"] = "PROBÍHÁ VYBAVENÍ ZLODEJE",
	["thiefevent"] = "AKCE ROVINNÝ POZEMEK",
	["thiefaltevent"] = "UDÁLOST BYPASS",
	["hereticrigevent"] = "PROBÍHÁ HERTICKÁ PLOCHA",
	["hereticevent"] = "UDÁLOST SCHIZMA",
	["hereticaltevent"] = "UDÁLOST ZATRACENÍ",
	["archonrigevent"] = "ARCHONOVA PLOCHA PROBÍHÁ",
	["archonevent"] = "ROZDELENÁ AKCE",
	["archonaltevent"] = "AKCE DIVIZE",
	["drifterevent"] = "AKCE DRIFT",
	["drifteraltevent"] = "VÝTAHOVÁ UDÁLOST",
	["drifterrigevent"] = "PROBÍHÁ DRIFTER TAGA",
	["chameleonrigevent"] = "PROBÍHÁ CHAMELEONSKÝ VÝTAH",

}

module.finished = {

	["patronrigevent"] = "PLOCHA PATRONA JE KOMPLETNÍ",
	["patronevent"] = "PRETÍŽENÍ SCHODU UKONCENO",
	["patronaltevent"] = "UDÁLOST ZMENŠENÍ UKONCENA",
	["jokerrigevent"] = "PLOCHA JOKERA JE KOMPLETNÍ",
	["jokeraltevent"] = "FLIPPING UDÁLOST UKONCENA",
	["jokerevent"] = "AKCE PLÁŠT UKONCENA",
	["wickedrigevent"] = "PLOCHA WICKEDA JE KOMPLETNÍ",
	["wickedaltevent"] = "UKONCENÍ UDÁLOSTI OCISTY",
	["wickedevent"] = "AKCE ZNICIT UKONCENA",
	["keeperrigevent"] = "PLOCHA KEEPERA JE KOMPLETNÍ",
	["keeperevent"] = "OBNOVENÍ AKCE UKONCENA",
	["keeperaltevent"] = "AKCE RESTAURACE UKONCENA",
	["spectrerigevent"] = "PLOCHA SPECTRE JE KOMPLETNÍ",
	["spectreevent"] = "AKCE PHANTOM UKONCENA",
	["spectrealtevent"] = "AKCE DUCHA UKONCENA",
	["hackerrigevent"] = "PLOCHA HACKERA JE KOMPLETNÍ",
	["hackerevent"] = "UDÁLOST ESKALACE UKONCENA",
	["hackeraltevent"] = "UDÁLOST NA PORUŠENÍ UKONCENA",
	["thiefrigevent"] = "PLOCHA THIEFA JE KOMPLETNÍ",
	["thiefevent"] = "AKCE ROVINNÝ POZEMEK UKONCENA",
	["thiefaltevent"] = "AKCE OBCHÁZENÍ UKONCENA",
	["hereticrigevent"] = "PLOCHA HERETICA JE KOMPLETNÍ",
	["hereticevent"] = "UDÁLOST ROZCHIZMU UKONCENA",
	["hereticaltevent"] = "UDÁLOST ZATRACENÍ UKONCENA",
	["archonrigevent"] = "PLOCHA ACHRONA JE KOMPLETNÍ",
	["archonevent"] = "AKCE ROZDELENÍ UKONCENA",
	["archonaltevent"] = "AKCE DIVIZE UKONCENA",
	["drifterevent"] = "AKCE DRIFTU UKONCENA",
	["drifteraltevent"] = "AKCE VÝTAHU UKONCENA",
	["drifterrigevent"] = "PLOCHA DRIFTERA JE KOMPLETNÍ",
	["chameleonrigevent"] = "PLOCHA CHAMELEONA JE KOMPLETNÍ",

}

module.timedspells = {
	["summoner"]  = "%s práve seslal kouzlo PREDVOLÁNÍ!",
	["flipper"]  = "%s práve seslal kouzlo OTÁCECE!",
	["bender"]  = "%s práve seslal kouzlo LÁMACE!",
	["ascension"]  = "%s práve seslal kouzlo SLEZENÍ!",
	["traveller"]  = "%s práve seslal TRIPT kouzlo!",
	["speedup"]  = "%s práve seslal kouzlo HACK RYCHLOSTI!",
	["heist"]  = "%s práve seslal kouzlo LOUPEŽ!",
	["splitter"]  = "%s práve seslal kouzlo ROZDELOVANÍ!",
	["riser"]  = "%s práve seslal kouzlo VSTUPOVACE!",
	["malediction"]  = "%s práve seslal kouzlo PROKLETÍ!",

}

module.eventspells = {

	["patronrigevent"]  = "%s práve zmanipuloval všechny normální schody s DÁRKEM MANY!",
	["patronaltevent"]  = "%s práve zmenšil všechny normální schody!",
	["patronevent"]  = "%s má práve pretíženou vež schody!",
	["jokeraltevent"]  = "%s práve prevrátil všechny normální schody!",
	["jokerrigevent"]  = "%s práve zmanipuloval všechny normální schody kouzlem OTOCENÍ!",
	["jokerevent"]  = "%s práve skryl všechny normální schody!",
	["wickedrigevent"]  = "%s práve zmanipuloval všechny normální schody kouzlem ZNICENÍ!",
	["wickedaltevent"]  = "%s práve znicil VŠECHNY schody!",
	["wickedevent"]  = "%s práve znicil všechny normální schody!",
	["keeperrigevent"]  = "%s práve zmanipuloval všechny normální schody kouzlem NÁHODNÝ POHYB!",
	["keeperevent"]  = "%s práve náhodne presunul všechny normální schody!",
	["keeperaltevent"]  = "%s práve obnovil všechny schody!",
	["spectrerigevent"]  = "%s práve zmanipuloval všechny normální schody s 50% šancí na duchy!",
	["spectreevent"]  = "%s práve fantom presunul všechny normální schody!",
	["spectrealtevent"]  = "%s práve odkryl všechny normální schody!",
	["hackerrigevent"]  = "%s práve zmanipuloval všechny normální schody kouzlem GLITCH!",
	["hackerevent"]  = "%s zmenila všechny normální schody na eskalátory!",
	["hackeraltevent"]  = "%s zmenila všechna normální schodište na eskalátory!",
	["thiefrigevent"]  = "%s zmanipuloval všechny normální schody pomocí UKRADNÍ MANA!",
	["thiefevent"]  = "%s srovnal se zemí všechny normální schody!",
	["thiefaltevent"]  = "%s vytvoril obchvat na všech schodech!",
	["newmode"]  = "%s práve prepnul drony do režimu %s!",
	["archonrigevent"]  = "%s práve zmanipuloval všechny normální schody kouzlem FÁZE!",
	["archonevent"]  = "%s práve náhodne rozdelil všechny normální schody!",
	["archonaltevent"]  = "%s práve vertikálne rozdelil všechny normální schody!",
	["drifterrigevent"]  = "%s práve zmanipuloval všechny schody kouzlem OTÁCENÍ!",
	["drifterevent"]  = "%s práve náhodne driftoval všechny normální schody!",
	["drifteraltevent"]  = "%s práve zvedl všechny normální schody!",
	["hereticrigevent"]  = "%s práve zmanipuloval všechny normální schody posedlým kouzlem!",
	["hereticevent"]  = "%s práve schizmatizoval všechny normální schody!",
	["hereticaltevent"]  = "%s práve proklel všechny normální schody!",
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
	["chameleonrigevent"]  = "%s práve zmanipuloval všechny normální schody tajemným kouzlem!"
}

--ERRATA

--stuff that was wrong
module.gui.settings["rank"] = "Ukažte své celkové poradí na billboardu s avatarem"
module.spells.descriptions["link"] = "Toto kouzlo vytvorí energetický most mezi platformami po dobu 60 sekund. Odkazy nejsou zespodu hmatatelné. Poradí tvurci prodlouží cas na 120 sekund."
module.spells.descriptions["outdrift"] = "Toto kouzlo bude kroužit pod plošinou kolem celé herní oblasti na stejné úrovni. Lze vrhnout pouze na vnejší platformy."
module.spells.descriptions["indrift"] = "Toto kouzlo vytvorí docasné surfovací prkno, které vás presune na plošinu ve smeru, který si zvolíte."
module.spells.descriptions["move"] = "Toto kouzlo posune schody vodorovným zpusobem a znicí všechny schody v ceste. Po seslání se na schodech objeví šipky, které vás vyzve k výberu smeru. Schodište nelze presunout mimo herní plochu. Postavte se na Ovladace, abyste mohli presunout prevrácené schody."
module.spells.descriptions["rotate"] = "Toto kouzlo otocí schody vodorovným zpusobem a znicí všechny schody v ceste. Po seslání se na schodech objeví šipky, které vás vyzve k výberu smeru. Schodište nelze otácet mimo herní plochu. Postavte se na Ovladace, abyste mohli presunout prevrácené schody."

--stuff that was missing
module.static["vr_5"] = "Pomocí levého palce se mužete pohybovat vpred nebo vzad. Naklonením levého palce do strany se budete místo toho pohybovat doleva a doprava."
module.gui.ranks["next"] = "Kliknutím na šipku vpravo zkontrolujte požadavky na další hodnost."
module.serverfeedback["admiral2"] = "Odemknete admirála, aby proklel Schody"
module.serverfeedback["annihilator"] = "Odemkneete Annihilátora a znicte Zacarované Schody."
module.serverfeedback["disciple"] = "Odemknete Disciple, abyste znicili rozdelení platformy."
module.serverfeedback["toponly"] = "'Zavolat Orb' lze seslat pouze na nejvyšší úrovni."
module.serverbroadcast["go"] = "BEŽ!"
module.serverbroadcast["over"] = "Závod Skoncil!"
module.tutorial["tut_small_init"] = "Vyskoc pro tutoriál"

module.static["dailies"] = "DNEŠNÍ REKORDY"
module.static["most_climbs"] = "NEJVÍCE VYSTOUPÁNÍ"
module.static["most_wins"] = "NEJVÍCE VÝHER ZÁVODU" 

module.events["regen"] = "Schodište se regerenuje"
module.finished["regen"] = "Regenerace je hotova"

module.spells.extras = {

	["Prompt"] = "Kliknutím na kouzlo níže se dozvíte, jak jej používat",
	["Title1"] = "Základní kouzla",
	["Title2"] = "Unikátní ultimátní kouzla",
	["Title3"] = "Sdílená ultimátní kouzla",
	["ManaCost"] = "Mana potrebna: %s", 
	["TokenCost"] = "Potrebno tokenu: %s", 
	["Special"] = "Speciální požadavky: %s",
	["Execution"] = "Aplikace: %s",
	["Description"] = "Popis: %s",
	["basic"] = "Základní",
	["ultimate"] = "Ultimátní",
	["unlock"] = "0 (3 k odemknutí)",
	["none"] = "Žádné speciální požadavky",
}

module.gui.basic.jumpdelay = "limit mezi skokem"
module.gui.basic.dancetime = "CAS NA TANEC!"

--mana bar and mana messages - those will appear on the mana bars
module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "DUCH",
	["spirit"] = "DUŠE", --only for spirit spectres
	["welcome"] = "VÍTEJ",
	["drones"] = "DRONY",
	["orb"] = "ORB",
	["refill"] = "NAPLNIT", --for all 2nd rank bonuses
	["overload"] = "PRETÍŽIT",
	["steal"] = "UKRÁST",
	["gift"] = "DAROVAT",
	["share"] = "PODELIT",
	["prank"] = "VYPRANKOVAT",
	["possession"] = "POSEDLOST",
	["ritual"] = "RITUÁL",
	["purge"] = "OCISTA",
	["blessing"] = "POŽEHNÁNÍ",
	["hack"] = "HACKNOUT",
	["stash"] = "SKRÝT",
	["backdoor"] = "ZADNÍ VRÁTKA",
	["chamber"] = "MÍSTNOST",
	["base"] = "ZÁKLADNA",
	["circus"] = "CIRKUS",
	["shelter"] = "PRÍSTREŠÍ",
	["haven"] = "ÚTOCIŠTE",
	["study"] = "STUDOVAT",
	["nether"] = "PEKLO",
	["guild"] = "SPOLEK",
	["nexus"] = "NEXUS",
	["oasis"] = "OÁZA",
}

module.gui.hints = {
	["bcancel"] = "B ke zrušení", --xbox b
	["acancel"] = "Zmáckni znovu k ukoncení",
	["ocancel"] = "Zruš ostatní kouzla nejdrív", 
}

module.gui.gameover.extras = {

	["noobs"] = "Tutoriály jsou pro nooby!",
	["possessed"] = "Nenávidím Heretiky!",
	["new"] = "Nová?",
	["none1"] = "CO?",
	["none2"] = "Tahle hra..",
	["none3"] = "má kouzla?"

}

module.gui.gameover.raceplacements = {
	"VYHRÁL JSI ZÁVOD!",
	"DRUHÉ MÍSTO!",
	"TRETÍ MÍSTO!",
	"Jsi ctvrtý.",
	"Jsi pátý.",
	"Jsi šestý.",
	"Jsi sedmý.",
	"Jsi osmý.",
	"Jsi devátý.",
	"Jsi desátý.",
	"Jsi jedenáctý.",
	"Jsi dvanáctý.",
}

return module

