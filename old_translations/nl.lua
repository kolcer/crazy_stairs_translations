local module = {}

module.gui = {}

module.gui.basic = {
["yes"] = "JA",
["no"] = "NEE",
["ok"] = "OKE",
["menu"] = "MENU",
["default"] = "STANDAARD",
["validate"] = "VALIDEREN",
["play"] = "SPEEL",
["skip"] = "TUTORIAL\nOVERSLAAN",
["loading"] = "LADEN, ALJEBLIEFT WACHT...",
["mode"] = "%s\nMODUS",
["cd"] = "ULTIMATE\nCOOLDOWN",
}

module.gui.switcher = {

["title"] = "WISSEL SERVER",

["public"] = "OPENBARE SERVER",
["private"] = "PRIVE SERVER",
["join"] = "MEEDOEN",
["friends"] = "VRIENDEN ONLINE",
["refresh"] = "verversen...",
["fail"] = "VERVERSEN GEFAALD!",

}

module.gui.serversettings = {

["title"] = "EIGENAAR INSTELLINGEN",

["Moderation"] = "MODDERATIE",
["rules"] = "Jouw server, Jouw regels.",
["temp"] = "Alle dempen en verbaningen zijn tijdelijk",
["kick"] = "KICK",
["ban"] = "VERBAN",
["mute"] = "DEMP",

["Drones"] = "DRONE INSTELLINGEN",
["DronesReadOnly"] = "DRONE INSTELLINGEN (alleen bekijken)",
["DroneEnabled"] = "Drones ingeschakeld",
["DroneFix"] = "Drones trappen herstellen",
["DroneRemove"] = "Drones verwijderd vervloekte kruisingen",
["DroneUnCurse"] = "Drones hersteld vervloekte trappen",
["DroneMove"] = "Drones verplaatst trappen in standaard modus",
["DroneSpin"] = "Drones draait trappen in standaard modus",
["DroneSpeed"] = "Drone verplaats snelheid (verdieping/seconde)",
["DroneDelay"] = "Drone draai looptijd (secondes)",
["DroneMax"] = "Maximale trappen (drones gaan sommige trappen vernietigen boven dit limiet)",
["DroneMin"] = "Minimale trappen (drones gaan trappen creëren als er niet genoeg zijn)",
["DroneBlock"] = "Vervloekte kruising kans voor elke lege kruising (procent)",
["DroneCurse"] = "Vervloekte trap kans voor het creëren en tegenkomen van normale trappen (procent)",

["Tower"] = "TOREN INSTELLINGEN",
["TowerReadOnly"] = "TOREN INSTELLINGEN (alleen bekijken)",
["InfMode"] = "Oneindige Modus (kan niet worden veranderd tijdens een race of regeneratie)",
["CasualPlayers"] = "Normale spelers toegestaan om spreuken te gebruiken",
["Regeneration"] = "Automatische trap generatie na een Wicked's Purge (gaat niet werken in oneindige modus)",
["EvenLevels"] = "Alleen Even Verdiepingen Levels Restricted",
["OrbMoves"] = "Eindspel bol veranderd van positie",
["InfRegeneration"] = "Automatische trap generatie op een nieuwe server, het veranderen van toren verdiepingen en na een oneindige race",
["TowerLevels"] = "Toren verdiepingen (of actieve verdiepingen in de oneindige modus). Kan niet worden veranderd tijden een race of regeneratie",
["RaceDuration"] = "Maximale Race Looptijd. Zal geen invloed hebben op de huidige race. (seconden)",
["InfStart"] = "Initiele Oneindige modus ronde interval (2 verdiepingen worden gecreërd iedere ronde) (seconden)",
["InfReduction"] = "Oneindige modus interval reductie (elke ronde wordt korter) (seconden)",
["InfMin"] = "Oneindige modus minimale interval looptijd (seconden)",
["Cooldown"] = "Evenement en Rig afkoel periode (seconden)",


}

module.gui.shop = {

["title"] = "CRAZY STAIRS WINKEL",

["chameleon"] = "Chameleons kan van alignment veranderen tijdens een klim.",
["spectre"] = "Spectre is een teleporteer gebasseerde alignment voor het beste alleen spel.",
["mana"] = "Brijd je Mana opslag capaciteit uit met 10 punten.",

["3tokens"] = "Ontgrendel 1 spreuk of gebruik 3 ultieme spreuken.",
["30tokens"] = "Ontgrendel 10 spreuken of gebruik 30 ultieme spreuken.",
["300tokens"] = "Genoeg om alle spreuken te ontgrendelen met 153 token over.",

--below messages apper on mouse hover
["3TOKENS"] = "3 Multi Tokens (R$%d)",
["30TOKENS"] = "30 Multi Tokens (R$%d)",
["300TOKENS"] = "300 Multi Tokens (R$%d)",
["SPECTRE PASS"] = "Spectre game pass. (R$%d)",
["MANA PASS"] = "20 Mana Opslag game pass. (R$%d)",
["CHAMELEON PASS"] = "Chameleon game pass. (R$%d)",

}

module.gui.spellbar = {

["share"] = "DEEL\nMANA",
["nocasual"] = "ALLEEN RACERS KUNNEN SPREUKEN GEBRUIKEN",

} 

module.gui.stats = {

["total"] = "Totale klimmen: %d / Overwinningen: %d",
["class"] = "Aantal keer als %s geklomen: %d",
["best"] = "Beste tijd als %s: %.2f",
["na"] = "N/A",

}

module.gui.timedspell = {

["possessed"] = "BEZETEN! (vind Mana om te ontsnappen)",
["released"] = "BEVRIJD",
["timesup"] = "tijd is op...",

}


module.gui.activatecham = {

["title"] = "ACTIVEER CHAMELEON",
["body"] = "Wil je Chameleon Modus activeren?\nHet blijft actief voor de rest van de klim."

}

module.gui.caceltimed = {

["title"] = "GETIMEDE SPREUK ANNULEREN",
["body"] = "Wil je deze getimede spreuk annuleren? Tokens worden niet teruggegeven."

}

module.gui.climbtimer = {

["prompt"] = "Klim de\ntrap!",
["floor"] = "Verdieping",
["last"] = "Laatste tijd",

}

module.gui.codes = {

["title"] = "VOER DE CODE IN",
["body"] = "Voer je code hier in:",
["prompt"] = "(code)",
["button"] = "VALIDEREN",

}

module.gui.gauges = {

["prompt"] = "Spring om verder te gaan, klik opnieuw om te annuleren.",

["found"] = "%d trappen gevonden (%.1f%% fill)",
["special"] = "%d zijn speciaal (%.1f%%)",
["affected"] = "%d trappen worden geëffecteerd (%.1f%%)",
["cursed"] = "%d vervloekte kruissingen gevonden (%.1f%%)",
["fill"] = "%d trappen worden gecreërd (%.1f%%)",
["purge"] = "%d objecten worden vernietigd (%.1f%%)",
["normal"] = "%d zijn al normaal (%.1f%%)",
["restore"] = "%d trappen worden hersteld (%.1f%%)",
["bypass1"] = "%d vloeken staan in de weg (%.1f%%)",
["bypass2"] = "%d bypasses bestaan al (%.1f%%)",
["bypass3"] = "%d bypasses worden er gemaakt (%.1f%%)",

}

module.gui.jukebox = {

["title"] = "JUKEBOX",

["master"] = "HOOFD VOLUME",
["default"] = "(gebruikt hoofd volume)",
["climb"] = "KLIM MUZIEK",
["endgame"] = "EINDSPEL MUZIEK",
["failed"] = "[laden gefaald]",

}

module.gui.results = {

["title"] = "RACE RESULTATEN",

["place"] = "PLAATS",
["name"] = "NAAM",
["level"] = "MAXIMALE HOOGTE",
["time"] = "TIJD",
["rank"] = "RANG",
["not"] = "N/A",
[1] = "WINNAAR",
[2] = "2de",
[3] = "3de",
[4] = "4de",
[5] = "5de",
[6] = "6de",
[7] = "7de",
[8] = "8ste",
[9] = "9de",
[10] = "10de",
[11] = "11de",
[12] = "12de",

}

module.gui.racetimer = {

["gather"] = "Je zit niet\nin de race.",
["race"] = "RACE\nKLAAR!",
["inf"] = "Geëlimineerd!",
["off"] = "RACE\nTIMER.",
["wait"] = "Race in",
["on"] = "Rang",

}

module.gui.ranks = {

["title"] = "JOUW RANG",

--none
["none_1"] = "Je hebt geen alignment gekozen!",
["none_2"] = "Je zal geen toegang hebben tot een spreuk!",
["none_3"] = "Spring op morph (in het midden van de map) - om van alignment te veranderen.",

--shared
["higher"] = "HOGERE RANG VERWORVEN",
["current"] = "JE HUIDIGE RANG",
["lower"] = "RANG NIET VERWORVEN",

["more"] = "Je moet nog %d keren de toren beklimmen als %s om deze rang te krijgen.",
["done"] = "Je hebt al een hogere rang. Alle lagere rang effecten zitten bij je huidige rang.",
["max"] = "Dit is de maximale rang. Je hebt %d keer de toren geklommen als %s.",



["PATRON"] = {
	"Dit is je beginnende PATRON rang.",
	"Je krijgt bonus Mana als drones in PATRON modus zijn.",
	"Als iemand een OPROEPER spreuk gebruikt, wordt je Mana hersteld.",
	"Je verbindingen blijven 2 keer zo lang (120s).",
	"Je portalen blijven 2 keer zo lang (120s).",
	"Roep de bol spreuk kosten is verlaagt naar 2 Mana.",
	"Je OPROEPER spreuk blijft 50% langer (90s).",
	"Als je Mana op is, spring op een platform om gezegend te krijgen met 1 Mana.",
	"De opgeroepen bol zal 2 keer zo snel verplaatsen.",
}, 
["JOKER"] = { 
	"Dit is je beginnende JOKER rang.",
	"Je krijgt bonus Mana als drones in JOKER modus zijn.",
	"Als iemand een DRAAIER spreuk gebruikt, wordt je Mana hersteld.",
	"Disco trappen hebben geen effect op jou.",
	"Je kan nu alle onzichtbare trappen zien. Je heb de optie om ze niet te onthullen.",
	"Je kan nu platform vallen en neppe trappen detecteren.",
	"Je DRAAIER spreuk blijft 50% langer (90s).",
	"Je kan nu op neppe trappen lopen.", 
	"Je krijgt bonus Mana als iemand een grap triggert (1 keer per grap per speler)",
},
["WICKED"] = {
	"Dit is je beginnende WICKED rang.",
	"Je krijgt bonus Mana als drones in WICKED modus zijn.",
	"Als iemand een BENDER spreuk gebruikt, wordt je Mana hersteld.",
	"Je kan nu op obbies lopen alsof het normale trappen zijn.",
	"VERNIETIG BENEDEN spreuk is nu gratis.",
	"Je krijgt bonus Mana voor het vernietigen van een speciale trap.",
	"Je BENDER spreuk blijft 50% langer (90s).",
	"Je hebt de optie om het triggeren van onderliggende Wicked Rig te ontwijken.",
	"Je kan nu vervloekte trappen vernietigen.",
},
["SPECTRE"] = { 
	"Dit is je beginnende SPECTRE rang.",
	"Je krijgt bonus Mana als drones in SPECTRE modus zijn.",
	"Als iemand een SHIMMERING spell gebruikt, wordt je Mana hersteld.",
	"Je krijgt 1 Mana extra als je kristallen collecteerd met Je Geest.", 
	"DE-GHOSTIFY spreuk is nu gratis.",
	"Je kunt nu de klim afmaken door met je geest de eindspelbol te bereiken.",
	"Je SHIMMERING spreuk blijft 50% langer (90s).",
	"Je hebt de optie om het triggeren van onderliggende Spectre Rigs te ontwijken.", 
	"Je kan nu op geest trappen lopen.",
},
["CHAMELEON"] = { 
	"Dit is je beginnende SPECTRE rang. Werkelijke rangbonussen zijn nog steeds van toepassing.",
	"UITZONDERING! Je krijgt ALLEEN bonus Mana, als drones in CHAMELEON modus zijn.",
	"Veranderen van alignment is veel sneller nu.",
	"Je handen gloeien nu paars, voor het verborgen houden van je motief.",
	"NEPPE TRAPPEN en TRAPPEN OPROEPEN spreuken gaan nu beide een paars effect krijgen.",
	"Je kan nu VERPLAATS TRAP NAAR BENEDEN, OPHAALBRUG en TRAP OVERSTEKEN afgewezen spreuken uitvoeren.",
	"Je kan nu TRAPPEN KROMTREKKEN en BOVEN OPHAALBRUG afgewezen spreuken uitvoeren.",
	"Het wijzigen van alignment is nu volledig naadloos.",
	"Je kan nu CHAMELEON RIG spreuk uitvoeren. (multi tokens nodig)",
},
["MUGGLE"] = { 
	"Dit is je beginnende MUGGLE rang.",
	"Je spring afkoel periode is verlaagd met 0.125s.",
	"Je spring afkoel periode is verlaagd met 0.25s.",
	"Je spring afkoel periode is verlaagd met 0.375s.",
	"Je spring afkoel periode is verlaagd met 0.5s.",
	"Je loopsnelheid is verhoogd met 10%.",
	"Je loopsnelheid is verhoogd met 20%.",
	"Je loopsnelheid is verhoogd met 30%.",
	"Je springkracht is verhoogd met 20%.",
},
["KEEPER"] = {
	"Dit is je beginnende KEEPER rang.",
	"Je krijgt bonus Mana als drones in KEEPER modus zijn.",
	"Als iemand een HEMELVAART spreuk gebruikt, wordt je Mana hersteld.",
	"BEWEEG WILLEKEURIG spreuk en Keeper Rigs die je triggerd, zorgen er nooit voorMOVE RANDOM spell and Move Rigs that you trigger, will never cause stairs to go down.",
	"Je kan nu omgedraaide trappen bewegen.",
	"Je herstel spreuk is nu gratis.", 
	"Je HEMELVAART spreuk zal nu 50% langer zijn (90s).",
	"Je hebt de optie om het triggeren van onderliggende Keeper Rig te ontwijken.",
	"Je kan nu vervloekte trappen en vervloekte kruisingen herstellen.",
},
["HACKER"] = { 
	"Dit is je beginnende HACKER rang.",
	"Je krijgt bonus Mana als drones in HACKER modus zijn.",
	"Als iemand een EXPLOIT spreuk gebruikt, wordt je Mana hersteld.",
	"Neerwaardse roltrappen bewegen niet, als jij erop staat.",
	"Je horizontale DASH spreuk is nu 50% sneller.",
	"Je KNIPPER door trappen boven je spreuk is nu 50% sneller.",
	"Als je Mana op is, spring op een platform om jezelf 1 Mana te hacken.", 
	"Je hebt de optie om het triggeren van onderliggende Hacker Rigs te ontwijken.",
	"Als er minstens 1 vrije kruising is, het uitvoeren van glitch op de bovenste verdieping zal een trap naast de bol rematerializeren.", 
},
["THIEF"] = {
	"Dit is je beginnende THIEF rang.",
	"Je krijgt bonus Mana als drones in THIEF modus zijn.",
	"Als iemand een OVERVAL spreuk gebruikt, wordt je Mana hersteld.",
	"Je ZIJ PAS blijft nu 2 keer zo lang (120s).",
	"Je OMHOOG PAS blijft nu 2 keer zo lang (120s).",
	"Je kan nu elk soort trap stelen, behalve de vervloekte.",
	"Je OVERVAL spreuk blijft nu 50% langer (90s).",
	"Als je Mana op is, spring op een platform om 1 Mana uit je voorraad te halen.", 
	"Je kan nu 2 gestolen trappen hebben op hetzelfde moment.",
},
["ARCHON"] = {
	"Dit is je beginnende ARCHON rang.",
	"Je krijgt bonus Mana als drones in ARCHON modus zijn.",
	"Als iemand een SPLITTER spreuk gebruikt, wordt je Mana hersteld.",
	"Je kan nu VERNIETIG SPLIT gebruiken op platformen.",
	"Je VERNIETIG SPLIT spreuk is nu gratis.",
	"Splits teleporteren je nooit naar beneden.",
	"Jouw Splitter spreuk blijft 50% langer (90s).",
	"Je kan nu split spreuken uitvoeren op al gesplitte trappen.",
	"Je hebt de optie om teleportaties te ontwijken behalve die omhoog gaan.",
},
["DRIFTER"] = {
	"Dit is je beginnende DRIFTER rang.",
	"Je krijgt bonus Mana als drones in DRIFTER modus zijn.",
	"Als iemand een STIJGER spreuk gebruikt, wordt je Mana hersteld.",
	"Je verticale platformen drifts komen en bewegen 50% sneller.",
	"Je kan nu gedrifte trappen draaien.",
	"Je kan nu opwaardse driften boosten met beide STIJGER en OMHOOG DRIFT spreuken.",
	"Je STIJGER spreuk blijft 50% langer (90s)",
	"Je hebt de optie om het triggeren van onderliggende Drifter Rigs te ontwijken.",
	"Je kan nu opwaardse driften dubbel boosten met beide STIJGER en OMHOOG DRIFT spreuken.",
},
["HERETIC"] = {
	"Dit is je beginnende HERETIC rang.",
	"Je krijgt bonus Mana als drones in HERETIC modus zijn.",
	"Als iemand een VERVLOEKING spreuk gebruikt, wordt je Mana hersteld.",
	"Als je Mana op is, kun je een vervloekte trap aanraken om het te onvloeken en krijg 1 Mana.",
	"Je bent nu immuun voor Heretic Rigs.",
	"Je nu de FLIKKEREN spreuk gebruiken om een kruispunt te onvloeken.",
	"Jouw VERVLOEKING spreuk blijft nu 50% langer (90s)",
	"MAAK VERVLOEKTE TRAP en VERVLOEKING spreuken kunnen nu kruissende vervloekte trappen vernietigen.",
	"Je krijgt bonus Mana iedere keer als iemand is bezeten.",
},


}

