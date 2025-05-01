local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "IGEN",
	["no"] = "NEM",
	["ok"] = "OK",
	["menu"] = "MENÜ",
	["default"] = "ALAP",
	["validate"] = "ÉRVÉNYESÍTÉS",
	["play"] = "JÁTSSZ",
	["skip"] = "KIKÉPZÉS\nÁTUGRÁSA",
	["loading"] = "A JÁTÉK TÖLTŐDIK KÉRLEK VÁRJ...",
	["mode"] = "%s\nMÓD",
	["cd"] = "KÜLÖNLEGES \nVARÁZSIGE \nVISSZATÖLTŐDIK",
	["complete"] = "KÉSZ",
}

module.gui.switcher = {

	["title"] = "SZERVER VÁLTÁS",

	["public"] = "NYILVÁNOS SZERVER",
	["private"] = "MAGÁN SZERVER",
	["join"] = "CSATLAKOZZ",
	["friends"] = "BARÁTOK ONLINE",
	["refresh"] = "újratöltés...",
	["fail"] = "NEM SIKERÜLT ÚJRA TÖLTENI!",

}

module.gui.serversettings = {

	["title"] = "TULAJDONOS BEÁLLÍTÁSAI",

	["Moderation"] = "SZABÁLYOZÁS",
	["rules"] = "Te szervered, Te szabályaid.",
	["temp"] = "Az összes kitiltás és némítás végleges.",
	["kick"] = "KIRÚGÁS",
	["ban"] = "KITILTÁS",
	["mute"] = "NÉMÍTÁS",

	["Drones"] = "DRÓN BEÁLLÍTÁSAI",
	["DronesReadOnly"] = "DRÓN BEÁLLÍTÁSAI (csak olvasni lehet)",
	["DroneEnabled"] = "Drónok bekapcsolása.",
	["DroneFix"] = "Drónok helyreállítanak lépcsőket.",
	["DroneRemove"] = "Drónok eltávolítanak átkozott kereszteződéseket.",
	["DroneUnCurse"] = "Drónok helyreállítanak átkozott lépcsőket.",
	["DroneMove"] = "Drónok mozgatnak lépcsőket alap módban.",
	["DroneSpin"] = "Drónok forgatnak lépcsőket alap módban.",
	["DroneSpeed"] = "Drón sebessége (szint/másodperc)",
	["DroneDelay"] = "Drón forgásának időtartalma (másodperc)",
	["DroneMax"] = "Maximum lépcsők száma (a drónok csak pusztítani fognak lépcsőket, ha ennél több lépcső van)",
	["DroneMin"] = "Minimun lépcsők száma (a drónok csak létre fognak hozni lépcsőket, ha ennél kevesebb lépcső van)",
	["DroneBlock"] = "Átkozott kereszteződés esélye minden egyes üres kereszteződés találkozásánál (százalék)",
	["DroneCurse"] = "Átkozott lépcsőnek esélye minden egyes létrehozásnál vagy normális lépcső találkozásánál (százalék)",

	["Tower"] = "TORONY BEÁLLÍTÁSAI",
	["TowerReadOnly"] = "TORONY BEÁLLÍTÁSAI (csak olvasni lehet)",
	["InfMode"] = "Végtelen Mód (nem változtathatod meg egy verseny vagy újraépítés közben)",
	["CasualPlayers"] = "Nem versenyző játékosok varázsolhatnak",
	["Regeneration"] = "Lépcsőház azonnali újraépítése egy Wicked Tisztítása után (nem működik végtelen módban)",
	["EvenLevels"] = "Páros Szintek Lezárása",
	["OrbMoves"] = "Legfelső Szinti Gömb Pozíciót Változtat",
	["InfRegeneration"] = "Lépcsőház Azonnali újraépítése egy új szerveren, torony szintjeinek változtatása és egy végtelen verseny után.",
	["TowerLevels"] = "Torony szintjei (vagy aktív szintek végtelen módban). Nem változtathatod meg egy verseny vagy újraépítés közben.",
	["RaceDuration"] = "Verseny Maximális Időtartalma. Nem folyásólja be a mostani versenyt. (másodperc)",
	["InfStart"] = "Legelső Végtelen mód intervallum. (2 szint jön létre egy intervallumban) (másodperc)",
	["InfReduction"] = "Végtelem mód intervallum csökkentése. (minden egyes intervallum ennyivel rövidebb) (másodperc)",
	["InfMin"] = "Végtelen mód legrövidebb intervalluma. (másodperc)",
	["Cooldown"] = "Esemény és Rig visszatöltődési ideje. (másodperc)",

}

module.gui.shop = {

	["title"] = "BOLT",

	["chameleon"] = "Chameleonok tudnak osztályt változtatni mászás közben.",
	["spectre"] = "Spectre az egy teleportáláson alapuló osztály ami tökéletes ha egyedül játszól.",
	["mana"] = "Terjeszd ki a Mana tárolási kapacitásodat 10 ponttal.",

	["3tokens"] = "Szerezz meg egy varázsigét vagy varázsolj akár 3 különleges varázsigét.",
	["30tokens"] = "Szerezz meg tíz varázsigét vagy varázsolj akár 30 különleges varázsigét.",
	["300tokens"] = "Elég zseton arra, hogy kinyisd az összes varázsigét még 93 maradék zsetonnal.",

	["3TOKENS"] = "3 Multi Zseton (R$%d)",
	["30TOKENS"] = "30 Multi Zseton (R$%d)",
	["300TOKENS"] = "300 Multi Zseton (R$%d)",
	["SPECTRE PASS"] = "Spectre játék bérlet (R$%d)",
	["MANA PASS"] = "20 Mana Tárhely játék bérlet (R$%d)",
	["CHAMELEON PASS"] = "Chameleon játék bérlet (R$%d)",

}

module.gui.spellbar = {

	["share"] = "MANA\nMEGOSZTÁSA",
	["nocasual"] = "CSAK VERSENYZŐK VARÁZSOLHATNAK,

} 

module.gui.stats = {

	["total"] = "%d mászásod van / %d Versenyt nyertél meg",
	["class"] = "%d mászásod van %s-ként",
	["best"] = "Legjobb időd %s-ként: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "MEG LETTÉL SZÁLLVA! (Találj manát hogy felszabadulj)",
	["released"] = "FELSZABADULTÁL",
	["timesup"] = "az idő lejárt...",

}


module.gui.activatecham = {

	["title"] = "CHAMELEON AKTIVÁLÁSA",
	["body"] = "Szeretnéd aktiválni a Chameleon Módot?\nA mászás végéig működni fog."

}

module.gui.caceltimed = {

	["title"] = "VARÁZSIGE ABBAHAGYÁSA",
	["body"] = "Abba akarod hagyni ezt a varázsigét? A zsetonokat nem adjuk vissza."

}

module.gui.climbtimer = {

	["prompt"] = "Mászd meg \na lépcsőket!",
	["floor"] = "Szint",
	["last"] = "Előző időd",

}

module.gui.codes = {

	["title"] = "ÍRD BE A KÓDOT",
	["body"] = "Ide írd be a kódodat:",
	["prompt"] = "(kód)",
	["button"] = "ÉRVÉNYESÍTÉS",

}

module.gui.gauges = {

	["prompt"] = "Ugorj hogy végrehajtsd, nyomj rá megint hogy megszüntesd.",

	["found"] = "%d lépcső megtalálva (%.1f%%-ig van tele)",
	["special"] = "%d különleges (%.1f%%)",
	["affected"] = "%d lépcsőt fog érinteni (%.1f%%)",
	["cursed"] = "%d átkozott kereszteződés találva (%.1f%%)",
	["fill"] = "%d lépcső fog létre jönni (%.1f%%)",
	["purge"] = "%d lépcső pusztul el (%.1f%%)",
	["normal"] = "%d lépcső már normális (%.1f%%)",
	["restore"] = "%d lépcső fog helyre állni (%.1f%%)",
	["bypass1"] = "%d átok van útban (%.1f%%)",
	["bypass2"] = "%d kitérés már létezik (%.1f%%)",
	["bypass3"] = "%d kitérés jön majd létre (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "ZENEDOBOZ",

	["master"] = "FŐ HANGERŐ",
	["default"] = "(fő hangerőt használja)",
	["climb"] = "MÁSZÁS ZENÉJE",
	["endgame"] = "VÉGJÁTÉK ZENÉJE",
	["failed"] = "[nem sikerült betölteni]",

}

module.gui.results = {

	["title"] = "VERSENY VÉGEREDMÉNYE",

	["place"] = "HELYEZÉS",
	["name"] = "NÉV",
	["level"] = "LEGNAGYOBB ELÉRT SZINT",
	["time"] = "IDŐ",
	["rank"] = "RANG",
	["not"] = "N/A",
	[1] = "NYERTES",
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

	["gather"] = "Nem vagy\na versenyben",
	["race"] = "VERSENYNEK\nVÉGE",
	["inf"] = "Kiestél a versenyből",
	["off"] = "VERSENY\nIDŐKORLÁTJA",
	["wait"] = "Köv. verseny:",
	["on"] = "Rang",

}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Drónok %s Módba állítása",
	["refill"] = "Mana Túlterhelés (%s)",
	["union"] = "Szellem Unió (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Lépcső Létrehozása",
	["restore"] = "A Gömb Hívása", 
	["split"] = "Szemben Lévő Lépcső Újraépítése",
	["shrinkabove"] = "Feletted Lévő Lépcső Zsugorítása",
	["link"] = "Kapocs Létrehozása",
	["portal"] = "Portál Létrehozása",

	["summoner"] = "Idéző",
	["patronevent"] = "Lépcső Túlterhelés",
	["patronaltevent"] = "Zsugorodás",

	--JOKER 
	["flip"] = "Lépcső Megfordítása",
	["flipabove"] = "Feletted Lévő Lépcső Megfordítása",
	["fake"] = "Hamis Lépcső Létrehozása",
	["invisible"] = "Láthatatlan Lépcső Létrehozása",
	["disco"] = "Diszkó Lépcső",
	["trap"] = "Csapda Létrehozása",

	["flipper"] = "Fordító",
	["jokerevent"] = "A Köpeny",
	["jokeraltevent"] = "Fordítsd Meg Mind",

	--WICKED
	["destroy"] = "Lépcső Elpusztítása",
	["destroyabove"] = "Feletted Lévő Lépcső Elpusztítása",
	["bend"] = "Lépcső Felhajlítása",
	["damage"] = "Feletted Lévő Lépcső Rongálása",
	["flatten"] = "Szemben Álló Lépcső Lehajlítása",
	["wall"] = "Fal Létrehozása",

	["bender"] = "Hajlító",
	["wickedevent"] = "Pusztítás",
	["wickedaltevent"] = "Tisztítás",

	--KEEPER
	["move"] = "Lépcső Mozgatása",
	["rotate"] = "Lépcső Forgatása",
	["moveup"] = "Lépcső Felfelé Mozgatása",
	["movedown"] = "Lépcső Helyreállítása",
	["moverandom"] = "Feletted Lévő Lépcső Véletlenszerű Mozgatása",
	["rig"] = "Lépcső Véletlenszerű Mozgatás",

	["ascension"] = "Felemelkedés",
	["keeperevent"] = "Átrendezés",
	["keeperaltevent"] = "Helyreállítás",

	--SPECTRE
	["phantom"] = "Fantom Lépcső Létrehozása",
	["ghost"] = "Feletted Lévő Lépcső Szellemesítése",
	["shadow"] = "Lépcső Szellemesítése",
	["horizontal"] = "Vízszintes Teleportálás",
	["random"] = "Véletlenszerű Teleportálás",
	["vertical"] = "Függőleges Teleportálás",

	["traveller"] = "Utazó",
	["spectreevent"] = "Fantom Átrendezés",
	["spectrealtevent"] = "Túlvilág Birodalma",

	--HACKER
	["dash"] = "Lendület",
	["blink"] = "Villanás",
	["swap"] = "Csere",
	["slide"] = "Mozgólépcső",
	["slideup"] = "Lépcső Becsalása", 
	["glitch"] = "Hibás Lépcső",

	["hack"] = "Végtelen Mozgólépcső Csalás",
	["hackerevent"] = "Mozgólépcsők",
	["hackeraltevent"] = "Megszegés",

	--THIEF
	["steal"] = "Lépcső Ellopása",
	["stealabove"] = "Feletted Lévő Lépcső Ellopása",
	["place"] = "Lépcső Lerakása",
	["uppass"] = "Csigalépcső",
	["sidepass"] = "Kitérő Létrehozása",
	["drop"] = "Lépcső Elhagyása",

	["heist"] = "Rablás",
	["thiefevent"] = "Lapos Föld",
	["thiefaltevent"] = "Sok Kitérés",

	--ARCHON
	["splitup"] = "Felfele Vezető Kapu Létrehozása",
	["splitrotate"] = "Elfordított Kapu Létrehozása",
	["splitside"] = "Egyenes Kapu Létrehozása",
	["splitrandom"] = "Véletlenszerű Kapu Létrehozása",
	["cancelsplit"] = "Kapu Elpusztítása",
	["splitforward"] = "Felület Kapu Létrehozása",

	["splitter"] = "Portálmánia",
	["archonevent"] = "Lépcsőkapu-sg1", --I removed this pun. This translation is now 1000 times worse.
	["archonaltevent"] = "Elosztás",

	--DRIFTER
	["indrift"] = "Szörf",
	["outdrift"] = "Véletlenszerű Sodródás",
	["updrift"] = "Lift",
	["diagdrift"] = "Átlós Lift",
	["spin"] = "Lépcső Megforgatása",
	["driftabove"] = "Feletted Lévő Lépcső Megemelése",

	["riser"] = "Felemelkedés",
	["drifterevent"] = "Sodródás",
	["drifteraltevent"] = "Emelés",

	--HERETIC
	["createcursed"] = "Átkozott Lépcső Létrehozása",
	["curse"] = "Lépcső Elátkozása",
	["curseabove"] = "Feletted Lévő Lépcső Elátkozása",
	["curseinter"] = "Villogás",
	["autodown"] = "Szakadás Emelése",
	["autoup"] = "Szakadás Leeresztése",

	["malediction"] = "Átkozódás",
	["hereticevent"] = "Szétszakítás",
	["hereticaltevent"] = "Bosszú",

	--SPLICER
	["twistup"] = "Az Alattad És A Feletted Lévő Lépcső Összekapcsolása",
	["twistside"] = "Párhuzamos Lépcsők Összekapcsolása",
	["twistrotate"] = "Szomszédos Lépcsők Összekapcsolása",
	["canceltwist"] = "Összekapcsolt Lépcső Helyreállítása",
	["split2"] = "Lépcső Szétválasztása",
	["splitalt"] = "Lépcső Előrefelé Szétválasztása",

	["twister"] = "Csavaró",
	["splicerevent"] = "Összefonódás",
	["spliceraltevent"] = "Kettéválasztás",
	
	--NECROMANCER
	["createdual"] = "Kettős Lépcső Létrehozása",
	["copyplatform"] = "Szellem Felületének Lemásolása",
	["soulbridge"] = "Lélek Híd Létrehozása",
	["undeadabove"] = "Feletted Lévő Lépcső Lélkének Eltávolítása",
	["revival"] = "Újraéledő Pont",
	["regen"] = "Mana Regeneráció",

	["duality"] = "Kettőség",
	["necromancerevent"] = "Újraélesztés",
	["necromanceraltevent"] = "Lélek Aratás",
	
	--REAVER
	["createmirrored"] = "Tükrös Lépcső Létrehozása",
	["bigmirror"] = "Hatalmas Tükör",
	["smallmirror"] = "Kicsi Tükör",
	["outermirror"] = "Külső Tükör",
	["merge"] = "Reaver Egyesülés",
	["oneway"] = "Egyirányú Lépcső",

	["reflection"] = "Tükröződés",
	["reaverevent"] = "Útlezárás",
	["reaveraltevent"] = "Feltételezés", 
	
	--GREMLIN
	["tram"] = "Villamos Lépcső Létrehozása",
	["screwup"] = "Felfele Dugóhúzó",
	["revolve"] = "Lépcső Pörgetése",
	["trapstairs"] = "Csapóajtó Lépcső",
	["screwdown"] = "Lefele Dugóhúzó",
	["spinplatform"] = "Felület Pörgetése",

	["tramway"] = "Villamospálya",
	["gremlinevent"] = "Forr(dul) a dalom", --This pun makes no sense if you do not play the English version of the game, but on the other hand it is funny(maybe).
	["gremlinaltevent"] = "Torlódás", 

	--CHAMELEON
	["ditch"] = "Keresztező Lépcsők",
	["warp"] = "Lépcső Görbítése",
	["chamdown"] = "Lépcső Lefele Mozgatása",
	["chamdraw"] = "Lenti Felvonóhíd",
	["chamswap"] = "Szellemed Másolása (nem hasznos)",
	["chamdrawabove"] = "Fenti Felvonóhíd",

	--MISC (compatibility)
	["reg"] = "A lépcsőház újraépül",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff
local union = "Ez egy időzített Szellem Unió varázsige. Ebben a módban át tudsz menni útban álló lépcsőkön és rá tudsz menni szellem, obbi, és hamis lépcsőkön. Különleges és riges lépcsők nem hatnak rád amikor rálépsz. Azonban, nem tudsz varázsolni amikor ebben a módban vagy."
local overload = "Ez egy túltöltés varázsige. Minden hatodik másodpercben kapsz egy Manát egy percig (összesen 10 manát kapsz). Egyszerre csak egy túltöltés lehet aktív."
local timed = "Ez a varázsige időzített. "  -- do not remove space
local rig = "Ez egy Riges varázsige. Az összes normális lépcsőre egyesével rárak " -- do not remove space
local event = "Ez egy Esemény varázsige. Az összes normális lépcsőt " -- do not remove space
local fill = "Ez egy Kitöltő varázsige. Az összes üres nem átkozott kereszteződésben létre fog hozni egy lépcsőt. " -- do not remove spaces
local mode = "Ez egy drón varázsige. Átváltoztatja a drónokat %s módra. Ebben a módban a drónok véletlenszerűen normális lépcsőkre ráraknak %s vagy %s. A különleges lépcsőket pedig helyreállítja. A határokon kívül, a drónok létrehoznak és elpusztítanak lépcsőket.
local timedExtra = " Ha rendelkezel %s ranggal, akkor ez a varázsige 90 másodpercig fog tartani. Ez a varázsige visszatölti minden olyan %s a Manáját amelyek rendelkeznek %s Ranggal." -- do not remove leading space

