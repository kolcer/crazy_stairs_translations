
local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "SÌ",
	["no"] = "NO",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "PREDEFINITO",
	["validate"] = "CONVALIDA",
	["play"] = "GIOCA",
	["skip"] = "EVITA\nTUTORIAL",
	["loading"] = "CARICAMENTO, ATTENDI QUALCHE SECONDO...",
	["mode"] = "MODALITÀ\n%s",
	["cd"] = "SORTILEGIO\nIN CARICAMENTO"
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

	["Drones"] = "IMPOSTAZIONI DEI DRONI",
	["DronesReadOnly"] = "INFORMAZIONI SUI DRONI (sola lettura)",
	["DroneEnabled"] = "Droni abilitati",
	["DroneFix"] = "I droni possono ripristinare le scale alterate",
	["DroneRemove"] = "I droni possono rimuovere i malefici",
	["DroneUnCurse"] = "I droni possono ripristinare le scale maledette",
	["DroneMove"] = "I droni possono spostare le scale in modalità di default",
	["DroneSpin"] = "I droni possono ruotare le scale in modalità di default",
	["DroneSpeed"] = "Velocità di movimento (piano/secondo)",
	["DroneDelay"] = "Intervallo tra gli incantesimi (secondi)";
	["DroneMax"] = "Limite massimo di scale necessarie (i droni distruggeranno le scale qualora tale soglia venisse superata)",
	["DroneMin"] = "Numero minimo di scale obbligatorie (i droni provvederanno a rigenerare più scale nel momento in cui non fossero sufficienti)",
	["DroneBlock"] = "Probabilità che i droni creino malefici (percentuale)",
	["DroneCurse"] = "Probabilità che i droni creino scale maledette (percentuale)",

	["Tower"] = "IMPOSTAZIONI DELLA TORRE",
	["TowerReadOnly"] = "INFORMAZIONI SULLA TORRE (sola lettura)",
	["InfMode"] = "Modalità senza fine (opzione disabilitata durante le gare e la rigenerazione)",
	["CasualPlayers"] = "I non corridori possono usare gli incantesimi",
	["Regeneration"] = "Abilita la rigenerazione in seguito all'uso di Evento Annichilazione di Wicked (non funziona nella modalità senza fine)",
	["EvenLevels"] = "Vincola le piattaforme sui piani pari",
	["OrbMoves"] = "La sfera finale si muove",
	["InfRegeneration"] = "Abilita rigenerazione in seguito a: creazione di un nuovo server (e) alterazione del numero di piani della torre (e) conclusione corsa senza fine",
	["TowerLevels"] = "Piani della torre (alternativamente, piani attivi della torre senza fine). L'opzione è disabilitata durante le gare e la rigenerazione",
	["RaceDuration"] = "Durata massima delle gare. La corsa attuale non sarà affetta (secondi)",
	["InfStart"] = "Ogni quanti secondi creare nuovi livelli durante la modalità senza fine (2 nuovi livelli per intervallo) (secondi)",
	["InfReduction"] = "Riduzione di tempo per la creazione di nuovi livelli (ogni lasso di tempo dura sempre meno di...) (secondi)",
	["InfMin"] = "A lungo andare, non ridurre più i divari di tempo qualora raggiungessero... (secondi)",
	["Cooldown"] = "Tempo di attesa prima di poter riutilizzare un sortilegio evento o un rig",


}

module.gui.shop = {

	["title"] = "NEGOZIO SCALEMANIA",

	["chameleon"] = "Il Chameleon pass permette di assumere sembianze di più classi durante una scalata, proprio come un vero camaleonte.",
	["spectre"] = "Gli incantesimi di Spectre si basano fondamentalmente sul teletrasporto, meglio usato in solitaria.",
	["mana"] = "Aumenta di 10 il limite massimo di Mana che puoi trasportare.",

	["3tokens"] = "Equivale allo sblocco di 1 incantesimo, o all'uso di almeno 3 sortilegi.",
	["30tokens"] = "Equivale allo sblocco di 10 incantesimi, o all'uso di almeno 30 sortilegi.",
	["300tokens"] = "Sufficiente per sbloccare tutti gli incantesimi, con 153 gettoni extra.",

	--below messages apper on mouse hover
	["3TOKENS"] = "3 Gettoni Multiuso (R$%d)",
	["30TOKENS"] = "30 Gettoni Multiuso (R$%d)",
	["300TOKENS"] = "300 Gettoni Multiuso (R$%d)",
	["SPECTRE PASS"] = "Spectre pass (R$%d)",
	["MANA PASS"] = "Contenitore Mana Migliorato (R$%d)",
	["CHAMELEON PASS"] = "Chameleon pass (R$%d)",

}

module.gui.spellbar = {

	["share"] = "CONDIVIDI\nMANA",
	["nocasual"] = "SOLO AI CORRIDORI È CONCESSO L'USO DI INCANTESIMI",

} 

module.gui.stats = {

	["total"] = "Ascese conseguite: %d / Primi posti: %d",
	["class"] = "Scalate praticate con %s: %d",
	["best"] = "Miglior tempo con %s: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "SEI POSSEDUTO! (colleziona Mana per liberarti)",
	["released"] = "SEI STATO RILASCIATO",
	["timesup"] = "tempo scaduto...",

}


module.gui.activatecham = {

	["title"] = "STAI PER USUFRUIRE DEL CHAMELEON PASS",
	["body"] = "Confermi di voler attivare il Chameleon pass?\nRimarrà attivo finchè l'ascesa in corso non avrà termine.",

}

module.gui.caceltimed = {

	["title"] = "INTERROMPI SORTILEGIO TEMPORANEO",
	["body"] = "Vuoi procedere all'annullamento del sortilegio in esecuzione? Non riceverai indietro i gettoni investiti.",

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
	["button"] = "CONVALIDA",

}

module.gui.gauges = {

	["prompt"] = "Esegui un salto per eseguire, premi nuovamente per annullare.",

	["found"] = "%d scale trovate (%.1f%% del totale)",
	["special"] = "%d sono alterate (%.1f%%)",
	["affected"] = "%d scale saranno affette (%.1f%%)",
	["cursed"] = "%d malefici trovati (%.1f%%)",
	["fill"] = "%d scale verranno generate (%.1f%%)",
	["purge"] = "%d oggetti verranno distrutti (%.1f%%)",
	["normal"] = "%d sono già normali (%.1f%%)",
	["restore"] = "%d scale saranno ripristinate (%.1f%%)",
	["bypass1"] = "%d maledizioni trovate (%.1f%%)",
	["bypass2"] = "%d scorciatoie già esistono (%.1f%%)",
	["bypass3"] = "%d scorciatoia verranno generate (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "JUKEBOX",

	["master"] = "VOLUME PRINCIPALE",
	["default"] = "(volume principale in uso)",
	["climb"] = "AUDIO SCALATA",
	["endgame"] = "AUDIO FINALE",
	["failed"] = "[errore nel caricamento]",

}