module.gui.reshuffle = {

["title"] = "TRAPPEN HERSCHIKKINGS MODUS",

["body"] = "Wil je dat de trappen botsingen voorkomen tijdens het verplaatsen? Zo niet, alle trappen in de weg worden vernietigd.",

}

module.gui.multitokens = {

["title"] = "KIES JE TOKENS",

["info"] = "Je hebt 3 tokens nodig op een spreuk te ontgrendelen.",
["notokens"] = "Je hebt geen multi tokens meer.",
["nopass"] = "GEEN GAME PASS",

}

module.gui.feedback = {

["title"] = "VERSTUUR FEEDBACK",

["prompt"] = "Klik hier om een bericht te sturen naar de ontwikkelaars! (minimum van 20 karakters)",
["send"] = "VERSTUUR",
["locked"] = "OP SLOT",

}

module.gui.settings = {

["title"] = "SPEL INSTELLINGEN",

["ANIM1"] = "ANIMATIE\nINSTELLINGEN",	
["ANIM2"] = "EXTRA ANIMATIE\nINSTELLINGEN",
["MISC"] = "OVERIGE\nINSTELLINGEN",
["INTERFACE"] = "INTERFACE\nINSTELLINGEN",	

["size"] = "Laat Grootte Animatie Zien",
["color"] = "Laat Kleur Animatie Zien",
["escalator"] = "Laat Roltrap Animatie Zien",
["sanctuary"] = "Laat Heiligdom Animatie Zien",
["list"] = "Laat geanimeerde spelerlijst zien",
["ghosts"] = "Geanimeerde geesten",
["distance"] = "Maximale animate afstand toenemen",
["morph"] = "Laat morph animatie zien als je Deceiver of Usurper gebruikt",
["billboard"] = "Laat Je eigen avatar aanplakbod zien",
["rank"] = "Laat Je rol in avatar aanplakbord zienShow Your role in avatar billboard",
["switchback"] = "Automatisch terug wisselen naar normale spreuken na het uitvoeren van een ultieme spreuk",
["safecancel"] = "Laat een bevestigingsvenster zien bij het annuleren van een getimede spreuk",
["multi"] = "Laat Multi Token venster zien na een klim",
["kchoices"] = "Laat directie selectie venster zien voor Keeper (werkt niet op Xbox)",
["achoices"] = "Laat directie selectie venster zien voor Archon (werkt niet op Xbox)",
["stats"] = "Laat extra statestieken zien bij het uitvoeren van Rig & Evenement spreuken",


}

module.gui.gameover = {}

module.gui.gameover.results = {

["class"] = "JOUW ALIGNMENT",
["time"] = "JOUW KLIM TIJD",
["climbs"] = "KLIMMEN GEKREGEN",
["tokens"] = "TOKENS GEKREGEN",
["rank"] = "JOUW HUIDIGE RANG",

}