module.spells.descriptions = {

	--PATRON I might be dumb but I have always assumed that they were written like PATREON i do not know why
	["summon"] = "Ezzel a varázsigével létre tudsz hozni egy lépcsőt egy általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul.",
	["restore"] = : "Ez a varázsige odahívja a legfelső szinten lévő gömböt a választott felületre. Ha rendelkezel DEFENDER ranggal, akkor ez a varázsige 2 Manába fog kerülni. Ha rendelkezel SAVIOUR ranggal, akkor a gömb kétszer olyan gyorsan fog feléd jönni.",
	["split"] = "Ez a varázsige újraépíti az alattad lévő lépcsőt a másik irányba. Az újraépített lépcső normális lesz attól függetlenül, hogy milyen volt az eredeti lépcső.",
	["shrinkabove"] = "Ez a varázsige összezsugorítja a feletted lévő lépcsőt, így simán meg tudod kerülni és utána meg tudod mászni.",
	["link"] = "Ez a varázsige létrehoz egy energikus hidat két felület között 60 másodpercig. A kapocs alján át mehet menni. Ha rendelkezel CREATOR ranggal, akkor a kapocs 120 másodpercig fog tartani.",
	["portal"] = "Ez a varázsige létrehoz egy portált, ami minden játékost egy szinttel feljebb viszi. A portál 60 másodpercig tart. Ha rendelkezel PROTECTOR ranggal, akkor a portál 120 másodpercig fog tartani.",

	["summoner"] = timed ..  "Ezzel a varázsigével bármennyi lépcsőt hozhatsz létre egy percig. Ahányszor ráugrasz egy nyílra, annyi lépcsőt csinálsz." .. string.format(timedExtra,RankData.PATRON[7].name,"Patronnak",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."Patron Riget. Ha aktiválják, a rálépett játékos kap egy Manát. Ha a játékos tele van Manával, akkor a Rig nem aktiválódik. Aktiválás után a lépcső megint normális lesz.",
	["patronevent"] = fill ..  "A létrehozott lépcsők normálisak lesznek.",
	["patronaltevent"] = event .. "Összezsugorítja.",
	["patronmode"] = string.format(mode,"Patron","Patron Riget","Összezsugorítja"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Ez a varázsige megfordítja a lépcsőt, így az alja a teteje lesz és fordítva. Az ilyen lépcsőket vissza lehet fordítani.",
	["flipabove"] = "Ez a varázsige megfordítja a feletted lévő lépcsőt, így az alja a teteje lesz és fordítva. Az ilyen lépcsőket vissza lehet fordítani.",
	["fake"] = "Ezzel a varázsigével létre tudsz hozni egy hamis lépcsőt egy általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Ha egy játékos (beleértve téged) megpróbál felmenni rajta leesik, kivéve TRICKSTERek, ITek és Szellem Unió módban lévő játékosok.",
	["invisible"] =  "Ezzel a varázsigével létre tudsz hozni egy láthatatlan lépcsőt. Azonban ez nem tud lépcsőket elpusztítani, tehát egy szabad kereszteződésbe kell raknod. Ha rendelkezel JESTER ranggal, akkor láthatod az összes láthatatlan lépcsőt, és lesz választásod, hogy ne fedd fel őket.",
	["disco"] = "Ez a varázsige átváltoztatja az alattad lévő lépcsőt egy diszkós lépcsővé. Ha egy játékos (beleértve téged) rálép, akkor megáll (általában kétszer) és táncol 5 másodpercig. Ha rendelkezel COMIC ranggal, akkor immunis leszel a diszkó lépcsőkre.",
	["trap"] = "Ez a varázsige átváltoztatja az alattad lévő felületet egy csapóajtóvá 60 másodpercig. Ha egy játékos (beleértve téged) rálép, akkor ő leesik az alatta lévő felületre. Ha rendelkezel JOKESTER ranggal, akkor láthatod hogy hol vannak csapdák. Ha rendelkezel TRICKSTER ranggal, akkor immunis leszel a csapdákra.",

	["flipper"] = timed ..  "Ezzel a varázsigével bármennyiszer megfordíthatsz lépcsőket egy percig. Mindig a feletted lévő lépcső fordul meg. Ha nem lehet megfordítani, akkor az alattad lévő lépcső fordul meg."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokernek",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "Joker Riget. Ha aktiválják, akkor a lépcső megfordul.",
	["jokerevent"] = event .. "Láthatatlanná teszi.",
	["jokeraltevent"] = event .. "Megfordítja.",
	["jokermode"] = string.format(mode,"Joker","Joker Riget","Láthatatlanná változtatja."),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Ez a varázsige elpusztítja azt a lépcsőt, amin állsz. A többi varázsigével szemben, ez bármilyen lépcsőt elpusztít. Ha rendelkezel VILE ranggal, akkor ez a varázsige ingyenes lesz. Ha rendelkezel VICIOUS ranggal, akkor kapsz 1 Manát amikor elpusztítasz bármilyen különleges lépcsőt. Ha rendelkezel ANNIHILATOR ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
	["destroyabove"] = "Ez a varázsige elpusztítja a feletted lévő lépcsőt. A többi varázsigével szemben, ez bármilyen lépcsőt elpusztít. Ha rendelkezel VICIOUS ranggal, akkor kapsz 1 Manát amikor elpusztítasz bármilyen különleges lépcsőt. Ha rendelkezel ANNIHILATOR ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
	["bend"] = "Ez a varázsige felhajlítja a lépcsőket. Ezt arra lehet használni, hogy eljuss a feletted lévő felületre.",
	["damage"] = "Ez a varázsige átváltoztatja a feletted lévő lépcsőt egy obbivá, úgy hogy eltávolítja a lépcsőfokok többségét. Mielőtt meg próbálnád csinálni, emlékezz, hogy minden ugrás után várni kell. Ha rendelkezel DESTROYER ranggal, akkor sétálni tudsz obbikon.",
	["flatten"] = "Ez a varázsige lehajlítja a szemben lévő lépcsőket. Ezt arra lehet használni, hogy átjuss a szemben lévő felületre.",
	["wall"] = "Ez a varázsige létrehoz egy falat meg egy kapcsot, amelyek 60 másodpercig tartanak. A falon és a kapcson csak Wickedek és Szellem Unióban lévő játékosok mehetnek át.",

	["bender"] = timed .. "Ezzel a varázsigével bármennyiszer hajlíthatod fel a lépcsőket egy percig. A feletted és az alattad lévő lépcsők egyszere fognak felhajolódni, ha megvannak hozzá a feltételek."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickednek",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "Wicked Riget. Ha aktiválják, akkor a lépcső megsemmisíti önmagát. Ha rendelkezel DEVIL ranggal, akkor tudsz Wicked Rigeken járni, anélkül, hogy aktiválódna.",
	["wickedevent"] = event .. "Elpusztítja. A lépcsőház ezután nem fog újraépülni.",
	["wickedaltevent"] = "Ez egy Esemény varázsige. Az összes lépcsőt elpusztítja kivétel nélkül. A lépcsőház ezután újra fog épülni.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Riget","Meghajlítja"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Ez a varázsige megmozgat egy lépcsőt vízszintes irányban, és elpusztítja az útban álló lépcsőt. Varázslás után, nyilak jelenlek meg lépcsőkön, a választási irányokat mutatva. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["rotate"] = "Ez a varázsige vízszintesen megforgat egy lépcsőt és elpusztítja az útban álló lépcsőt. Varázslás után, nyilak jelenlek meg lépcsőkön, a választási irányokat mutatva. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["moveup"] = "Ez a varázsige megmozgat egy lépcsőt felfelé, és elpusztítja az útban álló lépcsőt. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["movedown"] = "Ez a varázsige megjavít bármilyen különleges lépcsőt. Ha a lépcső már normális, akkor ez a varázsige nem fog működni. Ha rendelkezel CAPTAIN ranggal, akkor ez a varázsige ingyenes lesz. Ha rendelkezel ADMIRAL ranggal, akkor helyre tudsz állítani Átkozott Lépcsőket és Átkozott Kereszteződéseket.",
	["rig"] = "Ez a varázsige egy véletlenszerű irányba mozgatja vagy fordítja a feletted lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők nem mehetnek lefelé. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["moverandom"] = "Ez a varázsige egy véletlenszerű irányba mozgatja vagy fordítja a lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők nem mehetnek lefelé. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",

	["ascension"] = timed .. "Ezzel a varázsigével bármennyiszer mozgathatsz felfélé lépcsőket egy percig."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepernek",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "Keeper Riget. Ha aktiválják, akkor a lépcső egy véletlenszerű irányba elmozdul vagy elfordul. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők, amiket te aktiválsz, azok nem mehetnek lefelé. Ha rendelkezel SENITEL ranggal, akkor tudsz Keeper Rigeken járni, anélkül, hogy aktiválódna.",
	["keeperevent"] = event .. "Véletlenszerűen Megmozgatja. Mielőtt végrehajtanád, lehet választani puha és erőltetett mód között. Puha módban, ez a varázsige véletlenszerű irányba mozgatja vagy fordítja a lépcsőket, anélkül hogy elpusztítana bármit is. Erőltetett módban viszont elpusztítja az útban álló lépcsőket.",
	["keeperaltevent"] = "Ez egy esemény varázsige. Az összes létező lépcsőt helyreállítja, még az átkozottakat is. A Tisztítással ellentétben ez nem fogja eltávolítani az átkozott kereszteződéseket.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Riget","Véletlenszerűen Megmozgatja vagy Megfordítja"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Ezzel a varázsigével létre tudsz hozni egy fantom lépcsőt egy általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Fantom lépcsők gyorsan eltűnnek varázslás után.",
	["ghost"] = "Ez a varázsige szellemesíti a feletted lévő lépcsőt. Át tudsz menni a szellemesített lépcsőn, de nem tudsz rájuk menni kivéve ha rendelkezel AETHER ranggal. Ha egy szellemesített lépcsőn használod ezt a varázsigét, akkor a lépcső normális lesz. ",
	["shadow"] = "Ez a varázsige szellemesíti az alattad lévő lépcsőt. Át tudsz menni a szellemesített lépcsőn, de nem tudsz rájuk menni kivéve ha rendelkezel AETHER ranggal. Ha rendelkezel PHANTOM ranggal, akkor ez a varázsige ingyenes lesz. Ha egy szellemesített lépcsőn használod ezt a varázsigét, akkor a lépcső normális lesz.",
	["horizontal"] = "Ez a varázsige elteleportál vízszintesen egy általad választott irányban. Át tudsz teleportálni nem átkozott útban álló lépcsőkön.",
	["random"] = "Ez a varázsige elteleportál véletlenszerűen egy ugyanazon a szinten lévő felületre.",
	["vertical"] = "Ez a varázsige elteleportál téged a feletted lévő felületre.",

	["traveller"] = timed ..  "Ezzel a varázsigével bármennyiszer elteleportálhatsz vízszintesen egy percig."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectrének",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "Spectre Riget. Ha aktiválják, a lépcsőnek 50% esélye van, hogy megszellemesedik. Ha rendelkezel VISION ranggal, akkor tudsz Spectre rigeken járni, anélkül, hogy aktiválnád.",
	["spectreevent"] = event .. "Véletlenszerűen Megmozgatja (szellemesen). Mielőtt végrehajtanád, lehet választani puha és erőltetett mód között. Puha módban, ez a varázsige véletlenszerű irányba mozgatja vagy fordítja a lépcsőket, anélkül hogy elpusztítana bármit is. Mozgás közben a lépcsők megszellemesednek. Erőltetett módban viszont elpusztítja az útban álló lépcsőket.",
	["spectrealtevent"] = "Ez egy esemény varázsige. Ez a varázsige szellemesíti az összes normális lépcsőt. Ha rendelkezel AETHER ranggal, akkor rá tudsz menni szellemesített lépcsőkre. Szellem Unióval is rá tudsz menni szellemesített lépcsőkre.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Riget","Véletlenszerűen Megmozgatja Puhán (szellemesen)"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Ez a varázsige el fog teleportálni téged az általad választott irányba. Nem tudsz lépcsőkön keresztül teleportálni. Ha rendelkezel CRACKER ranggal, akkor 50%-kal gyorsabb lesz a varázsige.",
	["blink"] = "Ez a varázsige körbeteleportál téged egy útban álló lépcsőn. Ha a feletted lévő lépcső nem álja el jól az utadat, ez a varázsige nem fog működni. Ha rendelkezel EXPLOITER ranggal, akkor 50%-kal gyorsabb lesz a varázsige.",
	["swap"] = "Ez a varázsige oda fog téged teleportálni, ahol a szellemed van. A többi alapvető varázsigével szemben, ezt bárhol el lehet végezni.",
	["slide"] = "Ez a varázsige átváltoztatja a lépcsőt egy mozgólépcsővé. Választhatsz Felfele vagy Lefele mozgólépcsők közül. Ha rendelkezel SCRIPTER ranggal, akkor lesz választásod arra, hogy immunis legyél a mozgólépcsőkre.",
	["slideup"] = "Ez a varászige becsal egy lépcsőt az általad választott irányba. Csak akkor fog a varázsige működni, ha a varázslás irányában van egy másik irányban álló lépcső. Becsalt lépcső lehet bármilyen nem átkozott lépcső és helyre fog állni amikor be lesz csalva.",
	["glitch"] = "Ez a varázsige meghibásítja a lépcsőt, és elteleportál téged és a lépcsőt egy másik helyre ugyanazon a szinten. Ha rendelkezel ZERO ranggal, akkor ha a legfelső szinten használod ezt a varázsigét, akkor a gömb mellé fog a lépcső teleportálni (ha van egy szabad kereszteződés).",

	["hack"] = timed .. "Ezzel a varázsigével bármennyiszer átváltoztathatsz lépcsőket felfele vagy lefele mozgólépcsőkké egy percig. Ha van felette nem átkozott útban álló lépcső, akkor az a lépcső elpusztul." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackernek",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "Hacker Riget. Ha aktiválják, a rálépett játékos és a lépcső elteleportál egy másik helyre ugyanazon a szinten. Csak 1 játékost teleportál el. Ha rendelkezel REAPER ranggal, akkor tudsz Hacker rigeken járni, anélkül, hogy aktiválnád.",
	["hackerevent"] = event .. "átváltoztatja Felfele vagy Lefele Mozgólépcsővé.",
	["hackeraltevent"] = event ..  "átváltoztatja Felfele Mozgólépcsővé",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Riget","Átváltoztatja Felfelé vagy Lefelé Mozgólépcsővé"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Ez a varázsige ellopja az alattad lévő lépcsőt. Ez vagy a feletted lévő lépcső ellopása szükséges ahhoz, hogy a többi átlagos varázsigét megvarázsold. Ha rendelkezel HIJACKER ranggal, akkor bármilyen nem átkozott lépcsőt el tudsz lopni. Ha rendelkezel OUTLAW ranggal, akkor egyszerre 2 lépcső lehet nálad.",
	["stealabove"] = "Ez a varázsige ellopja a feletted lévő lépcsőt. Ez vagy az alattad lévő lépcső ellopása szükséges ahhoz, hogy a többi átlagos varázsigét megvarázsold. Ha rendelkezel HIJACKER ranggal, akkor bármilyen nem átkozott lépcsőt el tudsz lopni. Ha rendelkezel OUTLAW ranggal, akkor egyszerre 2 lépcső lehet nálad.",
	["place"] = "Ez a varázsige visszarakja a lépcsőt az általad választott irányban. Azonban ez nem pusztítja el az útban lévő lépcsőt, tehát csak szabad kereszteződésekbe rakhatsz lépcsőket.",
	["uppass"] = "Ez a varázsige létrehoz egy csigalépcsőt egy lopott lépcsőből. Csak külső felületeken lehet létrehozni és ottmarad egy percig. Ha rendelkezel BANDIT ranggal, akkor a csigalépcső két percig marad ott.",
	["sidepass"] = "Ez a varázsige létrehoz egy kitérőt egy lopott lépcsőből. Az általad választott irányban létrejön, és ottmarad egy percig. Ha rendelkezel ROBBER ranggal, akkor a kitérő két percig marad ott.",
	["drop"] = "Ezzel a varázsigével elhagyhatsz lépcsőket ingyen. De ehhez kell egy szabad kereszteződés. Az elhagyott lépcsők laposak.",

	["heist"] = timed .. "Ezzel a varázsigével bármennyi lépcsőt hozhatsz létre egy percig. A sima lerakás varázsigével szemben, ez a varázsige elpusztítja a keresztező lépcsőket, mert ebben a módban automatikusan lopod el a lépcsőket." .. string.format(timedExtra,RankData.THIEF[7].name,"Thiefnek",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "Thief Riget. Ha aktiválják, a rálépett játékostól ellopsz egy manát, amit te megkapsz. Ha te tele vagy Manával, akkor nem kapsz Manát. Akkor se kapsz Manát, ha osztályt váltasz.",
	["thiefevent"] = event .. "Kilapítja.",
	["thiefaltevent"] = "Ez egy Esemény varázsige. Ez a varázsige létrehoz egy kitérést az összes belső északi és déli kereszteződésben. Ha a kereszteződés átkozott, akkor nem lesz ott kitérés.",
	["thiefmode"] = string.format(mode,"Thief","Thief Riget","Ellopja/Lerakja"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Ez a varázsige összekötteti az alattad lévő lépcsőt és egy általad választott melletted lévő lépcsőt egy Kapuval. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felül tudod írni a kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz a vízszintes kapukon.",
	["splitrotate"] = "Ez a varázsige összekötteti az alattad lévő lépcsőt és egy általad választott forgatott irányban lévő lépcsőt egy Kapuval. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felül tudod írni a kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz a vízszintes kapukon.",
	["splitup"] = "Ez a varázsige összekötteti az alattad lévő lépcsőt és a feletted lévő lépcsőt egy Kapuval. Ha a lépcső felett nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felül tudod írni a kapukat. Ha rendelkezel SAGE ranggal, akkor a lefele vivő kapuk nem visznek le.",
	["cancelsplit"] = "Ez a varázsige elpusztít bármilyen lépcsőn lévő Kapupárt. Ha rendelkezel DISCIPLE ranggal, akkor elpusztíthatsz felületen lévő kapukat is. Ha rendelkezel SCHOLAR ranggal, akkor ez a varázsige ingyenes lesz.",
	["splitrandom"] = "Ez a varázsige összekötteti az alattad lévő lépcsőt és egy bármilyen nem átkozott kereszteződésben lévő lépcsőt egy Kapuval. Ha ott nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felül tudod írni a kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz a vízszintes kapukon.",
	["splitforward"] = "Ez a varázsige összeköt kettő általad választott szomszédos felületet egy kapuval. Az útban lévő lépcsők nem zavarják a kapcsolatot. Ha rendelkezel DISCIPLE ranggal, akkor eltávolíthatsz felületen lévő portálokat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz az ilyen kapukon.",

	["splitter"] = timed .. "Ezzel a varázsigével bármennyiszer hozhatsz létre Felület Kapukat egy percig." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archonnak",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "Archon Riget. Ha aktiválják, a rálépett játékost a haladott irányba elteleportálja, és átkel az útban álló lépcsőn. Aktiválás után, a lépcső megint normális lesz.",
	["archonevent"] = event .. "összekötteti Véletlenszerű Kapukkal.",
	["archonaltevent"] = event .. "összekötteti Függőleges Kapukkal.",
	["archonmode"] = string.format(mode,"Archon","Archon Riget","Létrehoz Véletlenszerű Kapukat"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Ez a varázsige létrehoz egy átmeneti szörfdeszkát, ami átvisz téged és még másokat egy felületre egy általad választod irányban. Nem lehet útban álló lépcsőkön keresztül szörfölni.",
	["updrift"] = "Ez a varázsige létrehoz egy liftet az alattad és a feletted lévő felületekből. A felületek egy idő után helyreállnak. Ha rendelkezel VAGABOND ranggal, akkor a liftek felgyorsulnak. Ha rendelkezel TRAVELLER ranggal, akkor fel tudod emelni a liftet a második szintre. Ha rendelkezel STRIDER ranggal, akkor fel tudod emelni a liftet a harmadik szintre.",
	["diagdrift"] = "Ennek a varázsigének 2 módja van: Létrehoz egy liftet az alattad lévő felület és egy általad választott átlósan szomszédos felület között. Az ilyen liftek eltűnnek 7 kör után. VAGY: Ha a játékterületen kívülre varázsolod, ez a varázsige létrehoz egy liftet ami tesz egy kört a Torony körül.",
	["spin"] = "Ez a varázsige megforgatja az alattad lévő lépcsőt 180 fokkal. Ha rendelkezel NOMAD ranggal, akkor képes leszel megforgatni sodródott lépcsőket.",
	["outdrift"] = "Ez a varázsige elsodorítja a lépcsőt egy véletlenszerű irányba, és elkezd haladni egy azonos szinten lévő véletlenszerű üres kereszteződés felé. Ha rendelkezel NOMAD ranggal, akkor képes leszel megforgatni sodródott lépcsőket.",
	["driftabove"] = "Ez a varázsige elsodorítja a feletted lévő lépcsőt. Nem annyira véletlenszerű mint az előző varázsige, és nem is megy el egy másik kereszteződésbe. Miután el lett sodorítva, át mehetsz alattuk, és utána felmehetsz rajtuk.",

	["riser"] = timed .. "Ezzel a varázsigével bármennyiszer csinálhatsz vízszintes lifteket egy percig. Meg is emelheted a lifteket ha elég nagy a rangod." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifternek",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "Drifter Riget. Ha aktiválják, akkor a lépcső megfordul egy véletlenszerű irányban. Ha rendelkezel VOYAGER ranggal, akkor tudsz Drifter rigeken járni, anélkül, hogy aktiválnád.",
	["drifterevent"] = event .. "Véletlenszerűen Elsodorítja.",
	["drifteraltevent"] = event .. "Megemeli.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Riget","Véletlenszerűen Elsodorítja"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Ezzel a varázsigével létre tudsz hozni egy átkozott lépcsőt egy általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Ha rendelkezel BANISHED ranggal, akkor elpusztíthatsz útban álló átkozott lépcsőket.",
	["curse"] = "Ez a varázsige megátkozza az alattad lévő lépcsőt. Ha egy átkozott lépcsőn használod ezt a varázsigét, akkor az a lépcső normális lesz.",
	["curseabove"] = "Ez a varázsige megátkozza a feletted lévő lépcsőt. A lépcső felemelkedik egy pillanatra, hogy át tudj menni alatta. Ha egy átkozott lépcsőn használod ezt a varázsigét, akkor az a lépcső normális lesz.",
	["curseinter"] = "Ezzel a varázsigével átvilloghatsz egy szomszédos felületre, ha nincsen az utadban lépcső. A varázslás után a kereszteződés megátkozódik, tehát a többi játékos nem használhatja. Ha rendelkezel INDIFEL ranggal, akkor használhatod ezt a varázsigét egy már átkozott kereszteződésen, és eltünteti róla az átkot.",
	["autodown"] = "Ezzel a varázsigével létrehozhatsz és megemelhetsz egy különleges tükrözött szakaszt a lépcső alsó részéből. Csak szellem uniók és Hereticek mehetnek rá arra a szakaszra.",
	["autoup"] = "Ezzel a varázsigével létrehozhatsz egy különleges tükrözött szakaszt a lépcső felső részéből. A normális fokok le lesznek eresztve. Csak szellem uniók és Hereticek mehetnek rá arra a szakaszra.",

	["malediction"] = timed .. "Ezzel a varázsigével bármennyi átkozott lépcsőt hozhatsz létre egy percig." .. string.format(timedExtra,RankData.HERETIC[7].name,"Hereticnek",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "Heretic Riget. Ha aktiválják, a rálépett játékos meg lesz szállva. A játékosnak manát kell találnia, hogy fel legyen szabadítva. A megszállott játékosok nem tudnak varázsolni. Ha rendelkezel UNBELIEVER ranggal, akkor immunis leszel erre a rigre. Ha rendelkezel EXILED ranggal, akkor kapsz 1 manát amikor egy játékost megszállnak.",
	["hereticevent"] = event .. "átváltoztatja Fenti vagy Lenti Szakadásra.",
	["hereticaltevent"] = event .. "Megátkozza.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Riget","Véletlenszerűen Szétszakítja"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Ez a varázsige megcsavarja a lépcsőt jobbra vagy balra, és összekötteti az ott lévő lépcsővel. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázsigét már megcsavart lépcsőkön.",
	["twistrotate"] = "Ez a varázsige megcsavarja a lépcsőt egy forgatott irányban, és összekötteti az ott lévő lépcsővel. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázsigét már megcsavart lépcsőkön.",
	["twistup"] = "Ez a varázsige megcsavarja a feletted lévő lépcsőt meg nagy eséllyel az alattad lévőt is (ha normális vagy riges), és lesz belőlük egy 2-szintes csigalépcső. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázsigét már megcsavart lépcsőkön.",
	["canceltwist"] = "Ez a varázsige helyreállít bármilyen csavart lépcsőt. Ha rendelkezel COMBINER ranggal, akkor ezt a varázsigét használhatod arra, hogy helyreállíts a felülethez nem kapcsolódó lépcsőket. Ha rendelkezel MIXER ranggal, akkor ez a varázsige ingyenes lesz. Ha rendelkezel OPTIMUS ranggal, akkor kapsz 1 Manát amikor helyreállítasz egy csavart lépcsőt.",
	["split2"] = "Ez a varázsige széthasítja a lépcsőt kettő szemben álló lépcsőkké, így elérve négy felületet.",
	["splitalt"] = "Ez a varázsige széthasítja a lépcsőt kettő elválasztott lépcsőkké, így könnyen át tudsz menni az útban álló lépcsőn - még akkor is, ha a lépcső átkozott.",

	["twister"] = timed .. "Ezzel a varázsigével bárminnyiszer Széthasíthatsz Lépcsőket egy percig. A hasítás típusa automatikusan lesz választva a Te hasznodra." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicernek",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "Splicer Riget. Ha aktiválják, akkor összekapcsolódik egy véletlen irányban lévő lépcsővel. Ha rendelkezel ASSEMBLER ranggal, akkor tudsz Splicer rigeken járni, anélkül, hogy aktiválnád.",
	["splicerevent"] = event .. "Véletlenszerűen Összekötteti.",
	["spliceraltevent"] = event .. "Kettéhasítja.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Riget","Véletlenszerűen Összekötteti"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,
	
	--NECROMANCER
	["createdual"] = "Ez a varázsige létrehoz egy lépcsőt nálad és a szellemednél, hogy játékosok a szellemedhez közel tudják használni. Ha rendelkezel SKELETON ranggal, akkor a szellemed figyelmen kívül hadja az átkozott lépcsőket és kereszteződéseket. Ha rendelkezel LICH ranggal, akkor el tudsz pusztítani útban álló lépcsőket.",
	["copyplatform"] = "Ez a varázsige rámásolja a szellemed felületéről a lépcsőket a tiédre és fordítva. A lépcsők tükrözve lesznek. A lemásolt lépcsők normálisak lesznek. Ha rendelkezel REVENANT ranggal, akkor ez a varázsige eltávolít átkokat ha kell.",
	["soulbridge"] = "Ez a varázsige létrehoz egy forgó kapcsot a te felületed és egy általad választott átlós felületet között. A te szellemed is létrehoz egy kapcsot az ellentétes irányban. Necromancer kapcsok automatikusan forognak. Ha a pálya közepén létrehozol egy kapcsot, akkor a másik kapoccsal alakít egy 'X' formát.",
	["undeadabove"] = "Ez a varázsige elveszi a lelket a feletted lévő és a szellemed felett lévő lépcsőtől. Ha nincs a szellemed felett lépcső, akkor létrejön egy. Ezeken a lépcsőkön keresztül lehet menni és utána rajtuk, de elhalványulnak egy perc után.",
	["revival"] = "Ez a varázsige létrehoz egy 'újraéledő' pontot ahol a szellemed van. Ha a pont alá esnél, akkor a ponthoz fogsz teleportálódni. Ez a pont eltűnik, ha elhasználod, befejezel egy mászást, leraksz egy másikat vagy ha osztályt váltasz Chameleonként. Ha rendelkezel ACOLYTE ranggal, akkor ha a legfelső szinten leraksz egy pontot, akkor a gömb ahhoz a ponthoz fog menni.",
	["regen"] = "Ez a varázsige ad neked Manát egy mászásban egyszer. 6 manát fogsz kapni, ha elhasználod. A szellemedhez közel álló játékosok is kapnak 3 Manát. Ha rendelkezel DEATHBRINGER ranggal, akkor te 10 Manát kapsz és a szellemedhez közel álló játékosok pedig 5 Manát kapnak.", 
	
	["duality"] = timed .. "Ezzel a varázsigével bármennyi Kettős Lépcsőt hozhatsz létre egy percig. Az útban álló lépcsők el lesznek pusztítva rangtól függetlenül." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancernek",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "Necromancer Riget. Ha aktiválják, akkor a lépcső elveszíti a lelkét és elhalványul.",
	["necromancerevent"] = fill ..  "A létrehozott lépcsőknek nincs lelkük, és elhalványulnak egy perc után.",
	["necromanceraltevent"] = event .. "Megöl, és elveszítik a lelküket. Az ilyen lépcsők elhalványulnak egy perc után.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Riget","Elveszi a Lelkét"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "Ezzel a varázsigével létre tudsz hozni egy lépcsőt egy tükörrel a közepében. Ha átmész a tükrön, akkor egybeválsz a Szellemeddel. Ha még egyszer átmész a tükrön, akkor szétválsz a szellemeddel. Ha rendelkezel POLTERGEIST ranggal, akkor el tudsz pusztítani útban álló lépcsőket. Miközben egybe vagytok válva, tudsz használni Kicsi és Hatalmas tükröket de a szellemed nem fog Manát gyűjteni neked.",
	["bigmirror"] = "Ez a varázsige létrehoz egy hatalmas tükröt ez egész szinten 10 másodpercig. Csak olyan játékosok léphetnek rá, amelyek egybeváltak a szellemükkel. Ha elmész a tükörtől, akkor szétválsz a szellemedtől. El fog távolítani minden kicsi tükröt a szintről. Ha rendelkezel PRESENCE ranggal, akkor a tükör 15 másodpercig fog tartani.",
	["smallmirror"] = "Ez a varázsige létrehoz egy kicsi tükröt az általad választott irányban 6 másodpercig. Csak olyan játékosok léphetnek rá, amelyek egybeváltak a szellemükkel. Ha elmész a tükörtől, akkor szétválsz a szellemedtől. Ha rendelkezel PRESENCE ranggal, akkor a tükör 9 másodpercig fog tartani.",
	["outermirror"] = "Ez a varázsige létrehoz egy tükröt a külső irányba egy tükörpárral a pálya másik oldalán. Csak külső felületeken lehet használni. Játékosok, amelyek átmennek a tükrön egybeválnak a szellemükkel és átteleportálódnak a torony másik felébe. A tükör eltűnik 1 perc után. Miközben egybe vagytok válva, tudsz használni Kicsi és Hatalmas tükröket de a szellemed nem fog Manát gyűjteni neked.",
	["merge"] = "Ezzel a varázsigével manuálisan egybeválsz a Szellemeddel. Ha rendelkezel REPLICA ranggal, akkor ezzel a varázsigével szétválhatsz a szellemeddel. Miközben egybe vagytok válva, tudsz használni Kicsi és Hatalmas tükröket de a szellemed nem fog Manát gyűjteni neked.",
	["oneway"] = "Ez a varázsige átváltoztatja a lépcsőt egy egyirányú átjáróvá, és közben egyesíti a játékosokat a szellemükkel, ha jó irányban haladnak. Megválaszthatod, hogy melyik irányt zárod le. Ha rendelkezel ALIEN ranggal, akkor átmehetsz a rossz oldalon is. Miközben egybe vagytok válva, tudsz használni Kicsi és Hatalmas tükröket de a szellemed nem fog Manát gyűjteni neked.",

	["reflection"] = timed .. "Ezzel a varázsigével bármennyiszer hozhatsz létre Hatalmas Tükröket egy percig. A szellemeddel automatikusan egybe fogsz válni." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavernek",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "Reaver Riget. Ha aktiválják, akkor a lépcső átváltozik egy egyirányú lépcsővé, amelynek véletlenszerűen le van zárva az egyik oldala. Ha rendelkezel WIGHT ranggal, akkor tudsz Reaver rigeken járni, anélkül, hogy aktiválnád.",
	["reaverevent"] = event .. "átváltoztatja Véletlenszerűen lezárt Egyirányú Lépcsővé",
	["reaveraltevent"] = event .. "átváltoztatja Lefelé lezárt Egyirányú Lépcsővé",
	["reavermode"] = string.format(mode,"Reaver","Reaver Riget","átváltoztatja Véletlenszerűen lezárt Egyirányú Lépcsővé"),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	["tram"] = "Ezzel a varázsigével létrehozhatsz egy Villamos Lépcsőt egy általad választott irányban. A Villamos lépcső csak fele olyan hosszú mint egy normális lépcső, és miután létrehozod automatikusan elutaznak a célba vett felületre. A lépcső vissza fog utazni, ha ráugrasz varázsige varázslása nélkül. Ha rendelkezel FIEND ranggal, akkor visszahozhatsz Villamosokat úgy, hogy ráugrasz a hozzá tartozó felületre.",
	["screwdown"] = "Ez a varázsige átváltoztatja az alattad lévő lépcsőt egy lenti dugóhúzóvá. Szinte lehetetlen felmenni az ilyen lépcsőkön. Ha rendelkezel DAEMON ranggal, akkor manuálisan tudod irányítani a forgatását egy kapcsolóval. (nem fog működni, ha van a közelben egy másik Daemon).",
	["screwup"] = "Ez a varázsige átváltoztatja a feletted lévő lépcsőt egy fenti dugóhúzóvá. Szinte lehetetlen lemenni az ilyen lépcsőkön. Ha rendelkezel DAEMON ranggal, akkor manuálisan tudod irányítani a forgatását egy kapcsolóval. (nem fog működni, ha van a közelben egy másik Daemon).",
	["revolve"] = "Ez a varázsige átváltoztatja az alattad lévő lépcsőt egy folyamatosan pörgő lépcsővé. A lépcső a Z tengelyen fog pörögni. Megválaszthatod a pörgetés irányát. A lépcső megáll mindegyik 180 fokos fordulat után.", 
	["trapstairs"] = "Ez a varázsige átváltoztatja az alattad lévő lépcsőt egy csapóajtóvá. Ha aktiválják, akkor el kezd forogni az X tengelyen, és leejti magáról az összes figyelmetlen játékost. Ha rendelkezel GOBLIN ranggal, akkor láthatod hogy hol vannak Gremlin csapdák. Ha rendelkezel DIABLO ranggal, akkor immunis leszel a Gremlin csapdákra.",
	["spinplatform"] = "Ez a varázsige megpörgeti az egész felületet és a rajta lévő összes lépcsőt (beleértve átkozott lépcsőket is), egy általad választott irányban. A felület megáll minden egyes 90 fokos fordulat után. A felület megint normális lesz, miután tesz egy teljes 360 fokos kört.",
	
	["tramway"] = timed .. "Ezzel a varázsigével bármennyi Villamos Lépcsőt hozhatsz létre egy percig." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlinnek",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "Gremlin Riget. Ha aktiválják, akkor az a játékos aki aktiválta hipnotizálva lesz. A játékosnak manát kell találnia, hogy fel legyen szabadítva. Hipnotizált játékosok irányításai meg vannak fordítva. Ha rendelkezel HOGOBLIN ranggal, akkor immunis leszel erre a rigre.",
	["gremlinevent"] = event .. "Véletlenszerű irányba Megpörgeti.", 
	["gremlinaltevent"] = fill .. "A létrehozott lépcsők Villamos lépcsők lesznek.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Riget","Véletlenszerű irányba Megpörgeti."),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "Ez régebben egy Keeper varázsige volt, mielőtt el lett utasítva. Ez a varázsige egy normális vagy Riges lépcsőt lejjebb visz egy szinttel. Ha meg van a Keepernek a Controller rang, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["chamswap"] = "Ez régebben egy Necromancer varázsige volt, mielőtt el lett utasítva. Ez a varázsige lemásolja a szellemedet, de a Reaver egybeválássával ellentétben a te szellemed aktív marad. Ez a varázsige nincs befejezve és haszontalan.",
	["chamdraw"] = "Ez régebben egy Heretic varázsige volt, mielőtt el lett utasítva. Ez a varázsige átváltoztatja a lépcsőt egy felvonóhíddá, tehát így lehetetlen a lemenni a lépcsőn kivéve ha egy másik játékos aktiválja a hidat a lépcső aljáról.",
	["ditch"] = "Ez régebben egy Theif varázsige volt, mielőtt el lett utasítva. Ez a varázsige átváltoztat egy normális lépcsőt két kereszteződő lépcsőkké.",
	["chamdrawabove"] = "Ez régebben egy Heretic varázsige volt, mielőtt el lett utasítva. Ez a varázsige átváltoztatja a feletted lévő lépcsőt egy felvonóhíddá, és utána átmehetsz alattuk. Felmenni rajta lehetetlen, kivéve ha egy másik játékos aktiválja a hidat a lépcső tetejéről. A régi Unbeliever rang már nem aktív és az automatikus hídleengedés már nem lehetséges.",
	["warp"] = "Ez régebben egy Wicked varázsige volt. Ez a varázsige meggörbít egy normális vagy riges lépcsőt vissza a felületre.",

	["chameleonrigevent"] = rig .. "Chameleon Riget. Ha aktiválják, akkor történik egy véletlenszerű hatás bármelyik másik rigből.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Riget","varázsol egy véletlenszerű varázsigét egy másik módból"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}
local CommonPerksInsertALignment = {
	[1] = "Ez a kezdő %s rangod.",
	[2] = "Kapsz bónusz Manát amikor a drónok %s módban vannak.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Ha valaki varázsol egy %s varázsigét, akkor a Manád újratöltődik.",
	[7] = "Az időzített varázsigéd (%s) 50%%-kal tovább tart (90s).",
}



module.gui.ranks = {

	["title"] = "A TE RANGOD",

	--none
	["none_1"] = "Nem választottál egy osztályt!",
	["none_2"] = "Nincs hozzáférésed egy varázsigéhez sem!",
	["none_3"] = "Ugorj egy körre a pálya közepén hogy osztályt változtass.",

	--shared
	["higher"] = "VAN NAGYOBB RANGOD",
	["current"] = "A JELENLEGI RANGOD",
	["lower"] = "RANG NINCS MEGSZEREVZE",

	["more"] = "Kell még %d mászás %s-ként, hogy megszerezd ezt a rangot.",
	["done"] = "Neked már van egy nagyobb rangod. Az összes kisebb ranghatás hozzá lesz adva a jelenlegi rangodhoz.",
	["max"] = "Ez a legmagasabb rang. Szereztél %d mászást %s-ként.",
	["next"] = "Ha rányomsz a jobb nyílra, akkor meg tudod nézni a következő rang szükségleteit.",

	["PATRON"] = {
		[4] = "A kapcsaid több ideig tartanak (120s).",
		[5] = "A portáljaid több ideig tartanak (120s).",
		[6] = "A Gömb Hívása varázsigéd már csak 2 Manába kerül.",
		[8] = "Ha elfogyott a Manád, ugorj rá egy felületre, hogy meg legyél áldva 1 Manával.",
		[9] = "A Hívott Gömb kétszer olyan gyorsan jön feléd.",
	}, 
	["JOKER"] = { 
		[4] = "Diszkó lépcsők nincsenek rád hatással.",
		[5] = "Már látod az összes láthatatlan lépcsőt. Van rá választásod, hogy ne fedd fel őket.",
		[6] = "Már felismered a csapóajtókat és a hamis lépcsőket.",
		[8] = "Már rá tudsz menni hamis lépcsőkre és csapdákra.", 
		[9] = "Kapsz bónusz Manát, amikor egy játékos aktivál egy átverést. (1 mana egy játékos átveréséért)",
	},
	["WICKED"] = {
		[4] = "Most már tudsz obbikon sétálni mint egy normális lépcsőn.",
		[5] = "A Lépcső Elpusztítása varázsigéd már ingyenes.",
		[6] = "Kapsz 1 bónusz Manát minden egyes általad elpusztított különleges lépcsőért.",
		[8] = "Van választásod arra, hogy ne aktiváld a Wicked Rigeket.",
		[9] = "Már el tudsz pusztítani átkozott lépcsőket.",
	},
	["SPECTRE"] = { 
		[4] = "Kapsz egy bónusz Manát amikor a szellemed felvesz egy kristályt. ", 
		[5] = "A Lépcső Szellemesítése varázsigéd már ingyenes.",
		[6] = "Már akkor is nyersz, amikor a szellemed ér hozzá a gömbhöz.",
		[8] = "Van választásod arra, hogy ne aktiváld a Spectre Rigeket.", 
		[9] = "Most már rá tudsz menni szellemesített lépcsőkre.",
	},
	["KEEPER"] = {
		[4] = "A Véletlenszerű Mozgás varázsige és a Keeper Rigek amiket te aktiválsz már nem mozoghatnak lefelé.",
		[5] = "Most már mozgathatsz bármilyen nem átkozott lépcsőt.",
		[6] = "A Helyreállítás varázsigéd már ingyenes.", 
		[8] = "Van választásod arra, hogy ne aktiváld a Keeper Rigeket.",
		[9] = "Most már helyreállíthatsz átkozott lépcsőket és átkozott kereszteződéseket.",
	},
	["HACKER"] = { 
		[4] = "Van választásod arra, hogy immunis legyél a mozgólépcsőkre.",
		[5] = "A Lendület varázsigéd most már 50%-kal gyorsabb.",
		[6] = "A Villanás varázsigéd most már 50%-kal gyorsabb.", 
		[8] = "Van választásod arra, hogy ne aktiváld a Hacker Rigeket. (egybevál a Mozgólépcső kapcsolóval)",
		[9] = "Ha van legalább egy szabad kereszteződés, akkor a Hibásodás varázsigéd a legfelső szinten a lépcsőt a gömbhöz viszi.", 
	},
	["THIEF"] = {
		[4] = "A kikerüléseid több ideig tartanak (120s).",
		[5] = "A csigalépcsőid több ideig tartanak (120s).",
		[6] = "Már az összes nem átkozott lépcsőt el tudod lopni.",
		[8] = "Ha elfogyott a Manád, ugorj rá egy felületre, hogy elővegyél 1 Manát a leltáradból.", 
		[9] = "Már egyszerre 2 lopott lépcsőt tudsz magadnál tartani.",
	},
	["ARCHON"] = {
		[4] = "Most már el tudod használni a Kapu Elpusztítása varázsigét felületeken, hogy elpusztítsd a felületeken lévő kapukat.",
		[5] = "A Kapu Elpusztítása varázsigéd már ingyenes.",
		[6] = "A kapuk már nem teleportálnak téged lefelé.",
		[8] = "Most már létrehozhatsz Kapukat már olyan lépcsőkön, amelyeken már van egy Kapu.",
		[9] = "Már van választásod arra, hogy ne teleportálj el, kivéve a felfelé vezető Kapukon.", 
	},
	["DRIFTER"] = {
		[4] = "A felfelé haladó liftjeid gyorsabban jelennek meg és 50%-kal gyorsabban haladnak.",
		[5] = "Már megtudsz forgatni sodródott lépcsőket.",
		[6] = "Már fel tudod emelni a lifteket a Felemelkedő és a Lift varázsigékkel. Az emelt liftek nem haladnak gyorsabban.",
		[8] = "Van választásod arra, hogy ne aktiváld a Drifter Rigeket.",
		[9] = "Már kétszer tudod felemelni a lifteket a Felemelkedő és a Lift varázsigékkel. Az emelt liftek nem haladnak gyorsabban.",
	},
	["HERETIC"] = {
		[4] = "Amikor elfogy a Manád, akkor hozzáérhetsz egy átkozott lépcsőhöz, hogy eltüntesd róla az átkot és kapj egy Manát.",
		[5] = "Most már immunis vagy a megszállásra.",
		[6] = "Most már végrehajthatod a Villogás varázsigédet egy átkozott kereszteződésben.",
		[8] = "Az Átkozott Lépcső Létrehozása és az Átkozódás varázsigéid már el tudnak pusztítani útban álló átkozott lépcsőket.",
		[9] = "Kapsz 1 bónusz manát amikor valakit megszállnak.",
	},
	["SPLICER"] = {
		[4] = "Most már helyre tudsz állítani a felülethez nem kapcsolódó lépcsőket.",
		[5] = "Az Elcsavart Lépcső Helyreállítása varázsigéd most már ingyenes.",
		[6] = "Van választásod arra, hogy ne aktiváld a Splicer Rigeket.",
		[8] = "Most már meg tudsz csavarni már megcsavart lépcsőket.",
		[9] = "Kapsz 1 bónusz manát amikor helyreállítasz egy csavart lépcsőt.",
	},
	["REAVER"] = {
		[4] = "Most már használhatod az Egyesülés varázsigét, hogy szétválj a szellemeddel.",
		[5] = "A tükreid 50%-kal tovább fognak tartani. (15s-ig a hatalmas, 9s-ig a Kicsi)",
		[6] = "Van opciód arra, hogy ne aktiváld a REAVER rigeket.",
		[8] = "El tudsz pusztítani keresztező lépcsőket a Tükrös Lépcső varázsigéddel.",
		[9] = "Most már immunis vagy az egyirányú lépcsőkre.",
	},
	["NECROMANCER"] = {
		[4] = "Kettős Lépcsők varázsigéből a szellemed lépcsője figyelem kívül fogja hagyni az átkozott lépcsőket és kereszteződéseket. ",
		[5] = "Ha használod az Újraéledő Pont varázsigét a legfelső szinten, akkor a gömb a ponthoz fog menni.",
		[6] = "A felület másolása varászigéd ha kell, el fogja távolítani az átkokat.",
		[8] = "El tudsz pusztítani keresztező lépcsőket a Kettős Lépcsők varázsigével.",
		[9] = "A Regeneráció varázsigéd 10 Manát ad a 6 helyett, és aki a szellemedhez közel áll az 5 Manát kap.",
	},
	["GREMLIN"] = {
		[4] = "Látod már az összes Gremlin Csapdát.",
		[5] = "Rá tudsz ugrani a felületre, hogy magadhoz hívd az összes hozzá tartozó villamost.",
		[6] = "Most már immunis vagy a Gremlin Rigekre.",
		[8] = "Most már immunis vagy a Gremlin Csapdákra.",
		[9] = "Most már tudod irányítani a Dugóhúzó Lépcsőket egy gombbal. Nem fog működni, ha van egy másik Daemon a közelben.",
	},
	["MUGGLE"] = { 
		[2] = "Az ugrásod visszatöltődési ideje 0.125 másodperccel rövidebb.",
		[3] = "Az ugrásod visszatöltődési ideje 0.25 másodperccel rövidebb.",
		[4] = "Az ugrásod visszatöltődési ideje 0.375 másodperccel rövidebb.",
		[5] = "Az ugrásod visszatöltődési ideje 0.5 másodperccel rövidebb.",
		[6] = "Most már 10%-kal gyorsabb vagy.",
		[7] = "Most már 20%-kal gyorsabb vagy.",
		[8] = "Most már 30%-kal gyorsabb vagy.",
		[9] = "Most már 20%-kal nagyobbat ugrasz.",
	},

	["CHAMELEON"] = { 
		[1] = "Ez a kezdő CHAMELEON rangod. A többi osztály ranggal járó előnye is érvényes rád.",
		[2] = "CSAK AKKOR Kapsz bónusz Manát, amikor a drónok CHAMELEON módban vannak.",
		[3] = "Az osztály változtatási animáció már sokkal gyorsabb.",
		[4] = "A kezeid már rózsaszínül világítanak, tehát a többi játékos nem tudja, hogy melyik osztályt használod.",
		[5] = "A Hamis Lépcső és a Lépcső Létrehozása varázsigék már rózsaszínül világítanak.",
		[6] = "Már meg tudsz varázsolni 4 új varázsigét, amelyek el lettek utasítva a játék fejlesztése közben.",
		[7] = "Már meg tudsz varázsolni 2 új varázsigét, amelyek el lettek utasítva a játék fejlesztése közben.",
		[8] = "Amikor osztályt váltasz már nincs animációja, tehát a többi játékos nem látja mikor váltasz osztályt. Ki lehet kapcsolni a beállításoknál.",
		[9] = "Most már meg tudod varázsolni a Chameleon Rig varázsigét multi zsetonokkal.",
	},


}

module.gui.reshuffle = {

	["title"] = "LÉPCSŐK ÁTRENDEZÉSÉNEK MÓDJA",

	["body"] = "El akarod kerülni a lépcsők ütközését a mozgásuk közben? Ha nem, akkor az útban álló lépcsők el lesznek pusztítva.",

}

module.gui.multitokens = {

	["title"] = "VÁLASZD KI A ZSETONJAIDAT",

	["info"] = "3 zseton kell ahhoz, hogy feloldj egy varázsigét.",
	["notokens"] = "Nincs multi zsetonod",
	["nopass"] = "NINCS JÁTÉK BÉRLET",
}

module.gui.feedback = {

	["title"] = "VISSZAJELZÉS KÜLDÉSE",

	["prompt"] = "Írj egy üzenetet a játék készítőjének! (legalább 20 karaktert írj. Tudjuk hogy ki vagy, tehát ne írj hülyeséget.)",
	["send"] = "KÜLDÉS",
	["locked"] = "ZÁRVA",

}

module.gui.settings = {

	["title"] = "JÁTÉK BEÁLLÍTÁSAI",

	["ANIM"] = "ANIMÁCIÓ\nBEÁLLÍTÁSAI",	
	["MISC"] = "VEGYES\nBEÁLLÍTÁSOK",
	["INTER"] = "KIJELZŐ\nBEÁLLÍTÁSAI",	
	["INTER2"] = "MÉGTÖBB KIJELZŐ\nBEÁLÍTÁSOK",	

	["list"] = "Animált játékoslista megjelenítése",
	["morph"] = "Átváltozási animáció mutatása amikor Deceivert vagy Usurpert használsz",
	["billboard"] = "Saját hirdetőtáblád mutatása",
	["rank"] = "Összefoglaló Rangod Mutatása a hirdetőtábládon",
	["switchback"] = "Automatikus visszaváltás átlagos varázsigékre egy különleges varázsige elvégzése után",
	["safecancel"] = "Megerősítés ablak mutatása amikor egy időzített különleges varázsigét abbahagysz",
	["multi"] = "Multi Zseton ablak mutatása mászások után",
	["kchoices"] = "Irányválasztási ablak mutatása Keepernek (nem működik konzolon)",
	["hchoices"] = "Irányválasztási ablak mutatása Hackernek (nem működik konzolon)",
	["achoices"] = "Irányválasztási ablak mutatása Archonnak (nem működik konzolon)",
	["rchoices"] = "Irányválasztási ablak mutatása Reavernek (nem működik konzolon)",
	["schoices"] = "Irányválasztási ablak mutatása Splicernek (nem működik konzolon)",
	["gchoices"] = "Irányválasztási ablak mutatása Gremlinnek (nem működik konzolon)",
	["stats"] = "Több statisztika mutatása amikor varázsolsz Rig & Esemény varázsigéket",

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "OSZTÁLYOD",
	["time"] = "MÁSZÁSOD IDEJE",
	["climbs"] = "JUTALMAZOTT MÁSZÁSOK",
	["tokens"] = "JUTALMAZOTT ZSETONOK",
	["rank"] = "JELENLEGI RANGOD",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"SEGÍTENI, MEGVÉDENI és LÉTREHOZNI",
		"",
		"Patronok nélkül nem lenne remény",
		"A kedvességem 1-től 10-es skálán 11-es",
		"Osztozkodni öröm",
		"Nincs olyan, hogy túl sok a lépcső",
		"Minden csapatba kell egy Patron",
		"Nem lehet lépcsőházad lépcsők nélkül",
		"Egy újabb jól végzett munka",
	},
	["JOKER"] = {
		"MEGTÉVESZTENI, MEGZAVARNI és NEVETNI",
		"Ez a lépcsőház egy vicc",
		"Miért vagy ilyen komoly?",
		"HE HE HE HAW!",
		"Lazulj és nézd, hogy esnek le",
		"Csak nem vagy ideges?",
		"You know the rules and so do I",
		"Unalmas lenne a játék nélkülem",
		"A hamis lépcsők valójában igaziak",
	},
	["WICKED"] = {
		"AKADÁLYOZNI, ÚTBAN ÁLNI és PUSZTÍTANI",
		"Nem vagyok gonosz, csak túl sok a lépcső",
		"A lépcsőknek el kell tűnniük",
		"Nézd, hogy ég a világ", 
		"Ez a lépcsőház szebb lenne lépcsők nélkül",
		"Elpusztítom az elmédet, lelkedet, és a testedet (meg a lépcsőket)",
		"Az obbim hat könnyű ugrásból áll, mégis az emberek leesnek róla",
		"Előbb utóbb mind meghalunk",
		"Tisztítsd meg az elmédet - de előtte tisztítsd meg a lépcsőházat",
	},
	["SPECTRE"] = {
		"ELTÜNNI, ELBÚJNI és TELEPORTÁLNI",
		"Mi baj lehet a teleportálással?",
		"Nem tudsz elkapni",
		"",
		"Miért érdekelne az engem, ha emberek leesnek?",
		"Meg tudod oldani az összes problémádat teleportálással",
		"Ha egyszer elkezdesz teleportálni, nem fogsz tudni leállni",
		"Legalább én nem teleportálom el a lépcsőket",
		"Tudom, hogy gyors vagyok, de ti fel tudnátok érni ebben az évtizedben?",
	},
	["MUGGLE"] = {
		"FUSS, UGORJ és ESS LE",
		"Bezzeg az én időmben nem voltak ilyen puccos varázsigék",
		"Esküszöm, hogy ezek a Drónok meg vannak bundázva",
		"Mindig van egy út",
		"Senki se tud úgy parkúrozni, mint én",
		"A titkom? Megállok és gondolkodok",
		"Nem hiszek a varázslatban",
		"Néha várnod kell egy drónra, hogy segítsen - Mint a való világban",
		"A varázsigék csak egy mankó rossz játékosoknak, akik nem tudják megmászni a tornyot",
	},
	["CHAMELEON"] = {
		"MÁSOLJ, UTÁNOZZ és LEPJ MEG MÁSOKAT",
		"Túl lusta vagyok ahhoz, hogy kitaláljak saját varázsigéket",
		"Miért is használnál másik osztályokat?",
		"Kinek kell csapat, amikor én vagyok az egész csapat?",
		"Az igazodási képesség a túlélés alapja",
		"ÉN TÉNYLEG határozott vagyok, csak szeretem meggondolni magamat",
		"Elsajátítottál egy osztályt? Én elsajátítottam az összeset",
		"",
		"Szeretem a káoszt",
	},
	["KEEPER"] = {
		"MOZGATNI, FORGATNI és IRÁNYÍTANI",
		"Ne tedd tönkre a lépcsőházamat!",
		"Egy újabb remek győzelem a Keepereknek",
		"Küldetés teljesítve!",
		"Szeretem a rendet",
		"Káosz megszelídítve",
		"",
		"Egy nap majd elrendezem ezt a tornyot",
		"Helyreállított lépcsők = boldog lépcsők",
	},
	["THIEF"] = {
		"\"KÖLCSÖNÖZNI\", HASZNÁLNI és VISSZAKÜLDENI",
		"Tulajdonképpen ezt úgy hívják, hogy kölcsönzés",
		"Senki ne mozduljon, ez egy bankrablás! Igazából nem, de akkor se mozdulj",
		"Legalább a felületeket nem lopom el",
		"Csak ne lépj rá a lopás rigekre, nem kell egy lángelme ehhez",
		"Láttád te egyáltalán hogy loptam valamit?",
		"Olyan vagyok, mint Robin Hood - A gazdagoktól lopok és a pénzt magamnak adom",
		"Nem minthogyha valaki észrevenné, ha hiányzik egy lépcső",
		"A lépcsők újraelosztása megakadályozza az anarchiát",
	},
	["HACKER"] = {
		"KIHASZNÁLNI, MEGHIBÁSÍTANI és SZÉTTÖRNI",
		"Igazságos játszma? Olyan nem létezik",
		"Várj! Ezek a lépcsők nem igaziak... Mi egy szimulált Roblox játékban élünk?",
		"11000101 10010000 01010010 11000011 10011100 01001100 01010100 00100000 01001100 11000011 10001001 01010000 01000011 01010011 11000101 10010000 01001011",
		"Ki mondta, hogy itt vannak szabályok? ",
		"Én csalok? Itt mindenki csal",
		"Adok neked ingyen robuxot, csak elötte kattints rá a linkemre",
		"Én a sebesség",
		"Mozgólépcső a legjobb lépcső",
	},
	["HERETIC"] = {
		"TE NEM JUTSZ ÁT",
		"",
		"Nem tetszik, hogy mások varázsolhatnak",
		"Halál és pusztulás",
		"",
		"Nem kéne korlátozni magunkat",
		"",
		"",
		"Miért érdekelne engem, ha emberek elakadnak?",
	},
	["ARCHON"] = {
		"NYISS PORTÁLT, ???, HASZON",
		"Régebben én uraltam ezt a lépcsőházat",
		"",
		"Tanulj sokat és sikeres leszel",
		"",
		"Men tud'm has nzálni a Arcon potát¡",
		"A torta egy hazugság",
		"Van egy kapu minden problémára",
		"Mindenkit megzavartam!",
	},
	["DRIFTER"] = {
		"SZÖRFÖLJ, LOVAGOLJ és CSÚSSZ",
		"Kinek kellenek lépcsők, amikor az űrben vagyunk?",
		"Repüljetek bolondok!",
		"Csak sodródj az árral",
		"Az űrben nincs lefelé - nem kell aggódni",
		"Sodródj a győzelem felé",
		"Ne állj meg - sodródj tovább",
		"Szeretek liftezni",
		"Szörfölj tovább",
	},
	["SPLICER"] = {
		"CSAVARJ, KAPCSOLJ ÖSSZE és EGYESÍTS",
		"Ne menj egy egyenes vonalon túl sokáig",
		"Az élet tele van csavarokkal",
		"Másoknak káosz, nekünk rend",
		"Jól összekötöttem azokat a lépcsőket",
		"Ne kapcsolódj emberekkel, inkább KAPCSOLÓDJ LÉPCSŐKKEL!",
		"",
		"",
		"Köszönöm Markerquest, megmentettél",
		"",
	},
	["REAVER"] = {
		"TÜKRÖZŐDNI, KICSERÉLNI és EGYBEVÁLNI",
		"Tükrök valójában csak átjárók",
		"Ez a lépcsőház csak egy illúzió",
		"Láthatod a lelkedet a tükörben",
		"Mi nézzük őket, vagy ők néznek minket?",
		"Hét évnyi balszerencse. Nekem, vagy a másiknak?",
		"A szellemek ragadtak a tükör mögé - vagy mi?",
		"Már nem magamat látom, hanem a jövőmet",
		"",
		"Ne hozd már rám a szívbajt!",
	},
	["NECROMANCER"] = {
		"KÖVESS, ÉLEDJ ÚJRA és SZEREZZ HASZNOT",
		"Nem akarunk meg szállni téged, csak barátok akarunk lenni",
		"A lelked az ENYÉM!",
		"Kövesd a szellemem. Bízz bennem!",
		"",
		"Ideje néhány lelket begyűjteni",
		"Ne hidd el azt a sok propagandát, amit Hollywood mond. Mi jók vagyunk",
		"Ha a halál rossz, akkor a Szellemidézés jó",
		"Kéne néhány léle- akarom mondani Mana, kéne Mana",
 		"Nem félek attól, hogy leesek. Majd a szellemem megment!",
	},
	["GREMLIN"] = {
		"FORGASS, PÖRGESS és HIPNOTIZÁLJ",
		"Gyere játssz velem!",
		"You spin me right 'round, baby, right 'round",
		"Ez a lépcsőház nagyon unalmas",
		"Hadd javítsam meg azt a lépcsőt, heheh",
		"Tetszik a remekművem? Nem? Milyen kár, pedig csak most kezdtem el.",
		"Az orvos mondta, hogy lazítsak, és én így lazítok.",
		"Joker tanulhatna tőlem. Csak vicceltem, légyszi vegyél vissza a Cirkuszba!",
		"Hova tűnt az a lépcső?",
		"Wheeeeeeeeeeeeeeeeeeee!!!!!!!",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Senkit se hagyok hátra",
	["IT"] = "Szívatás az életem", 
	["ANNIHILATOR"] = "Pusztíts el mindent!",
	["AETHER"] = "Beléptem az alvilágba", 
	["DABSFORLIF"] = "Kinek kell varázsige?",
	["USURPER"] = "Én csak szeretem az összes varázsigét",
	["ADMIRAL"] = "Rend helyreállítva",
	["OUTLAW"] = "Minden az enyém!",
	["ZERO"] = "Rootkit letöltve",
	["EXILED"] = "Kiközösítve",
	["ILLUMINATI"] = "Illuminati megerősítve",
	["STRIDER"] = "Én inkább megyek lifttel",
	["DEATHBRINGER"] = "A szellemek is emberek",
	["OPTIMUS"] = "Együtt erősebbek a lépcsők", --nincs jobb ötletem, de ha lesz akkor meg kéne ezt áltoztatni
	["ALIEN"] = "Egyek vagyunk",
	["DAEMON"] = "Körülöttem forog a világ.",

}

module.gui.gameover.credits = {

	"ŐRÜLT LÉPCSŐK",
	"Game conceptualized, designed and scripted by Sleazel",
	"Help with design - cakegirlserina",
	"Models by ZielonyLeszek",
	"Skyboxes by @wwwtyro's generator",
	"Data saving module, DataStore2, by Kampfkarren",
	"Original leaderboard script by ThatTimothy",
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
	"TRANSLATIONS:",
	"English - Sleazel",
	"Polski - Sleazel",
	"Fran ais - Alexnumbers",	
	"Italiano - Roloversion",	
	"Nederlandse - Sanderk35_2",
	"Romana - NoobMaster38271",
	"= ??? - ambronium",
	"Portugu s - Cosmo",
	"???? - OZEPJAH",
	"??????? - NoobMaster38271",
	"Ce tina - killerproXxgood",
	"bahasa Indonesia - echocentrical",
	"Espa ol - TDtheTV",
	"Deutsch - 05_hallo",
	"Slovensk  - Ondrik132",
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
	"MUSIC (APM catalog):",
	"Intro music - Allure by Martin Albert Sponticcia",
	"\"None\" endgame music - Deceived by Martin Albert Sponticcia",
	"Muggle music - Hyperdrive by Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Muggle endgame music - Reflections by Milan Pilar",
	"Patron music - Tranquilize by Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Patron endgame music - Dreamers by Joseph Alexander",
	"Joker music - Crosswind by Martin Albert Sponticcia",
	"Joker endgame music - Fender Stab by Steven Raymond Bush",
	"Wicked music - Wicked by Daniel Jay Nielsen, Nathan Duvall",
	"Wicked endgame music - Something Wicked by Cris Velasco",
	"Spectre music - Reflections by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Spectre endgame music - Cosmic Dust by Milan Pilar",
	"Keeper music - Automotion by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Keeper endgame music - Synth On The Highway by Richard Adrian Maxwell Preston",
	"Hacker music - Network by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Hacker endgame music - Descending Into Oblivion by Richard Adrian Maxwell Preston",
	"Thief music - Reaching Out by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Thief endgame music - Soaring by Richard Adrian Maxwell Preston",
	"Archon music - Aperture by Paul Emons, Richard Goodliff, Ian Robson",
	"Archon endgame music - Rendezvous by Paul Emons, Richard Goodliff, Ian Robson",
	"Drifter music - Communique by Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Drifter endgame music - Fragile by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic music - Mother by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic endgame music - Being Me by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon music - Rah by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon endgame music - Midnight Runner by Richard Adrian Maxwell Preston",
	"Ghost Union music - Amber Garden by Paul Emons, Richard Goodliff, Ian Robso",
	"Possessed music - Dark Souls by David Arkenstone",
	"Joker's disco stairs music - To The Disco by Gordon Zola",
	"Drifter's platform music - Radioactivity by Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Thanks for playing!",	
}

module.static = {

	["cla_1"] = "Hogyan kell játszani?",
	["cla_2"] = "Először is én azt ajánlanám, hogy csináld meg a kiképzést. Hogyha te ezt még nem tetted meg, legyen szíves lépj ki és lépj be újra, különben ez a játék nagyon összezavaró lehet.",
	["cla_3"] = "A játék az a célja, hogy feljuss a legfelső szintre és megszerezd a lebegő Energikus Gömböt. Először válassz egy osztályt úgy, hogy ráugrasz a villogó körökre a pálya közepén. ",
	["cla_4"] = "Amikor megelégedsz a választásoddal, mászd meg a lépcsőket és gyűjts lebegő formákat, hogy feltöltsd a Manádat. Használd az osztályod varázsigéjét, hogy segítsen rajtad a mászásban.",
	["cla_5"] = "Hogyan kell varázsolni?",
	["cla_6"] = "Minden varázsige kerül valamennyi Manába (1-4), hogy megvarázsold. Hogyha van elég Manád, nyomd meg a varázsigét. A kezeid elkezdenek világítani azt jelezve, hogy sikeres a varázsolás.",
	["cla_7"] = "Varázsolás után, a varázsigét végre kell hajtani. Az összes varázsigét ugrással kell végrehajtani. A varázsigétől függően, a felületeken vagy lépcsőkön kell végrehajtani az adott varázsigét. Világító nyilak jelennek meg, hogy segítsenek a végrehajtásban.",
	["cla_8"] = "Amikor befejezted a mászást, kapsz 3 varázs zsetont, amivel kinyithatsz egy új varázsigét. Fejezz be még több mászást, hogy még több varázsigét szerezz meg. Nem lehet zsetont az egyik osztályból arra használni, hogy egy másik osztályban lévő varázsigét szerezz meg.",
	["cla_9"] = "Hogyan varázsolok különleges varázsigékkel?",
	["cla_10"] = "Először az összes alapvető varázsigét meg kell szerezned, hogy használhass különleges varázsigéket. A különleges varázsigéket nem kell kinyitni, de Mana helyett Zsetont használnak el.",
	["cla_11"] = "Fejezd be a mászást elégszer, hogy megszerezd az összes alapvető varázsigét. Érdemes versenyeket nyerni, mert bónusz Zsetonokat szerezhetsz. Vagy vehetsz zsetonokat. Amikor az megvan, nyomd meg a legbaloldalibb gombot vagy a 'C' billentyűt.",
	["cla_12"] = "Néhány különleges varázsige időzített, és nem kell végrehajtani. Légyszíves olvasd el a további információkat az Osztálynak a Céhébe, hogy többet tudjon az adott különleges varázsigéről mielőtt megvarázsolná. Egy időzített különleges varázslat megszüntetése után nem kapod vissza a zsetonokat.",

	["pro_1"] = "PROFI TORONY",
	["pro_2"] = "Páros szintek korlátozása",
	["pro_3"] = "A Profi Toronyban néhány felület varázsigét nem lehet megvarázsolni páros szinteken. A Csapda, Portál Létrehozása, Függőleges Teleportálás, Csigalépcső, és Véletlenszerű Teleportálás varázsigéket csak páratlan szinteken lehet elvégezni.",
	["pro_4"] = "Drifterek se tudnak lifteket létrehozni azokon a felületeken. Reaver tükrei, Gremlin Felület Pörgetése és Necromancernek 3 varázsigéje sem működnek. Az érintett felületeket jelezve vannak egy piros körrel aminek a közepében egy X.",
	["pro_5"] = "Átkozott Lépcsők",
	["pro_6"] = "A Profi Toronyban Drónok véletlenszerűen létrehoznak Átkozott Lépcsőket vagy megátkoznak egy normális lépcsőt. 20% esély van arra, hogy megjelenjen egy Átkozott Lépcső. Segítő nyilak nem jelennek meg Átkozott Lépcsők közelében.",
	["pro_7"] = "Az Átkozott Lépcsők immunisak a legtöbb varázsigékre. Nem tudsz átteleportálni rajtuk és használni a Hacker Villanás varázsigét. Továbbá, az összes varázsige, ami elpusztítana egy Átkozott Lépcsőt se fog működni (például Keeper Mozgatása).",
	["pro_8"] = "Csak Hereticek és Admirálok tudnak helyreállítani Átkozott Lépcsőket. Tisztítás és Helyreállítás események is eltüntetik az átkozott lépcsőket. Azonban a Drónok mindig létrehoznak újakat a Profi toronyban.",
	["pro_9"] = "Átkozott Kereszteződések",
	["pro_10"] = "A Profi Toronyban Drónok véletlenszerűen létrehoznak Átkozott Kereszteződéseket is. Amikor egy drón talál egy üres Kereszteződést, akkor 20% esélye van arra, hogy megátkozza. A Segítő Nyilak átváltoznak egy keresztté, ami megjelöli a kereszteződést.",
	["pro_11"] = "Az Átkozott Kereszteződések megakadályozzák az összes olyan felület varázsigéket, amiket nyilakon kell végrehajtani. Nem tudsz létrehozni lépcsőket, kapcsokat vagy átteleportálni az Átkozott Kereszteződéseken.",
	["pro_12"] = "Csak Hereticek, Admirálok és Drónok tudnak helyreállítani Átkozott Kereszteződéseket. Úgy mint az Átkozott Lépcsőknél, Wicked Tisztítás Eseménye elpusztítja az összes átkot, de újraépítés közben új átkok jönnek létre.",

	["inf_1"] = "VÉGTELEN TORONY",
	["inf_2"] = "VERSENYEZNI KÖTELEZŐ",
	["inf_3"] = "A végtelen toronyban, a versenyben részt venni kötelező. Nem versenyző játékosok nem varázsolhatnak és nem kapnak jutalmat. Ha hozzáérsz a gömbhöz akkor csak kapsz 10 manát.",
	["inf_4"] = "Ahhoz hogy 'nyerj' a végtelen toronyban, be kell lépned egy versenyben és a lehető legtöbb ideig kell a tornyon maradni. A jutalmakat megkapod (ha szeresztél) miután kiestél.",
	["inf_5"] = "Leesett Drón",
	["inf_6"] = "A klasszikus és a profi toronnyal ellentétben, A Leesett Drónnak van egy különleges feladata a végtelen toronyban.",
	["inf_7"] = "Mindig, amikor feljebb megy az intervallum, A Leesett Drón csinál 2 új szintet. Az összes páros szint le lesz zárva. Ezen felül, még néhány lépcső és kereszteződés lehet, hogy meg vannak átkozva.",
	["inf_8"] = "Ez első intervallum 20 másodpercig tart. Minden egyes növelés csökkenti az intervallumot fél másodperccel, ameddig a szintek gyorsabban jönnek létre, mint ahogy meg lehetne mászni (5 másodperc).",
	["inf_9"] = "Radír",
	["inf_10"] = "A Radír az egy különleges erőtér, ami együtt növekszik a toronnyal és eltávolítja az alsó szinteket. Ha utolér a radír, akkor kiestél a versenyből. Ez olyan, mint egy növekvő láva másik játékokban.",
	["inf_11"] = "A radír fel fog gyorsulni, mint a Leesett Drón. De a drónnal ellentétben, a radír fokozatosan gyorsul, és nem radíroz ki 2 szintet egyszerre.",
	["inf_12"] = "A lépcsők és a felületek amik hozzáérnek a radírhoz eltűnnek. Kerüld el a radírt a lehető legtöbb ideig, hogy nyerj.",

	["cus_1"] = "EGYEDI TORONY",
	["cus_2"] = "TE DÖNTESZ!
	["cus_3"] = "Az egyedi toronyban kedvedre változtathatod a beállításokat.",
	["cus_4"] = "A jutalmak az Egyedi Toronyban meg vannak felezve. Kapsz 1 zsetont minden 12. szintért és egy mászást minden 30. szintért.",
	["cus_5"] = "Torony Beállításai",
	["cus_6"] = "Beállíthatod a tornyot úgy, ahogy akarod. Beállíthatod a szintek számát, lezárhatod a páros szinteket vagy bekapcsolhatod a végtelen módot.",
	["cus_7"] = "Csak a szerver tulajdonosa állíthatja be a tornyot.", --Nyilvános szervereken csak az a játékos állíthatja be a tornyot, amelyik a legtöbb időt töltött el a szerverben.
	["cus_8"] = "Drón Beállításai",
	["cus_9"] = "Meg tudod változtatni a kis drónok beállításait is. Beállíthatod a lépcsők számát, a drónok gyorsaságát, az átkozott lépcsőkre és kereszteződésekre az esélyt, vagy kikapcsolhatod a drónokat.",

	["vr_1"] = "Mivel a játékot VR-ban indítottad el, ezért automatikusan egy Architect lettél.",
	["vr_2"] = "Normális játékosokkal ellentétben, neked nem kell megmászni a tornyot. A te célod, hogy megsegítsd vagy megszívasd a többi játékost.",
	["vr_3"] = "Te döntés a te kezedben van. Egy gazember leszel, vagy egy megmentő? Vagy egyáltalán nem érdekel téged a többi játékos? Érezd jól magad!",
	["vr_4"] = "Hogyan mozgok?",
	["vr_5"] = "Használd a bal joysticket, hogy előre meg hátra menj. Billentsd a bal joysticket oldalra, hogy jobbra vagy balra menj.",
	["vr_6"] = "Használd a jobb joysticket, hogy fel meg le menj. Billentsd a jobb joysticket jobbra vagy balra, hogy 'hirtelen' megfordítsd a kamerát.",
	["vr_7"] = "Próbálj meg a lépcsőházon kívül lenni, hogy könnyebben belásd a tornyot és célozz.",
	["vr_8"] = "Hogyan varázsolok varázsigéket?",
	["vr_9"] = "Nyomd össze varázs gömböt a markolat gombbal. Megjelenik egy lézersugár, ami segít célba venni lépcsőket és felületeket.",
	["vr_10"] = "Hajtsd végre a varázsigét a ravasszal, miközben le nyomva tartod a markolatot. Minden osztálynak van két varázsigéje VR-ban. Egy felületen és egy lépcsőn. A célponttól függően ki lesz választva a megfelelő varázsige.",
	["vr_11"] = "Hogy osztályt válts VR módban, ahhoz nyomd meg hosszan a ravaszt anélül, hogy megnyomnád a markolatot. Osztályt tudsz váltani a kézzel megegyező oldalú joystickkel.",

	["home_1"] = "MUGGLE OTTHONA",
	["home_2"] = "JELMONDATUNK:\nFUSS\nUGORJ\nÉS\nESS LE",
	["home_3"] = "ELŐNYÖK:\nGyorsabb és nagyobbat ugor a magasabb rangoknál\nMenő leszel\nHÁTRÁNYOK:\nNincsen varázsigéi\nKönnyen elakad",
	["home_4"] = "„Bezzeg az én időmben nem voltak ilyen puccos varázsigék!”\nalapítónk idézete",

	["oasis_1"] = "CHAMELEON OÁZISA",
	["oasis_2"] = "JELMONDATUNK:\nMÁSOLJ\nUTÁNOZZ\nÉS\nLEPJ MEG MÁSOKAT",
	["oasis_3"] = "ELŐNYÖK:\nBármikor és bárhol változtathatsz osztályt\nHÁTRÁNYOK:\nRobuxba kerül\nAz összes osztály felfejlesztése sok időbe kerül",
	["oasis_4"] = "„Túl lusta vagyok ahhoz, hogy kitaláljak saját varázsigéket.”\nalapítónk idézete",

	["nexus_1"] = "HERETIC KIINDULÓPONTJA",
	["nexus_2"] = "JELMONDATUNK:\nTE\nNEM\nJUTSZ\nÁT",
	["nexus_3"] = "ELŐNYÖK:\nLegjobb a profi toronyban\nNem lehet megállítani\nHÁTRÁNYOK:\nNehéz beállni egy csapatba\nManára éhes",
	["nexus_4"] = "„Fekete mágia kitiltása az olyan mintha a mókát tiltanád ki.”\nalapítónk idézete",

	["guild_1"] = "THIEF REJTEKHELYE",
	["guild_2"] = "JELMONDATUNK:\nKÖLCSÖNÖZNI\nHASZNÁLNI\nÉS\nVISSZAKÜLDENI",
	["guild_3"] = "ELŐNYÖK:\nNem használ sok manát\nSok haszna van\nHÁTRÁNYOK:\nLépcsőt kell lopnia\nNem tud elpusztítani útban álló lépcsőket.",
	["guild_4"] = "„Tulajdonképpen ezt úgy hívják, hogy kölcsönzés.”\nalapítónk idézete",

	["nether_1"] = "SPECTRE KÖDE",
	["nether_2"] = "JELMONDATUNK:\nELTÜNNI\nELBÚJNI\nÉS\nTELEPORTÁLNI",
	["nether_3"] = "ELŐNYÖK:\nGyors varázsigék\nTökéletes ha egyedül játszol\nHÁTRÁNYOK:\nRobuxba kerül\nNem ajánlott csapatokban",
	["nether_4"] = "„Mi baj lehet a teleportálással?”\nalapítónk idézete (MIA)", 

	["study_1"] = "ARCHON LABORA",
	["study_2"] = "JELMONDATUNK:\nNYISS\nPORTÁLT\n???\nHASZON",
	["study_3"] = "ELŐNYÖK:\nHasznos Rig\nMegzavar másokat\nHÁTRÁNYOK:\nNehéz megtanulni\nKell hozzá előre tervezni",
	["study_4"] = "„Régebben én uraltam ezt a lépcsőházat.”\nalapítónk idézete",

	["haven_1"] = "PATRON MENNYE",
	["haven_2"] = "JELMONDATUNK:\nSEGÍTENI\nMEGVÉDENI\nÉS\nLÉTREHOZNI",
	["haven_3"] = "ELŐNYÖK:\nKönnyű megtanulni\nCsapatjátékos\nHÁTRÁNYOK:\nSok Manát használ\nMások kihasználhatják",
	["haven_4"] = "„Ki más fog segíteni a szerencsétlen embereken, ha nem mi?”\nalapítónk idézete",

	["shelter_1"] = "DRIFTER MENEDÉKE",
	["shelter_2"] = "JELMONDATUNK:\nSZÖRFÖLJ\nLOVAGOLJ\nÉS\nCSÚSSZ",
	["shelter_3"] = "ELŐNYÖK:\nSok haszna van\nCsapatjátékos\nHÁTRÁNYOK:\nKell hozzá parkúr tudás \nNem annyira hasznos Profi toronyban",
	["shelter_4"] = "„Kinek kellenek lépcsők, amikor az űrben vagyunk?”\nalapítónk idézete",

	["circus_1"] = "JOKER CIRKUSZA",
	["circus_2"] = "JELMONDATUNK:\nMEGTÉVESZTENI\nMEGZAVARNI\nÉS\nNEVETNI",
	["circus_3"] = "ELŐNYÖK:\nSzívathatsz másokat\nA fordító varázsigék hasznosak\nHÁTRÁNYOK:\nDrága varázsigék\nTönkre tehetsz barátságokat", --ha van
	["circus_4"] = "„Ez a lépcsőház egy vicc.”\nalapítónk idézete",

	["base_1"] = "KEEPER BÁZISA",
	["base_2"] = "JELMONDATUNK:\nMOZGATNI\nFORGATNI\nÉS\nIRÁNYÍTANI",
	["base_3"] = "ELŐNYÖK:\nHelyre tudja állítani a lépcsőket\nÚjra tudja hasznosítani a lépcsőket\nHÁTRÁNYOK:\nSzükséges parkúr, hogy jól használd\nHaszontalan lépcső nélkül",
	["base_4"] = "„Ne tedd tönkre a lépcsőházamat!”\nalapítónk idézete",

	["chamber_1"] = "WICKED KAMRÁJA",
	["chamber_2"] = "JELMONDATUNK:\nAKADÁLYOZN\nÚTBAN ÁLNI\nÉS\nPUSZTÍTANI",
	["chamber_3"] = "ELŐNYÖK:\nEl tud pusztítani bármilyen lépcsőt\nVagy akár egyszerre az összeset\nHÁTRÁNYOK:\nTúlzottan támaszkodik lépcsőkre",
	["chamber_4"] = "„Nem vagyok gonosz, csak túl sok a lépcső.”\nalapítónk idézete",

	["backdoor_1"] = "HACKER HÁTSÓ AJTAJA",
	["backdoor_2"] = "JELMONDATUNK:\nKIHASZNÁLNI\nMEGHIBÁSÍTANI\nÉS\nSZÉTTÖRNI",
	["backdoor_3"] = "ELŐNYÖK:\nLeggyorsabb osztály\nNehéz követni\nHÁTRÁNYOK:\nTúlzottan támaszkodik lépcsőkre\nHaszontalan csapatokban",
	["backdoor_4"] = "„Igazságos játszma? Olyan nem létezik.”\nalapítónk idézete",

	["hub_1"] = "SPLICER KÖZPONTJA",
	["hub_2"] = "JELMONDATUNK:\nCSAVARJ\nKAPCSOLJ ÖSSZE\nÉS\nEGYESÍTS",
	["hub_3"] = "ELŐNYÖK:\nSok haszna van\nJó csapatokban\nHÁTRÁNYOK:\nPicit összezavaró\nSok idő elsajátítani",
	["hub_4"] = "„Ne menj egy egyenes vonalon túl sokáig.”\nalapítónk idézete",

	["shack_1"] = "GREMLIN KUNYHÓJA",
	["shack_2"] = "JELMONDATUNK:\nFORGASS\nPÖRGESS\nÉS\nHIPNOTIZÁLJ",
	["shack_3"] = "ELŐNYÖK:\nNincs\nHÁTRÁNYOK:\nMINDENKI utálni fog",
	["shack_4"] = "„Gyere játssz velem.”\nalapítónk idézete",

	["mirror_1"] = "REAVER TÜKRE",
	["mirror_2"] = "JELMONDATUNK:\nTÜKRÖZŐDNI\nKICSERÉLNI\nÉS\nEGYBEVÁLNI",
	["mirror_3"] = "ELŐNYÖK:\nTükröket másik játékosok is tudják használni\nHÁTRÁNYOK:\n:Egybeválás és szétválás funkció összezavaró lehet.",
	["mirror_4"] = "„Tükrök valójában csak átjárók.”\nalapítónk idézete",

	["grave_1"] = "NECROMANCER SÍRJA",
	["grave_2"] = "JELMONDATUNK:\nKÖVESS\nÉLEDJ ÚJRA\nÉS\nSZEREZZ HASZNOT",
	["grave_3"] = "ELŐNYÖK:\nA szellemed tud segíteni másik játékosoknak\nHÁTRÁNYOK:\nLegtöbb varázsige nagyon drága\nNehéz mindig figyelni a szellemedet",
	["grave_4"] = "„Nem akarunk meg szállni téged, csak barátok akarunk lenni.”\nalapítónk idézete",

	--SHARED
	["leader_pro"] = "Profi Torony 2 mászásnak számít",	
	["leader_update"] = "Következő Frissítés: ",	
	["leader_updating"] = "Frissítés...",	
	["leader_rank"] = "RANG",
	["leader_req"] = "SZÜKSÉGES MÁSZÁSOK", 
	["leader_off"] = "Egyedi torony nem támogatja a ranglistákat.",

	--OVERALL
	["over_title"] = "ÖSSZEFOGLALÓ RANGOK",
	["over_desc"] = "Minden szerzett rang ad 1 pontot",
	["over_rank"] = "RANG",
	["over_req"] = "SZÜKSÉGES PONTOK",
	["emperor_req"] = "* Szükséges Chameleon VAGY Spectre",
	["overmind_req"] = "** Szükséges Chameleon ÉS Spectre ",
	["over_prefix"] = "ELŐTAG",
	["over_passes"] = "JÁTÉK BÉRLET\nSZÜKSÉGES",
	["over_notgroup"] = "OLIVA SZÍNŰ - nincs benne a csoportban", --pwease Sleazel uwu
	["over_group"] = "ZÖLDESKÉK SZÍNŰ - benne van a csoportban",
	["over_mod"] = "MODERATOR - ez a játékos egy moderator",
	["over_admin"] = "ADMIN - ez a játékos egy admin", --Sleazel, I am you from 50 years from the future. I have no other way of contacting you. A super AI will be created somewhere idk, and will take over the entire world. The only way to stop it is if you give me admin in Crazy Stairs.
	["over_owner"] = "PRANK ME - Játék készítője (sleazel)",

	--OTHER
	["muggle_lead"] = "GYORS MUGGLEK",
	["muggle_ranks"] = "MUGGLE RANGOK",

	["hacker_lead"] = "TITKOSÍTOT HACKEREK",
	["hacker_ranks"] = "HACKER RANGOK",

	["wicked_lead"] = "ERŐSZAKOS WICKEDEK",
	["wicked_ranks"] = "WICKED RANGOK",

	["keeper_lead"] = "FELKÉSZÜLT KEEPEREK",
	["keeper_ranks"] = "KEEPER RANGOK",

	["joker_lead"] = "ŐRŰLT JOKEREK",
	["joker_ranks"] = "JOKER RANGOK",

	["drifter_lead"] = "SEBES DRIFTEREK",
	["drifter_ranks"] = "DRIFTER RANGOK",

	["patron_lead"] = "NEMES PATRONOK",
	["patron_ranks"] = "PATRON RANGOK",

	["archon_lead"] = "FÜRGE ARCHONOK",
	["archon_ranks"] = "ARCHON RANGOK",

	["spectre_lead"] = "REPÜLŐ SPECTRÉK",
	["spectre_ranks"] = "SPECTRE RANGOK",

	["thief_lead"] = "SUNYI THIEFEK",
	["thief_ranks"] = "THIEF RANGOK",

	["heretic_lead"] = "KÖNYÖRTELEN HERETICEK",
	["heretic_ranks"] = "HERETIC RANGOK",

	["necromancer_lead"] = "ÉLŐHALOTT NECROMANCEREK",
	["necromancer_ranks"] = "NECROMANCER RANGOK",

	["splicer_lead"] = "CSAVART SPLICEREK",
	["splicer_ranks"] = "SPLICER RANGOK",

	["reaver_lead"] = "TÜKRÖZŐDÖTT REAVEREK",
	["reaver_ranks"] = "REAVER RANGOK",

	["gremlin_lead"] = "SZERENCSÉS GREMLINEK",
	["gremlin_ranks"] = "GREMLIN RANGOK",

	["chameleon_lead"] = "SZAPORA CHAMELEONOK",
	["chameleon_ranks"] = "CHAMELEON RANGOK",

	["dailies"] = "MAI REKORDOK",
	["most_climbs"] = "LEGTÖBB MÁSZÁS",
	["most_wins"] = "LEGTÖBB VERSENY NYERÉSEK",  
}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Üdvözöljük az Őrült Lépcsőkben!",
	["tut_big_2"] = "Először tanuld meg hogyan változz át.",
	["tut_big_3"] = "Te most egy Patron vagy. A Patronok lépcsőket tudnak létrehozni.",
	["tut_big_4"] = "Az összes varázsigét ugrással kell végrehajtani.",
	["tut_big_5"] = "Menő, ugye? Most változz át Jokerré. A Jokerek meg tudják fordítani a lépcsőket.",
	["tut_big_6"] = "Te most egy Joker vagy, használd ezt a varázsigét, hogy átfordíts lépcsőket.",
	["tut_big_7"] = "Néhány varázsigéket lépcsőkön kell végrehajtani.",
	["tut_big_8"] = "Most változz át Keeperré. A Keeperek tudnak lépcsőket mozgatni.",
	["tut_big_9"] = "Te most egy Keeper vagy, használd ezt a varázsigét, hogy megmozgasd a lépcsőt.",
	["tut_big_10"] = "Ugorj az előre álló nyílra, hogy megmozgasd a lépcsőt.",
	["tut_big_11"] = "Sok útban álló lépcsővel fogsz találkozni ebben a játékban.",
	["tut_big_12"] = "Te most egy Wicked vagy, használd ezt a varázsigét, hogy elpusztítsd az utadban álló lépcsőt.",
	["tut_big_13"] = "El tudsz pusztítani feletted lévő lépcsőket úgy, hogy ráugrasz az alattuk lévőre.",
	["tut_big_14"] = "Mielőtt még elkezdenél játszani, hadd mutassam meg neked a prémium osztályt.",
	["tut_big_15"] = "Te most egy Spectre vagy. Spectre az egy prémium osztály, ami legjobb, ha egyedül játszol.",
	["tut_big_16"] = "A célod - juss el a legfelső szintre és szerezd meg a gömböt. Sok szerencsét",

	["tut_select"] = "Válaszd ki ezt a varázsigét.",

	["tut_small_init"] = "Ugorj, hogy elkezd a kiképzést",
	["tut_small_morph"] = "Ugorj a transzformátorra.", 
	["tut_small_arrow"] = "Ugorj a nyílra.",
	["tut_small_stairs"] = "Ugorj a lépcsőre.",

}

module.where = {

	["platform"] = "Muszáj végrehajtani egy felületen. Nem lehet a földszinten vagy a profi torony páros szintein megvarázsolni.",
	["arrow"] = "Muszáj végrehajtani egy felületnek a nyilán.",
	["stairs"] = " Muszáj végrehajtani egy lépcsőn.",
	["above"] = "Muszáj végrehajtani az alattad lévő lépcsőn, hogy hasson a feletted lévő lépcsőre. Kapcsokon is működik.",
	["dynamic"] = "Érintheti az alattad és a feletted lévő lépcsőt.",
	["both"] = "Végre lehet hajtani egy felületnek a nyilán vagy lépcsőkön.",
	["both2"] = "Végre lehet hajtani felületeken vagy lépcsőkön.",
	["anywhere"] = "Bárhol végre lehet hajtani.",
	["nowhere"] = "Ezt a varázsigét nem kell végrehajtani.",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "Végre lehet hajtani üres kereszteződésekben vagy útban nem álló lépcsőkön keresztűl.",
		--["restore"] = "Végre lehet hajtani ___mellet",
		["superforced"] = "Végre lehet hajtani üres kereszteződésekben, vagy útban álló lépcsőkön keresztűl. Ha rendelkezel BANISHED ranggal, akkor elpusztíthatsz útban lévő átkozott lépcsőket.",
		["flicker"] = "Végre lehet hajtani üres kereszteződésekben. Ha rendelkezel INDIFEL ranggal, akkor végre hajthatod átkozott kereszteződésekben is.",
		["any"] = "Végre lehet hajtani bármilyen nem átkozott kereszteződésben.",
		["wall"] = "Végre lehet hajtani bármilyen nem átkozott kereszteződésben, amelynek nincsen egy Fal vagy Kapu az útjában.",
		--["ghosted"] = "Csak normális, riges vagy szellemesített lépcsőkön lehet végrehajtani.",
		--["deltwists"] = "Csak csavart lépcsőkön lehet használni.",
		["forced"] = "Végre lehet hajtani üres kereszteződésekben, vagy nem átkozott útban álló lépcsőkön keresztűl.",
		["halfsoft"] = "Végre lehet hajtani üres kereszteződésekben, vagy nem átkozott útban álló lépcsőkön keresztűl magasabb rangokon.",
		["soft"] = "Csak üres kereszteződésekben lehet végrehajtani",
		["flatten"] = "Csak olyan kereszteződésekben lehet végrehajtani, amelyben van egy útban álló normális vagy riges lépcső.",
		["hack"] = "Csak olyan kereszteződésekben lehet végrehajtani, amelyben van egy útban álló nem átkozott lépcső.
		["sidepass"] = "Végre lehet hajtani bármilyen nem átkozott kereszteződésben, amelynek nincs egy Kitérő.",
	},

	["platform"]= {
		

		--platform
		["middle"] = "Ennek a varázsigének nincsen különleges feltétele.",
		["diag"] = "Végre lehet hajtani a torony külső és belső felületén átlós irányban.",
		["outer"] = "Csak a torony külső felületeken lehet végrehajtani.",
		["centre"] = "Ez a varázsige összetöri az összes kicsi tükröt ezen a szinten, de a nagyot nem.",
		["inner"] = "Csak a torony belső felületeken lehet végrehajtani, amelyeken nincsen egy kapocs.",
		["prevolve"] = "Végre lehet hajtani az óra mutató járásával egyenlő vagy ellentétes irányban.",
		["top"] = "Csak a legfelső szinten lévő felületeken lehet végrehajtani.",
	},
	
	["stairs"] ={
		
		["cursed"] = "Végre lehet hajtani normális, riges vagy átkozott lépcsőkön.",
		["all"] = "Végre lehet hajtani bármilyen lépcsőn. Ha rendelkezel Annihilator ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
		["steal"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Hijacker ranggal, akkor ellophatsz bármilyen nem átkozott lépcsőt.",
		["onedirection"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["straight"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["rotate"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["flip"]= "Végre lehet hajtani normális, riges vagy fordított lépcsőkön.",
		["gate"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Prodigy ranggal, akkor felülírhatsz kapukat.",
		["gatestr"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Prodigy ranggal, akkor felülírhatsz kapukat.",
		["gaterot"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Prodigy ranggal, akkor felülírhatsz kapukat.",
		["twist"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Transformer ranggal, akkor felülírhatsz csavart lépcsőket.",
		["twiststr"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Transformer ranggal, akkor felülírhatsz csavart lépcsőket.",
		["twistrot"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Transformer ranggal, akkor felülírhatsz csavart lépcsőket.",
		["spin"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Nomad ranggal, akkor megforgathatsz sodródott lépcsőket.",
		["drift"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Nomad ranggal, akkor megforgathatsz sodródott lépcsőket.",
		["escalator"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["oneway"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["revolve"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["normalrig"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",

	},
	
	["above"] = {
		
		["cursed"] = "Végre lehet hajtani egy normális, riges vagy átkozott lépcső alatt.",
		["all"] = "Végre lehet hajtani bármilyen lépcső alatt. Ha rendelkezel Annihilator ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
		["steal"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt. Ha rendelkezel Hijacker ranggal, akkor ellophatsz bármilyen nem átkozott lépcsőt.",
		["flip"]= "Végre lehet hajtani egy normális, riges vagy fordított lépcső alatt.",
		["onedirection"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["slide"] = "Ezzel a varázsigével átjuthatsz bármilyen nem átkozott lépcsőn.",
		["normalrig"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt.",

	},
	
	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Végre lehet hajtani normális, riges vagy fordított lépcső alatt vagy lépcsőn. Ha nem tudod a feletted lévő lépcsőt (ha van) megfordítani, akkor helyette megfordítod az alattad lévő lépcsőt.",
		['normalrig'] = "Végre lehet hajtani normális vagy riges lépcső alatt. A varázsige hat az alattad és a feletted lévő lépcsőkre.",
		['slide'] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha van utadban áll nem átkozott lépcső, akkor az a lépcső elpusztul.",
	},
	
	["both"] = {
		['restore'] = "Végre lehet hajtani bármilyen lépcsőn vagy egy felületnek a nyilán ami mellet van egy lépcső. Ha rendelkezel Admiral ranggal, akkor helyreállíthatsz átkozott lépcsőket.",
		['deltwists'] = "Végre lehet hajtani csavart lépcsőkön vagy egy felületnek a nyilán ami mellet van egy csavart lépcső. Ha rendelkezel Combiner ranggal, akkor helyreállíthatsz a felülethez nem kapcsolódó lépcsőket.",
		['ghosted'] = "Végre lehet hajtani normális, riges vagy szellemesített lépcsőn vagy egy felületnek a nyilán ami mellet van egy normális, riges vagy szellemesített lépcső.",

	},
	
	['both2'] = {
		['delsplits'] = "Csak kapus lépcsőkön lehet végrehajtani. Ha rendelkezel Disciple ranggal, akkor a Felületeknek a kapuját is el tudod tüntetni."
	},
	
	['anywhere'] = {
		['anywhere'] = "Ezt a varázsigét bárhol végre lehet hajtani.",
	},
	
	["nowhere"] = {
		['slide'] = "Ezt a varázsigét nem kell végrehajtani.",
		
	},

}



module.spells.manacosts = {
	"0 Mana",
	"1 Mana",
	"2 Mana",
	"3 Mana",
	"4 Mana", 
	"0 Mana + lépcső",
	"1 Mana + lépcső",
	"2 Mana + lépcső",
	"3 Mana + lépcső", 
	"", 
	"10 Mana" 
}

module.spells.tokencosts = {

	"1 Zseton",
	"2 Zseton",
	"3 Zseton",

	["chameleonrigevent"] = "2 Multi Zseton",
	["unlock"] = "(nyisd fel 3 zsetonért)",
}

module.serverfeedback = {
	 
	--failed spell (local)
	["nomana"] = "Nincs elég Manád!",
	["notokens"] = "Nincs elég Zsetonod!",
	["coolwait"] = "Most nem tudsz eseményeket és rigeket varázsolni, kérlek várj ",
	["nomirror"] = "Egybe kell válnod a szellemeddel, hogy rá tudj menni a tükörre.",
	["regenused"] = "Ebben a mászásban már Regeneráltál.",

	--failed spell (server)
	["unknown"] = "Ismeretlen hiba.", --this should not show for normal players, only exploiters
	["lockedspell"] = "Ez a varázsige le van zárva!",
	["possessed"] = "Nem használhatsz varázsigéket miközben meg vagy szállva.",
	["spelllock"] = "Most nem használhatsz varázsigéket.",
	["nothere"] = "Ezt a varázsigét nem használhatod a kiképzésben.",
	["onlyracers"] = "Csak versenyzők varázsolhatnak.",
	["cancelfirst"] = "Előbb szüntesd meg a jelenlegi varázsigét...",
	["stashfull"] = "Tele van a leltárad.",
	["stashempty"] = "El kell lopnod egy lépcsőt mielőtt megvarázsolnád ezt a varázsigét.",
	["ultwait"] = "Egy másik különleges varázsige van folyamatban. Kérlek várj.",
	["notdefault"] = "A Drónoknak előbb vissza kell váltaniuk alap módba. Kérlek várj.",
	["regwait"] = "Nem varázsolhatsz rigeket és eseményeket, miközben a Lépcsőház újraépül.",
	["cooldownwait"] = "Nem varázsolhatsz rigeket és eseményeket, kérlek várj %d másodpercet.",
	["nospellsnow"] = "Most nem varázsolhatsz.",
	["noreshuffle"] = "Előbb válassz átrendezés módot!",
	["oneoverload"] = "Nem lehet egyszerre több Mana Túltöltésed aktív.",
	["cursed"] = "Ez a lépcső átkozott!",
	["cursed2"] = "Átkozott lépcső van az útban!",
	["blocked"] = "Ez a kereszteződés átkozott.",
	["locked"] = "Ez a lépcső le van zárva.",
	["platformlocked"] = "Célba vett felület le van zárva.",
	["normalrig"] = "Ez a varázsige csak normális és riges lépcsőkön működik.",
	["cantblock"] = "Nem tudsz átkozni, itt van egy lépcső. (lehet, hogy láthatatlan)",
	["cantblock2"] = "Nem tudsz átkozni, keresztező lépcső van az utadban. (lehet, hogy láthatatlan)",
	["noway"] = "Van egy lépcső az utadban. (lehet, hogy láthatatlan",
	["noway2"] = "Keresztező lépcső van az utadban. (lehet, hogy láthatatlan)",
	["noplatform"] = "Nincs felület abban az irányban.",
	["nopass"] = "Ezt a varázsigét csak a torony külső felületein lehet végrehajtani.",
	["pass"] = "Már van itt egy kitérés.",
	["link"] = "Már van itt egy kapocs.",
	["noblink"] = "Csak útban álló lépcsőkön lehet átvillanni.",
	["noblink2"] = "Csak olyan lépcsőkön tudod végrehajtani ezt a varázsigét, amelyeknek a teteje hozzá ér az útban álló lépcsőhöz.",
	["noflip"] = "Csak a normális, fordított vagy riges lépcsőket lehet megfordítani.",
	["nothingtocopy"] = "Nincsenek itt lépcsők, amelyeket te vagy a szellemed le tudnátok másolni.",
	["wrongdirection"] = "Nem tudod ezt a varázsigét végrehajtani abban az irányban.",
	["notfound"] = "Nem találtunk itt lépcsőt.",
	["nocursedblink"] = "Nem tudsz átkozott lépcsőkön átvillanni.",
	["nostairs"] = "Nincsen itt lépcső.",
	["noground"] = "Ezt a varázsigét nem lehet végrehajtani a földszinten.",
	["oddonly"] = "Ezt a varázsigét nem lehet végrehajtani ezen a szinten.",
	["noabove"] = "Nincsen közvetlenül feletted lépcső.",
	["linklimit"] = "Csak a feletted lévő lépcsőre ható varázsigéket lehet kapcsokon végrehajtani.",
	["lock"] = "Nem tudsz most varázsolni.",
	["outdrift"] = "A külső lifteket csak a torony külső felületein lehet létrehozni.",
	["cantgate"] = "Ez az irány le van zárva.",
	["wall"] = "Már van itt egy fal.",
	["nocurse"] = "Csak normális, riges vagy átkozott lépcsőket lehet megátkozni/átkot elvenni róla.",
	["nogate"] = "Ezen a lépcsőn nincs egy kapu.",
	["noghost"] = "Csak normális és riges lépcsőket lehet szellemesíteni.",
	["wrongsplit"] = "A másik kapunak a játék területen belül kell lennie.",
	["blockedplit"] = "Nem lehet kaput létrehozni, a célba vett irányban van egy átok.",
	["cursedtarget"] = "Átkozott Lépcső van abban az irányban.",
	["lockedsplit"] = "Nem tudod létrehozni a kapukat, a másik lépcső még le van zárva.",
	["failedgate"] = "Nem sikerült kapukat létrehozni.",
	["notwist"] = "Ez a lépcső nem csavart.",--*
	["wrongmove"] = "Nem lehet a lépcsőt a játék területen kívülre mozgatni.",
	["blockedmove"] = "Nem lehet a lépcsőt mozgatni, mert átok van abban az irányban.",
	["lockedmove"] = "Még nem lehet a lépcsőt mozgatni, mert az útban álló lépcső le van zárva.",
	["normal"] = "Ez a lépcső már normális.",
	["lockedinter"] = "Ez a kereszteződés le van zárva.",
	["toponly"] = "A 'Gömb Hívása' varázsigét csak a legfelső szinten lehet megvarázsolni.",
	["duplicatemirror"] = "Már van egy tükör ezen a szinten.",
	["norestore"] = "Nem tudod helyreállítani a kitéréseket és a csigalépcsőket.",

	--higher rank required
	["admiral2"] = "Csak akkor állíthatsz helyre átkozott lépcsőket, ha rendelkezel Admiral ranggal.",
	["admiral"] = "Csak akkor állíthatsz helyre átkozott kereszteződéseket, ha rendelkezel Admiral ranggal.",
	["infidel"] = "Csak akkor használhatod ezt a varázsigét átkozott kereszteződésekben, ha rendelkezel Infidel ranggal.",
	["banished"] = "Csak akkor pusztíthatsz el útban álló Átkozott Lépcsőket, ha rendelkezel Banished ranggal. ",
	["annihilator"] = "Csak akkor pusztíthatsz el átkozott lépcsőket, ha rendelkezel Annihilator ranggal.",
	["disciple"] = "Csak akkor pusztíthatsz el Felületen lévő Kapukat, ha rendelkezel Disciple ranggal.",
	["nomad"] = "Csak akkor forgathatsz meg sodródott lépcsőket, ha rendelkezel Nomad ranggal.",
	["prodigy"] = "Csak akkor írhatsz felül kapukat, ha rendelkezel Prodigy ranggal.",
	["traveller"] = "Csak akkor emelhetsz fel lifteket, ha rendelkezel Traveller ranggal.",
	["controller"] = "Csak akkor mozgathatsz meg bármilyen nem átkozott lépcsőt, ha rendelkezel Controller ranggal.",--*
	["replica"] = "Csak akkor válhatsz szét a szellemeddel ezzel a varázsigével, ha rendelkezel Replica ranggal.",--*
	["lich"] = "Csak akkor pusztíthatsz el keresztező lépcsőket, ha rendelkezel Lich ranggal.",
	["hijacker"] = "Csak akkor lophatsz el bármilyen nem átkozott lépcsőt, ha rendelkezel Hijacker ranggal.",
	["transformer"] = "Csak akkor csavarhatsz meg megcsavart lépcsőket, ha rendelkezel Transformer ranggal.",
	["strider"] = "Csak akkor emelhetsz meg mégegyszer lifteket, ha rendelkezel Strider ranggal.",
	["poltergeist"] = "Csak akkor pusztíthatsz el keresztező lépcsőket, ha rendelkezel Poltergeist ranggal.",

	--rig activation
	["keeperrig"] = "A lépcső mozog!",
	["hackerrig"] = "A lépcső meghibásodott!",
	["jokerrig"] = "A lépcső megfordul!",
	["wickedrig"] = "A lépcső összeomlik!",
	["spectrerig"] = "A lépcső megszellemesedett!",
	["notspectrerig"] = "A lépcső NEM szellemesedett meg!",
	["patronrig"] = "%s adott neked 1 Manát!",
	["thiefrig"] = "%s ellopott tőled 1 Manát!",
	["mythiefrig"] = "Elloptál egy manát ettől a játékostól: %s",
	["notthiefrig"] = "%s már nem egy thief - mana nem lett ellopva.",
	["leftthiefrig"] = "Thief elhagyta a játékot - mana nem lett ellopva.",
	["hereticrig"] = "Meg lettél szállva!",
	["archonrig"] = "Teleportálódsz!",
	["drifterrig"] = "A lépcső forog!",
	["splicerrig"] = "A lépcső megcsavarodik!",
	["necrorig"] = "A lépcső elhalványul!",
	["reaverrig"] = "A lépcső most már egyirányú!",
	["gremlinrig"] = "Meg lettél hipnotizálva!",
	["reveal"] = "Megtaláltál egy láthatatlan lépcsőt!",
	
	--drifer lifts
	["boosted"] = "Lift megemelve!",
	["noboost"] = "Nem lehet emelni, nincs feletted felület.",
	["noupplatform"] = "Nem lehet emelni, nincs feletted felület.",
	
	--mana overload
	["overstarted"] = "Bekapcsoltad a Mana Túltöltést!",
	["overended"] = "Mana Túltöltés befejezve",
	
	--mana share
	["2minshare"] = "Legalább 2 mana szükséges a megosztáshoz.",
	["noshare"] = "Nincs játékos közelben, akivel meg tudnád osztani a manádat.",
	["noinf"] = "Nem tudsz megosztani végtelen Manát!",
	["toomuch"] = "%s tele van Manával!",
	["shared"] = "Megosztottál Manát ezzel a játékossal: %s!",
	["received"] = "%s megosztotta veled a Manáját!",
	
	--prompts
	["scancel"] = "Szüntesd meg a varázsigédet, hogy változtass osztályt.",
	["morph"] = "Ugorj ide, hogy %s legyél!",
	
	--race
	["raceclosed"] = "A verseny már zárva van.",
	["stay"] = "Maradj a gyűrűben, hogy részt vegyél a versenyben!",
	["falsestart"] = "Túl korán indultál el.",
	["charreset"] = "Kiestél a versenyből, mert meghaltál.",

	--misc
	["secret"] = "Titok megtalálva!",
	["unlocked"] = "Varázsige feloldva!",

	--chameleon exceptions	
	["chamtutorial"] = "Nem használhatsz CHAMELEONT a kiképzésben!",
	["champossessed"] = "Nem használhatsz Chameleont miközben meg vagy szállva.",
	["chamhypnotized"] = "Nem használhatsz Chameleont miközben hipnotizálva vagy.",
	["chamspell"] = "Előbb hajtsd végre vagy szüntesd meg a mostani varázsigédet.",
	["morphpossessed"] = "Nem változtathatsz osztályt miközben meg vagy szállva.",
	["morphhypnotized"] = "Nem változtathatsz osztályt miközben hipnotizálva vagy.",
	
	["nocode"] = "Légyszíves előbb írd be a kódot.",
	["invalid"] = "Ez a kód nem érvényes.",
	["old"] = "Ez a kód már nem aktív.",
	["accepted"] = "Kód elfogadva.",
	
	--free demos
	["tryspectre"] = "Spectre feloldva 10 percig! Ne hagyd el a szervert.",
	["endspectre"] = "Spectre demó 1 perc múlva véget ér!",
	["trycham"] = "Chameleon feloldva 10 percig! Ne hagyd el a szervert.",
	["new20pass"] = "Mana tárhely megnövelve!",
	["newchampass"] = "Most már változtathatsz osztályt egy mászás közben!",
	["newspectrepass"] = "Most már lehetsz SPECTRE!",
	["endcham"] = "Chameleon demó 1 perc múlva véget ér!",
	["trymana"] = "Nagyobb tárhely feloldva 10 percig! Ne hagyd el a szervert.",
	["endmana"] = "Nagyobb tárhely demó 1 perc múlva véget ér!",
	
	
	["used"] = "Ezt a kódot már elhasználtad.",
	["tooshort"] = "Az üzeneted túl rövid volt és nem lett elküldve.",
	["sent"] = "Az üzeneted sikeresen el lett küldve, köszönjük.",
	
	--private server moderation (might be re-implemented in the future)
	["muted"] = "% le lett némítva.",
	["unmuted"] =  "%s már nincs lenémítva.",
	["kicked"] = "%s ki lett rúgva!",
	["banned"] = "%s ki lett tiltva!",
	["mekicked"] = "%s kirúgott a szerveréből.",
	["mebanned"] = "%s kitiltott a szerveréből.",
	["permban"] = "%s kitiltott a játékból.",
	["kick"] = "%s kirúgott a játékból.",
	["48ban"] = "%s kitiltott 48 óráig.",
	["exiled"] = "Ki vagy tiltva ebből a magán szerverből! A JÁTÉKBÓL NEM VAGY KITILTVA",
	["permbanned"] = "Ki vagy tiltva ebből a játékból.",
	["timeout"] = "A kitiltásodnak vége lesz: %02i óra és %02i perc múlva.",
	
	--custom tower feedbacks
	["notinrace"] = "Nem állíthatod át a végtelen módot egy verseny közben!",
	["notinreg"] = "Nem állíthatod át a végtelen módot miközben a lépcsőház újraépül!",
	["infinite"] = "A szerver most már végtelen módban van!",
	["classic"] = "A szerver most már klasszikus módban van!",
	["casual"] = "Nem versenyző játékosok már varázsolhatnak!",
	["nocasual"] = "Nem versenyző játékosok már nem varázsolhatnak!",
	["purge"] = "Tisztítás már okoz regenerálást a klasszikus módban!",
	["nopurge"] = "Tisztítás már nem okoz regenerálást a klasszikus módban!",
	["noevens"] = "Páros szintek már le vannak zárva!",
	["evens"] = "Páros szintek már nincsenek lezárva!",
	["orbmoves"] = "Legfelső Szinti Gömb már véletlenszerűen mozog magától!",
	["orbstopped"] = "Legfelső Szinti Gömb már nem mozog magától!",
	["infreg"] = "A lépcsőház már újra fog épülni magától egy végtelen verseny után!",
	["noinfreg"] = "A lépcsőház már nem fog magától újraépülni egy végtelen verseny után!",
	["drones"] = "Kicsi Drónok bekapcsolva!",
	["nodrones"] = "Kicsi Drónok kikapcsolva!",
	["dronefix"] = "Drónok helyre fognak állítani lépcsőket!",
	["nodronefix"] = "Drónok nem fognak helyreállítani lépcsőket!",
	["droneunlock"] = "Drónok el fognak távolítani átkozott kereszteződéseket!",
	["nodroneunlock"] = "Drónok nem fognak eltávolítani átkozott kereszteződéseket!",
	["droneuncurse"] = "Drónok helyre fognak állítani átkozott lépcsőket!",
	["nodroneuncurse"] = "Drónok nem fognak helyreállítani átkozott lépcsőket!",
	["dronemove"] = "Drónok fognak lépcsőket mozgatni alap módban!",
	["nodronemove"] = "Drónok nem fognak lépcsőket mozgatni alap módban!",
	["dronespin"] = "Drónok fognak lépcsőket forgatni alap módban!",
	["nodronespin"] = "Drónok nem fognak lépcsőket forgatni alap módban!",
	["noinput"] = "Adjon meg egy értéket!",
	["nonumber"] = "Adjon meg egy számot!",
	["notrace"] = "Nem állíthatod át a toronynak a szintjeit egy verseny közben!",
	["notultimate"] = "Nem állíthatod át a toronynak a szintjeit miközben egy különleges varázsige folyamatban van!",
	["notregen"] = "Nem állíthatod át a toronynak a szintjeit miközben a lépcsőház újraépül!",
	["wait"] = "A torony szintjei változnak, légyszíves várj...",
	["duration"] = "Verseny időtartalma megváltozott (a jelenlegi versenyt nem befolyásolja)",
	["init"] = "Legelső Végtelen intervallum megváltoztatva",
	["reduction"] = "Végtelen mód csökkentési ideje megváltoztatva",
	["mininf"] = "Legrövidebb végtelen mód intervallum megváltoztatva",
	["cooldown"] = "Esemény és Rig visszatöltődési ideje megváltoztatva",
	["speed"] = "Kicsi drónok sebessége megváltoztatva",
	["spin"] = "Kicsi drónok varázslási ideje megváltoztatva",
	["max"] = "Maximális lépcső szám megváltoztatva",
	["min"] = "Minimális lépcső szám megváltoztatva",
	["curse"] = "Drónok lépcsők megátkozásának esélye megváltoztatva",
	["block"] = "Drónok kereszteződések megátkozásának esélye megváltoztatva",
	


}

module.serverbroadcast = {
	["pranked"] = "%s átverte %s nevű játékost!",
	["found"] = "%s megtalálta %s láthatatlan lépcsőjét!",
	["disco"] = "%s élvezi %s diszkó zenéjét.",
	["trap"] = "%s beleesett %s csapdájába.",
	["obby"] = "%s megpróbálja megcsinálni %s obbiját.",
	["default"] = "Drónok visszaváltottak az alap módba.",
	["reg"] = "A lépcsőház újraépül.",
	["done"] = "Lépcsőház újraépítése be lett fejezve.",
	["union"] = "%s egybevált a szellemével!",
	["eliminated"] = "%s kiesett a versenyből.",
	["won"] = "%s megnyerte a versenyt!",
	["falsestart"] = "Érvénytelen Indulás",
	["countdown"] = "Verseny %d másodperc múlva!",
	["2min"] = "Legalább kettő játékos szükséges egy klasszikus versenyhez!",
	["noplayers"] = "Senki sem versenyzik, végtelen mód nem fog elindulni!",
	["nojoin"] = "A verseny bezárult - új játékosok már nem szállhatnak be.",
	["allfalse"] = "Az összes játékos Túl Korán indult el!",
	["safety"] = "Toronynak a szintjei megváltoztak, ez a verseny nem fog elindulni.",
	["leader"] = "%s vezet a versenyben!",
	["toolate"] = "Senki se nyert időben",
	["go"] = "INDULÁS!",
	["over"] = "Versenynek vége!",

}

module.localfeedback = {

	["cancel"] = "Előbb szüntesd meg a mostani varázsigédet!",
	["nomana"] = "Nincs elég Manád!",
	["notokens"] = "Nincsen elég Zsetonod!",
	["unlocked"] = "Varázsige feloldva!",
	["maxmana"] = "Már tele vagy Manával!",
	["nopurchase"] = "Nem kell Manát venned a kiképzésben!",
	["hascham"] = "Már megvan a Chameleon!",
	["hasspectre"] = "Már megvan a Spectre!",
	["hasmana"] = "Már megvan a Nagyobb Tárhely!",
	["nomuggle"] = "Te hülye, tényleg azt hitted, hogy Mugglenek van titkos különleges varázsigéje?",
	["nonone"] = "Te hülye, tényleg azt hitted, hogy Nonenak van titkos különleges varázsigéje?",
	["nounlocks"] = "Szerezd meg az összes átlagos varázsigét, hogy hozzáférj a különleges varázsigékhez!",
	["onetoken"] = "Meg lettél jutalmazva egy %s Varázs Zsetonnal!",
	["moretokens"] = "Meg lettél jutalmazva néhány %s Varázs Zsetonnal!",
	["music"] = "Zene sikeresen megváltoztatva.",
	["nomusic"] = "Nem sikerült betölteni a zenét.",
	["noteleport"] = "Teleportálás sikertelen!", 
	["norefresh"] = "Még nem tudsz újratölteni.",

}

module.switchon = {

	["JOKER"] = "Már nem fogsz láthatatlan lépcsőket felfedni.",
	["WICKED"] = "Már nem fogsz aktiválni Wicked Rigeket.",
	["KEEPER"] = "Már nem fogsz aktiválni Keeper Rigeket.",
	["SPECTRE"] = "Már nem fogsz aktiválni Spectre Rigeket.",
	["HACKER"] = "Mozgólépcső és rig immunitás bekapcsolva.",
	["ARCHON"] = "Csak felfelé vezető kapuk hatnak rád.",
	["DRIFTER"] = "Már nem fogsz aktiválni Drifter Rigeket.",
	["SPLICER"] = "Már nem fogsz aktiválni Splicer Rigeket.",
	["REAVER"] = "Már nem fogsz aktiválni Reaver Rigeket.",
	["GREMLIN"] = "Közelben lévő Dugóhúzók lezárva.",

}

module.switchoff = {

	["JOKER"] = "Már fel fogsz fedni láthatatlan lépcsőket.",
	["WICKED"] = "Már aktiválni fogsz Wicked Rigeket.",
	["KEEPER"] = "Már aktiválni fogsz Keeper Rigeket.",
	["SPECTRE"] = "Már aktiválni fogsz Spectre Rigeket.",
	["HACKER"] = "Mozgólépcső és rig immunitás kikapcsolva.",
	["ARCHON"] = "A lefelé vezető kapukon kívül az összes kapu hat rád.",
	["DRIFTER"] = "Már aktiválni fogsz Drifter Rigeket.",
	["SPLICER"] = "Már aktiválni fogsz Splicer Rigeket.",
	["REAVER"] = "Már aktiválni fogsz Reaver Rigeket.",
	["GREMLIN"] = "Közelben lévő Dugóhúzók feloldva.",
}

local timedSpell = "%s bevetette ezt a varázsigét: %s!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s rárakott az összes normális lépcsőre Patron Riget!",
	["patronevent"] = "%s túlterhelte a tornyot lépcsőkkel!",
	["patronaltevent"] = "%s az összes normális lépcsőt összezsugorította!",

	["jokerrigevent"] = "%s rárakott az összes normális lépcsőre Joker Riget!",
	["jokerevent"] = "%s az összes normális lépcsőt elrejtette!",
	["jokeraltevent"] = "%s az összes normális lépcsőt megfordította!",

	["wickedrigevent"] = "%s rárakott az összes normális lépcsőre Wicked Riget!",
	["wickedevent"] = "%s az összes normális lépcsőt elpusztította!",
	["wickedaltevent"] = "%s az ÖSSZES lépcsőt elpusztította!",

	["keeperrigevent"] = "%s rárakott az összes normális lépcsőre Keeper Riget!",
	["keeperevent"] = "%s az összes normális lépcsőt átrendezte!",
	["keeperaltevent"] = "%s az összes lépcsőt helyreállította!",

	["spectrerigevent"] = "%s rárakott az összes normális lépcsőre Spectre Riget!",
	["spectreevent"] = "%s az összes normális lépcsőt szellemesen átrendezte!",
	["spectrealtevent"] = "%s az összes normális lépcsőt megszellemesítette!",

	["hackerrigevent"] = "%s rárakott az összes normális lépcsőre Hacker Riget!",
	["hackerevent"] = "%s az összes normális lépcsőt átváltoztatta Mozgólépcsővé!",
	["hackeraltevent"] = "%s az összes normális lépcsőt átváltoztatta Felfele haladó Mozgólépcsővé!",

	["thiefrigevent"] = "%s rárakott az összes normális lépcsőre Theif Riget!",
	["thiefevent"] = "%s az összes normális lépcsőt kilapította!",
	["thiefaltevent"] = "%s létrehozott egy kitérést az összes szinten!",

	["archonrigevent"] = "%s rárakott az összes normális lépcsőre Archon Riget!",
	["archonevent"] = "%s az összes normális lépcsőre rárakott egy véletlenszerű kaput!",
	["archonaltevent"] = "%s az összes normális lépcsőre rárakott egy függőleges kaput!",

	["drifterrigevent"] = "%s rárakott az összes normális lépcsőre Drifter Riget!",
	["drifterevent"] = "%s az összes normális lépcsőt véletlenszerűen megsodorta!",
	["drifteraltevent"] = "%s az összes normális lépcsőt megemelte!",

	["hereticrigevent"] = "%s rárakott az összes normális lépcsőre Heretic Riget!",
	["hereticevent"] = "%s az összes normális lépcsőt szétszakította!",
	["hereticaltevent"] = "%s az összes normális lépcsőt megátkozta!",

	["splicerrigevent"] = "%s rárakott az összes normális lépcsőre Splicer Riget!",
	["splicerevent"] = "%s az összes normális lépcsőt összekepcsolta!",
	["spliceraltevent"] = "%s az összes normális lépcsőt szétválasztotta!",

	["necromancerrigevent"] = "%s rárakott az összes normális lépcsőre Necromancer Riget!",
	["necromancerevent"] = "%s túlterhelte a tornyot Lelketlen lépcsőkkel!",
	["necromanceraltevent"] = "%s az összes normális lépcsőnek elvette a lelkét!",

	["gremlinrigevent"] = "%s rárakott az összes normális lépcsőre Gremlin Riget",
	["gremlinevent"] = "%s az összes normális lépcsőt megpörgette!",
	["gremlinaltevent"] = "%s túlterhelte a tornyot Villamos lépcsőkkel!",

	["reaverrigevent"] = "%s rárakott az összes normális lépcsőre Reaver Riget!",
	["reaverevent"] = "%s az összes normális lépcsőt átváltoztatta véletlen irányban lezárt Egyirányú Lépcsővé!",
	["reaveraltevent"] = "%s az összes normális lépcsőt átváltoztatta felülről lezárt Egyirányú Lépcsővé!",

	["newmode"] = "%s átváltotta a drónokat %s módra!",

	["chameleonrigevent"] = "%s rárakott az összes normális lépcsőre Chameleon Riget!"
}

module.spells.extras = {

	["Prompt"] = "Nyomj meg egy varázsigét, hogy megtudd hogyan kell használni",
	["Title1"] = "Átlagos varázsigék",
	["Title2"] = "Egyedi különleges varázsigék",
	["Title3"] = "Megosztott különleges varázsigék",
	["ManaCost"] = "%s Manába kerül", 
	["TokenCost"] = "%s Zsetonba kerül", 
	["Special"] = "Különleges Szükségletek: %s",
	["Execution"] = "Végrehajtás: %s",
	["Description"] = "Leírás: %s",
	["basic"] = "Átlagos",
	["ultimate"] = "Különleges",
	["unlock"] = "0 (3 a megszerzéshez)",
	["none"] = "Nincsen különleges feltétele",
}

module.gui.basic.jumpdelay = "ugrás visszatöltődik"
module.gui.basic.dancetime = "TÁNCOLÁS!"

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "SZELLEM",
	["spirit"] = "LÉLEK", --only for spirit spectres
	["welcome"] = "ÜDVÖZÖLJÜK",
	["drones"] = "DRÓN",
	["orb"] = "GÖMB",
	["refill"] = "ÚJRATÖLTÉS", --for all 2nd rank bonuses
	["overload"] = "TÚLTÖLTÉS",
	["steal"] = "LOPÁS",
	["gift"] = "AJÁNDÉK",
	["share"] = "MEGOSZTÁS",
	["prank"] = "ÁTVERÉS",
	["possession"] = "MEGSZÁLLÁS",
	["ritual"] = "SZERTARTÁS",
	["purge"] = "TISZTÍTÁS",
	["blessing"] = "ÁLDÁS",
	["hack"] = "CSALÁS",
	["stash"] = "LELTÁR",
	["backdoor"] = "HÁTSÓ AJTÓ",
	["chamber"] = "KAMRA",
	["base"] = "BÁZIS",
	["circus"] = "CIRKUSZ",
	["shelter"] = "MENEDÉK",
	["haven"] = "MENNY",
	["study"] = "LABOR",
	["nether"] = "KÖD",
	["guild"] = "REJTEKHELY",
	["nexus"] = "KIINDULÓPONT",
	["oasis"] = "OÁZIS",
	["hub"] = "KÖZPONT",
	["mirror"] = "TÜKÖR",
	["grave"] = "SÍR",
	["shack"] = "KUNYHÓ",
	["regen"] = "REGENERÁLÁS",
	["optimus"] = "OPTIMUS",

}

module.gui.hints = {
	["bcancel"] = "Nyomd meg a B (ps kör) gombot, hogy megszüntesd", --xbox b 
	["acancel"] = "Nyomd meg még egyszer, hogy megszüntesd",
	["ocancel"] = "Előbb szüntesd meg a másik varázsigét", 
}

module.gui.gameover.extras = {

	["noobs"] = "Kinek kell kiképzés?",
	["possessed"] = "Azok az idegesítő Hereticek!",
	["hypnotized"] = "Hol vagyok?",
	["new"] = "Új rang megszerezve - %s",
	["none1"] = "MI A...?",
	["none2"] = "Ebben a játékban",
	["none3"] = "vannak varázsigék?"

}

module.gui.gameover.raceplacements = {
	"MEGNYERTED A VERSENYT!",
	"MÁSODIK HELYEZET!",
	"HARMADIK HELYEZET!",
	"Negyedik lettél.",
	"Ötödik lettél.",
	"Hatodik lettél.",
	"Hetedik lettél.",
	"Nyolcadik lettél.",
	"Kilencedik lettél.",
	"Tizedik lettél.",
	"Tizenegyedik lettél.",
	"Tizenkettedik lettél.",
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