module.gui.results = {

	["title"] = "CLASSIFICA RISULTATI",

	["place"] = "POSIZIONE",
	["name"] = "NOME",
	["level"] = "PIANO PIÙ ALTO",
	["time"] = "TEMPO",
	["rank"] = "RANGO",
	["not"] = "N/A",
	[1] = "VINCITORE",
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

module.gui.ranks = {

	["title"] = "IL TUO RANGO",

	--none
	["none_1"] = "Nessuna classe selezionata!",
	["none_2"] = "Non puoi lanciare alcun incantesimo in questo stato.",
	["none_3"] = "Salta sopra un trasformatore (locati al centro della mappa) per selezionare una classe.",

	--shared
	["higher"] = "POSSIEDI UN RANGO PIÙ PRESTIGIOSO",
	["current"] = "RANGO ATTUALE",
	["lower"] = "RANGO BLOCCATO",

	["more"] = "Necessiti di %d ascese in più per ottenere questo rango.",
	["done"] = "Rango già sbloccato. Tutti gli effetti elencati precedentemente sono automaticamente inclusi nel rango attuale.",
	["max"] = "Ultimo rango raggiunto!\nIn totale hai completato %d scalate con %s.",



	["PATRON"] = {
		"Questo è il primo rango di PATRON.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità PATRON.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Generatore.",
		"La durabilità dei tuoi collegamenti è raddoppiata (120s).",
		"La durabilità dei tuoi portali è raddoppiata (120s).",
		"L'incantesimo Richiama Sfera adesso costa 2 Mana (da 3)",
		"Il sortilegio Generatore dura 30 secondi in più (90s).",
		"Solo ed esclusivamente quando sei a corto di Mana, puoi eseguire un salto sopra una piattaforma per ricevere in dono 1 Mana.",
		"Le Sfere Richiamate da te si muovono più velocemente del 100%.",
	}, 
	["JOKER"] = { 
		"Questo è il primo rango di JOKER.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità JOKER.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Ribaltatore.",
		"Sei immune agli effetti delle scale festose.",
		"Occhio vede, nulla sfugge. Puoi individuare le scale invisibili.\nOttieni una nuova impostazione (vicino all'icona spettatore) che ti permette di non rivelare le scale invisibili quando ci cammini sopra.",
		"Puoi distinguere le scale originali da quelle illusorie, lo stesso si applica sulle piattaforme.",
		"Il sortilegio Ribaltatore dura 30 secondi in più (90s).",
		"Camminare sulle scale illusorie non è mai stato più semplice.",
		"Ricevi 1 Mana quando qualcuno cade nelle tue trappole (ciò non si applica se lo stesso giocatore ricade nella stessa trappola).",
	},
	["WICKED"] = {
		"Questo è il primo rango di WICKED.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità WICKED.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Imperatore.",
		"Camminare sulle scale frantumate non è mai stato più semplice.",
		"L'incantesimo Demolisci Scale adesso è gratuito.",
		"Vieni ricompensato con 1 Mana quando demolisci le scale alterate.",
		"Il sortilegio Imperatore dura 30 secondi in più (90s).",
		"Ottieni una nuova impostazione (vicino all'icona spettatore) che permette di rendere inefficaci le scale affette da WICKED RIG quando ci cammini sopra.",
		"Puoi distruggere le scale maledette come se fossero delle normali scale.",
	},
	["SPECTRE"] = { 
		"Questo è il primo rango di SPECTRE.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità SPECTRE.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Nomade.",
		"Ottieni 1 Mana aggiuntivo quando collezioni cristalli di Mana con la tua controfigura.", 
		"L'incantesimo Solidifica adesso è gratuito.",
		"La tua controfigura può toccare la sfera finale al tuo posto.",
		"Il sortilegio Nomade dura 30 secondi in più (90s).",
		"Ottieni una nuova impostazione (vicino all'icona spettatore) che permette di rendere inefficaci le scale affette da SPECTRE RIG quando ci cammini sopra.",
		"Camminare sulle scale fantasma non è mai stato più semplice.",
	},
	["CHAMELEON"] = { 
		"Questo è il primo rango di CHAMELEON.\nSono incluse le facilitazioni della classe imitata, se sbloccate.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità CHAMELEON.",
		"Le trasformazioni durano molto di meno.",
		"Gli altri giocatori non sono più in grado di comprendere quale classe stai imitando quando selezioni un incantesimo.",
		"Le scale normali e quelle illusorie hanno lo stesso colore viola durante la loro generazione.",
		"Puoi lanciare nuovi incantesimi proibiti: Sprofonda Scale, Ponte Levatoio e Incrocia Scale.",
		"Puoi lanciare nuovi incantesimi proibiti: Distorci Scale e Ponte Levatoio in Alto.",
		"Le trasformazioni sono perfettamente fluide.",
		"Puoi lanciare un nuovo incantesimo: CHAMELON RIG (richiede Gettoni Multiuso).",
	},
	["MUGGLE"] = { 
		"Questo è il primo rango di MUGGLE.\nContinua a giocare per sbloccarne altri.",
		"Ricarica salto ridotta di 0.125 secondi.",
		"Ricarica salto ridotta di 0.25 secondi.",
		"Ricarica salto ridotta di 0.375 secondi.",
		"Ricarica salto ridotta di 0.5 secondi.",
		"Velocità di movimento aumentata del 10%.",
		"Velocità di movimento aumentata del 20%.",
		"Velocità di movimento aumentata del 30%.",
		"Potenza di salto aumentata del 20%.",
	},
	["KEEPER"] = {
		"Questo è il primo rango di KEEPER.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità KEEPER.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Ascensione.",
		"Il sortilegio KEEPER RIG e l'incantesimo Spostamento Randomico hanno lo 0% di probabilità di fare sprofondare le scale, quando attivate da te.",
		"Puoi muovere a comando le scale ribaltate da JOKER.",
		"L'incantesimo Risana Scale adesso è gratuito.",
		"Il sortilegio Ascensione dura 30 secondi in più (90s).",
		"Ottieni una nuova impostazione (vicino all'icona spettatore) che permette di rendere inefficaci le scale affette da KEEPER RIG quando ci cammini sopra.",
		"Puoi rimuovere i malefici e ripristinare le scale maledette.",
	},
	["HACKER"] = { 
		"Questo è il primo rango di HACKER.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità HACKER.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Sviluppatore.",
		"Le scale mobili inverse non funzionano quando ci cammini sopra.",
		"L'esecuzione dello Scatto è più veloce del 50%.",
		"L'esecuzione della Smaterializzazione è più veloce del 50%.",
		"Solo ed esclusivamente quando sei a corto di Mana, puoi eseguire un salto sopra una piattaforma per hackerare 1 Mana.",
		"Ottieni una nuova impostazione (vicino all'icona spettatore) che permette di rendere inefficaci le scale affette da HACKER RIG quando ci cammini sopra.",
		"Se usi l'incantesimo Anomalia in cima alla torre, verrai teletrasportato nelle vicinanze della sfera finale (se possibile).", 
	},
	["THIEF"] = {
		"Questo è il primo rango di THIEF.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità THIEF.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Rapina.",
		"La durabilità delle tue scorciatoie è raddoppiata (120s).",
		"La durabilità delle tue Scale a Spirale è raddoppiata (120s).",
		"Puoi rubare tutti i tipi di scale, ad eccezione di quelle nere.",
		"Il sortilegio Rapina dura 30 secondi in più (90s).",
		"Solo ed esclusivamente quando sei a corto di Mana, puoi eseguire un salto sopra una piattaforma per rubare 1 Mana.",
		"Puoi trasportare due scale rubate per volta (da 1).",
	},
	["ARCHON"] = {
		"Questo è il primo rango di ARCHON.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità ARCHON.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Mania dei Portali.",
		"Puoi cancellare i Portali Dimensionali anche dalle piattaforme.",
		"L'incantesimo Scollegamento adesso è gratuito.",
		"Puoi camminare attraverso i Portali Dimensionali che teletrasportano verso il basso.",
		"Il sortilegio Mania dei Portali dura 30 secondi in più (90s).",
		"Puoi cambiare la destinazione di un Portale Dimensionale già creato saltando nuovamente sulla scala.",
		"Ottieni una nuova impostazione (vicino all'icona spettatore) che rende inefficaci tutti i Portali Dimensionali tranne quelli che ti permettono di proseguire la scalinata.",
	},
	["DRIFTER"] = {
		"Questo è il primo rango di DRIFTER.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità DRIFTER.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Ascensore.",
		"Le piattaforme affette dal sortilegio Ascensore e dall'incantesimo Elevazione si muovono più velocemente.",
		"Puoi roteare le scale deviate.",
		"Le piattaforme affette da Ascensore o Elevazione possono raggiungere due piani (da 1).",
		"Il sortilegio Ascensore dura 30 secondi in più (90s).",
		"Ottieni una nuova impostazione (vicino all'icona spettatore) che permette di rendere inefficaci le scale affette da DRIFTER RIG quando ci cammini sopra.",
		"Le piattaforme affette da Ascensore o Elevazione possono raggiungere tre piani (da 2).",
	},
	["HERETIC"] = {
		"Questo è il primo rango di HERETIC.\nContinua a giocare per sbloccarne altri.",
		"Il tuo contenitore Mana viene riempito regolarmente mentre i Droni sono in modalità HERETIC.",
		"Il tuo contenitore Mana viene riempito completamente quando qualcuno (tu compreso) usa il sortilegio Sciagura.",
		"Solo ed esclusivamente quando sei a corto di Mana, puoi ripristinare le scale maledette toccandole, così ottenendo 1 Mana.",
		"Le scale affette da HERETIC RIG sono inefficaci su di te.",
		"Puoi usare l'incantesimo Crea Maleficio per rimuovere i malefici.",
		"Il sortilegio Sciagura dura 30 secondi in più (90s).",
		"L'incantesimo Genera Scale Maledette e il sortilegio Sciagura possono distruggere eventuali scale maledette in mezzo.",
		"Ottieni 1 Mana ogni volta che qualcuno viene posseduto.",
	},


}

module.gui.reshuffle = {

	["title"] = "STAI PER MESCOLARE LE SCALE!",

	["body"] = "Le scale in movimento potrebbero scontrarsi con altre scale. Nel caso succeda, queste verranno distrutte. Premi NO se vuoi evitare un mescolamento forzato.",

}

module.gui.multitokens = {

	["title"] = "CONVERTI I TUOI GETTONI MULTIUSO",

	["info"] = "Sono necessari 3 gettoni per sbloccare un nuovo incantesimo.",
	["notokens"] = "Hai esaurito i Gettoni Multiuso.",
	["nopass"] = "NON POSSIEDI QUESTA CLASSE",

}

module.gui.feedback = {

	["title"] = "INVIA FEEDBACK",

	["prompt"] = "Premi qui per iniziare a scrivere un messaggio, verrà poi letto dallo sviluppatore di ScaleMania! (almeno 20 caratteri richiesti)",
	["send"] = "MANDA",
	["locked"] = "ATTENDI",

}

module.gui.settings = {

	["title"] = "IMPOSTAZIONI DI GIOCO",

	["ANIM1"] = "IMPOSTAZIONI ANIMAZIONI",	
	["ANIM2"] = "IMPOSTAZIONI ANIMAZIONI AGGIUNTIVE",
	["MISC"] = "IMPOSTAZIONI GENERALI",
	["INTERFACE"] = "IMPOSTAZIONI INTERFACCIA",	

	["size"] = "Mostra animazioni ingrandimento",
	["color"] = "Mostra animazioni colori",
	["escalator"] = "Mostra animazioni scale mobili",
	["sanctuary"] = "Mostra animazioni santuari",
	["list"] = "Attiva lista giocatori animata",
	["ghosts"] = "Anima controfigura",
	["distance"] = "Aumenta distanza massima per le animazioni",
	["morph"] = "Mostra animazioni di trasformazione di CHAMELEON",
	["billboard"] = "Mostra ad altri giocatori informazioni sulla tua classe",
	["rank"] = "Mostra ad altri giocatori il tuo ruolo",
	["switchback"] = "Ritorna alla lista di incantesimi dopo aver lanciato un sortilegio",
	["safecancel"] = "Mostra conferma quando vuoi interrompere un sortilegio temporaneo",
	["multi"] = "Mostra convertitore Gettoni Multiuso al termine delle scalate",
	["kchoices"] = "Mostra icone direzionali per KEEPER (incompatibile con Xbox)",
	["achoices"] = "Mostra icone direzionali per ARCHON (incompatibile con Xbox)",
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
		"Mi do un 11 su 10 per la mia performance",
		"Condividere è un gesto di bontà",
		"Metto un'altra scala qui, giusto in caso",
		"La P in Perfezione sta per Patron",
		"Non puoi avere una scala senza gradini",
		"E anche oggi ho svolto un ottimo lavoro",
	},
	["JOKER"] = {
		"INGANNA, CONFONDI e RIDI SOTTO I BAFFI",
		"Questa scalinata è uno scherzo della natura",
		"Tutta questa serietà è angosciante...",
		"Grosse risate",
		"Seguitemi a vostro rischio e pericolo",
		"Una camomilla potrebbe calmare i vostri spiriti bollenti",
		"Fino a prova contraria, rientra tutto nel regolamento",
		"Che noia sarebbe senza un pizzico di sale?",
		"Guarda quante belle scale!",
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
		"Le aspirapolveri non funzionano su di me",
		"Il teletrasporto è il bello della vita",
		"Credi ancora che i fantasmi non esistono?",
		"I problemi non si risolvono, si evitano!",
		"Una volta ho perso un capello mentre mi teletrasportavo",
		"State sereni, le scale non le tocco... ci pensato i miei spiriti",
		"Riuscite a starmi dietro?",
	},
	["MUGGLE"] = {
		"CAMMINA, SALTA e CADI",
		"Ai miei tempi gli incantesimi non esistevano...",
		"Sono abbastanza sicuro di aver visto un drone ridere di me",
		"Ci sta sempre una strada da seguire",
		"Chi ha messo questa scala qui?",
		"Il mio segreto? Fermati e pensa",
		"Non credo nella magia",
		"Ho già provato a salire sopra un Drone",
		"Perché sono l'unico a non avere incantesimi?",
	},
	["CHAMELEON"] = {
		"COPIA, IMITA e SORPRENDI",
		"Non vengo pagato abbastanza per creare incantesimi miei",
		"Più siamo meglio è",
		"Formate alleanze? Io sono un'alleanza vivente!",
		"Essere propensi al cambiamento ripaga",
		"Sono in grado di prendere le mie decisioni, però cambio idea spesso",
		"Wow sei formidabile! Ma io lo sono ancora di più",
		"Scusate, ma perché usare solo una classe quando le puoi avere tutte?",
		"O caos, mio spirito guida",
	},
	["KEEPER"] = {
		"MUOVI, RUOTA e SORVEGLIA",
		"Le mie scale, NON. SI. TOCCANO!",
		"Avevo finito di immacolare la torre giusto ieri...",
		"Missione compiuta!",
		"Mi piace l'ordine",
		"Caos domato",
		"Hai di fronte a te un modello da seguire",
		"Un giorno sistemerò questa torre per bene",
		"Scale trattate bene sono scale felici",
	},
	["THIEF"] = {
		"PRENDI IN PRESTITO, USA E RESTITUISCI",
		"Il reato di cui mi stai accusando è molto grave",
		"Le scale piatte sono affascinanti",
		"Non sono così meschino come pensi, non ho toccato alcuna piattaforma!",
		"Non camminare sulle mie scale, problema risolto",
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
		"Non so leggere, pertanto le regole non si applicano su di me",
		"Sarei io quello che sta barando?",
		"Sto semplicemente aggiungendo delle... migliorie al gioco",
		"Ho inventato le scale mobili",
		"Stai certo, prima o poi raggiungerò i MUGGLE",
	},
	["HERETIC"] = {
		"TU NON PASSERAI",
		"Bandire la magia nera equivale a bandire il divertimento",
		"Essere posseduti non è poi così male, provare per credere",
		"Morte e deterioramento",
		"Rituale completato",
		"Non c'è limite alla follia",
		"Oh, sei stato posseduto... ti sta bene",
		"Non permetterti mai più di ripristinare le mie scale",
		"Io non c'entro nulla",
	},
	["ARCHON"] = {
		"CREA PORTALI DIMENSIONALI, ???, GUADAGNO",
		"Un tempo regnavo sovrano in queste terre",
		"Bisogna anticipare ogni evenienza",
		"Buttati sotto i libri e poi ne riparliamo",
		"Creare portali dimensionali cambierà il futuro",
		"Non ti sento, sono troppo impegnato a creare questo portale dimensional-EEEE",
		"La torta è una bugia",
		"C'è una soluzione a tutto",
		"Viva i portali dimensionali",
	},
	["DRIFTER"] = {
		"VOLA, VIAGGIA e VISITA",
		"Un piccolo dettaglio, siamo nello SPAZIO",
		"Le scale sono una perdita di tempo",
		"C'è una bella brezza fresca",
		"Siamo in assenza di gravità, figata!",
		"Aladino ed il suo tappeto mi fanno un baffo",
		"Continua a navigare, non c'è nessuno nei paraggi",
		"Le piattaforme non mi deludono mai",
		"A tutta rotta!",
	},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Non lasciare nessuno indietro",
	["IT"] = "La burla, la risata, la comicità...",
	["ANNIHILATOR"] = "Nessun'ombra di scale",
	["AETHER"] = "Benvenuto nel regno degli inferi",
	["DABSFORLIF"] = "Me la cavo anche senza incantesimi",
	["USURPER"] = "Mi piacciono tutti gli incantesimi",
	["ADMIRAL"] = "La fatica ripaga!",
	["OUTLAW"] = "Ho comprato tutto di tasca mia",
	["ZERO"] = "Devo solo premere questo pulsante",
	["EXILED"] = "Vivo nell'ombra...",
	["ILLUMINATI"] = "Ho ricevuto l'illuminazione divina",
	["STRIDER"] = "Prenderò l'ascensore",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {

	"SCALEMANIA",
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
	"RINGRAZIAMENTI SPECIALI A:",
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
	"Audio finale di 'None' - Deceived da Martin Albert Sponticcia",
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
	--"Audio portali dimensionali di Archon - Angelic Choir sfx, Artista sconosciuto",
	"Audio piattaforme di Drifter - Radioactivity da Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Se sei arrivato fin qui, grazie per aver giocato!",	
}



module.static = {

	--INTRODUCTION SCREENS

	["cla_1"] = "Come si gioca?",
	["cla_2"] = "Prima di iniziare a spiegare, per favore partecipa al tutorial. Nel caso non lo avessi fatto, esci e rientra dal server; l'esperienza di gioco potrebbe farsi difficile se non lo facessi.",
	["cla_3"] = "L'obiettivo del gioco è quello di raggiungere la cima della torre e toccare la sfera finale in movimento. Prima di iniziare la scalata, seleziona una classe saltando sopra i trasformatori locati al centro della mappa.",
	["cla_4"] = "Felice con la tua scelta, puoi iniziare a scalare la torre collezionando le sfere di Mana mentre procedi, ti saranno utili per poter lanciare gli incantesimi. Fai uso della varietà di incantesimi che ogni classe offre.",
	["cla_5"] = "Come si lanciano gli incantesimi?",
	["cla_6"] = "Ogni incantesimo richiede Mana per essere eseguito. Se ne hai a sufficienza, semplicemente premi sull'icona dell'incantesimo per selezionarlo. Se delle sfere iniziano a ruotare intorno alle tua mani, l'incantesimo è pronto per l'uso.",
	["cla_7"] = "Successivamente alla selezione, l'incantesimo necessita di essere lanciato. Per fare ciò, bisogna effettuare un salto. Il luogo del salto dipende dall'incantesimo che si intende lanciare, principalmente salterai sulle scale o piattaforme. Segui le frecce guida illuminate per assistenza.",
	["cla_8"] = "Ogni ascesa completata ti ricompenserà con 3 gettoni, questi vengono usati per sbloccare nuovi incantesimi. La torre è sempre a tua disposizione per essere scalata. I gettoni sono indicativi alla classe usata, pertanto non puoi usarli per sbloccare incantesimi di altre classi.",
	["cla_9"] = "Come si lanciano i sortilegi?",
	["cla_10"] = "Per usare i sortilegi bisogna prima aver sbloccato tutti gli incantesimi. I sortilegi non necessitano di essere sbloccati, tuttavia per essere eseguiti sono richiesti Gettoni e non Mana.",
	["cla_11"] = "Per sbloccare tutti gli incantesimi di una determinata classe è sufficiente scalare la torre almeno 6 volte. Puoi ottenere Gettoni extra partecipando alle gare. Il negozio è sempre aperto per eventuali acquisti. L'icona dei sortilegi si trova alla sinistra degli incantesimi.",
	["cla_12"] = "Alcuni sortilegi sono temporanei e non richiedono il salto per l'esecuzione, inoltre la cancellazione di tali sortilegi temporanei non restituisce il costo versato. Per maggiori informazioni, leggi le descrizioni dei sortilegi nei santuari.",

	["pro_1"] = "TORRE PROFESSIONALE",
	["pro_2"] = "Vincolo dei piani pari",
	["pro_3"] = "Nella torre professionale, alcuni incantesimi non possono essere usati nei livelli pari. Crea Trappola, Crea Portale, Emersione, Posiziona Scale a Spirale, Teletrasporto Randomico, Scollegamento e Elevazione possono essere lanciati solo sui piani dispari.",
	["pro_4"] = "Neanche Drifter è in grado di usare tali piattaforme. Puoi facilmente individuarle notando se il cerchio al centro è rosso.",
	["pro_5"] = "Scale maledette",
	["pro_6"] = "Nella torre professionale i Droni possono creare scale maledette, oppure alterare quelle già esistenti. C'è il 20% di possibilità che ciò accada. Le frecce guida nelle vicinanze di scale maledette spariranno.",
	["pro_7"] = "Le scale maledette sono immuni alla maggior parte degli incantesimi, inclusi Smaterializzazione e Scatto Fantasma. In conclusione, qualsiasi incantesimo che porterebbe alla distruzione di queste scale non ha effetto.",
	["pro_8"] = "Solo Heretic e Keeper possono ripristinare le scale maledette. Anche Evento Annichilazione e Evento Restaurazione possono rispettivamente distruggere e ripristinare le scale maledette. I Droni non resteranno con le mani in mano, tuttavia.",
	["pro_9"] = "Malefici",
	["pro_10"] = "Come se non fosse abbastanza, i Droni possono anche creare malefici. Le intersecazioni normali hanno il 20% di diventare maledette. Le frecce guida nelle vicinanze di malefici prenderanno le sembianze di una croce rossa.",
	["pro_11"] = "I malefici inibiscono tutti gli incantesimi che vengono lanciati sulle frecce, pertanto quelli che portano alla generazione di scale o che teletrasportano l'utente su altre piattaforme non possono essere lanciati.",
	["pro_12"] = "Solo Heretic, Keeper e i Droni possono rimuovere tali malefici. Seguendo lo stesso esempio delle scale maledette, anche i malefici vengono rimossi in seguito all'Evento Annichilazione, tuttavia la Rigenerazione ne creerà dei nuovi.",

	["inf_1"] = "TORRE SENZA FINE",
	["inf_2"] = "CORSA OBBLIGATORIA",
	["inf_3"] = "I giocatori sono obbligati a partecipare ad una gara. Ai non-corridori non è concesso l'uso di incantesimi e non riceveranno ricompense. La sfera finale conferisce 10 Mana al tocco.",
	["inf_4"] = "Per vincere premi in una corsa nella torre senza fine, devi restare in gioco per quanto possibile! Riceverai eventuali ricompense in base alla tua posizione in classifica.",
	["inf_5"] = "Drone Anziano",
	["inf_6"] = "Il Drone Anziano svolge un ruolo di maggiore esponenza nella torre senza fine.",
	["inf_7"] = "Durante ogni intervallo, il Drone Anziano crea 2 nuovi piani. Le piattaforme nei piani pari sono vincolate. In aggiunta, è possibile che vengano generati scale maledette o malefici.",
	["inf_8"] = "Il primo intervallo dura 20 secondi. Ogni prolungamento della torre riduce la durata degli intervalli di 0.5 secondi.",
	["inf_9"] = "Soglia",
	["inf_10"] = "La soglia si solleverà man mano che la torre viene prolungata. Cadere dietro la soglia comporta all'eliminazione. Questa meccanica è simile ai giochi dove il livello della lava aumenta.",
	["inf_11"] = "Sia il Drone Anziano che la Soglia prendono velocità nel tempo. Tuttavia la Soglia non arriverà mai ad eliminare 2 piani per volta.",
	["inf_12"] = "I pezzi della torre che vengono toccati dalla Soglia svaniscono, stanne alla larga per quanto possibile in modo da assicurarti premi migliori.",

	["cus_1"] = "TORRE PERSONALIZZABILE",
	["cus_2"] = "A TE LA SCELTA!",
	["cus_3"] = "In questo server, le configurazioni della torre sono a tua completa disposizione.",
	["cus_4"] = "Per questione di correttezza, i premi ottenuti vengono dimezzati. Ricompense ottenibili: 1 Gettone ogni 12 piani e 1 Ascesa ogni 30 piani.",
	["cus_5"] = "Impostazioni della torre",
	["cus_6"] = "Puoi modellare la torre a tuo piacimento. Genera nuovi piani, attiva vincoli oppure abilità la torre senza fine.",
	["cus_7"] = "Se non sei il proprietario di questo server, non puoi alterare le impostazioni. I server pubblici non supportano le torri personalizzabili.",
	["cus_8"] = "Impostazioni dei droni",
	["cus_9"] = "Sfoga la tua rabbia contro i Droni qui. Puoi metterli a dormire, oppure aumentare e diminuire i limiti di scale a tuo piacimento.",

	["vr_1"] = "Eseguendo il gioco in Realtà Virtuale, diventi automaticamente ARCHITECT.",
	["vr_2"] = "Al contrario degli altri giocatori, tu non puoi scalare le torri. Ti offro una scelta: aiuta chi sta in difficoltà, oppure semina il caos.",
	["vr_3"] = "Sarai il prossimo eroe sulle copertine, oppure il cattivo? Forse vuoi solo passare il tempo? Procedi pure!",
	["vr_4"] = "Come mi muovo?",
	["vr_6"] = "Usa il joystick destro per muoverti su e giù. Ruota la visuale di 90 gradi eseguendo un movimento impulsivo col joystick.",
	["vr_7"] = "Evita di stare in mezzo alle scale per permettere una migliore esperienza di gioco.",
	["vr_8"] = "Come lancio gli incantesimi?",
	["vr_9"] = "Per selezionare gli incantesimi, tieni premuto il pulsante laterale del joystick. Facendo così, genererai un raggio laser che puoi sfruttare per mirare i tuoi incantesimi.",
	["vr_10"] = "Lancia gli incantesimi premendo il pulsante al centro del joystick, non lasciare il pulsante laterale fino all'esecuzione. Ogni classe possiede due incantesimi, uno eseguibile sulle scale e l'altro sulle piattaforme. Dunque, l'effetto cambia in base all'oggetto colpito (scale o piattaforme).",
	["vr_11"] = "Per cambiare classe, tieni premuto il pulsante centrale del joystick.",

	--ROOMS DOOR TEXTS  

	["home_1"] = "CASA DI MUGGLE",
	["home_2"] = "LA NOSTRA MASSIMA:\nCAMMINA\nSALTA\nE\nCADI",
	["home_3"] = "PRO:\nSei più veloce degli altri (con i ranghi)\nTi puoi vantare\nCONTRO:\nNiente incantesimi\nPotresti perderti spesso",
	["home_4"] = "'Ai miei tempi gli incantesimi non esistevano...'\ncitazione dal nostro fondatore",

	["oasis_1"] = "OASI DI CHAMELEON",
	["oasis_2"] = "LA NOSTRA MASSIMA:\nCOPIA\nIMITA\nE\nSTUPISCI",
	["oasis_3"] = "PRO:\nDecidi tu quando cambiare classe\nCONTRO:\nÈ a pagamento\nCi vuole del tempo per potenziare le altre classi",
	["oasis_4"] = "'Non vengo pagato abbastanza per creare incantesimi miei.'\ncitazione dal nostro fondatore",

	["nexus_1"] = "SETTA DI HERETIC",
	["nexus_2"] = "LA NOSTRA MASSIMA:\nTU\nNON\nPASSERAI",
	["nexus_3"] = "PRO:\nUtile nella torre professionale\nNon lo puoi fermare\nCONTRO:\nNon conviene fare alleanze\nNecessita di molto mana",
	["nexus_4"] = "'Bandire la magia nera equivale a bandire il divertimento.'\ncitazione dal nostro fondatore",

	["guild_1"] = "GILDA DI THIEF",
	["guild_2"] = "LA NOSTRA MASSIMA:\nPRENDI IN PRESTITO\nUSA\nE\nRESTITUISCI",
	["guild_3"] = "PRO:\nNon ha problemi di Mana\nVersatile\nCONTRO:\nDevi rubare scale\nNon demolisce scale già presenti",
	["guild_4"] = "'Hai prove tangibili di me che rubo?'\ncitazione dal nostro fondatore",

	["nether_1"] = "ALDILÀ DI SPECTRE",
	["nether_2"] = "LA NOSTRA MASSIMA:\nSPARISCI\nNASCONDITI\nE\nTELETRASPORTATI",
	["nether_3"] = "PRO:\nIncantesimi veloci\nOttimo per giocare in solitaria\nCONTRO:\nÈ a pagamento\nInefficace nelle alleanze",
	["nether_4"] = "'Le aspirapolveri non funzionano su di me.'\ncitazione dal nostro fondatore (DISPERSO)",

	["study_1"] = "STUDIO DI ARCHON",
	["study_2"] = "LA NOSTRA MASSIMA:\nCREA PORTALI DIMENSIONALI\n???\nGUADAGNO",
	["study_3"] = "PRO:\nSortilegi utili\nConfusionario\nCONTRO:\nComplicato da usare\nTi fa pensare troppo",
	["study_4"] = "'Un tempo regnavo sovrano in queste terre.'\ncitazione dal nostro fondatore",

	["haven_1"] = "PARADISO DI PATRON",
	["haven_2"] = "LA NOSTRA MASSIMA:\nAIUTA\nPROTEGGI\nE\nCREA",
	["haven_3"] = "PRO:\nFacile da usare\nPortato per le alleanze\nCONTRO:\nUsa molto Mana\nAttrae attenzioni indesiderate",
	["haven_4"] = "'La P in Perfezione sta per Patron.'\ncitazione dal nostro fondatore",

	["shelter_1"] = "RIFUGIO DI DRIFTER",
	["shelter_2"] = "LA NOSTRA MASSIMA:\nVOLA\nVIAGGIA\nE\nVISITA",
	["shelter_3"] = "PRO:\nVersatile\nPortato per le alleanze\nCONTRO:\nRichiede agilità nel movimento\nComplicato da usare nella torre professionale",
	["shelter_4"] = "'Un piccolo dettaglio, siamo nello SPAZIO.'\ncitazione dal nostro fondatore",

	["circus_1"] = "CIRCO DI JOKER",
	["circus_2"] = "LA NOSTRA MASSIMA:\nINGANNA\nCONFONDI\nE\nRIDI SOTTO I BAFFI",
	["circus_3"] = "PRO:\nRisate assicurate\nIncantesimi utili\nCONTRO:\nIncantesimi costosi\nPossibile perdita di amicizie",
	["circus_4"] = "'Fino a prova contraria, rientra tutto nel regolamento.'\ncitazione dal nostro fondatore",

	["base_1"] = "FORTEZZA DI KEEPER",
	["base_2"] = "LA NOSTRA MASSIMA:\nMUOVI\nRUOTA\nE\nSORVEGLIA",
	["base_3"] = "PRO:\nPuò ripristinare le scale\nPuò riusare le scale\nCONTRO:\nRichiede agilità nel movimento\nRichiede la presenza di scale",
	["base_4"] = "'Scale trattate bene sono scale felici.'\ncitazione dal nostro fondatore",

	["chamber_1"] = "OBLIO DI WICKED",
	["chamber_2"] = "LA NOSTRA MASSIMA:\n\nBLOCCA\nE\nDISTRUGGI",
	["chamber_3"] = "PRO:\nPuò distruggere le scale\nPuò resettare la torre\nCONTRO:\nRichiede la presenza di scale",
	["chamber_4"] = "'Queste scale hanno vissuto la loro vita.'\ncitazione dal nostro fondatore",

	["backdoor_1"] = "METAVERSO DI HACKER",
	["backdoor_2"] = "LA NOSTRA MASSIMA:\nSFRUTTA\nCREA ERRORI\nE\nRESETTA",
	["backdoor_3"] = "PRO:\nVeloce\nDifficile da pedinare\nCONTRO:\nRichiede la presenza di scale\nInefficace nelle alleanze",
	["backdoor_4"] = "'Gioco sportivo? Fammi il piacere.'\ncitazione dal nostro fondatore",

	--LEADERBOARD DESCRIPTIONS

	--SHARED
	["leader_pro"] = "La torre professionale conferisce 2 Ascese per completamento",	
	["leader_update"] = "Aggiornamento in: ",	
	["leader_updating"] = "Sto aggiornando...",	
	["leader_rank"] = "RANGO",
	["leader_req"] = "ASCESE NECESS.",
	["leader_off"] = "La torre personalizzabile non influenza le classifiche.",

	--OVERALL
	["over_title"] = "TUTTI I RUOLI",
	["over_desc"] = "Ogni rango sbloccato aggiunge 1 punto.",
	["over_rank"] = "RUOLO",
	["over_req"] = "PUNTI NECESS.",
	["emperor_req"] = "* Necessari: O Chamelon O Spectre",
	["overmind_req"] = "** Necessari: SIA Chamelon CHE Spectre",
	["over_prefix"] = "PREFISSO",
	["over_passes"] = "PASS\nRICHIESTI",
	["over_notgroup"] = "COLORE OLIVA - non sei nel gruppo",
	["over_group"] = "COLORE VERDE ACQUA - sei nel gruppo \n",
	["over_mod"] = "MODERATORE - il giocatore è un moderatore",
	["over_admin"] = "ADMIN - il giocatore è un admin",
	["over_owner"] = "PRANK ME - Creatore (Sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLE SCALTRI",
	["muggle_ranks"] = "RANGHI DI MUGGLE",

	["hacker_lead"] = "HACKER RISERVATI",
	["hacker_ranks"] = "RANGHI DI HACKER",

	["wicked_lead"] = "WICKED SCELLERATI",
	["wicked_ranks"] = "RANGHI DI WICKED",

	["keeper_lead"] = "KEEPER ORDINATI",
	["keeper_ranks"] = "RANGHI DI KEEPER",

	["joker_lead"] = "JOKER ISTERICI",
	["joker_ranks"] = "RANGHI DI JOKER",

	["drifter_lead"] = "DRIFTER CURIOSI",
	["drifter_ranks"] = "RANGHI DI DRIFTER",

	["patron_lead"] = "PATRON NOBILI",
	["patron_ranks"] = "RANGHI DI PATRON",

	["archon_lead"] = "ARCHON ALL'AVANGUARDIA",
	["archon_ranks"] = "RANGHI DI ARCHON",

	["spectre_lead"] = "SPECTRE VOLANTI",
	["spectre_ranks"] = "RANGHI DI SPECTRE",

	["thief_lead"] = "THIEF SILENZIOSI",
	["thief_ranks"] = "RANGHI DI THIEF",

	["heretic_lead"] = "HERETIC SPREGEVOLI",
	["heretic_ranks"] = "RANGHI DI HERETIC",

	["chameleon_lead"] = "CHAMELEON MUTAFORMA",
	["chameleon_ranks"] = "RANGHI DI CHAMELEON",

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Benvenuto in ScaleMania!",
	["tut_big_2"] = "Prima di tutto, impara a trasformarti.",
	["tut_big_3"] = "La classe Patron è in grado di generare scale. Seleziona l'incantesimo Genera Scale.",
	["tut_big_4"] = "Tutti gli incantesimi vengono lanciati eseguendo un salto.",
	["tut_big_5"] = "Notevole, no? Adesso trasformati in Joker per poter ribaltare le scale.",
	["tut_big_6"] = "Il giallo ti dona. Ora, seleziona l'incantesimo Ribalta Scale per procedere.",
	["tut_big_7"] = "Alcuni incantesimi vengono eseguiti saltando sopra le scale.",
	["tut_big_8"] = "Ci stai prendendo la mano. Trasformati in Keeper per poter spostare le scale.",
	["tut_big_9"] = "Perfetto, ora seleziona l'incantesimo Muovi Scale per procedere.",
	["tut_big_10"] = "Salta sulla freccia che indica in avanti per spostare la scala.",
	["tut_big_11"] = "Troverai molte scale che ti bloccheranno il passaggio.",
	["tut_big_12"] = "Ben fatto. Seleziona l'incantesimo Demolisci Scale in Alto per procedere.",
	["tut_big_13"] = "Alcuni incantesimi interagiscono con le scale situate in alto, prova con questo.",
	["tut_big_14"] = "Prima di lasciarci, permettimi di mostrarti le classi a pagamento.",
	["tut_big_15"] = "Magnifico, no? Spectre è ottenibile acquistando il suo Pass. Utile per giocare da soli.",
	["tut_big_16"] = "Il tuo obiettivo? Raggiungi la cima della torre e tocca la sfera in movimento. Alla prossima!",

	["tut_select"] = "Seleziona questo incantesimo:",

	["tut_small_morph"] = "Salta sul trasformatore",
	["tut_small_arrow"] = "Salta sulla freccia",
	["tut_small_stairs"] = "Salta sulle scale",


}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

	["notground"] = "Non può essere lanciato al piano terra.",
	["restore"] = "Può essere lanciato SOLO in cima alla torre.",
	["event"] = "Non può essere lanciato se un altro evento è già in esecuzione.",
	["drones"] = "Può essere lanciato solo quando i droni sono in modalità di default.",
	["oneover"] = "Non puoi attivare più Mana a Gogo alla volta.",
	["soft"] = "Non può essere lanciato se ci sono scale in mezzo.",
	["flatten"] = "Sono necessarie scale opposte nell'intersecazione in cui viene lanciato l'incantesimo.",
	["wickedaltevent"] = "Non può essere lanciato se un altro evento è già in esecuzione, o durante la rigenerazione.",
	["confined"] = "Non è possibile muovere le scale al di fuori dell'area di gioco, richiede direzioni dal giocatore.",
	["onesteal"] = "Puoi rubare al massimo due scale alla volta (richiede rango).",
	["softthief"] = "Richiede scale rubate. Non può essere lanciato se ci sono scale in mezzo.",
	["uppass"] = "Richiede scale rubate. Può essere lanciato solo sulle piattaforme perimetrali, dal piano terra in su.",
	["sidepass"] = "Richiede scale rubate. Non può essere lanciato al piano terra.",
	["noescape"] = "Non puoi fuoriuscire dall'area di gioco.",
	["outdrift"] = "Può essere lanciato solo sulle piattaforme perimetrali, dal piano terra in su.",
	["drifting"] = "Le piattaforme colpite non devono essere già alterate. Non può essere lanciato al piano terra.",
	["impostor"] = "Richiede il rango Impostor sbloccato.",
	["charlatan"] = "Richiede il rango Charlatan sbloccato.",
	["chameleonrigevent"] = "Non può essere lanciato se un altro evento è già in esecuzione. Richiede il rango Usurper sbloccato. Richiede l'uso di Gettoni Multiuso non convertiti. ", 

}