module.gui.gameover.messages = {

["PATRON"] = {
	"HELP, BESCHERM en MAAK",
	"Deze noobs hebben onze hulp nodig",
	"Er zal geen hoop zijn zonder ons Patrons",
	"11 van de 10 op de schaal van aardigheid",
	"Delen is zorgzaam",
	"Je kan nooit te veel trappen hebben",
	"Er is heen ik in Team, maar er is sowieso een Patron",
	"Je kan geen trappenhuis hebben zonder trappen",
	"Weer een klus goed gedaan",
},
["JOKER"] = {
	"MISLEID, VERWAR en LACH",
	"Dit trappenhuis is een grap",
	"Waarom zo serieus?",
	"HA! HA! HA!",
	"Relax en kijk ze vallen",
	"Ben je boos bro?",
	"Je weet de regels en ik ook",
	"Het zou saai zijn zonder mij",
	"Neppe trappen zijn echt",
},
["WICKED"] = {
	"VOORKOM, BLOK en VERNIETIG",
	"Ik ben niet slecht, er zijn gewoon te veel trappen",
	"Die trappen moeten weg",
	"Zie de wereld branden",
	"Dit trappenhuis ziet er beter uit zonder trappen",
	"Ik zal je geest, ziel en lichaam (en trappen) vernietigen",
	"1)Maak een obby 2)Kijk hoe noobs worstelen 3)Geniet ervan",
	"Alle dingen sterven uiteindelijk",
	"Maak je hoofd leeg - maar maak eerst de trap vrij",
},
["SPECTRE"] = {
	"VERDWIJN, VERBERG en TELEPORTEER",
	"Natuurlijk is teleporteren veilig",
	"Mij kun je niet vangen",
	"De schoonheid van spookachtige trappen is ongeëvenaard",
	"Vallende mensen? Waarom zou ik me zorgen maken?",
	"Je kunt al je problemen met teleporteren oplossen",
	"Als je eenmaal begint te teleporteren, kun je niet meer stoppen",
	"Ik teleporteer tenminste geen trappen",
	"Ga zo door noobs!",
},
["MUGGLE"] = {
	"LOOP, SPRING en VAL",
	"We hadden die mooie spreuken niet in de alfafase",
	"Ik zweer dat die drones zijn opgetuigd",
	"Er is altijd een pad",
	"Trapspringen is een talent",
	"Mijn geheim? Stop en Denk",
	"Ik geloof niet in magie",
	"Soms moet je wachten op een drone - zoals in het echte leven",
	"Gebruiken mensen spreuken? Noob!",
},
["CHAMELEON"] = {
	"KOPIREN, IMIREREN en VERRASSEN",
	"Ik ben te lui om met mijn eigen spreuken te komen",
	"Meer variatie - meer plezier",
	"Teaming is traag - Morphing is snel",
	"Aanpassingsvermogen is de basis van overleven",
	"IK BEN besluitvaardig, ik verander gewoon graag van gedachten",
	"Heb je een klasse onder de knie? Ik heb alle klasses onder de knie",
	"Slechts één alignment? Saai!",
	"Ik hou van chaos",
},
["KEEPER"] = {
	"VERPLAATSEN, DRAAIEN en BEDIENEN",
	"Stop met het verpesten van mijn trap!",
	"Weer een groot succes voor de Keepers",
	"Missie geslaagd!",
	"Ik hou van orde",
	"Chaos getemd",
	"Ik ben de enige echte alignment",
	"Op een dag zal ik deze toren uitzoeken",
	"Vaste trappen - vrolijke trappen",
},
["THIEF"] = {
	"LENEN, GEBRUIKEN EN RETOURNEREN",
	"Het heet eigenlijk lenen",
	"Vlak land is zo mooi",
	"Ik steel tenminste geen platformen",
	"Loop op de een of andere manier gewoon niet op thief rigs",
	"Heb je me iets zien stelen?",
	"Ik ben als Robin Hood - Steel van de rijken en geef aan mezelf",
	"Het is niet alsof iemand zou merken dat er een trap ontbreekt",
	"Herverdeling van trappen voorkomt anarchie",
},
["HACKER"] = {
	"EXPLOIT, GLITCH EN BREEK",
	"Eerlijk spel? Zoiets bestaat niet",
	"Wachten! Deze trap is niet echt... Leven we in een gesimuleerde Roblox-ervaring?",
	"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
	"Heb je hier ergens regels gepost?",
	"Ik speel vals? Iedereen hier is",
	"Ik bedoel hier en daar een paar tweaks - Nauwelijks een exploit",
	"Snelheid is het enige dat telt",
	"Roltrappen voor het leven",
},
["HERETIC"] = {
	"JE KOMT NIET VOORBIJ",
	"Zwarte magie verbieden is als plezier verbieden",
	"Mensen bezitten. Houd de Bovengeest verzadigd.",
	"Death and decay",
	"Donker ritueel compleet",
	"We moeten ons niet beperken",
	"Bezeten worden",
	"Kies de donkere kant - het is gemakkelijker dan verlichting",
	"Waarom zou het mij iets schelen als mensen vast komen te zitten?",
},
["ARCHON"] = {
	"PORTAAL OPENEN, ???, WINST",
	"Vroeger regeerde ik over deze trap",
	"Plan vooruit om te slagen",
	"Leer hard en je zult slagen",
	"De mogelijkheid om trappen te splitsen is een kunstvorm",
	"Zet jezelf uit",
	"De taart is een leugen",
	"Er is een splitsing voor elk probleem",
	"Iedereen in de war!",
},
["DRIFTER"] = {
	"SURF, RIT en GLIDE",
	"Wie heeft er eigenlijk trappen nodig? We zijn in de ruimte!",
	"Vlieg, jullie dwazen!",
	"Surf de zonnewind",
	"Er is geen beneden in de ruimte - Spring zonder zorgen",
	"Drift alles - Spring naar de overwinning",
	"Stop niet - Blijf drijven",
	"Ik hou van platformen rijden",
	"Blijf surfen",
},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

["SAVIOUR"] = "Laat geen noob achterLeave no noob behind",
["IT"] = "Pranken is leven",
["ANNIHILATOR"] = "Alles verwoesten!",
["AETHER"] = "Betreed de onderwereld",
["DABSFORLIF"] = "Spreuken zijn overschat",
["USURPER"] = "Ik hou gewoon van alle spreuken",
["ADMIRAL"] = "Volgorde hersteld",
["OUTLAW"] = "De mijne, de mijne allemaal van MIJ!",
["ZERO"] = "Rootkit geïnstalleerd",
["EXILED"] = "Excommunicatie",
["ILLUMINATI"] = "Illuminati bevestigd",
["STRIDER"] = "Ik neem de lift",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {
	
"CRAZY STAIRS",
"Game geconceptualiseerd, ontworpen en geschreven door Sleazel",
"Hulp bij ontwerp - cakegirlserina",
"Modellen van ZielonyLeszek",
"Skyboxes van @wwwtyro's generator",
"Gegevens opslaan module, DataStore2, van Kampfkarren",
"Origineel scorebordscript door ThatTimothy",
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
	"VERTALINGEN:",
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
	"Bosanski - xootynator",	"SPECIALE DANK NAAR:",
"kolcer",
"ThatTimothy",
"SerpentineKing",
"WhereDidTheSunGo",
"b3ntheplay3r2",
"TehEpix2",
"Narvog1",
"shark66655",
"MUZIEK (APM-catalogus):",
"Intro muziek - Allure van Martin Albert Sponticcia",
"\"None\" eindspel muziek - Deceived van Martin Albert Sponticcia",
"Muggle muziek - Hyperdrive van Gary Leslie Scargill, Peter Nicholas Oldroyd",	
"Muggle eindspel muziek - Reflections van Milan Pilar",
"Patron muziek - Tranquilize van Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
"Patron eindspel muziek - Dreamers van Joseph Alexander",
"Joker muziek - Crosswind van Martin Albert Sponticcia",
"Joker eindspel muziek - Fender Stab van Steven Raymond Bush",
"Wicked muziek - Wicked van Daniel Jay Nielsen, Nathan Duvall",
"Wicked eindspel muziek - Something Wicked van Cris Velasco",
"Spectre muziek - Reflections van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Spectre eindspel muziek - Cosmic Dust van Milan Pilar",
"Keeper muziek - Automotion van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Keeper eindspel muziek - Synth On The Highway van Richard Adrian Maxwell Preston",
"Hacker muziek - Network van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Hacker eindspel muziek - Descending Into Oblivion van Richard Adrian Maxwell Preston",
"Thief muziek - Reaching Out van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Thief eindspel muziek - Soaring van Richard Adrian Maxwell Preston",
"Archon muziek - Aperture van Paul Emons, Richard Goodliff, Ian Robson",
"Archon eindspel muziek - Rendezvous van Paul Emons, Richard Goodliff, Ian Robson",
"Drifter muziek - Communique van Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
"Drifter eindspel muziek - Fragile van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Heretic muziek - Mother van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Heretic eindspel muziek - Being Me van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Chameleon muziek - Rah van Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Chameleon eindspel muziek - Midnight Runner van Richard Adrian Maxwell Preston",
"Geestenbond muziek - Amber Garden van Paul Emons, Richard Goodliff, Ian Robso",
"Bezeten muziek - Dark Souls van David Arkenstone",
"Joker's disco trap muziek - To The Disco van Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Drifter's platform muziek - Radioactivity van Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
"Bedankt voor het spelen!",	
}



module.static = {

--INTRODUCTION SCREENS

["cla_1"] = "Hoe te spelen?",
["cla_2"] = "Ten eerste is het ten zeerste aanbevolen om de tutorial te voltooien. Als je dat nog niet hebt gedaan, neem dan opnieuw deel aan het spel, want anders kan de ervaring erg verwarrend worden.",
["cla_3"] = "Het doel van het spel is om de top te bereiken en de zwevende Energiebol te verzamelen. Kies eerst je uitlijning (klasse) door op de gloeiende blokken in het midden van de kaart te springen.",
["cla_4"] = "Als je eenmaal tevreden bent met de keuze, verzamel dan zwevende vormen om Mana te vullen en de trap op te gaan. Gebruik je klasspreuk om je te helpen bij het klimmen.",
["cla_5"] = "Hoe spreuken uitspreken?",
["cla_6"] = "Elke spreuk heeft manakosten die nodig zijn om de spreuk uit te spreken. Als je genoeg mana hebt verzameld, klik je op de spreuk. Je handen beginnen te gloeien, wat aangeeft dat je spreuk succesvol is uitgevoerd.",
["cla_7"] = "Na het casten moet de spreuk nog worden uitgevoerd. Alle spreuken worden uitgevoerd door te springen. Afhankelijk van de spreuk moet je op een platform of op een trap springen. Er verschijnen pijlen om je te helpen met de executie.",
["cla_8"] = "Zodra je de klim hebt voltooid, ontvang je 3 spreukfiches waarmee je één spreuk kunt ontgrendelen. Voltooi de klim opnieuw om meer spreuken te ontgrendelen. Je kunt geen tokens van één klasse gebruiken om een ??spreuk te ontgrendelen van een ander.",
["cla_9"] = "Hoe spreek je ultieme spreuken uit?",
["cla_10"] = "Eerst moet je alle basisspreuken ontgrendelen om toegang te krijgen tot de ultieme spreuken. Ultieme spreuken hoeven niet zelf te worden ontgrendeld, maar ze gebruiken tokens in plaats van mana wanneer ze worden gebruikt.",
["cla_11"] = "Voltooi de klim voldoende vaak om alle basisspreuken te ontgrendelen. Misschien wil je proberen de race te winnen om extra tokens te krijgen. Er is ook een optie om tokens te kopen. Eenmaal ontgrendeld, klik je op de meest linkse knop of druk je op 'C '",
["cla_12"] = "Sommige ultieme spreuken zijn getimed en hoeven niet te worden uitgevoerd. Lees meer informatie in de Alignment Guilds om meer te weten te komen over een ultieme spreuk, voordat je ze gebruikt. Als je een getimede spreuk annuleert, worden tokens niet terugbetaald",

["pro_1"] = "PRO TOREN",
["pro_2"] = "Even niveaubeperkingen",
["pro_3"] = "In de Pro Tower kunnen sommige platformspreuken niet op de even niveaus worden gebruikt. Trap, Portal maken, Verticale Teleport, Spiral Staicase en Willekeurige Teleport kunnen alleen op oneven niveaus worden uitgevoerd.",
["pro_4"] = "Drifters kunnen die platforms ook niet afdrijven. Getroffen platforms zijn gemarkeerd met de rode holle cirkel in het midden.",
["pro_5"] = "Vervloekte trap",
["pro_6"] = "In de Pro Tower zullen drones willekeurig vervloekte trappen creëren of normale trappen in vervloekte trappen veranderen. Er is 20% kans dat vervloekte trappen verschijnen. Gidspijlen worden niet weergegeven in de buurt van vervloekte trappen.",
["pro_7"] = "Cursed Stairs zijn immuun voor de meeste spreuken. Je kunt er niet doorheen teleporteren en ook niet de Hacker Blink-spreuk gebruiken. Bovendien werken alle spreuken die de vernietiging van de Cursed Stairs zouden veroorzaken niet (zoals Keeper's Move).",
["pro_8"] = "Alleen Heretics en Admirals kunnen Vervloekte Trappen herstellen. Zuiverings Evenement en Herstel zal alle vervloekte trappen ook verwijderen. Drones zullen echter altijd nieuwe maken in Pro Tower.",
["pro_9"] = "Vervloekte kruispunten",
["pro_10"] = "In de Pro Tower zullen de drones ook willekeurig vervloekte kruispunten maken. Als de drone een leeg kruispunt vindt, is er 20% kans op de vloek. De gidspijlen veranderen in kruisen om het kruispunt te markeren.",
["pro_11"] = "Cursed Intersections voorkomen alle platformspreuken, die op pijlen worden uitgevoerd. Je kunt geen trappen, links maken of teleporteren via Cursed Intersection",
["pro_12"] = "Alleen Heretics, Admirals en Drones kunnen Vervloekte Kruispunten herstellen. Net als bij Vervloekte Trappen, verwijderd Wicked's Zuiverings Evenement alle vloeken, maar tijdens de regeneratie verschijnen er nieuwe.",

["inf_1"] = "ONEINDIGE TOREN",
["inf_2"] = "RACE VERPLICHT",
["inf_3"] = "In de oneindige toren is racen verplicht. Casual spelers mogen geen spreuken uitspreken en ontvangen geen beloningen voor klimmen. Het verzamelen van de eindspelbol levert slechts 10 mana op.",
["inf_4"] = "Om de oneindige toren te 'voltooien' moet je meedoen aan de race en zo lang mogelijk proberen erop te blijven. Je ontvangt beloningen (indien van toepassing) na eliminatie.",
["inf_5"] = "Fallen Drone",
["inf_6"] = "In tegenstelling tot klassieke en professionele torens, heeft Fallen Drone een speciale taak in de oneindige toren.",
["inf_7"] = "Elk verhogingsinterval creëert Fallen Drone 2 nieuwe niveaus. Elk even niveau wordt beperkt. Bovendien kunnen sommige trappen of kruispunten zelfs vervloekt worden.",
["inf_8"] = "Eerste interval duurt 20 seconden. Elke verhoging zal het interval met een halve seconde verkorten, totdat de niveaus sneller worden gecreëerd dan ze konden worden beklommen.",
["inf_9"] = "Gum",
["inf_10"] = "Gum is een speciaal krachtveld dat samen met de toren omhoog gaat en onderste niveaus verwijdert. Door achter de gum te vallen, worden spelers uit de ronde geëlimineerd. Dit is vergelijkbaar met het verhogen van lava in andere spellen.",
["inf_11"] = "Net als bij Fallen Drone, wordt de gum sneller. Het gaat echter gestaag omhoog, in plaats van 2 niveaus tegelijk te verwijderen.",
["inf_12"] = "Trappen en platforms die door de gum zijn aangeraakt, zullen verdwijnen. Probeer de gum zo lang mogelijk te ontwijken om de overwinning te verzekeren.",

["cus_1"] = "AANGEPASTE TOREN",
["cus_2"] = "JIJ BESLIST!",
["cus_3"] = "In de aangepaste toren kunt u alle toreninstellingen naar wens aanpassen.",
["cus_4"] = "Beloningen in Custom Tower worden gehalveerd. Je krijgt elke 12 niveaus een token en elke 30 niveaus een kwalificatieklim.",
["cus_5"] = "Toren instellingen",
["cus_6"] = "Door de toreninstellingen te wijzigen, kunt u het naar uw zin hebben. Kies niveaus, beperk even niveaus of stel de toren zelfs in op de oneindige modus.",
["cus_7"] = "Alleen de servereigenaar kan de instellingen aanpassen. Daarom worden openbare servers niet ondersteund in de Custom Tower.",
["cus_8"] = "Drone-instellingen",
["cus_9"] = "Je kunt ook de kleine drone-instelling wijzigen. Pas het maximale aantal, het minimale aantal aan of schakel ze zelfs helemaal uit.",

["vr_1"] = "Door Crazy Stairs in VR-modus te starten, word je automatisch architect.",
["vr_2"] = "In tegenstelling tot gewone spelers hoeft Architect de trap niet op. Je doel is om andere spelers te helpen of te voorkomen dat ze de toren beklimmen.",
["vr_3"] = "De keuze is aan jou. Ben je een bedreiging of een redder? Of wil je gewoon wat rommelen? Veel plezier!",
["vr_4"] = "Hoe te navigeren?",
["vr_6"] = "Gebruik uw rechter thumbstick om omhoog of omlaag te bewegen. Als u de rechter thumbstick naar links of rechts kantelt, zal de camera 'snap' draaien.",
["vr_7"] = "Probeer buiten de trap te blijven voor een beter zicht en gemakkelijker richten.",
["vr_8"] = "Hoe spreuken uitspreken?",
["vr_9"] = "Om een ??spreuk uit te spreken, knijp je in de magische bol met de greepknop. Er verschijnt een laseraanwijzer waarmee je trappen en platforms kunt richten voor het uitvoeren van spreuken.",
["vr_10"] = "Voer de spreuk uit met de activeringsknop, terwijl je de greepknop nog steeds ingedrukt houdt. Elke uitlijning in VR heeft twee spreuken. Een platform- en een trapspreuk. Afhankelijk van het doelwit wordt een juiste spreuk gekozen." ,
["vr_11"] = "Als u een afstemming in de VR-modus wilt wijzigen, houdt u de triggerknop ingedrukt, zonder de greepknop. U kunt de uitlijning vervolgens wijzigen met de thumbstick van de corresponderende hand.",

--ROOMS DOOR TEXTS

["home_1"] = "MUGGLE'S THUIS",
["home_2"] = "ONS MOTTO:\nLOOP\nSPRING\nEN\nVAL",
["home_3"] = "PROS:\nSnelheids- en springbonus bij hogere rangen\nOpscheppen\nCONS:\nGeen spreuken\nLoopt gemakkelijk vast",
["home_4"] = "'We hadden die mooie spreuken niet in de alpha-fase!'\ncitaat van onze oprichter",

["oasis_1"] = "CHAMELEON'S OASE",
["oasis_2"] = "ONS MOTTO:\nCOPY\nIMITEEER\nEN\nVERRASSING",
["oasis_3"] = "PROS:\nKan alignment overal en altijd wisselen\nCONS:\nKost Robux\nHet rangschikken van alle klassen kost tijd",
["oasis_4"] = "'Ik ben te lui om met mijn eigen spreuken te komen.'\ncitaat van onze oprichter",

["nexus_1"] = "HERETIC'S NEXUS",
["nexus_2"] = "ONS MOTTO:\nJIJ\nZAL\nNIET\nPASSEREN",
["nexus_3"] = "PROS:\nBeste in pro tower\nKan niet worden gestopt\nCONS:\nTeaming is lastig\nHeeft honger",
["nexus_4"] = "'Het verbieden van zwarte magie is hetzelfde als het verbieden van plezier.'\ncitaat van onze oprichter",

["guild_1"] = "THIEF'S GILDE",
["guild_2"] = "OUR MOTTO:\nLEEN\nGEBRUIK\nEN\nTERUG",
["guild_3"] = "PROS:\nMana efficient\nVeelzijdig\nCONS:\nMoet trappen stelen\nKan kruisende trappen niet slopen",
["guild_4"] = "'Het heet eigenlijk lenen.'\ncitaat van onze oprichter",

["nether_1"] = "SPECTRE'S NETHER",
["nether_2"] = "ONS MOTTO:\nVERDWIJNEN\nVERBERGEN\nAND\nTELEPORT",
["nether_3"] = "PROS:\nSnelle spreuken\nPerfect voor solo spel\nCONS:\nKost Robux\nNiet aanbevolen voor teams",
["nether_4"] = "'Natuurlijk is teleporteren veilig.'\ncitaat van onze oprichter (MIA)",

["study_1"] = "ARCHON'S STUDIE",
["study_2"] = "ONS MOTTO:\nOPEN\nPORTAAL\n???\nWINST",
["study_3"] = "PROS:\nHandige rig\nVerwart tegenstanders\nCONS:\nMoeilijk om te leren\nVereist planning",
["study_4"] = "'Vroeger heerste ik over deze trap.'\ncitaat van onze oprichter",

["haven_1"] = "PATRON'S TOEVLUCHTSOORD",
["haven_2"] = "ONS MOTTO:\nHELP\nBESCHERM\nEN\nCREËR",
["haven_3"] = "PROS:\nMakkelijkst te leren\nTeamspeler\nCONS:\nGebruikt veel Mana\nKan bloedzuigers aantrekken",
["haven_4"] = "'Die noobs hebben onze hulp nodig!'\ncitaat van onze oprichter",

["shelter_1"] = "DRIFTER'S SCHUILPLAATS",
["shelter_2"] = "ONS MOTTO:\nSURF\nRIJ\nEN\nGLIJ",
["shelter_3"] = "PROS:\nVeelzijdig\nTeamspeler\nCONS:\nVereist wat parkour-vaardigheden\nTricky in pro-torens",
["shelter_4"] = "'Wie heeft er eigenlijk trappen nodig? We zijn in de ruimte!'\ncitaat van onze oprichter",

["circus_1"] = "JOKER'S CIRCUS",
["circus_2"] = "ONS MOTTO:\nBEDRIEG\nVERWAR\nEN\nLACH",
["circus_3"] = "PROS:\nGemaakt voor trollen\nFlips zijn erg handig\nCONS:\nDure spreuken\nJe kunt vriendschappen verpesten",
["circus_4"] = "'Deze trap is een grap.'\ncitaat van onze oprichter",

["base_1"] = "KEEPER'S BASIS",
["base_2"] = "ONS MOTTO:\nBEWEEG\nDRAAI\nEN\nCONTROLLEER",
["base_3"] = "PROS:\nKan trappen herstellen\nKan trappen hergebruiken\nCONS:\nVereist parkour om correct te gebruiken\nNutteloos zonder trappen",
["base_4"] = "'Stop met het verpesten van mijn trap!'\citaat van onze oprichter",

["chamber_1"] = "WICKED'S KAMER",
["chamber_2"] = "ONS MOTTO:\nVOORKOM\nBLOKKEER\nEN\nVERNIETIG",
["chamber_3"] = "PROS:\nKan alle trappen vernielen\nKan hele trappenhuizen leegmaken\nCONS:\nOvermatig afhankelijk van trappen",
["chamber_4"] = "'Ik ben niet slecht, er zijn gewoon te veel trappen.'\ncitaat van onze oprichter",

["backdoor_1"] = "HACKER'S ACHTERDEUR",
["backdoor_2"] = "ONS MOTTO:\nEXPLOIT\nGLITCH\nEN\nBREEK",
["backdoor 3"] = "PROS:\Snelste uitlijning\Moeilijk te volgen\nCONS:\nOvermatig afhankelijk van trappen\nNutteloos in teams",
["backdoor 4"] = "'Eerlijk Spel? Dat bestaat niet.'\ncitaat van onze oprichter",
	
--LEADERBOARD DESCRIPTIONS

--SHARED
["leader_pro"] = "Pro Toren telt als 2 klimmen",	
["leader_update"] = "Update in: ",	
["leader_updating"] = "Updaten...",	
["leader_rank"] = "RANG",
["leader_req"] = "KLIMMEN NODIG",
["leader_off"] = "Aangepaste Toren doet niet aan scoreborden.",

--OVERALL
["over_title"] = "ALGEMENE RANG",
["over_desc"] = "Elke gekregen rang voegt 1 punt toe",
["over_rank"] = "RANG",
["over_req"] = "PUNTEN NODIG",
["emperor_req"] = "* Heeft Chameleon OF Spectre nodig",
["overmind_req"] = "** Heeft Chamelon EN Spectre nodig",
["over_prefix"] = "VOORVOEGSEL",
["over_passes"] = "GAME PASSES\nNODIG",
["over_notgroup"] = "OLIJF KLEUR - niet in de groep",
["over_group"] = "GROENBLAUWE KLEUR - in de groep",
["over_mod"] = "MODERATOR - speler is een moderator",
["over_admin"] = "ADMIN - speler is een admin",
["over_owner"] = "PRANK ME - Spel maker (sleazel)",

--OTHER
["muggle_lead"] = "HAASTIGE MUGGLES",
["muggle_ranks"] = "MUGGLE RANGEN",

["hacker_lead"] = "VERSLEUTELDE HACKERS",
["hacker_ranks"] = "HACKER RANGEN",

["wicked_lead"] = "GEWELDDADIGE WICKEDS",
["wicked_ranks"] = "WICKED RANGEN",

["keeper_lead"] = "VOORBEREIDDE KEEPERS",
["keeper_ranks"] = "KEEPER RANGEN",

["joker_lead"] = "GEKKE JOKERS",
["joker_ranks"] = "JOKER RANGEN",

["drifter_lead"] = "SNELLE DRIFTERS",
["drifter_ranks"] = "DRIFTER RANGEN",

["patron_lead"] = "NOBBELLE PATRONS",
["patron_ranks"] = "PATRON RANGEN",

["archon_lead"] = "WEERBARE ARCHONS",
["archon_ranks"] = "ARCHON RANGEN",

["spectre_lead"] = "VLIEGENDE SPECTRES",
["spectre_ranks"] = "SPECTRE RANGEN",

["thief_lead"] = "HEIMELIJKE THIEVES",
["thief_ranks"] = "THIEF RANGEN",

["heretic_lead"] = "MEEDOGENLOZE HERETICS",
["heretic_ranks"] = "HERETIC RANGEN",

["chameleon_lead"] = "SNELLE CHAMELEONS",
["chameleon_ranks"] = "CHAMELEON RANGEN",

}

--TUTORIAL
module.tutorial = {

["tut_big_1"] = "Welkom bij Crazy Stairs!",
["tut_big_2"] = "Leer eerst hoe je moet morphen.",
["tut_big_3"] = "Je bent nu een Patron, Patrons kunnen trappen maken.",
["tut_big_4"] = "Alle spreuken moeten worden uitgevoerd door te springen.",
["tut_big_5"] = "Cool, hè? Verander nu in Joker. Jokers kunnen trappen omdraaien.",
["tut_big_6"] = "Je bent nu een Joker, gebruik deze spreuk om trappen om te draaien.",
["tut_big_7"] = "Sommige spreuken moeten op trappen worden uitgevoerd.",
["tut_big_8"] = "Verander nu in Keeper. Keepers kunnen trappen verplaatsen.",
["tut_big_9"] = "Je bent nu een Hoeder, gebruik deze spreuk om trappen te verplaatsen.",
["tut_big_10"] = "Spring op de pijl naar voren om trappen te verplaatsen.",
["tut_big_11"] = "Je zult in dit spel veel blokkerende trappen tegenkomen.",
["tut_big_12"] = "Je bent nu een Wicked, gebruik deze spreuk om blokkerende trappen te vernietigen.",
["tut_big_13"] = "Je kunt boven trappen vernietigen door erop te springen.",
["tut_big_14"] = "Laat me u, voordat we beginnen, de premium-uitlijning laten zien.",
["tut_big_15"] = "Je bent nu een Spectre, Spectre is een eersteklas opstelling die het beste is voor solospel.",
["tut_big_16"] = "Je doel - bereik de top en pak de bol. Veel succes!",

["tut_select"] = "Selecteer deze spreuk.",

["tut_small_morph"] = "Spring op morph.",
["tut_small_arrow"] = "Spring op de pijl.",
["tut_small_stairs"] = "Spring op de trap.",
	
	
}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

["notground"] = "Kan niet op de grond worden gebruikt.",
["restore"] = "Kan alleen gebruikt worden op het hoogste niveau.",
["event"] = "Kan niet gebruikt worden tijdens een ander evenement.",
["drones"] = "Kan alleen worden gebruikt als drones in de standaardmodus staan.",
["oneover"] = "Je kunt maar één mana-overbelasting tegelijk actief hebben.",
["soft"] = "Kan niet door kruisende trappen worden gebruikt.",
["flatten"] = "Tegenovergestelde trappen vereist in de gekozen kruising.",
["wickedaltevent"] = "Kan niet worden gecast tijdens een ander evenement of regeneratie.",
["confined"] = "Kan trappen niet uit de spelarena verplaatsen. Vereist richtingkeuze.",
["onesteal"] = "Je kunt maar één trap tegelijk stelen.",
["softthief"] = "Vereist gestolen trappen. Kan niet door kruisende trappen worden gebruikt.",
["uppass"] = "Vereist gestolen trappen. Kan alleen worden gebruikt op de buitenste platforms boven het grondniveau.",
["sidepass"] = "Vereist een gestolen trap. Kan niet op de grond worden gebruikt.",
["noescape"] = "Andere poort moet in het spelgebied zijn.",
["outdrift"] = "Kan alleen worden gebruikt op de buitenste platforms boven de grond.",
["drifting"] = "Doelplatform mag niet worden afgedreven. Kan niet op de grond worden gebruikt.",
["impostor"] = "Vereist een minimale rang van Impostor om toegang te krijgen.",
["charlatan"] = "Vereist een minimale rang van Charlatan om toegang te krijgen.",
["chameleonrigevent"] = "Kan niet worden gebruikt tijdens een ander evenement. Vereist Usurper-rang om toegang te krijgen. Vereist niet-uitgegeven Multi Tokens. ",
	
}

module.executioninfo = {

["arrows"] = "Moet worden uitgevoerd op de pijlen van het platform.",
--call the orb!
["restore"] = "Moet alleen op topplatforms worden uitgevoerd.",
["below"] = "Moet worden uitgevoerd op een normale of rigged trap.",
["above"] = "Kan worden uitgevoerd op elke trap of verbinding met een normale of rigged trap erboven.",
["center"] = "Moet worden uitgevoerd op platform.",
["arrowstimed"] = "Moet (herhaaldelijk) worden uitgevoerd op de pijlen van het platform.",
["anywhere"] = "Kan overal worden uitgevoerd.",
["noexe"] = "Deze spreuk vereist geen uitvoering.",
["flip"] = "Moet worden uitgevoerd op normale, omgedraaide of rigged trappen.",
["flipabove"] = "Kan worden uitgevoerd op elke trap of verbinding met normale, omgedraaide of rigged trappen erboven.",
["flipper"] = "Moet (herhaaldelijk) worden uitgevoerd op trappen. Boven (of onder) trappen moeten normaal zijn, omgedraaid of rigged.",
["destroy"] = "Kan worden uitgevoerd op elke onvervloekte trap.",
["destroyabove"] = "Kan worden uitgevoerd op elke trap of verbindingen met trappen erboven (elke niet-vervloekte)",
["flatten"] = "Moet worden uitgevoerd op de pijlen van het platform met normale en tegenoverliggende trappen die de kruising blokkeren.",
["bender"] = "Moet (herhaaldelijk) worden uitgevoerd op trappen. Boven en/of onder trappen moet normaal of getuigd zijn.",
--restore!!!
["movedown"] = "Kan worden uitgevoerd op de pijlen van het platform of op een speciale trap.",
["ascension"] = "Moet (herhaaldelijk) worden uitgevoerd op normale of rigged trappen (of omgedraaid op hogere rangen)",
["blink"] = "Kan worden uitgevoerd op elke trap of verbinding met een blokkerende, niet-vervloekte trap erboven.",
["outer"] = "Moet alleen op buitenste platforms worden uitgevoerd.",
["riser"] = "Moet (herhaaldelijk) worden uitgevoerd op platforms.",
["curse"] = "Moet worden uitgevoerd op normale, vervloekte of rigged trappen.",
["curseabove"] = "Kan worden uitgevoerd op elke trap of verbinding met normale, vervloekte of rigged trappen erboven.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

--PATRON
["summon"] = "Maak Trap",
["restore"] = "Roep de Bol", 
["split"] = "Split Trap",
["shrinkabove"] = "Verklein Boven Trap",
["link"] = "Creër Link",
["portal"] = "Creër Portaal",

["summoner"] = "Oproeper",
["patronrigevent"] = "Patron Rig",
["patronevent"] = "Trap Overbelast",
["patronaltevent"] = "Verklein Evenement",
["patronmode"] = "Drones Patron Modus",
["patronrefill"] = "Mana Overbelast (Patron)",
["patronunion"] = "Geestenbond (Patron)",

--JOKER 
["flip"] = "Draai Trap",
["flipabove"] = "Draai Boven Trap",
["fake"] = "Maak Neppe Trap",
["invisible"] = "Maak Onzichtbare trap",
["disco"] = "Disco Trap",
["trap"] = "Creër Val",

["flipper"] = "Draaier",
["jokerrigevent"] = "Joker Rig",
["jokerevent"] = "Mantel Evenement",
["jokeraltevent"] = "Draai Evenement",
["jokermode"] = "Drones Joker Modus",
["jokerrefill"] = "Mana Overbelast (Joker)",
["jokerunion"] = "Geestenbond (Joker)",

--WICKED
["destroy"] = "Vernietig Trap",
["destroyabove"] = "Vernietig Boven Trap",
["bend"] = "Buig Trap Omhoog",
["damage"] = "Schade Boven Trappen",
["flatten"] = "Buig Tegenoverliggende Trap Omlaag",
["wall"] = "Creër Muur" ,

["bender"] = "Buiger",
["wickedrigevent"] = "Wicked Rig",
["wickedevent"] = "Schade Evenement",
["wickedaltevent"] = "Zuiverings Evenement",
["wickedmode"] = "Drones Wicked Modus",
["wickedrefill"] = "Mana Overbelast (Wicked)",
["wickedunion"] = "Geestenbond (Wicked)",

--KEEPER
["move"] = "Verplaats Trap",
["rotate"] = "Draai Trap",
["moveup"] = "Verplaats Trap Omhoog",
["movedown"] = "Herstel Trap",
["moverandom"] = "Willekeurig Verplaatsen Boven",
["rig"] = "Willekeurig Verplaatsen",

["ascension"] = "Hemelvaart",
["keeperrigevent"] = "Keeper Rig",
["keeperevent"] = "Herschikings Evenement",
["keeperaltevent"] = "Herstel Alle Trappen",
["keepermode"] = "Drones Keeper Modus",
["keeperrefill"] = "Mana Overbelast (Keeper)",
["keeperunion"] = "Geestenbond (Keeper)",

--SPECTRE
["phantom"] = "Maak Fantoom Trap",
["ghost"] = "Vergeest Boven Trap",
["shadow"] = "Ontgeest Trap",
["horizontal"] = "Horizontale Teleport",
["random"] = "Willekeurige Teleport",
["vertical"] = "Verticale Teleport",

["traveller"] = "Glinsterend",
["spectrerigevent"] = "Spectre Rig",
["spectreevent"] = "Fantoom Evenement",
["spectrealtevent"] = "Geest Evenement",
["spectremode"] = "Drones Spectre Modus",
["spectrerefill"] = "Mana Overbelast (Spectre)",
["spectreunion"] = "Geestenbond (Spectre)",

--HACKER
["dash"] = "Dash",
["blink"] = "Knipper",
["swap"] = "Wissel",
["slide"] = "Neerwaardse Roltrap",
["slideup"] = "Opwaardse Roltrap",
["glitch"] = "Glitch Trap",

["speedup"] = "Loopsnelheid Exploit",
["hackerrigevent"] = "Hacker Rig",
["hackerevent"] = "Escalatie Evenement",
["hackeraltevent"] = "Inbreuk Evenement",
["hackermode"] = "Drones Hacker Modus",
["hackerrefill"] = "Mana Overbelast (Hacker)",
["hackerunion"] = "Geestenbond (Hacker)",

--THIEF
["steal"] = "Steel Trap",
["stealabove"] = "Steel Boven Trap",
["place"] = "Plaats Trap",
["uppass"] = "Spirale Trap",
["sidepass"] = "Creeër Bypass",
["drop"] = "Platte Trap",

["heist"] = "Overval",
["thiefrigevent"] = "Thief Rig",
["thiefevent"] = "Vlak Land Evenement",
["thiefaltevent"] = "Bypass Alle Trappen",
["thiefmode"] = "Drones Thief Modus",
["thiefrefill"] = "Mana Overbelast (Thief)",
["thiefunion"] = "Geestenbond (Thief)",

--ARCHON
["splitup"] = "Creeër Omhoog Split",
["splitrotate"] = "Creeër Gedraaide Split",
["splitside"] = "Creeër Rechte Split",
["splitrandom"] = "Creeër Willekeurige Split",
["cancelsplit"] = "Vernietig Split",
["splitforward"] = "Creeër Platform Split",

["splitter"] = "Splitter",
["archonrigevent"] = "Archon Rig",
["archonevent"] = "Split Evenement",
["archonaltevent"] = "Divisie Evenement",
["archonmode"] = "Drones Archon Modus",
["archonrefill"] = "Mana Overbelast (Archon)",
["archonunion"] = "Geestenbond (Archon)",

--DRIFTER
["indrift"] = "Surf",
["outdrift"] = "Creeër Buiten Drift",
["updrift"] = "Lift",
["diagdrift"] = "Creeër Binnen Drift",
["spin"] = "Draai Trap",
["driftabove"] = "Til Boven Trap Op",

["riser"] = "Stijger",
["drifterrigevent"] = "Drifter Rig",
["drifterevent"] = "Drift Evenement",
["drifteraltevent"] = "Lift Evenement",
["driftermode"] = "Drones Drifter Modus",
["drifterrefill"] = "Mana Overbelast (Drifter)",
["drifterunion"] = "Geestenbond (Drifter)",

--HERETIC
["createcursed"] = "Creeër Vervloekte Trap",
["curse"] = "Vervloek/Onvloek Stairs",
["curseabove"] = "Vervloek/Onvloek Boven Trap",
["curseinter"] = "Flikkeren",
["autodown"] = "Verhoog Schisma",
["autoup"] = "Verlaag Schisma",

["malediction"] = "Vervloeking",
["hereticrigevent"] = "Herectic Rig",
["hereticevent"] = "Schisma evenement",
["hereticaltevent"] = "Vervloek Evenement",
["hereticmode"] = "Drones Heretic Modus",
["hereticrefill"] = "Mana Overbelast (Heretic)",
["hereticunion"] = "Geestenbond (Heretic)",

--CHAMELEON
["ditch"] = "Kruis Trap",
["warp"] = "Trap Kromtrekken",
["chamdown"] = "Verplaats Trap Naar Beneden",
["chamdraw"] = "Onder Ophaalbrug",
["chamdrawabove"] = "Boven Ophaalbrug",

["chameleonrigevent"] = "Chameleon Rig",
["chameleonmode"] = "Drones Chameleon Modus",
["chameleonrefill"] = "Mana Overbelast (Chameleon)",
["chameleonunion"] = "Geestenbond (Chameleon)",

}

--translate these too!!!
local union = "Dit is een getimede Ghost Union-spreuk. Eenmaal in de Ghost Union-modus kun je door blokkerende trappen clippen en over geest, obbies en neptrappen lopen. Speciale trappen hebben geen effect op je en je activeert geen platforms. Je kunt in deze modus echter geen spreuken gebruiken."
local overload = "Dit is een overbelastingsspreuk. Je krijgt gedurende de volgende minuut elke 6 seconden 1 Mana (10 in totaal). Je kunt maar één overbelasting tegelijk actief hebben."
 