module.executioninfo = {

	["arrows"] = "Salta sulle frecce per lanciare.",
	--call the orb!
	["restore"] = "Salta sulle piattaforme in cima alla torre per lanciare.",
	["below"] = "Salta su scale normali o alterate da RIG per lanciare.",
	["above"] = "Salta su qualsiasi scala o collegamento con scale posizionate direttamente sopra per lanciare.",
	["centre"] = "Salta sulle piattaforme per lanciare.",
	["arrowstimed"] = "Salta ripetutamente sulle frecce per eseguire.",
	["anywhere"] = "Salta ovunque per lanciare.",
	["noexe"] = "Non richiede il salto per l'esecuzione",
	["flip"] = "Salta su scale normali, alterate da RIG o ribaltate per lanciare.",
	["flipabove"] = "Salta su qualsiasi scala o collegamento con scale normali, alterate da RIG o ribaltate posizionate direttamente sopra per lanciare.",
	["flipper"] = "Salta ripetutamente sulle scale per ribaltarle(se possibile, altrimenti ribalta quella posizionata direttamente sopra).",
	["destroy"] = "Salta su qualsiasi scala per lanciare.",
	["destroyabove"] = "Salta su qualsiasi scala o collegamento con scale posizionate direttamente sopra per lanciare.",
	["flatten"] = "Salta sulle frecce per lanciare. Le scale nell'intersecazione devono essere normali e opposte.",
	["bender"] = "Salta ripetutamente sulle scale per piegarle insieme a quelle posizionate direttamente sopra, se possibile.",
	--restore!!!
	["movedown"] = "Salta sulle frecce o sulle scale alterate per lanciare.",
	["ascension"] = "Salta ripetutamente su scale normali o alterate da RIG per eseguire.",
	["blink"] = "Salta su scale o collegamenti bloccati da altre scale per lanciare.",
	["outer"] = "Salta su piattaforme perimetrali per lanciare.",
	["riser"] = "Salta ripetutamente sulle piattaforme per eseguire.",
	["curse"] = "Salta su scale normali, alterate da RIG o maledette per lanciare.",
	["curseabove"] = "Salta su qualsiasi scala bloccata da altre scale normali, alterate da RIG o maledette per lanciare.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

	--PATRON
	["summon"] = "Genera Scale",
	["restore"] = "Richiama Sfera", 
	["split"] = "Taglia Scale",
	["shrinkabove"] = "Restringi Scale in Alto",
	["link"] = "Crea Collegamento",
	["portal"] = "Crea Portale",

	["summoner"] = "Generatore",
	["patronrigevent"] = "Patron Rig",
	["patronevent"] = "Evento Scalemania",
	["patronaltevent"] = "Evento Restringente",
	["patronmode"] = "Droni Modalità Patron",
	["patronrefill"] = "Mana a Gogo (Patron)",
	["patronunion"] = "Unione Spettrale (Patron)",

	--JOKER 
	["flip"] = "Ribalta Scale",
	["flipabove"] = "Ribalta Scale in Alto",
	["fake"] = "Genera Scale Illusorie",
	["invisible"] = "Genera Scale Invisibili",
	["disco"] = "Scale Festose",
	["trap"] = "Crea Trappola",

	["flipper"] = "Ribaltatore",
	["jokerrigevent"] = "Joker Rig",
	["jokerevent"] = "Evento Invisibile",
	["jokeraltevent"] = "Evento Sottosopra",
	["jokermode"] = "Droni Modalità Joker",
	["jokerrefill"] = "Mana a Gogo (Joker)",
	["jokerunion"] = "Unione Spettrale (Joker)",

	--WICKED
	["destroy"] = "Demolisci Scale",
	["destroyabove"] = "Demolisci Scale in Alto",
	["bend"] = "Solleva Ponte",
	["damage"] = "Frantuma Scale in Alto",
	["flatten"] = "Abbassa Ponte",
	["wall"] = "Genera Barriera" ,

	["bender"] = "Imperatore",
	["wickedrigevent"] = "Wicked Rig",
	["wickedevent"] = "Evento Distruzione",
	["wickedaltevent"] = "Evento Annichilazione",
	["wickedmode"] = "Droni Modalità Wicked",
	["wickedrefill"] = "Mana a Gogo (Wicked)",
	["wickedunion"] = "Unione Spettrale (Wicked)",

	--KEEPER
	["move"] = "Muovi Scale",
	["rotate"] = "Ruota Scale",
	["moveup"] = "Innalza Scale",
	["movedown"] = "Risana Scale",
	["moverandom"] = "Spostamento Randomico in Alto",
	["rig"] = "Spostamento Randomico",

	["ascension"] = "Ascensione",
	["keeperrigevent"] = "Keeper Rig",
	["keeperevent"] = "Evento Mescolazione",
	["keeperaltevent"] = "Evento Restaurazione",
	["keepermode"] = "Droni Modalità Keeper",
	["keeperrefill"] = "Mana a Gogo (Keeper)",
	["keeperunion"] = "Unione Spettrale (Keeper)",

	--SPECTRE
	["phantom"] = "Evoca Scale",
	["ghost"] = "Trasforma Scale in Alto",
	["shadow"] = "Solidifica Scale",
	["horizontal"] = "Scatto Fantasma",
	["random"] = "Teletrasporto Randomico",
	["vertical"] = "Emersione",

	["traveller"] = "Nomade",
	["spectrerigevent"] = "Spectre Rig",
	["spectreevent"] = "Evento Mescolazione Spettrale",
	["spectrealtevent"] = "Evento Fantasma",
	["spectremode"] = "Droni Modalità Spectre",
	["spectrerefill"] = "Mana a Gogo (Spectre)",
	["spectreunion"] = "Unione Spettrale (Spectre)",

	--HACKER
	["dash"] = "Scatto",
	["blink"] = "Smaterializzazione",
	["swap"] = "Sostituzione",
	["slide"] = "Scale Mobili Inverse",
	["slideup"] = "Scale Mobili",
	["glitch"] = "Anomalia",

	["speedup"] = "Sviluppatore",
	["hackerrigevent"] = "Hacker Rig",
	["hackerevent"] = "Evento Mobilità",
	["hackeraltevent"] = "Evento Scali Mobili",
	["hackermode"] = "Droni Modalità Hacker",
	["hackerrefill"] = "Mana a Gogo (Hacker)",
	["hackerunion"] = "Unione Spettrale (Hacker)",

	--THIEF
	["steal"] = "Ruba Scale",
	["stealabove"] = "Ruba Scale in Alto",
	["place"] = "Posiziona Scale",
	["uppass"] = "Posiziona Scale a Spirale",
	["sidepass"] = "Posiziona Scorciatoie",
	["drop"] = "Posiziona Scale Piatte",

	["heist"] = "Rapina",
	["thiefrigevent"] = "Thief Rig",
	["thiefevent"] = "Evento Piatto",
	["thiefaltevent"] = "Evento Scorciatoia",
	["thiefmode"] = "Droni Modalità Thief",
	["thiefrefill"] = "Mana a Gogo (Thief)",
	["thiefunion"] = "Unione Spettrale (Thief)",

	--ARCHON
	["splitup"] = "Portale Dimensionale Verso L'alto",
	["splitrotate"] = "Portale Dimensionale Ruotato",
	["splitside"] = "Portale Dimensionale Laterale",
	["splitrandom"] = "Portale Dimensionale Randomico",
	["cancelsplit"] = "Scollegamento",
	["splitforward"] = "Portale Dimensionale",

	["splitter"] = "Mania dei Portali",
	["archonrigevent"] = "Archon Rig",
	["archonevent"] = "Evento Portali Laterali",
	["archonaltevent"] = "Evento Portali verso L'alto",
	["archonmode"] = "Droni Modalità Archon",
	["archonrefill"] = "Mana a Gogo (Archon)",
	["archonunion"] = "Unione Spettrale (Archon)",

	--DRIFTER
	["indrift"] = "Naviga",
	["outdrift"] = "Perlustrazione",
	["updrift"] = "Elevazione",
	["diagdrift"] = "Navigazione Diagonale",
	["spin"] = "Rotea Scale",
	["driftabove"] = "Solleva Scale in Alto",

	["riser"] = "Ascensore",
	["drifterrigevent"] = "Drifter Rig",
	["drifterevent"] = "Evento Deviazione",
	["drifteraltevent"] = "Evento Sollevamento",
	["driftermode"] = "Droni Modalità Drifter",
	["drifterrefill"] = "Mana a Gogo (Drifter)",
	["drifterunion"] = "Unione Spettrale (Drifter)",

	--HERETIC
	["createcursed"] = "Genera Scale Maledette",
	["curse"] = "Ripristina/Maledici Scale",
	["curseabove"] = "Ripristina/Maledici + Solleva Scale in Alto",
	["curseinter"] = "Crea Maleficio",
	["autodown"] = "Innalza Scisma",
	["autoup"] = "Abbassa Scisma",

	["malediction"] = "Sciagura",
	["hereticrigevent"] = "Heretic Rig",
	["hereticevent"] = "Evento Scisma",
	["hereticaltevent"] = "Evento Nefasto",
	["hereticmode"] = "Droni Modalità Heretic",
	["hereticrefill"] = "Mana a Gogo (Heretic)",
	["hereticunion"] = "Unione Spettrale (Heretic)",

	--CHAMELEON
	["ditch"] = "Incrocia Scale",
	["warp"] = "Distorci Scale",
	["chamdown"] = "Sprofonda Scale",
	["chamdraw"] = "Ponte Levatoio in Basso",
	["chamdrawabove"] = "Ponte Levatoio in Alto",

	["chameleonrigevent"] = "Chameleon Rig",
	["chameleonmode"] = "Droni Modalità Chameleon",
	["chameleonrefill"] = "Mana a Gogo (Chameleon)",
	["chameleonunion"] = "Unione Spettrale (Chameleon)",

}

--translate these too!!!
local union = "Questo è un sortilegio temporaneo. Quando attivo, puoi camminare attraverso le scale che bloccano il passaggio. Qualsiasi effetto malevolo/benevolo è inefficace su di te mentre sei in questo stato. Tuttavia non puoi lanciare incantesimi."
local overload = "Questo è un sortilegio ad intervalli. Ricevi 1 mana ogni 10 secondi, per 1 minuto (10 in totale). Per rieseguire l'incantesimo è necessario attendere che finisca l'effetto di quello precedente."

module.spells.descriptions = {

	--PATRON
	["summon"] = "Genera una scala nella direzione indicata. Eventuali scale trovate in mezzo verranno distrutte.",
	["restore"] = "Richiama la sfera finale sulla piattaforma colpita (deve trovarsi in cima alla torre). Sblocca il rango Defender per ridurre il costo di esecuzione. Sblocca il rango Saviour per velocizzare il processo.",
	["shrinkabove"] = "Restringe la scala posizionata direttamente sopra a quella colpita, permettendoti di passarla e, successivamente, scalarla.",
	["link"] = "Genera un collegamento temporaneo nella direzione desiderata, che fa da ponte tra due piattaforme. Dura 60 secondi. Sblocca il rango Creator per raddoppiare la durabilità.",
	["split"] = "Taglia in due la scala colpita, garantendoti accesso a tutte e 4 le piattaforme.",
	["portal"] = "Crea un portale sulla piattaforma colpita. Chi lo tocca viene teletrasportato sulla piattaforma posizionata direttamente sopra. Dura 60 secondi. Sblocca il rango Protector per raddoppiare la durabilità.",

	["summoner"] = "Sortilegio Temporaneo. Permette di generare varie scale nelle direzioni desiderate, per 60 secondi. Sblocca il rango Guardian per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Patron che hanno il rango Friend sbloccato.",
	["patronrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, conferiscono 1 Mana al responsabile (se ha il contenitore Mana pieno, l'effetto non si attiva). In seguito all'attivazione, ridiventano scale normali.",
	["patronevent"] = "Sortilegio Evento. Genera scale nelle intersecazioni libere e non maledette.",
	["patronaltevent"] = "Sortilegio Evento. Restringe tutte le scale normali.",
	["patronmode"] = "Sortilegio Drone. I Droni entrano in modalità Patron. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Restringi Scale e Patron Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Ribalta la scala colpita. Le scale ribaltate sono immuni alle alterazioni, ma possono essere distrutte e/o rubate. Possono essere ri-ribaltate.",
	["flipabove"] = "Ribalta la scala posizionata direttamente sopra a quella colpita. Le scale ribaltate sono immuni alle alterazioni, ma possono essere distrutte e/o rubate. Possono essere ri-ribaltate.",
	["fake"] = "Genera una scala illusoria nella direzione desiderata. Eventuali scale trovate in mezzo verranno distrutte. Non può essere scalata, se non da chi è immune al suo effetto malevolo (Joker con rango Jokerster sbloccato e giocatori con il sortilegio Unione Spettrale attivo).",
	["invisible"] =  "Genera una scala invisibile nella direzione desiderata. Non viene generata se ci sono scale in mezzo. Quando calpestata, diventa visibili a tutti. Sblocca il rango Jester per poterle individuare e ottenere una nuova impostazione.",
	["disco"] = "Trasforma la scala colpita in una pista da ballo. Chi la calpesterà, non potrà fare a meno di ballare. Sblocca il rango Comic per diventarne immune.",
	["trap"] = "Sostituisce la piattaforma colpita con una fasulla. I malcapitati che ci passeranno sopra cadranno al piano di sotto. Sblocca il rango Jokester per essere in grado di individuarle.",

	["flipper"] = "Sortilegio Temporaneo. Permette di ribaltare le scale posizionate direttamente sopra a quelle colpite (se possibile, altrimenti ribalta le scale colpite), per 60 secondi. Riempe il contenitore Mana di altri Joker che hanno il rango Fool sbloccato.",
	["jokerrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, vengono ribaltate.",
	["jokerevent"] = "Sortilegio Evento. Rende invisibili tutte le scale normali. Le scale rivelate non verranno annunciate, in quanto ce ne saranno molte dopo l'esecuzione.",
	["jokeraltevent"] = "Sortilegio Evento. Ribalta tutte le scale normali.",
	["jokermode"] = "Sortilegio Drone. I Droni entrano in modalità Joker. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Scale Invisibili e Joker Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Distrugge la scala colpita. Diversamente dagli altri incantesimi, può essere lanciato su qualsiasi scala. Sblocca il rango Vile per rimuovere il costo di esecuzione. Sblocca il rango Vicious per guadagnare 1 Mana quando distruggi una scala alterata. Sblocca il rango Annihilator per distruggere le scale maledette.",
	["destroyabove"] = "Distrugge la scala posizionata direttamente sopra a quella colpita. Diversamente dagli altri incantesimi, può essere lanciato su qualsiasi scala. Sblocca il rango Vicious per guadagnare 1 Mana quando distruggi una scala alterata. Sblocca il rango Annihilator per distruggere le scale maledette.",
	["bend"] = "Piega verso l'alto la scala colpita. Usato per raggiungere la piattaforma che si trova al piano superiore.",
	["damage"] = "Frantuma la scala posizionata direttamente sopra a quella colpita, lasciando indietro solo alcuni gradini. Prima di metterti alla prova, ricorda che c'è la ricarica del salto. Sblocca il rango Destroyer per poterci camminare sopra come se fosse una scala qualunque.",
	["flatten"] = "Piega verso il basso la scala che si trova nell'intersecazione desiderata (la scala deve essere opposta a dove esegui l'incantesimo). Usato per raggiungere la piattaforma che giace nella parte opposta dell'intersecazione.",
	["wall"] = "Genera una barriera temporanea che impedisce a tutti (eccetto Wicked) di proseguire, ricopre sono un lato della piattaforma. Al di là della barriera viene anche generato un collegamento che fa da ponte tra due piattaforme, accessibile solo da Wicked. Dura 60 secondi. Alcuni incantesimi come Scatto e Scatto Fantasma possono forzare la barriera.",

	["bender"] = "Sortilegio Temporaneo. Le scale si piegano al tuo volere... letteralmente! Permette di piegare le scale colpite insieme a quelle che si trovano direttamente sopra, contemporaneamente (se possibile), per 60 secondi. Sblocca il rango Nemesis per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Wicked che hanno il rango Mean sbloccato.",
	["wickedrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, vengono distrutte. Sblocca il rango Devil per poterci camminare sopra senza attivare il loro effetto.",
	["wickedevent"] = "Sortilegio Evento. Distrugge tutte le scale normali. Non attiva la rigenerazione.",
	["wickedaltevent"] = "Sortilegio Evento. Distrugge qualsiasi scala presente nella torre, nessuna eccezione. Attiva la rigenerazione.",
	["wickedmode"] =  "Sortilegio Drone. I Droni entrano in modalità Wicked. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Piega Scale e Wicked Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Sposta la scala colpita a destra, sinistra, avanti o dietro, a seconda della tua scelta. Se c'è già una scala nella destinazione indicata, questa verrà distrutta. Non puoi spostare la scala al di fuori dall'area di gioco. Sblocca il rango Controller per poter spostare le scale ribaltate da Joker.",
	["rotate"] = "Ruota la scala a destra o a sinistra con punto di riferimento l'inizio o la fine della scala, a seconta della tua scelta. Non puoi ruotare la scala al di fuori dall'area di gioco. Sblocca il rango Controller per poter ruotare le scale ribaltate da Joker.",
	["moveup"] = "Innalza la scala colpita di un piano. Se c'è già una scala nella destinazione indicata, questa verrà distrutta. Sblocca il rango Controller per poter innalzare le scale ribaltate da Joker.",
	["movedown"] = "Ripristina la scala colpita rimuovendo eventuali effetti malevoli/benevoli. Se la scala colpita non è alterata, l'incantesimo non viene eseguito. Sblocca il rango Captain per rimuovere il costo di esecuzione. Sblocca il rango Admiral per poter ripristinare le scale maledette ed i malefici.",
	["moverandom"] = "Sposta o ruota la scala posizionata direttamente sopra a quella colpita verso una direzione casuale. Se c'è già una scala nella destinazione scelta casualmente, questa verrà distrutta. Sblocca il rango Operator per assicurati che la scala non sprofondi. Sblocca il rango Controller per poter influenzare le scale ribaltate da Joker.",
	["rig"] = "Sposta o ruota la scala colpita verso una direzione casuale. Se c'è già una scala nella destinazione scelta casualmente, questa verrà distrutta. Sblocca il rango Operator per assicurati che la scala non sprofondi. Sblocca il rango Controller per poter influenzare le scale ribaltate da Joker.",

	["ascension"] = "Sortilegio Temporaneo. Permette di innalzare le scale colpite, per 60 secondi. Sblocca il rango Commander per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Keeper che hanno il rango Handler sbloccato.",
	["keeperrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, vengono spostate o ruotate verso una direzione casuale. Sblocca il rango Operator per assicurarti che non sprofondino. Sblocca il rango Sentinel per poterci camminare sopra senza attivare il loro effetto.",
	["keeperevent"] = "Sortilegio Evento. Prima dell'esecuzione, ti viene presentata una scelta: Mescolazione forzata o mescolazione leggera. Qualora scegliessi quella forzata, tutte le scale non alterate verranno spostate o ruotate in direzioni casuali, distruggendo eventuali scale con cui si scontreranno. Quella leggera non permetterà tali scontri.",
	["keeperaltevent"] = "Sortilegio Evento. Ripristina tutte le scale presenti nella torre, incluse quelle maledette. Non rimuove i malefici.",
	["keepermode"] = "Sortilegio Drone. I Droni entrano in modalità Keeper. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Sposta Scale (forzato), Ruota Scale (forzato) e Keeper Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Evoca una scala nella direzione desiderata. Eventuali scale trovate in mezzo verranno distrutte. La scala, dopo l'esecuzione, procederà a svanire man mano fino a sparire completamente.",
	["ghost"] = "Trasforma la scala posizionata direttamente sopra a quella colpita, rendendola trasparente. Può essere attraversata, ma non scalata. Sblocca il rango Aether o attiva il sortilegio Unione Spettrale per poterci camminare sopra.",
	["shadow"] = "Solidifica la scala colpita, se è stata precedentemente trasformata (altrimenti l'incantesimo non viene eseguito). Sblocca il rango Phantom per rimuovere il costo di esecuzione.",
	["horizontal"] = "Ti teletrasporta sulla piattaforma indicata dalla freccia colpita. Può essere lanciato anche quando ci sono scale in mezzo.",
	["random"] = "Ti teletrasporta su una piattaforma casuale, nello stesso piano.",
	["vertical"] = "Ti teletrasporta sulla piattaforma posizionata direttamente sopra a quella colpita.",

	["traveller"] = "Sortilegio Temporaneo. Permette di eseguire vari Scatti Fantasma, per 60 secondi. Sblocca il rango Shadow per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Spectre che hanno il rango Shade sbloccato.",
	["spectrerigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando toccate, c'è il 50% che diventino intangibili. Sblocca il rango Vision per poterci camminare sopra senza attivare il loro effetto.",
	["spectreevent"] = "Sortilegio Evento. Prima dell'esecuzione, ti viene presentata una scelta: Mescolazione fantasma forzata o mescolazione fantasma leggera. Qualora scegliessi quella forzata, tutte le scale non alterate verranno rese intangibili, e successivamente spostate o ruotate in direzioni casuali, distruggendo eventuali scale con cui si scontreranno. Quella leggera non permetterà tali scontri.",
	["spectrealtevent"] = "Sortilegio Evento. Rende intangibili tutte le scale non alterate. Sblocca il rango Aether per poterci camminare sopra, o attiva il sortilegio Unione Spettrale.",
	["spectremode"] = "Sortilegio Drone. I Droni entrano in modalità Spectre. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Evento Mescolazione Fantasma (leggero, su singole scale) e Spectre Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Ti teletrasporta sulla piattaforma indicata dalla freccia colpita. Non può essere lanciato se ci sono scale in mezzo. Sblocca il rango Cracker per velocizzare l'esecuzione del 50%.",
	["blink"] = "Ti teletrasporta sulla piattaforma collegata alla scala colpita, se la scala posizionata direttamente sopra blocca il passaggio. Sblocca il rango Exploiter per velocizzare l'esecuzione del 50%.",
	["swap"] = "Ti teletrasporta nella posizione in cui si trova la tua controfigura. Può essere eseguito in qualsiasi punto della mappa.",
	["slide"] = "Trasforma la scala colpita in una scala mobile inversa. Le scale mobili funzionano solo quando qualcuno ci cammina sopra. Sblocca il rango Scripter per fermare le scale mobili inverse quando le calpesti.",
	["slideup"] = "Trasforma la scala colpita in una scala mobile. Le scale mobili funzionano solo quando qualcuno ci cammina sopra.",
	["glitch"] = "Ti teletrasporta (insieme alla scala colpita) in un'altra intersecazione libera, nello stesso piano. Sblocca il rango Zero per teletrasportati nelle vicinanze della sfera finale quando usi l'incantesimo (solo in cima alla torre).",

	["speedup"] = "Sortilegio Temporaneo. Non richiede l'esecuzione, aumenta la tua velocità di movimento del 50% per 60 secondi. Gli incantesimi vengono disabilitati quando questo sortilegio è attivo. Riempe il contenitore Mana di altri Hacker che hanno il rango Geek sbloccato.",
	["hackerrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, il responsabile viene teletrasportato (insieme alla scala calpestata) in altre intersecazioni libere, nello stesso piano. Sblocca il rango Reaper per poterci camminare sopra senza attivare il loro effetto.",
	["hackerevent"] = "Sortilegio Evento. Trasforma tutte le scale normali in scale mobili, o scale mobili inverse.",
	["hackeraltevent"] = "Sortilegio Evento. Trasforma tutte le scale normali in scale mobili.",
	["hackermode"] =  "Sortilegio Drone. I Droni entrano in modalità Hacker. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Scale Mobili (normali o inverse) e Hacker Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Smaterializza la scala colpita e la posiziona nel tuo inventario. Per poter usare gli altri incantesimi di Thief è necessario rubare delle scale con questo incantesimo o con Ruba Scale in Alto. Sblocca il rango Hijacker per poter rubare qualsiasi scala (tranne quelle nere). Sblocca il rango Outlaw per poter rubare 2 scale alla volta.",
	["stealabove"] = "Smaterializza la scala posizionata direttamente sopra a quella colpita, e la posiziona nel tuo inventario. Per poter usare gli altri incantesimi di Thief è necessario rubare delle scale con questo incantesimo o con Ruba Scale. Sblocca il rango Hijacker per poter rubare qualsiasi scala (tranne quelle nere). Sblocca il rango Outlaw per poter rubare 2 scale alla volta.",
	["place"] = "Posiziona la scala precedentemente rubata nella direzione desiderata. Se ci sono scale in mezzo, l'incantesimo non viene eseguito.",
	["uppass"] = "Posiziona una scala a spirale che collega la piattaforma colpita a quella posizionata direttamente sopra. Può essere lanciato solo sulle piattaforme perimetrali. Questa scala è immune a qualsiasi incantesimo e dura 60 secondi. Sblocca il rango Bandit per raddoppiare la durabilità.",
	["sidepass"] = "Posiziona una scorciatoia nella direzione desiderata e collega le due piattaforme affette girando intorno ad eventuali scale presenti. Questa scala è immune a qualsiasi incantesimo e dura 60 secondi. Sblocca il rango Robber per raddoppiare la durabilità.",
	["drop"] = "Posiziona una scala piatta nella direzione indicata. Non richiede Mana.",

	["heist"] = "Sortilegio Temporaneo. Permette di posizionare varie scale normali nelle direzioni desiderate, per 60 secondi. Eventuali scale in mezzo verranno rubate e rese disponibili per essere riposizionate. Riempe il contenitore Mana di altri Thief che hanno il rango Rook sbloccato.",
	["thiefrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, rubano 1 mana al responsabile (se non ha Mana, l'effetto non viene attivato). Per poter ricevere il mana rubato, devi rispettare queste due condizioni: il tuo contenitore Mana non deve essere pieno e la classe selezionata deve essere Thief.",
	["thiefevent"] = "Sortilegio Evento. Appiattisce tutte le scale normali.",
	["thiefaltevent"] = "Sortilegio Evento. Posiziona scorciatoie in tutte le intersecazioni disponibili, eccetto in quelle dove ci sono scale maledette o malefici.",
	["thiefmode"] = "Sortilegio Drone. I Droni entrano in modalità Thief. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Ruba Scale, Posiziona Scale e Thief Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitup"] = "Collega la scala colpita a quella posizionata direttamente sopra, con un portale dimensionale. Se non ci sono scale nella destinazione prestabilita, ne verrà generata una nuova. Sblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente. Sblocca il rango Sage per poter camminare attraverso i portali dimensionali che teletrasportano verso il basso.",
	["splitrotate"] = "Collega diagonalmente la scala colpita a un'altra in base alla direzione scelta, con un portale dimensionale. Se non ci sono scale nella destinazione scelta, ne verrà generata una nuova. Sblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente. Sblocca il rango Illuminati per poter camminare attraverso i portali dimensionali.",
	["splitside"] = "Collega lateralmente la scala colpita a un'altra in base alla direzione scelta, con un portale dimensionale. Se non ci sono scale nella destinazione scelta, ne verrà generata una nuova. Sblocca il rango Prodigy per poter cambiare la destinazione di un portale dimensionale già esistente. Sblocca il rango Illuminati per poter camminare attraverso i portali dimensionali.",
	["splitrandom"] = "Collega casualmente la scala colpita a un'altra, con un portale dimensionale. Se non ci sono scale nella destinazione casualmente scelta, ne verrà generata una nuova. Sblocca il rango Illuminati per poter camminare attraverso i portali dimensionali.",
	["cancelsplit"] = "Rimuove tutti i portali dimensionali collegati alla scala o alla piattaforma colpita. Sblocca il rango Disciple per poter rimuovere i portali dimensionali dalle piattaforme. Sblocca il rango Scholar per rimuovere il costo di esecuzione.",
	["splitforward"] = "Crea due portali dimensionali nell'intersecazione desiderata, collegando le due piattaforme affette. Eventuali scale in mezzo non rappresenteranno un problema. Sblocca il rango Disciple per poter rimuovere i portali dimensionali dalle piattaforme. Sblocca il rango Illuminati per poter camminare attraverso i portali dimensionali.",

	["splitter"] = "Sortilegio Temporaneo. Permette di creare vari portali dimensionali sulle piattaforme, per 60 secondi. Sblocca il rango Savant per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Archon che hanno il rango Adept sbloccato.",
	["archonrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, teletrasportano il responsabile verso la direzione in cui stava camminando. In seguito all'attivazione, ridiventano scale normali.",
	["archonevent"] = "Sortilegio Evento. Crea portali dimensionali laterali su tutte le scale normali.",
	["archonaltevent"] = "Sortilegio Evento. Crea portali dimensionali che teletrasportano verso l'alto su tutte le scale normali.",
	["archonmode"] = "Sortilegio Drone. I Droni entrano in modalità Archon. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Crea Portale Dimensionale (casuale) e Archon Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["outdrift"] = "Fa muovere la piattaforma colpita fuori dall'area di gioco, intorno al piano (solo 1 giro). Può essere lanciato solo sulle piattaforme perimetrali.",
	["indrift"] = "Genera un mini-drone sotto i tuoi piedi in grado di trasportati su un'altra piattaforma scelta da te.",
	["updrift"] = "Trasforma la piattaforma colpita in un ascensore che si muove tra due piani. La piattaforma tornerà allo stato originale dopo un po'. Sblocca il rango Vagabond per aumentare la velocità della piattaforma. Sblocca il rango Traveller per far raggiungere alla piattaforma un'altro piano (2 in totale). Sblocca il rango Strider per far raggiungere alla piattaforma ancora un'altro piano (3 in totale).",
	["diagdrift"] = "Trasforma la piattaforma colpita in un ascensore che si muove diagonalmente, nello stesso piano. La piattaforma tornerà allo stato originale dopo un po'",
	["spin"] = "Rotea la scala colpita di 180 gradi. Sblocca il rango Nomade per poter roteare le scale deviate.",
	["driftabove"] = "Solleva leggermente la scala posizionata direttamente sopra a quella colpita, permettendoti di passare e, successivamente, scalarla.",

	["riser"] = "Sortilegio Temporaneo. Permette di create vari ascensori verticali, per 60 secondi. Può essere usato per potenziare ascensori già esistenti. Sblocca il rango Wayfarer per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Drifter che hanno il rango Wanderer sbloccato.",
	["drifterrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, le scale verranno roteate di 90 gradi. Sblocca il rango Voyager per poterci camminare sopra senza attivare il loro effetto.",
	["drifterevent"] = "Sortilegio Evento. Rotea di 180 gradi tutte le scale normali.",
	["drifteraltevent"] =  "Sortilegio Evento. Solleva leggermente tutte le scale normali.",
	["driftermode"] = "Sortilegio Drone. I Droni entrano in modalità Drifter. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Attiva Ascensore (casuale) e Drifter Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Genera una scala maledetta nella direzione desiderata. Eventuali scale trovate in mezzo verranno distrutte, se tali scale NON sono maledette (Sblocca il rango Banished per rimuovere questa restrizione).",
	["curse"] = "Maledice o ripristina la scala colpita, in base al suo stato attuale.",
	["curseabove"] = "Maledice o ripristina la scala posizionata direttamente sopra a quella colpita, in base al suo stato attuale. La scala affetta inoltre si solleverà leggermente per qualche secondo, permettendoti di passare.",
	["curseinter"] = "Ti teletrasporta su un'altra piattaforma decisa da te, creando un maleficio nell'intersecazione scelta. Sblocca il rango Infidel per poter ripristinare i malefici.",
	["autodown"] = "Solleva una copia della parte inferiore della scala colpita, permettendoti di raggiungere una nuova piattaforma. Tale copia può essere scalato solo da Heretic o da giocatori con Unione Spettrale attivo.",
	["autoup"] = "Abbassa la parte superiore della scala colpita, lasciando al suo posto una copia. Tale copia può essere scalato solo da Heretic o da giocatori con Unione Spettrale attivo.",

	["malediction"] = "Sortilegio Temporaneo. Permette di generare varie scale maledette nelle direzioni indicate, per 60 secondi. Sblocca il rango Accursed per aumentare la durata a 90 secondi. Riempe il contenitore Mana di altri Heretic che hanno il rango Stranger sbloccato.",
	["hereticrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, i responsabili verranno posseduti, impedendogli di lanciare nuovi incantesimi. L'effetto viene annullato quando entrano in contatto con le sfere di Mana presenti in giro per la mappa. Sblocca il rango Unbeliever per poterci camminare sopra senza attivare il loro effetto. Sblocca il rango Exiled per poter guadagnare 1 Mana ogni volta che qualcuno viene posseduto.",
	["hereticevent"] = "Sortilegio Evento. Crea casualmente copie inferiori o superiori su tutte le scale normali.",
	["hereticaltevent"] = "Sortilegio Evento. Maledice tutte le scale normali.",
	["hereticmode"] = "Sortilegio Drone. I Droni entrano in modalità Heretic. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Crea Scisma (casuale) e Heretic Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--CHAMELEON
	["ditch"] = "Ex incantesimo di Thief. Crea un incrocio sulla scala colpita, se possibile.",
	["warp"] = "Ex incantesimo di Wicked. Distorce la scala colpita collegandola alla piattaforma posizionata direttamente sopra, se possibile.",
	["chameleonrigevent"] = "Sortilegio Rig. Altera tutte le scale normali. Quando calpestate, genereranno un effetto Rig casuale tra tutti quelli esistenti nel gioco.",
	["chamdown"] = "Ex incantesimo di Keeper. Sprofonda la scala colpita di un piano, se possibile. Sblocca il rango Captain per poter sprofondare le scale ribaltate da Joker.",
	["chamdraw"] = "Ex incantesimo di Heretic. Trasforma la scala colpita in un ponte levatoio. La parte superiore della scala viene ripiegata, togliendo la possibilità di essere scalata al contrario. Tocca la parte inferiore della scala per attivare il ponte.",
	["chamdrawabove"] = "Ex incantesimo di Heretic. Trasforma la scala posizionata direttamente sopra a quella colpita in un ponte levatoio, permettendoti di passare. La scala affetta non può essere scalata se qualcuno non la attiva calpestando la parte superiore. Il rango Unbeliever non permette più di attivare il ponte dalla piattaforma sottostante.",
	["chameleonmode"] = "Sortilegio Drone. I Droni entrano in modalità Chameleon. Se il numero di scale rientra nei limiti, i Droni lanceranno casualmente questi incantesimi: Qualsiasi effetto degli altri Sortilegi Drone e Chameleon Rig. Le scale alterate verranno ripristinate. Fuori dai limiti, i Droni genereranno o distruggeranno le scale.",
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
	"Scale",
	"1 Mana + scale",
	"2 Mana + scale",
	"3 Mana + scale", 
	"", 
	"10 Mana" 
}

module.spells.tokencosts = {

	"1 Gettone",
	"2 Gettoni",
	"3 Gettoni",

	["chameleonrigevent"] = "2 Gettoni Multiuso",
	["unlock"] = "(sblocca con 3 Gettoni)",
}

module.serverfeedback = {

	["scancel"] = "Annulla l'incantesimo per cambiare classe.",
	["morph"] = "Salta qui sopra per trasformarti in %s",
	["raceclosed"] = "La gara al momento non è accessibile.",
	["stay"] = "Rimani nel cerchio per partecipare nella gara!",
	["falsestart"] = "Sei uscito troppo presto",
	["secret"] = "Segreto trovato, complimentoni!",
	["traveller"] = "Sblocca il rango Traveller per poter potenziare questo ascensore.",
	["noboost"] = "Incantesimo non riuscito. Hai raggiunto la cima.",
	["platformlocked"] = "La piattaforma scelta è bloccata.",
	["strider"] = "Sblocca il rango Strider per poter ripotenziare questo ascensore.",
	["noupplatform"] = "Incantesimo non riuscito. Hai raggiunto la cima.",
	["boosted"] = "Potenziamento eseguito!",
	["wrongdirection"] = "Direzione non valida.",
	["cursed"] = "Scale maledette rilevate nella direzione indicata!",
	["banished"] = "Sblocca il rango Banished per poter demolire le scale maledette.",
	["blocked"] = "Maleficio rilevato nell'intersecazione indicata.",
	["infidel"] = "Sblocca il rango Infidel per ripristinare i malefici.",
	["admiral"] = "Sblocca il rango Admiral per ripristinare i malefici.",
	["nostairs"] = "Non ci sono scale in questa direzione.",
	["noground"] = "Incantesimo non riuscito. Ti trovi al piano terra.",
	["oddonly"] = "Incantesimo non riuscito. Il piano è vincolato.",
	["reveal"] = "Hai rivelato una scala invisibile!",
	["keeperrig"] = "La scala si sta muovendo!",
	["hackerrig"] = "La scala si sta teletrasportando!",
	["jokerrig"] = "La scala si sta ribaltando!",
	["wickedrig"] = "La scala si sta distruggendo!",
	["spectrerig"] = "La scala è diventata intangibile!",
	["notspectrerig"] = "La scala NON è diventata intangibile!",
	["patronrig"] = "Hai ricevuto 1 Mana, offerto da %s!",
	["notpatronrig"] = "Hai ricevuto 1 Mana, offerto da (il giocatore ha abbandonato l'esperienza)!",
	["thiefrig"] = "%s ti ha sottratto 1 Mana!",
	["mythiefrig"] = "Hai rubato 1 Mana da %s",
	["notthiefrig"] = "%s ha cambiato classe - il tuo Mana rimane invariato.",
	["leftthiefrig"] = "Il Thief ha abbandonato l'esperienza -  il tuo Mana rimane invariato.",
	["hereticrig"] = "Sei stato posseduto!",
	["archonrig"] = "Teletrasporto!",
	["drifterrig"] = "La scala sta roteando!",
	["noabove"] = "Nessuna scala posizionata direttamente sopra rilevata.",
	["noblink"] = "La scala posizionata direttamente sopra rilevata NON blocca il passaggio.",
	["noblink2"] = "Impossibile eseguire. Scala piatta o piegata rilevata.",
	["linklimit"] = "I collegamenti sono immuni agli incantesimi.",
	["new20pass"] = "Contenitore Mana Migliorato sbloccato!",
	["newchampass"] = "Adesso puoi usare le abilità di CHAMELEON!",
	["newspectrepass"] = "Adesso puoi trasformarti in SPECTRE!",
	["charreset"] = "Hai effettuato l'azzeramento, sei stato eliminato.",
	["chamtutorial"] = "L'uso di CHAMELEON è bandito nel tutorial!",
	["champossessed"] = "Non puoi! Colleziona mana per liberarti.",
	["chamspell"] = "Lancia o annulla l'incantesimo selezionato.",
	["morphpossessed"] = "Non puoi! Colleziona mana per liberarti.",
	["nocode"] = "Nessun codice inserito.",
	["invalid"] = "Codice non valido.",
	["old"] = "Il codice inserito non è più valido.",
	["accepted"] = "Codice accettato.",
	["tryspectre"] = "Hai attivato la prova gratutita di SPECTRE per 10 minuti! Non abbandonare l'esperienza.",
	["endspectre"] = "La prova gratuita di SPECTRE terminerà tra 1 minuto!",
	["trycham"] = "Hai attivato la prova gratutita di CHAMELEON per 10 minuti! Non abbandonare l'esperienza.",
	["endcham"] = "La prova gratuita di CHAMELEON terminerà tra 1 minuto!",
	["trymana"] = "Contenitore Mana Migliorato attivato per 10 minuti! Non abbandonare l'esperienza.",
	["endmana"] = "Contenitore Mana Migliorato si disattiverà tra 1 minuto!",
	["used"] = "Codice già usato.",
	["tooshort"] = "Il messaggio è troppo corto.",
	["sent"] = "Messaggio mandato correttamente, grazie!",
	["noreshuffle"] = "Seleziona il metodo di mescolamento!",
	["oneoverload"] = "Mana a Gogo è già attivo.",
	["overstarted"] = "Mana a Gogo è stato attivato!",
	["overended"] = "Mana a Gogo è terminato.",
	["2minshare"] = "Devi avere almeno 2 Mana...",
	["noshare"] = "Nessun giocatore nelle vicinanze...",
	["noinf"] = "Non puoi condividere Mana in questo stato!",
	["toomuch"] = "%s non può ricevere altro Mana!",
	["shared"] = "Mana condiviso con %s!",
	["received"] = "%s ha condiviso del Mana con te!",
	["muted"] = "% è stato mutato correttamente.",
	["unmuted"] =  "%s è stato smutato correttamente.",
	["kicked"] = "%s è stato cacciato!",
	["banned"] = "%s è stato bandito!",
	["mekicked"] = "%s ti ha cacciato dal suo server.",
	["mebanned"] = "%s ti ha bandito dal suo server.",
	["permban"] = "%s ti ha bandito permanentemente dal gioco.",
	["kick"] = "%s ti ha cacciato dal gioco.",
	["48ban"] = "%s ti ha bandito per 48 ore.",
	["exiled"] = "Sei stato bandito da questo server privato! (NON DAL GIOCO!).",
	["permbanned"] = "Sei stato bandito e non puoi più accedere.",
	["timeout"] = "Il ban scade tra: %02i ore e %02i minuti.",
	["notinrace"] = "Gara in corso, impossibile aggiornare le impostazioni!",
	["notinreg"] = "Rigenerazione in corso, impossibile aggiornare le impostazioni!",
	["infinite"] = "Modalità senza fine attivata!",
	["classic"] = "Modalità classica attivata.",
	["casual"] = "Tutti possono lanciare gli incantesimi!",
	["nocasual"] = "Solo i corridori possono lanciare gli incantesimi.",
	["purge"] = "L'Evento Annichilazione attiverà la rigenerazione in modalità classica!",
	["nopurge"] = "L'Evento Annichilazione NON attiverà la rigenerazione in modalità classica.",
	["noevens"] = "Vincolo sui piani pari attivato.",
	["evens"] = "Vincolo sui piani pari disattivato.",
	["orbmoves"] = "La sfera finale è in movimento!",
	["orbstopped"] = "La sfera finale è ferma!",
	["infreg"] = "La rigenerazione verrà attivata al termine delle gare senza fine!",
	["noinfreg"] = "La rigenerazione NON verrà attivata al termine delle gare senza fine.",
	["drones"] = "Droni attivati!",
	["nodrones"] = "Droni disattivati!",
	["dronefix"] = "I Droni possono ripristinare le scale!",
	["nodronefix"] = "I Droni NON possono ripristinare le scale.",
	["droneunlock"] = "I Droni possono rimuovere i malefici!",
	["nodroneunlock"] = "I Droni NON possono rimuovere i malefici.",
	["droneuncurse"] = "I Droni possono ripristinare le scale maledette!",
	["nodroneuncurse"] = "I Droni NON possono ripristinare le scale maledette.",
	["dronemove"] = "I Droni possono spostare le scale in modalità di default!",
	["nodronemove"] = "I Droni NON possono spostare le scale in modalità di default.",
	["dronespin"] = "I Droni possono roteare le scale in modalità di default!",
	["nodronespin"] = "I Droni NON possono roteare le scale in modalità di default.",
	["noinput"] = "Inserisci un valore!",
	["nonumber"] = "Inserisci un numero!",
	["notrace"] = "Gara in corso, impossibile aggiornare le impostazioni!",
	["notultimate"] = "Sortilegio in esecuzione, impossibile aggiornare le impostazioni!",
	["notregen"] = "Rigenerazione in corso, impossibile aggiornare le impostazioni!",
	["wait"] = "Aggiornamento dei piani in corso...",
	["duration"] = "Durata delle gare aggiornata (corsa attuale non inclusa)",
	["init"] = "Intervallo iniziale modificato.",
	["reduction"] = "Riduzione intervalli modificato.",
	["mininf"] = "Intervallo minimo modificato.",
	["cooldown"] = "Tempo di ricarica modificato.",
	["speed"] = "Velocità dei Droni modificata.",
	["spin"] = "Durata esecuzione dei Droni modificata.",
	["max"] = "Limite massimo di scale aggioranato.",
	["min"] = "Limite minimo di scale aggiornato.",
	["curse"] = "Probabilità delle scale maledette modificata.",
	["block"] = "Probabilità dei malefici modificata.",
	["lock"] = "Impossibile lanciare l'incantesimo in questo momento.",
	["ultwait"] = "Sei stato preceduto da qualcun'altro. Attendi.",
	["regwait"] = "Rigenerazione in corso, impossibile eseguire.",
	["coolwait"] = "Impossibile eseguire in questo momento.",
	["notfound"] = "Nessuna scala rilevata.",
	["normalrig"] = "Funziona solo su scale normali o alterate da RIG.",
	["locked"] = "La scala scelta è bloccata.",
	["nocursedblink"] = "Scale maledette rilevate.",
	["isblocked"] = "Maleficio rilevato.",
	["cantblock"] = "Impossibile creare maleficio, ci sono delle scale qui (potrebbero essere invisibili).",
	["cantblock2"] = "Impossibile creare maleficio, ci sono delle scale nel lato opposto (potrebbero essere invisibili).",
	["noway"] = "Impossibile eseguire, ci sono delle scale qui (potrebbero essere invisibili).",
	["noway2"] = "Impossibile eseguire, ci sono delle scale nel lato opposto (potrebbero essere invisibili).",
	["noplatform"] = "Nessuna piattaforma rilevata nella direzione indicata.",
	["nopass"] = "Questa scala può essere posizionata solo sulle piattaforme perimetrali.",
	["pass"] = "Scala a Spirale già presente.",
	["link"] = "Collegamento già presente.",
	["outdrift"] = "Perlustrazione può essere lanciato solo sulle piattaforme perimetrali.",
	["cantgate"] = "Questa direzione è bloccata.",
	["wall"] = "Barriera già presente.",
	["nocurse"] = "Questa scala non può essere maledetta/ripristinata con questo incantesimo.",
	["nogate"] = "Nessun portale rilevato su questa scala.",
	["noghost"] = "Questa scala non è intangibile e non può essere solidificata.",
	["noflip"] = "Questa scala non può essere ribaltata.",
	["prodigy"] = "Portale rilevato. Sblocca il rango Prodigy per potergli cambiare la destinazione.",
	["wrongsplit"] = "Non puoi fuoriuscire dall'area di gioco.",
	["blockedplit"] = "Maleficio rilevato.",
	["cursedtarget"] = "Scale maledette rilevate.",
	["lockedsplit"] = "Impossibile eseguire, attendi un momento.",
	["failedgate"] = "Creazione del portale non riuscita.",
	["nomove"] = "Questa scala non può essere spostata.",
	["controller"] = "Sblocca il rango Controller per poter spostare questa scala.",
	["wrongmove"] = "Non puoi fuoriuscire dall'area di gioco.",
	["blockedmove"] = "Impossibile procedere, maleficio rilevato.",
	["lockedmove"] = "Impossibile eseguire, attendi un momento.",
	["normal"] = "Queste scale sono già normali.",
	["nomad"] = "Sblocca il rango Nomad per poter roteare questa scala.",
	["hijacker"] = "Sblocca il rango Hijaker per poter rubare questa scala.",
	["nocursesteal"] = "Questa scala non può essere rubata.",
	["lockedinter"] = "Impossibile eseguire, attendi un momento.",
	["possessed"] = "Impossibile lanciare incantesimi in questo stato.",
	["lockedspell"] = "Incantesimo bloccato!",
	["unlocked"] = "Incantesimo sbloccato!",
	["nomana"] = "Mana non sufficiente!",
	["spelllock"] = "Impossibile lanciare incantesimi in questo momento.",
	["notokens"] = "Gettoni insufficienti!",
	["nothere"] = "L'uso di questo incantesimo è bandito nel tutorial.",
	["onlyracers"] = "Diventa un corridore per poter lanciare incantesimi.",
	["cancelfirst"] = "Annulla l'incantesimo prima...",
	["stashfull"] = "Non puoi rubare altre scale.",
	["stashempty"] = "Scale rubate richieste per l'esecuzione.",
	["notdefault"] = "I Droni non sono in modalità di default. Attendi.",
	["cooldownwait"] = "Sortilegio bloccato. Attendi %d secondi.",
	["nospellsnow"] = "Impossibile lanciare incantesimi in questo momento.",

	["unknown"] = "Errore sconosciuto.",

}

module.serverbroadcast = {
	["pranked"] = "%s ha giocato un bello scherzetto a %s!",
	["found"] = "%s ha trovato una scala invisibile di %s!",
	["disco"] = "%s sta danzando sulla pista da ballo di %s.",
	["obby"] = "%s si sta arrampicando sulla scala frantumata da %s.",
	["default"] = "I Droni sono tornati nella modalità di default.",
	["regen"] = "Rigenerazione in corso.",
	["done"] = "Rigenerazione completata.",
	["union"] = "%s ha attivato il sortilegio Unione Spettrale!",
	["eliminated"] = "%s è fuori dai giochi.",
	["won"] = "%s ha tagliato il traguardo prima di tutti!",
	["falsestart"] = "Sei partito troppo presto!",
	["countdown"] = "La prossima corsa inizierà tra %d secondi!",
	["2min"] = "Almeno due giocatori necessari per iniziare una gara!",
	["noplayers"] = "Nessun giocatore rilevato, la corsa senza fine è stata annullata!",
	["nojoin"] = "Iscrizioni chiuse. Non verranno accettati altri partecipanti.",
	["allfalse"] = "Tutti i corridori sono partiti troppo presto...",
	["safety"] = "Il numero dei piani è stato alterato, la gara è stata annullata.",
	["leader"] = "%s è in testa!",
	["toolate"] = "Tempo scaduto, nessuno ha raggiunto il traguardo in tempo!",

}

module.localfeedback = {

	["cancel"] = "Cancella l'altro incantesimo!",
	["nomana"] = "Mana insufficiente!",
	["notokens"] = "Gettoni insufficienti!",
	["unlocked"] = "Incantesimo sbloccato!",
	["maxmana"] = "Contenitore Mana pieno!",
	["nopurchase"] = "Non puoi acquistare Mana nel tutorial!",
	["hascham"] = "Possiedi già Chameleon!",
	["hasspectre"] = "Possiedi già Spectre!",
	["hasmana"] = "Possiedi già il Contenitore Mana Migliorato!",
	["nomuggle"] = "Pensavi ci fossero dei sortilegi nascosti in Muggle, ma non è così.",
	["nocham"] = "Pensavi ci fossero dei sortilegi nascosti in Chameleon, ma non è così.",
	["nonone"] = "Pensavi ci fossero dei sortilegi nascosti in None, ma non è così.",
	["nounlocks"] = "Sblocca tutti gli incantesimi per proseguire!",
	["onetoken"] = "Hai ricevuto un gettone per %s!",
	["moretokens"] = "Hai ricevuto dei gettoni per %s!",
	["music"] = "Audio modificato correttamente.",
	["nomusic"] = "Non è stato possibile modificare l'audio.",
	--this is teleport to other tower
	["noteleport"] = "Errore!", 
	["norefresh"] = "Impossibile aggiornare.",

}

module.switchon = {

	["JOKER"] = "Non rivelerai più le scale invisibili che calpesti.",
	["WICKED"] = "Immunità ai rig di Wicked attivata.",
	["KEEPER"] = "Immunità ai rig di Keeper attivata.",
	["SPECTRE"] = "Immunità ai rig di Spectre attivata.",
	["HACKER"] = "Immunità ai rig di Hacker attivata.",
	["ARCHON"] = "Puoi camminare attraverso i portali dimensionali (tranne quelli verso l'alto).",
	["DRIFTER"] = "Immunità ai rig di Drifter attivata.",

}

module.switchoff = {

	["JOKER"] = "Da adesso rivelerai le scale invisibili che calpesti.",
	["WICKED"] = "Immunità ai rig di Wicked disattivata.",
	["KEEPER"] = "Immunità ai rig di Keeper disattivata.",
	["SPECTRE"] = "Immunità ai rig di Spectre disattivata.",
	["HACKER"] = "Immunità ai rig di Hacker disattivata.",
	["ARCHON"] = "Non puoi più camminare attraverso i portali dimensionali (tranne quelli verso il basso).",
	["DRIFTER"] = "Immunità ai rig di Drifter disattivata.",
}

module.events = {
	["patronrigevent"] = "RIG DI PATRON IN ESECUZIONE",
	["patronevent"] = "EVENTO SCALEMANIA IN ESECUZIONE",
	["patronaltevent"] = "EVENTO RESTRINGENTE",
	["jokerrigevent"] = "RIG DI JOKER IN ESECUZIONE",
	["jokeraltevent"] = "EVENTO SOTTOSOPRA",
	["jokerevent"] = "EVENTO INVISIBILE",
	["wickedrigevent"] = "RIG DI WICKED IN ESECUZIONE",
	["wickedaltevent"] = "EVENTO ANNICHILAZIONE",
	["wickedevent"] = "EVENTO DISTRUZIONE",
	["keeperrigevent"] = "RIG DI KEEPER IN ESECUZIONE",
	["keeperevent"] = "EVENTO MESCOLAZIONE",
	["keeperaltevent"] = "EVENTO RESTAURATORE",
	["spectrerigevent"] = "RIG DI SPECTRE IN ESECUZIONE",
	["spectreevent"] = "EVENTO MESCOLAZIONE SPETTRALE",
	["spectrealtevent"] = "EVENTO FANTASMA",
	["hackerrigevent"] = "RIG DI HACKER IN ESECUZIONE",
	["hackerevent"] = "EVENTO MOBILITÀ",
	["hackeraltevent"] = "EVENTO SCALE MOBILI",
	["thiefrigevent"] = "RIG DI THIEF IN ESECUZIONE",
	["thiefevent"] = "EVENTO PIATTO",
	["thiefaltevent"] = "EVENTO SCORCIATOIA",
	["hereticrigevent"] = "RIG DI HERETIC IN ESECUZIONE",
	["hereticevent"] = "EVENTO SCISMA",
	["hereticaltevent"] = "EVENTO NEFASTO",
	["archonrigevent"] = "RIG DI ARCHON IN ESECUZIONE",
	["archonevent"] = "EVENTO PORTALI LATERALI",
	["archonaltevent"] = "EVENTO PORTALI VERSO L'ALTO",
	["drifterevent"] = "EVENTO DEVIAZIONE",
	["drifteraltevent"] = "EVENTO SOLLEVAMENTO",
	["drifterrigevent"] = "RIG DI DRIFTER IN ESECUZIONE",
	["chameleonrigevent"] = "RIG DI CHAMELEON IN ESECUZIONE",

}

module.finished = {

	["patronrigevent"] = "RIG DI PATRON COMPLETATO",
	["patronevent"] = "EVENTO SCALEMANIA CONCLUSO",
	["patronaltevent"] = "EVENTO RESTRINGENTE CONCLUSO",
	["jokerrigevent"] = "RIG DI JOKER COMPLETATO",
	["jokeraltevent"] = "EVENTO SOTTOSOPRA CONCLUSO",
	["jokerevent"] = "EVENTO INVISIBILE CONCLUSO",
	["wickedrigevent"] = "RIG DI WICKED COMPLETATO",
	["wickedaltevent"] = "EVENTO ANNICHILAZIONE CONCLUSO",
	["wickedevent"] = "EVENTO DISTRUZIONE CONCLUSO",
	["keeperrigevent"] = "RIG DI KEEPER COMPLETATO",
	["keeperevent"] = "EVENTO MESCOLAZIONE CONCLUSO",
	["keeperaltevent"] = "EVENTO RESTAURATORE CONCLUSO",
	["spectrerigevent"] = "RIG DI SPECTRE COMPLETATO",
	["spectreevent"] = "EVENTO MESCOLAZIONE SPETTRALE CONCLUSO",
	["spectrealtevent"] = "EVENTO FANTASMA CONCLUSO",
	["hackerrigevent"] = "RIG DI HACKER COMPLETATO",
	["hackerevent"] = "EVENTO MOBILITÀ CONCLUSO",
	["hackeraltevent"] = "EVENTO SCALE MOBILI CONCLUSO",
	["thiefrigevent"] = "RIG DI THIEF COMPLETATO",
	["thiefevent"] = "EVENTO PIATTO CONCLUSO",
	["thiefaltevent"] = "EVENTO SCORCIATOIA CONCLUSO",
	["hereticrigevent"] = "RIG DI HERETIC COMPLETATO",
	["hereticevent"] = "EVENTO SCISMA CONCLUSO",
	["hereticaltevent"] = "EVENTO NEFASTO CONCLUSO",
	["archonrigevent"] = "RIG DI ARCHON COMPLETATO",
	["archonevent"] = "EVENTO PORTALI LATERALI CONCLUSO",
	["archonaltevent"] = "EVENTO PORTALI VERSO L'ALTO CONCLUSO",
	["drifterevent"] = "EVENTO DEVIAZIONE CONCLUSO",
	["drifteraltevent"] = "EVENTO SOLLEVAMENTO CONCLUSO",
	["drifterrigevent"] = "RIG DI DRIFTER COMPLETATO",
	["chameleonrigevent"] = "RIG DI CHAMELEON COMPLETATO",

}

module.timedspells = {
	["summoner"] = "%s ha appena lanciato il sortilegio GENERATORE!",
	["flipper"] = "%s ha appena lanciato il sortilegio RIBALTATORE!",
	["bender"] = "%s ha appena lanciato il sortilegio IMPERATORE!",
	["ascension"] = "%s ha appena lanciato il sortilegio ASCENSIONE!",
	["traveller"] = "%s ha appena lanciato il sortilegio NOMADE!",
	["speedup"] = "%s ha appena lanciato il sortilegio SVILUPPATORE!",
	["heist"] = "%s ha appena lanciato il sortilegio RAPINA!",
	["splitter"] = "%s ha appena lanciato il sortilegio MANIA DEI PORTALI!",
	["riser"] = "%s ha appena lanciato il sortilegio ASCENSORE!",
	["malediction"] = "%s ha appena lanciato il sortilegio SCIAGURA!",

}

module.eventspells = {

	["patronrigevent"] = "%s ha appena alterato tutte le scale normali con PATRON RIG!",
	["patronaltevent"] = "%s ha appena ristretto tutte le scale normali!",
	["patronevent"] = "%s ha appena lanciato il sortilegio Evento Scalemania!",
	["jokeraltevent"] = "%s ha appena ribaltato tutte le scale normali!",
	["jokerrigevent"] = "%s ha appena alterato tutte le scale normali con JOKER RIG!",
	["jokerevent"] = "%s ha appena nascosto tutte le scale normali!",
	["wickedrigevent"] = "%s ha appena alterato tutte le scale normali con WICKED RIG!",
	["wickedaltevent"] = "%s ha appena distrutto TUTTE le scale!",
	["wickedevent"] = "%s ha appena distrutto tutte le scale normali!",
	["keeperrigevent"] = "%s ha appena alterato tutte le scale normali con KEEPER RIG!",
	["keeperevent"] = "%s ha appena dato inizio al mescolamento delle scale!",
	["keeperaltevent"] = "%s ha appena ripristinato tutte le scale!",
	["spectrerigevent"] = "%s ha appena alterato tutte le scale normali con SPECTRE RIG!",
	["spectreevent"] = "%s ha appena dato inizio al mescolamento spettrale delle scale!",
	["spectrealtevent"] = "%s ha appena reso tutte le scale normali intangibili!",
	["hackerrigevent"] = "%s ha appena alterato tutte le scale normali con HACKER RIG!",
	["hackerevent"] = "%s ha appena trasformato tutte le scale in scale mobili casuali!",
	["hackeraltevent"] = "%s ha appena trasformato tutte le scale in scale mobili!",
	["thiefrigevent"] = "%s ha appena alterato tutte le scale normali con THIEF RIG!",
	["thiefevent"] = "%s ha appena appiattito tutte le scale normali!",
	["thiefaltevent"] = "%s ha appena creato varie scorciatoie!",
	["newmode"] = "%s ha lanciato un sortilegio. I droni sono entrati in modalità %s!",
	["archonrigevent"] = "%s ha appena alterato tutte le scale normali con ARCHON RIG!",
	["archonevent"] = "%s ha appena generato portali dimensionali laterali su tutte le scale normali!",
	["archonaltevent"] = "%s ha appena generato portali dimensionali verso l'alto su tutte le scale normali!",
	["drifterrigevent"] = "%s ha appena alterato tutte le scale normali con DRIFTER RIG!",
	["drifterevent"] = "%s ha appena deviato tutte le scale normali!",
	["drifteraltevent"] = "%s ha appena sollevato leggermente tutte le scale normali!",
	["hereticrigevent"] = "%s ha appena alterato tutte le scale normali con HERETIC RIG!",
	["hereticevent"] = "%s ha appena creato scismi su tutte le scale normali!",
	["hereticaltevent"] = "%s ha appena maledetto tutte le scale normali!",
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
	["chameleonrigevent"] = "%s ha appena alterato tutte le scale normali con CHAMELEON RIG!"
}


--stuff that was wrong
module.gui.settings["rank"] = "Mostra ad altri giocatori il tuo ruolo"
module.spells.descriptions["link"] = "Genera un collegamento temporaneo nella direzione desiderata, che fa da ponte tra due piattaforme. Dura 60 secondi. Sblocca il rango Creator per raddoppiare la durabilità."
module.spells.descriptions["outdrift"] = "Fa muovere la piattaforma colpita fuori dall'area di gioco, intorno al piano (solo 1 giro). Può essere lanciato solo sulle piattaforme perimetrali."
module.spells.descriptions["indrift"] = "Genera un mini-drone sotto i tuoi piedi in grado di trasportati su un'altra piattaforma scelta da te."
module.spells.descriptions["move"] = "Sposta la scala colpita a destra, sinistra, avanti o dietro, a seconda della tua scelta. Se c'è già una scala nella destinazione indicata, questa verrà distrutta. Non puoi spostare la scala al di fuori dall'area di gioco. Sblocca il rango Controller per poter spostare le scale ribaltate da Joker."
module.spells.descriptions["rotate"] = "Ruota la scala a destra o a sinistra con punto di riferimento l'inizio o la fine della scala, a seconta della tua scelta. Non puoi ruotare la scala al di fuori dall'area di gioco. Sblocca il rango Controller per poter ruotare le scale ribaltate da Joker."

--stuff that was missing
module.static["vr_5"] = "Usa il joystick sinistro per muoverti avanti e indietro. Per spostarti a destra o a sinistra, inclina il joystick lateralmente."
module.gui.ranks["next"] = "Premi sulla freccia verso destra per controllare i requisiti del prossimo rango."
module.serverfeedback["admiral2"] = "Sblocca il rango Admiral per poter ripristinare le scale maledette."
module.serverfeedback["annihilator"] = "Sblocca il rango Annihilator per poter distruggere le scale maledette."
module.serverfeedback["disciple"] = "Sblocca il rango Disciple per poter rimuovere i portali dimensionali sulle piattaforme."
module.serverfeedback["toponly"] = "Questo incantesimo può essere lanciato solo in cima alla torre."
module.serverbroadcast["go"] = "VIA!"
module.serverbroadcast["over"] = "Gara conclusa!"
module.tutorial["tut_small_init"] = "Esegui un salto per iniziare il tutorial"

module.static["dailies"] = "RECORD DI OGGI"
module.static["most_climbs"] = "PIÙ ASCESE"
module.static["most_wins"] = "PIÙ VITTORIE" 

module.events["regen"] = "Rigenerazione in corso"
module.finished["regen"] = "Rigenerazione completata"

module.spells.extras = {

	["Prompt"] = "Seleziona un incantesimo qui sotto per capire come usarlo",
	["Title1"] = "Incantesimi",
	["Title2"] = "Sortilegi unici",
	["Title3"] = "Sortilegi condivisi",
	["ManaCost"] = "Mana richiesto: %s", 
	["TokenCost"] = "Gettoni richiesti: %s", 
	["Special"] = "Requisiti obbligatori: %s",
	["Execution"] = "Esecuzione: %s",
	["Description"] = "Descrizione: %s",
	["basic"] = "Incantesimo",
	["ultimate"] = "Sortilegio",
	["unlock"] = "0 (3 per sbloccare)",
	["none"] = "Nessuno",
}

module.gui.basic.jumpdelay = "ricarica salto"
module.gui.basic.dancetime = "È ORA DI BALLARE!"

--mana bar and mana messages - those will appear on the mana bars
module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "CONTROFIGURA",
	["spirit"] = "SPIRIT", --only for spirit spectres
	["welcome"] = "REGALO DI BENVENUTO",
	["drones"] = "DRONI",
	["orb"] = "SFERA",
	["refill"] = "RIFORNIMENTO", --for all 2nd rank bonuses
	["overload"] = "MANA A GOGO",
	["steal"] = "FURTO",
	["gift"] = "REGALO",
	["share"] = "CONDIVISIONE",
	["prank"] = "BURLA",
	["possession"] = "POSSEDIMENTO",
	["ritual"] = "RITUALE",
	["purge"] = "ANNICHILAZIONE",
	["blessing"] = "BENEDIZIONE",
	["hack"] = "HACK",
	["stash"] = "BOTTINO",
	["backdoor"] = "METAVERSO",
	["chamber"] = "OBLIO",
	["base"] = "FORTEZZA",
	["circus"] = "CIRCO",
	["shelter"] = "RIFUGIO",
	["haven"] = "PARADISO",
	["study"] = "STUDIO",
	["nether"] = "ALDILÀ",
	["guild"] = "GILDA",
	["nexus"] = "SETTA",
	["oasis"] = "OASI",
}

module.gui.hints = {
	["bcancel"] = "Premi B per cancellare", --xbox b
	["acancel"] = "Premi di nuovo per cancellare",
	["ocancel"] = "Cancella l'altro incantesimo", 
}

module.gui.gameover.extras = {

	["noobs"] = "Il tutorial è per i deboli!",
	["possessed"] = "Mannaggia a questi Heretic!",
	["new"] = "Nuovo rango sbloccato - %s",
	["none1"] = "UN MOMENTO! COSA?",
	["none2"] = "In questo gioco",
	["none3"] = "Ci sono gli incantesimi?"

}

module.gui.gameover.raceplacements = {
	"HAI VINTO LA GARA!",
	"SEI ARRIVATO SECONDO!",
	"HAI GUADAGNATO IL TERZO POSTO!",
	"Sei arrivato quarto.",
	"Sei arrivato quinto.",
	"Sei arrivato sesto.",
	"Sei arrivato settimo.",
	"Sei arrivato ottavo.",
	"Sei arrivato nono.",
	"Sei arrivato decimo.",
	"Sei arrivato undicesimo.",
	"Sei arrivato dodicesimo.",
}

return module

--[[
*** Website stuff to translate:
*** If you see ***, you do not need to transate that. Those are just for Your information. 

*** Game title, translate here if you have chosen the 2. option
*** 1. option - translate in translator portal

CRAZY STAIRS VR
---

*** Game description - transalte here if you have chosen the 2. option
*** make sure you put it through Roblox filter (eg. through any game chat)
*** 1. option - translate in translator portal

?? Can you climb up this Crazy Staircase?

?? The stairs will disappear, move and rotate. 
? Fear not however, because you can use spells to bend the staircase to your will.
?? Choose Patron, Keeper or Drifter to use helpful magic.
?? Choose Wicked, Heretic or Joker to use malicious magic.
?? Thief, Archon and Chameleon can be used both ways.
?? Try Hacker or Spectre for a solo challenge.
?? You can even try to solve the Tower without magic as a Muggle!
?? You can even put on Your VR headset, to wreak havoc in the server.

 ?? Use code "TRY SPECTRE" for 10 minute free Spectre game pass demo.
 ?? Use code "TRY CHAMELEON" for 10 minute free Chameleon game pass demo.
 ?? Use code "TRY 20 MANA" for 10 minute free Double Storage game pass demo.
---

*** Ignore below information if you have chosen the 2. option
*** 1. option - read on

*** Here is the list of all passes, products and badges that you need to translate through translator portal
*** Everything that is not on this list, you can safely ignore (like unlock all spells gamepass). Those are no longer available for purchase.
*** Both name and description need to be translated (ignore the icons)

*** Game passes
Spectre Alignment
Chameleon Alignment
Double Mana Storage

*** Game products
Refill mana
3 Multi Tokens
30 Multi Tokens
300 Multi Tokens

*** Badges
Patron's Pride
Joker's Trick
Wicked's Treason
Keeper's Order
Hacker's Exploit
Thief's Heist
Archon's Split
Drifter's Voyage
Heretic's Curse
Muggle's Logic
Leave No Noob Behind
Pranking Is Living
Destroy Everything
Order Restored
Rootkit Installed
Mine, Mine All Mine
Illuminati Confirmed
I'll Take The Elevator
Excommunication
Spells Are Overrated
Secret Badge
Skipped the tutorial
Prank the Creator
Full Circle
Perfect Circle
Possessed Fate
Architect's Design
--]]