module.spells.descriptions = {

--PATRON
["summon"] = "Met deze spreuk kun je een enkele trap maken in de gekozen richting. Als er kruisende trappen in de weg zijn, worden deze afgebroken.",
["restore"] = "Deze spreuk roept de bol op het hoogste niveau naar het gekozen platform. Ga omhoog naar Defender om de kosten te verlagen naar 2 mana. Ga omhoog naar Verlosser om de snelheid waarmee de bol naar jou zal reizen te verdubbelen. ",
["shrinkabove"] = "Deze spreuk krimpt boven trappen, zodat je eromheen kunt lopen.",
["link"] = "Deze spreuk creëert een energiebrug tussen platforms gedurende 60 seconden. Slechts één kant van de opening wordt afgedekt, zodat je er omheen kunt lopen. Rangschik naar de Schepper om de tijd te verlengen tot 120 seconden.",
["split"] = "Deze spreuk splitst trappen in twee tegenover elkaar liggende trappen, waardoor je toegang hebt tot alle vier de platforms.",
["portal"] = "Deze spreuk creëert een portaal dat alle spelers één platform omhoog teleporteert. Portaal duurt 60 seconden. Rangschik naar Protector om de tijd te verlengen tot 120 seconden.",

["summoner"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel trappen maken als je wilt. Blijf op de pijlen springen om trappen te maken. Ga omhoog naar Guardian om de tijd te verlengen tot 90 seconden. Dit casten spreuk zal ook Mana voor alle Patrons aanvullen met ten minste Friend Rank.",
["patronrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Mana Gift. Trappen, eenmaal geactiveerd, zullen activerende speler Mana met één verhogen. Als de speler maximale Mana heeft, zullen trappen niet trigger. Na triggering wordt trappen weer normaal.",
["patronevent"] = "Dit is een gebeurtenisspreuk. Het zal trappen creëren in elke vrije, onvervloekte kruising.",
["patronaltevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen één voor één verkleinen.",
["patronmode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Patron. Patron-drones, als het aantal trappen binnen de limieten blijft, zullen willekeurig Shrink Spell en Gift Rig op normale trappen uitspreken. Speciale trappen worden in plaats daarvan hersteld. Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["patronrefill"] = overload,
["patronunion"] = union,

--JOKER
["flip"] = "Deze spreuk draait trappen om, dus boven wordt beneden en vice versa. Eenmaal omgedraaid, zijn trappen immuun voor spreuken, behalve vernietigen, rangschikken stelen en rangschikken bewegen. Je mag de trap echter terugdraaien. ",
["flipabove"] = "Deze spreuk draait boven trappen om, dus boven wordt beneden en vice versa. Eenmaal omgedraaid, zijn trappen immuun voor spreuken, behalve vernietigen, rangschikken stelen en rangschikken verplaatsen. Je mag de trap echter terug omdraaien .",
["fake"] = "Met deze spreuk kun je neptrappen maken in de gekozen richting. Als er kruisende trappen in de weg zijn, zullen ze worden afgebroken. Elke speler (inclusief jij) die probeert ze te beklimmen, zal er doorheen vallen , met uitzondering van Tricksters, IT's en spelers in de Ghost Union-modus.",
["invisible"] = "Deze spreuk creëert onzichtbare trappen. Dit zal echter geen overstekende trappen vernietigen zoals met de Patron-spreuk, dus je kunt alleen trappen op een lege kruising plaatsen. Rangschik naar Jester om alle onzichtbare trappen te zien, en heb de optie om ze niet te onthullen.",
["disco"] = "Deze spreuk verandert trappen in disco-modus. Elke speler (inclusief jij) zal 5 seconden stoppen en erop dansen (meestal twee keer). Rangen Comic en hoger zijn immuun voor discotrappen.",
["trap"] = "Deze spreuk verandert platform gedurende 60 seconden in een valluik. Elke speler (inclusief jij) die op de val loopt, zal naar het onderliggende platform vallen. Rangschik naar Jokester om platformvallen te kunnen detecteren. ",

["flipper"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel spreuken voor trappen uitspreken als je wilt. Boven trappen wordt altijd omgedraaid, indien gevonden. Zo niet, dan worden trappen beneden omgedraaid. Dit spreuk zal ook Mana voor alle Jokers aanvullen met ten minste Fool-rang.",
["jokerrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met flip-spreuk. Trappen, eenmaal geactiveerd, zullen automatisch omdraaien.",
["jokerevent"] = "Dit is een gebeurtenisspreuk. Het maakt alle normale trappen onzichtbaar. Gevonden berichten worden niet weergegeven om spam te voorkomen.",
["jokeraltevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen omdraaien.",
["jokermode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Joker. Joker-drones, als het aantal trappen binnen de limieten valt, zullen willekeurig Onzichtbare spreuk en Flip Rig uitspreken op normale trappen. Speciale trappen worden in plaats daarvan hersteld . Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["jokerrefill"] = overload,
["jokerunion"] = union,

--WICKED
["destroy"] = "Deze spreuk vernietigt trappen. In tegenstelling tot andere spreuken, werkt het op elke trap. Rangschik tot Vile om deze spreuk gratis te gebruiken. Ga omhoog naar Vicious om 1 mana te krijgen telkens als je een speciale trap vernietigt. Rangschikking tot Annihilator om vervloekte trappen te vernietigen.",
["destroyabove"] = "Deze spreuk vernietigt boven trappen. In tegenstelling tot andere spreuken, werkt het op elke trap. Ga omhoog naar Vicious om 1 mana te krijgen telkens als je een speciale trap vernietigt. Ga omhoog naar Annihilator om vervloekte trappen te vernietigen.",
["bend"] = "Deze spreuk buigt trappen naar boven. Gebruik deze om toegang te krijgen tot het bovenliggende platform.",
["damage"] = "Deze spreuk verandert boven trappen in een obby, door de meeste treden te verwijderen. Onthoud voordat je probeert de cooldown van de sprong. Rangschik naar Destroyer om op obbies te lopen, net als op normale trappen.",
["flatten"] = "Deze spreuk buigt de tegenoverliggende trap naar beneden. Gebruik deze om toegang te krijgen tot het tegenoverliggende platform.",
["wall"] = "Deze spreuk creëert een energiemuur op het platform plus een link naar het tegenoverliggende platform gedurende 60 seconden. Alleen Wickeds kunnen door zo'n muur en op de link gaan. De muur kan worden geforceerd door een spook teleport, hacker's dash of een Geestenunie.",

["bender"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel trappen omhoog werpen als je wilt. Zowel onder als boven trappen worden tegelijkertijd gebogen als aan de vereisten wordt voldaan. Rangschikking tot Nemesis om de tijdslimiet te verhogen tot 90 seconden. Deze spreuk zal ook Mana voor alle Wickeds aanvullen met ten minste de gemiddelde rang.",
["wickedrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met een vernietigingsspreuk. Trappen, eenmaal geactiveerd, worden automatisch vernietigd. Ga naar de Duivel om op Wicked Rigs te lopen zonder ze te activeren. ",
["wickedevent"] = "Dit is een gebeurtenisspreuk. Het vernietigt alle normale trappen in het spel. Regeneratie wordt niet geactiveerd.",
["wickedaltevent"] = "Dit is een gebeurtenisspreuk. Het vernietigt alle trappen en vloeken in het spel. Geen uitzonderingen. Regeneratie wordt geactiveerd.",
["wickedmode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Wicked. Wicked Drones, als het aantal trappen binnen de limieten valt, zullen willekeurig Bend Spells en Destroy Rig op normale trappen uitspreken. Speciale trappen worden in plaats daarvan hersteld . Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["wickedrefill"] = overload,
["wickedunion"] = union,

--KEEPER
["move"] = "Deze spreuk zal trappen horizontaal verplaatsen en alle trappen in de weg vernietigen. Na het gieten zal een venster verschijnen, waarin je wordt gevraagd om de richting te kiezen. Trappen kunnen niet buiten het spelgebied worden verplaatst. Rangschikking omhoog naar Controller om omgedraaide trappen te verplaatsen.",
["rotate"] = "Deze spreuk zal trappen horizontaal draaien en alle trappen in de weg vernietigen. Na het gieten zal een venster verschijnen, waarin je wordt gevraagd de richting te kiezen en te draaien. Trappen kunnen niet buiten het spelgebied worden gedraaid. Stijg op tot Controller om omgedraaide trappen te verplaatsen.",
["moveup"] = "Deze spreuk zal trappen naar boven verplaatsen en alle trappen in de weg vernietigen. Trappen kunnen niet boven het hoogste niveau worden verplaatst. Ga omhoog naar Controller om omgedraaide trappen te verplaatsen.",
["movedown"] = "Deze spreuk repareert speciale trappen. Als trappen al normaal zijn, wordt deze spreuk niet uitgevoerd. Rangschik naar Kapitein om deze spreuk gratis uit te spreken. Ga omhoog naar Admiraal om Cursed Stairs en Cursed te kunnen repareren kruispunten.",
["moverandom"] = "Deze spreuk zal in willekeurige richting boven trappen bewegen of roteren, en daarbij alle trappen vernietigend. Rangschik omhoog naar Operator om te voorkomen dat trappen naar beneden gaan. Rangschik naar Controller om omgedraaide trappen te verplaatsen.",
["rig"] = "Deze spreuk zal trappen in willekeurige richting verplaatsen of draaien, waarbij alle trappen die in de weg staan ??vernietigd worden. Ga omhoog naar Operator om te voorkomen dat trappen naar beneden gaan. Ga omhoog naar Controller om omgedraaide trappen te verplaatsen.",

["ascension"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel opwaartse spreuken uitspreken als je wilt. Rangschik naar Commander om de tijdslimiet te verhogen tot 90 seconden. Deze spreuk vult ook Mana aan voor alle Keepers met ten minste de rang van Handler.",
["keeperrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Move Random-spreuk. Trappen, eenmaal geactiveerd, zullen in willekeurige richting bewegen of draaien. Rangschikking tot Operator, voor alle installaties die je triggert om nooit naar beneden te gaan. Rangschik naar Sentinel om op Keeper Rigs te lopen zonder ze te triggeren.",
["keeperevent"] = "Dit is een gebeurtenisspreuk. Voordat je begint, kun je de zachte of geforceerde modus kiezen. In de zachte modus zal deze spreuk alle normale trappen in willekeurige richting verplaatsen of draaien, zonder daarbij iets te vernietigen. In de geforceerde modus , deze spreuk zal alle trappen in willekeurige richting verplaatsen of draaien en alle trappen in de weg vernietigen.",
["keeperaltevent"] = "Dit is een gebeurtenisspreuk. Het herstelt alle trappen in het spel, inclusief vervloekte. In tegenstelling tot Purge verwijdert het geen vervloekte kruispunten.",
["keepermode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Keeper. Keeper-drones zullen, als het aantal trappen binnen de limieten valt, willekeurig gedwongen verplaatsen of spreuken draaien en verplaatsen op normale trappen. Speciale trappen zullen worden hersteld inste.d. Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["keeperrefill"] = overload,
["keeperunion"] = union,

--SPECTRE
["phantom"] = "Deze spreuk zal \"fantoom\" trappen in de gekozen richting creëren. Als er kruisende trappen in de weg zijn, zullen ze worden afgebroken. Fantoomtrappen zullen snel vervagen na het werpen en volledig verdwijnen." ,
["ghost"] = "Met deze spreuken kun je boven trappen spookachtig worden. Je kunt door spookachtige trappen lopen, maar je kunt er niet op lopen tenzij je tot Aether bent gerangschikt.",
["shadow"] = "Met deze spreuk kun je trappen despookachtig maken en ze weer normaal maken. Rangschik naar Phantom om deze spreuk gratis uit te spreken.",
["horizontal"] = "Met deze spreuk kun je horizontaal teleporteren in de gekozen richting. Je kunt door elke trap teleporteren.",
["random"] = "Deze spreuk zal je teleporteren naar een willekeurig platform op hetzelfde niveau.",
["vertical"] = "Deze spreuk zal je naar boven teleporteren, naar het platform erboven.",

["traveller"] = "Dit is een getimede spreuk. Hiermee kun je gedurende één minuut zoveel horizontale teleport-spreuken uitspreken als je wilt. Rangschik naar Shadow om de limiet te verhogen tot 90 seconden. Deze spreuk zal ook Mana opnieuw vullen voor alle Spectres met ten minste Shade-rang.",
["spectrerigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Eclipse-spreuk. Trappen, eenmaal geactiveerd, hebben 50% kans op ghosting. Rangschik naar Vision om dit te kunnen doen lopen op Spectre Rigs zonder ze te activeren.",
["spectreevent"] = "Dit is een gebeurtenisspreuk. Voordat je begint, kun je de modus voor zachte geesten of geforceerde geesten kiezen. In de modus voor zachte geesten zal deze spreuk normale trappen in willekeurige richting verplaatsen of draaien, zonder daarbij iets te vernietigen. In geforceerde modus Ghost-modus, deze spreuk zal alle trappen in willekeurige richting verplaatsen of draaien en alle trappen in de weg vernietigen.",
["spectrealtevent"] = "Dit is een Event-spreuk. Het zal alle normale trappen spookachtig maken. Rangschik naar Aether om op spookachtige trappen te lopen. Ghost Union kan ook worden gebruikt om op spookachtige trappen te lopen.",
["spectremode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Spectre. Spectre-drones zullen, als het aantal trappen binnen de limieten ligt, willekeurig Soft Ghost Move uitspreken of spreuken en Eclipse Rig roteren op normale trappen. Speciale trappen zal in plaats daarvan worden hersteld. Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["spectrerefill"] = overload,
["spectreunion"] = union,

--HACKER
["dash"] = "Deze spreuk zal je teleporteren in de gekozen richting. In tegenstelling tot de Spectre-spreuk, kun je niet door trappen teleporteren. Rangschik naar Cracker om deze spreuk met 50% te versnellen.",
["blink"] = "Deze spreuk zal je teleporteren rond het blokkeren van boven trappen. Trappen moeten in de tegenovergestelde richting zijn van onder trappen om dit te laten werken. Rangschik naar Exploiter om deze spreuk met 50% te versnellen.",
["swap"] = "Deze spreuk zal je teleporteren naar de plek waar je geest is. In tegenstelling tot andere basisspreuken, kan Swap overal worden gebruikt.",
["slide"] = "Deze spreuk verandert trappen in een neerwaartse roltrap. Roltrap werkt alleen als er spelers op zijn. Rangschik naar Scripter om eventuele neerwaartse roltrappen automatisch te pauzeren.",
["slideup"] = "Deze spreuk verandert trappen in een opwaartse roltrap. Roltrap werkt alleen als er spelers op staan.",
["glitch"] = "Deze spreuk zal trappen glitchen, waardoor jij en zichzelf naar een andere plek op hetzelfde niveau worden geteleporteerd. Rangschik naar nul, om trappen naast de bol te teleporteren, als je al op het hoogste niveau bent.",

["speedup"] = "Dit is een getimede spreuk. Het vereist geen uitvoering, het verhoogt je loopsnelheid met 50% gedurende één minuut. Je kunt in deze modus geen andere spreuken gebruiken. Deze spreuk zal ook Mana voor alle Hackers aanvullen met ten minste Geek-rang",
["hackerrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Glitch-spreuk. Eenmaal geactiveerd, zal het de speler en de trap naar een andere plek op hetzelfde niveau teleporteren. Slechts één speler zal dat zijn. geteleporteerd. Rangschik naar Reaper om op Hacker Rigs te lopen zonder ze te activeren.",
["hackerevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen één voor één veranderen in een opwaartse of een neerwaartse roltrap.",
["hackeraltevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen één voor één veranderen in opwaartse roltrappen.",
["hackermode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Hacker. Hacker-drones zullen, als het aantal trappen binnen de limieten ligt, willekeurig roltrapspreuken of glitch-rigs uitspreken op normale trappen. Speciale trappen worden in plaats daarvan hersteld . Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["hackerrefill"] = overload,
["hackerunion"] = union,

--THIEF
["steal"] = "Met deze spreuk kun je een lager dan normale of getuigde trap stelen. Dit of stelen hierboven is vereist om andere basisdiefspreuken te gebruiken. Rangschik tot Kaper om trappen te kunnen stelen. Rangschik tot Outlaw om 2 trappen tegelijk te kunnen stelen.",
["stealabove"] = "Met deze spreuk kun je een bovennormale of getuigde trap stelen. Dit of hieronder stelen is vereist om ander basis thief spreuken. Rangschik tot Kaper om trappen te kunnen stelen. Stijg op tot Outlaw om 2 trappen tegelijk te kunnen stelen.",
["place"] = "Met deze spreuk kun je de trap terugzetten in de gekozen richting. Dit zal echter geen overstekende trappen vernietigen zoals met de Patron-spreuk, dus je kunt alleen trappen op een lege kruising plaatsen.",
["uppass"] = "Met deze spreuk kun je een wenteltrap maken van gestolen trappen. Het kan alleen op buitenste platforms worden gebruikt en duurt één minuut. Wenteltrap is onkwetsbaar voor alle spreuken. Rangschik naar Bandit voor de trap naar laatste twee minuten.",
["sidepass"] = "Met deze spreuk kun je een gebogen bypass maken van gestolen trappen. Het wordt in de gekozen richting gemaakt en duurt een minuut. Bypass is onkwetsbaar voor alle spreuken. Rangschik tot Robber voor de bypass om twee te duren minuten.",
["drop"] = "Met deze spreuk kun je gratis trappen graven. Je moet wel een lege kruising vinden. Gegraven trappen zijn vlak.",

["heist"] = "Dit is een getimede spreuk. Hiermee kun je zo vaak als je wilt een spreuk voor plaatstrappen uitspreken. In tegenstelling tot de normale spreuk voor plaatsen, kan deze spreuk worden uitgesproken door overstekende trappen, omdat trappen hierbij automatisch worden gestolen mode. Deze spreuk zal ook Mana voor alle Dieven aanvullen met minstens Crook-rang.",
["thiefrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met een Mana Steal Rig. Eenmaal geactiveerde trappen zullen één mana stelen van de activerende speler en deze toevoegen aan je eigen mana. Jij ontvangt geen Mana als uw Mana maximaal is. U ontvangt ook geen Mana als u van uitlijning verandert.",
["thiefevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen één voor één veranderen in Gesloten platte trappen.",
["thiefaltevent"] = "Dit is een gebeurtenisspreuk. Het zal een omleiding creëren in elke noordelijke en zuidelijke kruising. Als de kruising vervloekt is, wordt er geen omleiding gecreëerd.",
["thiefmode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Thief. Diefdrones, als het aantal trappen binnen de limieten blijft, zullen willekeurig spreuken stelen/plaatsen en tuig stelen op normale trappen. Speciale trappen worden in plaats daarvan hersteld. Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["thiefrefill"] = overload,
["thiefunion"] = union,

--ARCHON
["splitup"] = "Deze spreuk verbindt onder trappen met trappen boven met een portaal. Als er geen trappen zijn, zullen ze worden gemaakt. Ga omhoog naar Prodigy om een ??bestaande verbinding te negeren. Ga omhoog naar Sage om neerwaartse verbindingen te negeren. ",
["splitrotate"] = "Deze spreuk verbindt een trap onder een trap met een andere in een gedraaide horizontale richting naar keuze met een portaal. Als er geen trappen zijn, worden deze gemaakt. Ga omhoog naar Prodigy om een ??bestaande verbinding te negeren. naar Illuminati om door portalen te kunnen lopen.",
["splitside"] = "Deze spreuk verbindt een trap onder een trap met een andere in een horizontale richting naar keuze met een portaal. Als er geen trappen zijn, worden deze gemaakt. Rangschik naar Prodigy om een ??bestaande verbinding te overschrijven. Rangschik naar Illuminati om door portalen te kunnen lopen.",
["splitrandom"] = "Deze spreuk verbindt een trap onder een trap met elk geldig kruispunt op dezelfde verdieping. Als er geen trappen zijn, worden deze gemaakt. Rangschik naar Illuminati om door portalen te kunnen lopen.",
["cancelsplit"] = "Deze spreuk verwijdert alle portalen op trappen. Rangschik naar Disciple om platformsplitsingen te kunnen verwijderen. Rangschik naar Scholar om deze spreuk gratis uit te spreken.",
["splitforward"] = "Deze spreuk verbindt twee platforms in een horizontale richting naar keuze met een portaal. Ga omhoog naar Disciple om platformsplitsingen te kunnen verwijderen. Bezettende trappen blokkeren de verbinding niet. Ga omhoog naar Illuminati om door portalen kunnen lopen.",

["splitter"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel platformsplitsingen maken als je wilt. Rangschik tot Savant om de tijd te verlengen tot 90 seconden. Als je deze spreuk uitspreekt, wordt ook de mana voor alle archons aangevuld met ten minste Adept Rank.",
["archonrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Phase Rig. Trappen, eenmaal geactiveerd, zullen de speler teleporteren naar de richting waarin ze liepen, waarbij ze blokkerende trappen oversteken. Na triggering, trappen worden weer normaal.",
["archonevent"] = "Dit is een gebeurtenisspreuk. Het zal willekeurige splitsingen creëren op alle normale trappen.",
["archonaltevent"] = "Dit is een gebeurtenisspreuk. Het zal alleen verticale splitsingen maken op alle normale trappen.",
["archonmode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Archon. Archon-drones, als het aantal trappen binnen de limieten valt, zullen willekeurig willekeurige split-spreuken en Phase Rig op normale trappen uitspreken. Speciale trappen worden in plaats daarvan hersteld . Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["archonrefill"] = overload,
["archonunion"] = union,

--DRIFTER
["outdrift"] = "Deze spreuk omcirkelt het onderstaande platform rond het hele spelgebied op hetzelfde niveau. Kan alleen op de buitenste platforms worden gebruikt. Rangschik naar Strider omt bonus Mana terwijl je in de lift zit.",
["indrift"] = "Deze spreuk zal een tijdelijke surfplank creëren en je naar een platform verplaatsen in een richting naar keuze. Ga omhoog naar Strider om bonus Mana te krijgen terwijl je in de lift zit.",
["updrift"] = "Deze spreuk zal een lift creëren met behulp van onder- en bovenliggende platforms. De platforms zullen na een bepaalde tijdsperiode worden hersteld. Ga omhoog naar Vagabond om de beweging te versnellen. Ga omhoog naar Reiziger om de lift te kunnen verhogen naar het tweede niveau. Rangschik naar Strider om de lift weer naar het derde niveau te kunnen verhogen.",
["diagdrift"] = "Deze spreuk zal een zijwaartse lift creëren door onder en elk platform op een diagonale manier te gebruiken. De platforms zullen na een bepaalde tijdsperiode worden hersteld.",
["spin"] = "Deze spreuk draait 180 graden onder trappen. Rangschik naar Nomad om afgedreven trappen te kunnen draaien.",
["driftabove"] = "Deze spreuk gaat boven trappen uit, zodat je er onderdoor kunt lopen en ze kunt beklimmen, mocht je dat willen.",

["riser"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel verticale platformliften maken als je wilt. Je kunt ook liften stimuleren tijdens het gebruik van deze spreuk, als je hoog genoeg bent gerangschikt. Rangschik tot Wayfarer om de tijd te verlengen tot 90 seconden. Als je deze spreuk uitspreekt, wordt de mana voor alle Drifters ook aangevuld met ten minste Wanderer Rank.",
["drifterrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Drift Rig. Trappen, eenmaal geactiveerd, zullen ronddraaien. Rangschik omhoog naar Voyager om immuniteit voor dit tuig te krijgen.",
["drifterevent"] = "Dit is een gebeurtenisspreuk. Het zal willekeurig alle normale trappen draaien.",
["drifteraltevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen optillen, zodat je er onderdoor kunt oversteken.",
["driftermode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Drifter. Drifter-drones, als het aantal trappen binnen de limieten valt, zullen willekeurig Drift Spell en Spin Rig op normale trappen uitspreken. Speciale trappen worden in plaats daarvan hersteld . Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["drifterrefill"] = overload,
["drifterunion"] = union,


--KETTER
["createcursed"] = "Met deze spreuk kun je vervloekte trappen maken in de gekozen richting. Overstekende trappen zullen worden afgebroken. Ga naar Banished om overstekende vervloekte trappen te slopen.",
["curse"] = "Deze spreuk zal onder trappen vervloeken of ontvloeken, afhankelijk van of ze al vervloekt zijn.",
["curseabove"] = "Deze spreuk vervloekt of ontvloekt boven trappen, afhankelijk van of ze al vervloekt zijn. Trappen gaan even omhoog, zodat je over kunt steken.",
["curseinter"] = "Met deze spreuk kun je naar het tegenoverliggende platform flikkeren, als er geen trappen in de weg zijn. Het kruispunt wordt na deze spreuk vervloekt, zodat andere spelers het niet meer kunnen gebruiken. Rangschik naar Infidel om in staat zijn om deze spreuk te gebruiken om een ??kruisingsvloek te verwijderen.",
["autodown"] = "Gebruik deze spreuk om een ??speciaal gespiegeld gedeelte van het onderste deel van de trap te maken en op te tillen. Alleen geestvakbonden en ketters kunnen op dat gedeelte lopen.",
["autoup"] = "Gebruik deze spreuk om een ??speciaal gespiegeld gedeelte van het bovenste deel van de trap te maken. Normale treden zullen naar beneden worden verlaagd. Alleen geestverenigingen en ketters kunnen op dat gedeelte lopen.",

["malediction"] = "Deze spreuk is getimed. Hiermee kun je gedurende één minuut zoveel vervloekte trappen maken als je wilt. Rangschik naar Accursed om de tijd te verlengen tot 90 seconden. Als je deze spreuk uitspreekt, wordt ook de mana voor alle ketters aangevuld met ten minste Stranger Rank.",
["hereticrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met Possess Rig. Trappen, eenmaal geactiveerd, zullen de activerende speler bezitten. Ze zullen Mana moeten vinden om te worden vrijgegeven. Bezeten spelers kunnen geen spreuken uitspreken. Rangschik tot Unbeliever om immuniteit voor deze rig te krijgen. Rang tot Exiled om 1 mana te krijgen elke keer dat een speler bezeten is.",
["hereticevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen veranderen in schisma's die omhoog of omlaag gaan.",
["hereticaltevent"] = "Dit is een gebeurtenisspreuk. Het zal alle normale trappen vervloeken.",
["hereticmode"] = "Dit is een drone-spreuk. Het zal de drone-modus veranderen in Heretic. Heretic Drones, als het aantal trappen binnen de limieten valt, zullen willekeurig Schism Spells of Possess Rig op normale trappen uitspreken. Speciale trappen zullen in plaats daarvan worden hersteld. Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
["hereticrefill"] = overload,
["hereticunion"] = union,

--CHAMELEON
["ditch"] = "Dit was vroeger een Thief-spreuk, voordat het werd afgewezen. Het verandert normale of getuigde trappen in een gekruiste trap.",
["warp"] = "Dit was vroeger een Wicked-spreuk. Het zal normale of getuigde trappen terug naar het platform vervormen.",
["chameleonrigevent"] = "Dit is een Rig-spreuk. Het zal alle normale trappen één voor één optuigen met een Chameleon Rig. Trappen eenmaal geactiveerd, zullen een willekeurig effect van alle andere alignment uitvoeren.",
["chamdown"] = "Dit was vroeger een Keeper-spreuk, voordat deze werd afgewezen. Het zal elke normale of getuigde trap naar beneden verplaatsen. Als je Keeper tot Kapitein hebt gerangschikt, mag je ook omgedraaide trappen verplaatsen.",
["chamdraw"] = "Dit was vroeger een Heretic-spreuk, voordat het werd afgewezen. Het zal trappen in een ophaalbrug veranderen, waardoor afdaling onmogelijk wordt tenzij een andere speler de brug van onderaf activeert.",
["chamdrawabove"] = "Dit was vroeger een Heretic-spreuk, voordat het werd afgewezen. Het zal boven een trap veranderen in een ophaalbrug, zodat je er over kunt. Opstijgen is onmogelijk tenzij een andere speler de brug van boven activeert. De rang van de oude ongelovige is niet langer actief en automatisch tekenen van onderaf is niet meer mogelijk.",
["chameleonmode"] = "Dit is een drone-spreuk. Het verandert de drone-modus in Chameleon. Chameleon-drones zullen, als het aantal trappen binnen de limieten ligt, willekeurig een spreuk uitspreken vanuit alle andere modi of Mystery Rig op normale trappen. Speciale trappen zal in plaats daarvan worden hersteld. Buiten de limieten zullen drones respectievelijk creëren en vernietigen.",
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
"0 Mana + trap",
"1 Mana + trap",
"2 Mana + trap",
"3 Mana + trap", 
"", 
"10 Mana" 
}

module.spells.tokencosts = {

"1 Token",
"2 Tokens",
"3 Tokens",

["chameleonrigevent"] = "2 Multi Tokens",
["unlock"] = "(ontgrendel voor 3 tokens)",
}

module.serverfeedback = {

["scancel"] = "Annuleer de spreuk om van alignment te veranderen",
["morph"] = "Spring hier om %s te worden",
["raceclosed"] = "Race is nu gesloten.",
["stay"] = "Blijf in de ring om mee te doen in de race!",
["falsestart"] = "Valse Start",
["secret"] = "Geheim gevonden!",
["traveller"] = "Rangschik tot Traveller om UP DRIFTS een boost te geven.",
["noboost"] = "Kan niet boosten, er zijn geen platformen meer boven.",
["platformlocked"] = "Doelplatform is vergrendeld.",
["strider"] = "Rangschik tot Strider om UP DRIFTS te dubbel te boosten.",
["noupplatform"] = "Kan niet boosten, geen platforms meer hierboven.",
["boosted"] = "Drift geboost!",
["wrongdirection"] = "Je kunt deze spreuk niet in die richting uitspreken.",
["cursed"] = "Vervloekte trappen staan ??in de weg!",
["banished"] = "Rangschik naar Banished, om vervloekte trappen te slopen.",
["blocked"] = "Dit kruispunt is vervloekt.",
["infidel"] = "Rangschik omhoog naar Infidel om vervloekte kruispunten op te heffen.",
["admiral"] = "Rang op tot Admiral om kruispunten te onvloeken.",
["nostairs"] = "Er zijn hier geen trappen.",
["noground"] = "Deze spreuk kan niet op de grond worden gebruikt.",
["oddonly"] = "Deze spreuk kan niet op dit niveau worden gebruikt.",
["reveal"] = "Je hebt een onzichtbare trap onthuld!",
["keeperrig"] = "Trappen bewegen!",
["hackerrig"] = "Trappen haperen!",
["jokerrig"] = "Trappen zijn omgedraaid!",
["wickedrig"] = "Trappen storten in!",
["spectrerig"] = "Trappen zijn spookachtig!",
["notspectrerig"] = "Trappen zijn NIET spookachtig!",
["patronrig"] = "Je hebt 1 mana ontvangen, met dank aan %s!",
["notpatronrig"] = "Je hebt 1 mana ontvangen, met dank aan (speler links)!",
["thiefrig"] = "%s heeft 1 mana gestolen!",
["mythiefrig"] = "Je hebt 1 mana gestolen van %s",
["notthiefrig"] = "%s is niet langer een thief - geen mana gestolen.",
["leftthiefrig"] = "Thief heeft het spel verlaten - geen mana gestolen.",
["hereticrig"] = "Je bent bezeten!",
["archonrig"] = "Fase teleporteren!",
["drifterrig"] = "Trappen draaien!",
["noabove"] = "Geen trappen direct boven gevonden.",
["noblink"] = "Je kunt alleen door een blokkerende trap knipperen.",
["noblink2"] = "Je kunt niet knipperen op bruggen en naar beneden bukken.",
["linklimit"] = "Alleen \"bovenstaande spreuken\" kunnen worden uitgevoerd op links.",
["new20pass"] = "Manalimiet verhoogd!",
["newchampass"] = "Je kunt nu de alignment tijdens het klimmen veranderen!",
["newspectrepass"] = "Je kunt nu een SPECTRE worden!",
["charreset"] = "Verwijdering van karakterreset.",
["chamtutorial"] = "Je kunt CHAMELEON niet gebruiken in de tutorial!",
["champossessed"] = "Je kunt chameleon niet gebruiken als je bezeten bent.",
["chamspell"] = "Voer eerst de huidige spreuk uit of annuleer deze.",
["morphpossessed"] = "Je kunt de uitlijning niet veranderen als je bezeten bent.",
["nocode"] = "Voer eerst de code in.",
["invalid"] = "Deze code is ongeldig.",
["old"] = "Deze code is niet meer actief.",
["geaccepteerd"] = "Code geaccepteerd.",
["tryspectre"] = "Spectre ontgrendeld voor 10 minuten! Verlaat de server niet.",
["endspectre"] = "Spectre-demo eindigt over 1 minuut!",
["trycham"] = "Chameleon ontgrendeld voor 10 minuten! Verlaat de server niet.",
["endcham"] = "Demo van Chameleon eindigt over 1 minuut!",
["trymana"] = "Grotere opslag ontgrendeld gedurende 10 minuten! Verlaat de server niet.",
["endmana"] = "Grotere opslagdemo eindigt over 1 minuut!",
["used"] = "Code is al gebruikt.",
["tooshort"] = "Je bericht was te kort en niet verzonden.",
["sent"] = "Uw bericht is succesvol verzonden, dank u.",
["noreshuffle"] = "Kies eerst de herschikkingsmodus!",
["oneoverload"] = "Je kunt niet meerdere Mana Overbelastingen actief hebben.",
["overstarted"] = "Je hebt Mana Overbelast geactiveerd!",
["overend"] = "Mana-overbelasting beëindigd.",
["2minshare"] = "Minstens 2 mana vereist...",
["noshare"] = "Geen spelers in de buurt om mana te ontvangen...",
["noinf"] = "Je kunt geen oneindige mana delen!",
["toomuch"] = "%s heeft maximale mana!",
["shared"] = "Mana gedeeld met %s!",
["received"] = "%s heeft wat mana met je gedeeld!",
["muted"] = "%s is nu gedempt.",
["unmuted"] = "%s is nu uitgeschakeld.",
["kicked"] = "%s is gekicked!",
["banned"] = "%s is verbannen!",
["mekicked"] = "%s heeft je van hun server gekicked.",
["mebanned"] = "%s heeft je verbannen van hun server.",
["permban"] = "%s heeft je verbannen uit dit spel.",
["kick"] = "%s heeft je uit het spel gekicked.",
["48ban"] = "%s heeft je 48 uur verbannen.",
["exiled"] = "Je bent verbannen van deze privéserver! DIT IS GEEN SPELVERBOD",
["permbanned"] = "Je bent verbannen uit dit spel.",
["timeout"] = "Je ban eindigt over: %02i uur en %02i minuten.",
["notinrace"] = "Je kunt tijdens een race niet overschakelen naar de oneindige modus!",
["notinreg"] = "U kunt de oneindige modus niet wijzigen tijdens een regeneratie!",
["infinite"] = "Server is nu in de oneindige modus!",
["classic"] = "Server bevindt zich nu in de klassieke modus",
["casual"] = "Casual spelers kunnen nu spreuken gebruiken!",
["nocasual"] = "Casual spelers kunnen geen spreuken meer uitspreken",
["purge"] = "Purge zal nu een regeneratie veroorzaken in de klassieke modus!",
["nopurge"] = "Purge zal niet langer een regeneratie veroorzaken in de klassieke modus!",
["noevens"] = "Zelfs niveaus zijn nu beperkt",
["evens"] = "Even niveaus zijn nu volledig ingeschakeld",
["orbmoves"] = "Eindspel Orb zal nu uit zichzelf willekeurig bewegen!",
["orbstopped"] = "Eindspel Orb zal niet langer uit zichzelf bewegen!",
["infreg"] = "Trap zal na oneindige ronde regenereren!",
["noinfreg"] = "Trap zal niet regenereren na oneindige ronde!",
["drones"] = "Kleine drones ingeschakeld!",
["nodrones"] = "Kleine drones uitgeschakeld!",
["dronefix"] = "Drones herstellen trappen!",
["nodronefix"] = "Drones herstellen trappen niet!",
["droneunlock"] = "Drones zullen vervloekte kruispunten verwijderen!",
["nodroneunlock"] = "Drones zullen vervloekte kruispunten niet verwijderen!",
["droneuncurse"] = "Drones zullen vervloekte trappen herstellen!",
["nodroneuncurse"] = "Drones herstellen geen vervloekte trappen",
["dronemove"] = "Drones verplaatsen trappen in de standaardmodus!",
["nodronemove"] = "Drones verplaatsen geen trappen in de standaardmodus!",
["dronespin"] = "Drones draaien trappen in de standaardmodus!",
["nodronespin"] = "Drones draaien geen trappen in de standaardmodus!",
["noinput"] = "Voer een waarde in!",
["nonumber"] = "Voer een nummer in!",
["notrace"] = "Je kunt tijdens een race niet van torenniveau veranderen!",
["notultimate"] = "Je kunt torenniveaus niet veranderen tijdens een ultieme spreuk!",
["notregen"] = "Je kunt torenniveaus niet veranderen tijdens een regeneratie!",
["wait"] = "Torenniveaus worden gewijzigd, even geduld aub...",
["duration"] = "Raceduur gewijzigd (dit heeft geen invloed op de huidige race)",
["init"] = "Aanvankelijke oneindige intervaltijd gewijzigd",
["reductie"] = "Oneindige reductietijd gewijzigd",
["mininf"] = "Minimale oneindige intervaltijd gewijzigd",
["cooldown"] = "Cooldown van rig en gebeurtenisspreuk gewijzigd",
["speed"] = "Snelheid kleine drones veranderd",
["spin"] = "Uitspreekduur kleine drones gewijzigd",
["max"] = "Maximum aantal doeltrappen gewijzigd",
["min"] = "Minimale hoeveelheid doeltrappen gewijzigd",
["curse"] = "Drone vloek trap kans veranderd",
["block"] = "Drone vloek kruising kans veranderd",
["lock"] = "Je kunt nu geen spreuken gebruiken",
["ultwait"] = "Er wordt nog een ultieme spreuk uitgevoerd. Even geduld aub.",
["regwait"] = "Je kunt geen rigs en events casten terwijl de Staircase aan het regenereren is.",
["coolwait"] = "Je kunt nu geen rigs en evenementen casten, even geduld aub ",
["notfound"] = "Trappen niet gevonden.",
["normalrig"] = "Deze spreuk werkt alleen op normale en rigged trappen.",
["locked"] = "Die trappen zijn op slot.",
["nocursedblink"] = "Je kunt niet knipperen rond vervloekte trappen.",
["isblocked"] = "Dit kruispunt is al vervloekt.",
["cantblock"] = "Kan niet vloeken, er zijn trappen hier. (misschien onzichtbaar)",
["cantblock2"] = "Kan niet vloeken, er zijn kruisende trappen in de weg. (misschien onzichtbaar)",
["noway"] = "Trappen zitten in de weg. (misschien onzichtbaar)",
["noway2"] = "Overstekende trappen zitten in de weg. (misschien onzichtbaar)",
["noplatform"] = "Geen platform gevonden in die richting.",
["nopass"] = "Pass kan alleen worden gemaakt op de buitenste platforms.",
["pass"] = "Pass is er al.",
["link"] = "Link is er al.",
["outdrift"] = "Buiten drift kan alleen worden gemaakt op de buitenste platforms.",
["cantgate"] = "Deze richting is geblokkeerd.",
["muur"] = "De muur is er al.",
["nocurse"] = "Alleen normale, vervloekte of rigged trappen kunnen vervloekt/onvervloekt zijn.",
["nogate"] = "Deze trappen zijn niet omheind.",
["noghost"] = "Alleen spookachtige trappen kunnen worden ontspookt.",
["noflip"] = "Alleen normale, omgedraaide of rigged trappen kunnen worden omgedraaid.",
["prodigy"] = "Rangschikken naar Prodigy, om poorten te overschrijven.",
["wrongsplit"] = "Andere poort moet in het spelgebied zijn.",
["blockedplit"] = "Kan geen splitsing maken, doelkruising is vervloekt.",
["cursedtarget"] = "Er zijn vervloekte trappen op die bestemming.",
["lockedsplit"] = "Kan nog geen splitsing maken, andere trappen zijn vergrendeld.",
["failedgate"] = "Aanmaken van splitsen is mislukt.",
["nomove"] = "Alleen normale, omgedraaide of rigged trappen kunnen worden verplaatst.",
["controller"] = "Rang omhoog naar Controller, om omgedraaide trappen te verplaatsen.",
["wrongmove"] = "Trappen kunnen niet uit het speelgebied worden verplaatst.",
["blockedmove"] = "Kan trappen niet verplaatsen, doelkruising is vervloekt.",
["lockedmove"] = "Kan trappen nog niet verplaatsen, blokkerende trappen zijn vergrendeld.",
["normal"] = "Deze trappen zijn normaal.",
["nomad"] = "Rang omhoog naar Nomad om op drift geraakte trappen te draaien.",
["hijacker"] = "Rang omhoog naar Hijacker om onvervloekte trappen te stelen.",
["nocursesteal"] = "Vervloekte trappen kunnen niet worden gestolen.",
["lockedinter"] = "Dit kruispunt is afgesloten.",
["possessed"] = "Je kunt geen spreuken gebruiken als je bezeten bent.",
["lockedspell"] = "Deze spreuk is vergrendeld!",
["unlocked"] = "Spellen ontgrendeld!",
["nomana"] = "Niet genoeg mana!",
["spelllock"] = "Je kunt nu geen spreuken gebruiken",
["notokens"] = "Niet genoeg tokens!",
["nothere"] = "Je kunt deze spreuk niet gebruiken in de zelfstudie.",
["onlyracers"] = "Alleen racespelers kunnen spreuken uitspreken.",
["cancelfirst"] = "Je moet eerst de huidige spreuk annuleren...",
["stashfull"] = "Je trapvoorraad is vol.",
["stashempty"] = "Je moet trappen stelen voordat je deze spreuk uitspreekt.",
["notdefault"] = "Drones moeten eerst weer in de standaardmodus staan. Even geduld aub.",
["cooldownwait"] = "Je kunt nu geen rigs en evenementen casten, wacht a.u.b. %d seconden.",
["nospellsnow"] = "Je kunt nu geen spreuken gebruiken.",

["unknown"] = "Onbekend probleem.",

}

module.serverbroadcast = {
["pranked"] = "%s heeft %s geprankt!",
["found"] = "%s heeft %s's onzichtbare trap gevonden!",
["disco"] = "%s geniet van %s's discomuziek.",
["obby"] = "%s probeert de obby van %s.",
["default"] = "Drones zijn nu terug in de standaardmodus.",
["regen"] = "Trap wordt geregenereerd.",
["klaar"] = "Regeneratie is voltooid.",
["union"] = "%s is samengevoegd met spook!",
["eliminated"] = "%s is geëlimineerd.",
["won"] = "%s heeft de race gewonnen!",
["falsestart"] = "Valse start",
["countdown"] = "Race in %d seconden!",
["2min"] = "Minimaal twee spelers vereist voor de klassieke race!",
["noplayers"] = "Geen race-spelers, oneindige modus start niet!",
["nojoin"] = "Race is nu gesloten - er kunnen geen nieuwe spelers meedoen.",
["allfalse"] = "Alle spelers hebben een valse start!",
["safety"] = "Torenniveaus zijn gewijzigd, deze race gaat niet van start.",
["leader"] = "%s heeft de leiding genomen!",
["toolate"] = "Niemand heeft de top op tijd bereikt!",

}

module.localfeedback = {

["cancel"] = "Annuleer eerst een andere spreuk!",
["nomana"] = "Niet genoeg Mana!",
["notokens"] = "Niet genoeg Tokens!",
["unlocked"] = "Spreuk ontgrendeld!",
["maxmana"] = "Je mana is al maximaal!",
["nopurchase"] = "Je hoeft geen mana te kopen in de tutorial!",
["hascham"] = "Je hebt de Chameleon Pass al!",
["hasspectre"] = "Je hebt de Spectre Pass al!",
["hasmana"] = "Je hebt de Grotere Opslag Pass al!",
["nomuggle"] = "Je dacht dat er geheime ultieme spreuken waren voor Muggle, maar die waren er niet.",
["nocham"] = "Je dacht dat er geheime ultieme spreuken voor Chameleon waren, maar die waren er niet.",
["nonone"] = "Je dacht dat er geheime ultieme spreuken waren voor None, maar die waren er niet.",
["nounlocks"] = "Ontgrendel alle basisspreuken om toegang te krijgen tot ultieme spreuken!",
["onetoken"] = "Je hebt één %s Spreuk Token gekregen!",
["moretokens"] = "Je hebt een aantal %s Spreuk Tokens gekregen!",
["music"] = "Muziek succesvol gewijzigd.",
["nomusic"] = "Muziek kan niet worden geladen.",
--this is teleport to other tower
["noteleport"] = "Teleport mislukt!",
["norefresh"] = "Je kunt nog niet vernieuwen.",

}

module.switchon = {

["JOKER"] = "Je onthult geen onzichtbare trappen meer.",
["WICKED"] = "Je activeert niet langer onder Wicked Rigs.",
["KEEPER"] = "Je activeert niet langer onder Keeper Rigs.",
["SPECTRE"] = "Je activeert niet langer onder Spectre Rigs.",
["HACKER"] = "U activeert niet langer onder Hacker Rigs.",
["ARCHON"] = "Alleen opwaartse splitsingen zullen je teleporteren.",
["DRIFTER"] = "Je activeert niet langer onder Drifter Rigs.",

}

module.switchoff = {

["JOKER"] = "Je zult nu onzichtbare trappen onthullen.",
["WICKED"] = "Je activeert nu onder Wicked Rigs.",
["KEEPER"] = "Je activeert nu onder Keeper Rigs.",
["SPECTRE"] = "Je activeert nu onder Spectre Rigs.",
["HACKER"] = "Je activeert nu onderstaande Hacker Rigs.",
["ARCHON"] = "Alles behalve down-splits zullen je teleporteren.",
["DRIFTER"] = "Je activeert nu onder Drifter Rigs.",
}

module.events = {
["patronrigevent"] = "PATRON RIG BEZIG",
["patronevent"] = "TRAP OVERBELASTING",
["patronaltevent"] = "KRIMPENDE GEBEURTENIS",
["jokerrigevent"] = "JOKER RIG BEZIG",
["jokeraltevent"] = "FLIP EVENEMENT",
["jokerevent"] = "CLOAK GEBEURTENIS",
["wickedrigevent"] = "WICKED RIG BEZIG",
["wickedaltevent"] = "PURGE EVENEMENT",
["wickedevent"] = "VERNIETIG GEBEURTENIS",
["keeperrigevent"] = "KEEPER RIG BEZIG",
["keeperevent"] = "Herschikings GEBEURTENIS",
["keeperaltevent"] = "HERSTEL GEBEURTENIS",
["spectrerigevent"] = "SPECTRE RIG BEZIG",
["spectreevent"] = "FANTOOM GEBEURTENIS",
["spectrealtevent"] = "GEEST EVENEMENT",
["hackerrigevent"] = "HACKER RIG BEZIG",
["hackerevent"] = "ESCALATIE GEBEURTENIS",
["hackeraltevent"] = "INBREUK EVENEMENT",
["thiefrigevent"] = "THIEF RIG BEZIG",
["thiefevent"] = "VLAK LAND EVENEMENT",
["thiefaltevent"] = "BYPASS GEBEURTENIS",
["hereticrigevent"] = "HERETIC RIG BEZIG",
["hereticevent"] = "SCHISM EVENEMENT",
["hereticaltevent"] = "VERDOEMENIS EVENEMENT",
["archonrigevent"] = "ARCHON RIG BEZIG",
["archonevent"] = "SPLIT GEBEURTENIS",
["archonaltevent"] = "DIVISIE EVENEMENT",
["drifterevent"] = "DRIFT GEBEURTENIS",
["drifteraltevent"] = "LIFT EVENEMENT",
["drifterrigevent"] = "DRIFTER RIG BEZIG",
["chameleonrigevent"] = "CHAMELEON RIG BEZIG",

}

module.finished = {

["patronrigevent"] = "PATRON RIG IS VOLTOOID",
["patronevent"] = "TRAP OVERBELASTING VOLTOOID",
["patronaltevent"] = "KRIMPENDE EVENEMENT VOLTOOID",
["jokerrigevent"] = "JOKER RIG IS VOLTOOID",
["jokeraltevent"] = "FLIP EVENEMENT VOLTOOID",
["jokerevent"] = "CLOAK GEBEURTENIS VOLTOOID",
["wickedrigevent"] = "WICKED RIG IS VOLTOOID",
["wickedaltevent"] = "PURGE EVENEMENT VOLTOOID",
["wickedevent"] = "VERNIETIG GEBEURTENIS VOLTOOID",
["keeperrigevent"] = "KEEPER RIG IS VOLTOOID",
["keeperevent"] = "HERSCHIKKINGS EVENEMENT VOLTOOID",
["keeperaltevent"] = "HERSTEL GEBEURTENIS VOLTOOID",
["spectrerigevent"] = "SPECTRE RIG IS VOLTOOID",
["spectreevent"] = "FANTOOM GEBEURTENIS VOLTOOID",
["spectrealtevent"] = "GEEST EVENEMENT VOLTOOID",
["hackerrigevent"] = "HACKER RIG IS VOLTOOID",
["hackerevent"] = "ESCALATIE GEBEURTENIS VOLTOOID",
["hackeraltevent"] = "INBREUK EVENEMENT VOLTOOID",
["thiefrigevent"] = "THIEF RIG IS VOLTOOID",
["thiefevent"] = "VLAK LAND EVENT VOLTOOID",
["thiefaltevent"] = "BYPASS GEBEURTENIS VOLTOOID",
["hereticrigevent"] = "HERETIC RIG IS VOLTOOID",
["hereticevent"] = "SCHISME EVENEMENT VOLTOOID",
["hereticaltevent"] = "VERDOEMENIS EVENEMENT VOLTOOID",
["archonrigevent"] = "ARCHON RIG IN VOLTOOID",
["archonevent"] = "SPLIT EVENEMENT VOLTOOID",
["archonaltevent"] = "DIVISIE EVENEMENT VOLTOOID",
["drifterevent"] = "DRIFT-GEBEURTENIS VOLTOOID",
["drifteraltevent"] = "LIFT-GEBEURTENIS VOLTOOID",
["drifterrigevent"] = "DRIFTER RIG IS VOLTOOID",
["chameleonrigevent"] = "CHAMELEON RIG IS VOLTOOID",

}

module.timedspells = {
["summoner"] = "%s heeft zojuist OPROEPER spreuk gebruikt!",
["flipper"] = "%s heeft zojuist FLIPPER spreuk gebruikt!",
["bender"] = "%s heeft zojuist BUIGER spreuk gebruikthas just casted BENDER spell!",
["ascension"] = "%s heeft zojuist HEMELVAART spreuk gebruikthas just casted ASCENSION spell!",
["traveller"] = "%s heeft zojuist GLINSTEREND spreuk gebruikt!",
["speedup"] = "%s heeft zojuist SNELHEID EXPLOIT spreuk gebruikt!",
["heist"] = "%s heeft zojuist OVERVAL spreuk gebruikt!",
["splitter"] = "%s heeft zojuist SPLITTER spreuk gebruikt!",
["riser"] = "%s heeft zojuist STIJGER spreuk gebruikt!",
["malediction"] = "%s heeft zojuist VERVLOEKING spreuk gebruikt!",

}

module.eventspells = {
	
["patronrigevent"] = "%s heeft zojuist alle normale trappen gerigged met CADEAU RIG!",
["patronaltevent"] = "%s heeft zojuist alle normale trappen gekrompen!",
["patronevent"] = "%s heeft zojuist de toren overbelast met trappen!",
["jokeraltevent"] = "%s heeft zojuist alle trappen geflipd!",
["jokerrigevent"] = "%s heeft zojuist alle trappen gerigged met de FLIP spreuk!",
["jokerevent"] = "%s heeft zojuist alle normale trappen verborgen!",
["wickedrigevent"] = "%s heeft zojuist alle normale trappen gerigged met de VERNIETIG spreuk!",
["wickedaltevent"] = "%s heeft zojuist ALLE trappen vernietigd!",
["wickedevent"] = "%s heeft zojuist alle normale trappen vernietigd!",
["keeperrigevent"] = "%s heeft zojuist alle normale trappen gerigged met de WILLEKEURIG VERPLAATSEN spreuk!",
["keeperevent"] = "%s heeft zojuist alle normale trappen verplaatst!",
["keeperaltevent"] = "%s heeft zojuist alle trappen hersteld!",
["spectrerigevent"] = "%s heeft zojuist alle normale trappen gerigged met 50% vergeest kans!",
["spectreevent"] = "%s heeft zojuist alle normale trappen fantoom verplaatst!",
["spectrealtevent"] = "%s heeft zojuist alle normale trappen vergeest!",
["hackerrigevent"] = "%s heeft zojuist alle normale trappen gerigged met de GLITCH spreuk!",
["hackerevent"] = "%s heeft alle normale trappen veranderd in roltrappen!",
["hackeraltevent"] = "%s heeft alle normale trappen veranderd in opwaardse roltrappen!",
["thiefrigevent"] = "%s heeft alle roltrappen gerigged met MANA STELEN!",
["thiefevent"] = "%s heeft zojuist alle normale trappen vervlakt!",
["thiefaltevent"] = "%s heeft een bypass gemaakt op alle trappen!",
["newmode"] = "%s heeft zojuist de drones in %s modus gezet!",
["archonrigevent"] = "%s heeft zojuist alle normale trappen gerigged met de FASE spreuk!",
["archonevent"] = "%s heeft zojuist alle normale trappen willekeurig gesplit!",
["archonaltevent"] = "%s heeft zojuist alle normale trappen verticaal gesplit!",
["drifterrigevent"] = "%s heeft zojuist alle trappen gerigged met de DRAAI spreuk!",
["drifterevent"] = "%s heeft zojuist alle normale trappen willekeurig gedrift!",
["drifteraltevent"] = "%s heeft zojuist alle normale trappen opgetild!",
["hereticrigevent"] = "%s heeft zojuist alle normale trappen gerigged met de BEZITTEN spreuk!",
["hereticevent"] = "%s heeft gewoon schismatiek alle normale trappen!",
["hereticaltevent"] = "%s heeft zojuist alle normale trappen vervloekt!",
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
["chameleonrigevent"] = "%s heeft zojuist alle normale trappen gerigged met de MYSTERIE spreuk!"
}

--ERRATA

--stuff that was wrong
module.gui.settings["rank"] = "Toon uw algemene rangschikking in avatar-billboard"
module.spells.descriptions["link"] = "Deze spreuk creëert 60 seconden lang een energiebrug tussen platforms. Links zijn niet-tastbaar van onderaf. Rangschik naar Creator om de tijd te verlengen tot 120 seconden."
module.spells.descriptions["outdrift"] = "Deze spreuk omcirkelt het onderstaande platform rond het hele spelgebied op hetzelfde niveau. Kan alleen op de buitenste platforms worden gebruikt."
module.spells.descriptions["indrift"] = "Met deze spreuk wordt een tijdelijke surfplank gemaakt, die je naar een platform in een richting naar keuze brengt."
module.spells.descriptions["move"] = "Deze spreuk zal trappen op een horizontale manier verplaatsen en alle trappen in de weg vernietigen. Na het gebruiken verschijnen er pijlen op trappen, die je vragen om richting te kiezen. Trappen kunnen niet buiten het speelgebied worden verplaatst. Stijg op tot Controller om omgedraaide trappen te verplaatsen."
module.spells.descriptions["rotate"] = "Deze spreuk zal trappen op een horizontale manier draaien en alle trappen in de weg vernietigen. Na het gebruiken verschijnen er pijlen op trappen, die je vragen om richting te kiezen. Trappen kunnen niet buiten het speelveld worden gedraaid. Stijg op tot Controller om omgedraaide trappen te verplaatsen."

--stuff that was missing
module.static["vr_5"] = "Gebruik uw linker thumbstick om vooruit of achteruit te gaan. Als u de linker thumbstick zijwaarts kantelt, beweegt u in plaats daarvan naar links en rechts."
module.gui.ranks["next"] = "Klik op de pijl naar rechts om de vereisten voor de volgende rang te bekijken."
module.serverfeedback["admiral2"] = "Rang op tot admiraal om trappen ongedaan te maken"
module.serverfeedback["annihilator"] = "Rangschik naar Annihilator om vervloekte trappen te vernietigen."
module.serverfeedback["disciple"] = "Rangschik naar Discipel om platformsplitsingen te vernietigen."
module.serverfeedback["toponly"] = "'Call the Orb' kan alleen op het hoogste niveau worden gecast."
module.serverbroadcast["go"] = "GO!"
module.serverbroadcast["about"] = "Race over!"
module.tutorial["tut_small_init"] = "Spring om de tutorial in te spawnen"

module.static["dailies"] = "DE RECORDS VAN VANDAAG"
module.static["most_climbs"] = "MEEST KLIMMEN"
module.static["most_wins"] = "MEEST RACE-WINST"

module.events["regen"] = "Trap wordt geregenereerd"
module.finished["regen"] = "Regeneratie voltooid"

module.spells.extras = {

	["Prompt"] = "Klik hieronder op een spreuk om deze te leren gebruiken",
	["Title1"] = "Basisspreuken",
	["Title2"] = "Unieke ultieme spreuken",
	["Title3"] = "Gedeelde ultieme spreuken",
	["ManaCost"] = "Manakosten: %s",
	["TokenCost"] = "Tokenkosten: %s",
	["Special"] = "Speciale vereisten: %s",
	["Execution"] = "Uitvoering: %s",
	["Description"] = "Beschrijving: %s",
	["basic"] = "basis",
	["ultimate"] = "ultiem",
	["unlock"] = "0 (3 om te ontgrendelen)",
	["none"] = "Geen speciale vereisten",
}

module.gui.basic.jumpdelay = "spring vertraging"
module.gui.basic.dancetime = "DANS TIJD!"

--mana bar and mana messages - those will appear on the mana bars
module.gui.mana = {
	
	["mana"] = "MANA", --main name
	["ghost"] = "GEEST",
	["spirit"] = "GEEST", --only for spirit spectres
	["welcome"] = "WELKOM",
	["drones"] = "DRONES",
	["orb"] = "BOL",
	["refill"] = "HERVUL", --for all 2nd rank bonuses
	["overload"] = "OVERBELAST",
	["steal"] = "STEEL",
	["gift"] = "CADEAU",
	["share"] = "DEEL",
	["prank"] = "PRANK",
	["possession"] = "BEZETENHEID",
	["ritual"] = "RITUEEL",
	["purge"] = "ZUIVEREN",
	["blessing"] = "ZEGENING",
	["hack"] = "HACK",
	["stash"] = "STASH",
	["backdoor"] = "ACHTERDEUR",
	["chamber"] = "KAMER",
	["base"] = "BASIS",
	["circus"] = "CIRCUS",
	["shelter"] = "SCHUILPLAATS",
	["haven"] = "HAVEN",
	["study"] = "STUDIE",
	["nether"] = "NEDER",
	["guild"] = "GILDE",
	["nexus"] = "NEXUS",
	["oasis"] = "OASE",
}
	
module.gui.hints = {
	["bcancel"] = "Druk B om te annuleren", --xbox b
	["acancel"] = "Klik opnieuw om te annuleren",
	["ocancel"] = "Annuleer andere spreuk eerst", 
}

module.gui.gameover.extras = {
	
	["noobs"] = "Tutorials zijn voor noobs!",
	["possessed"] = "Deze vervelende Heretics!",
	["new"] = "Nieuwe rang verdient - %s",
	["none1"] = "WACHT! WAT?",
	["none2"] = "Heeft dit spel",
	["none3"] = "spreuken?"
	
}

module.gui.gameover.raceplacements = {
	"JE HEBT DE RACE GEWONNEN!",
	"TWEEDE PLAATS!",
	"DERDE PLAATS!",
	"Je bent 4e geëindigd.",
	"Je bent 5e geëindigd.",
	"Je bent 6e geëindigd.",
	"Je bent 7e geëindigd.",
	"Je bent 8e geëindigd.",
	"Je bent 9e geëindigd.",
	"Je bent 10e geëindigd.",
	"Je bent 11e geëindigd.",
	"Je bent 12e geëindigd.",
}

return module
