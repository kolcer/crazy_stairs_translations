--VERSION 4.2--
--HUNGARIAN--

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["default"] = "ALAP",
	["validate"] = "ÉRVÉNYESÍTÉS",

}

module.gui.switcher = {

	["join"] = "CSATLAKOZZ",
	["friends"] = "BARÁTOK ONLINE",
	["refresh"] = "újratöltés...",
	["fail"] = "NEM SIKERÜLT ÚJRA TÖLTENI!",
	["refreshbutton"] = "ÚJRATÖLTÉS",
	["failed"] = "A teleportálás sikertelen!",
	["classic"] = "Klasszikus Torony",
	["pro"] = "Profi Torony",
	["custom"] = "Egyedi Torony",
	["noVR"] = "VR Nélküli Torony",

}

module.gui.serversettings = {

	["Drones"] = "DRÓNOK BEÁLLÍTÁSAI",
	["DronesReadOnly"] = "DRÓNOK BEÁLLÍTÁSAI (csak olvasható)",
	["DroneEnabled"] = "Drónok be/ki-kapcsolása.",
	["DroneFix"] = "Drónok helyreállíthatnak lépcsőket.",
	["DroneRemove"] = "Drónok helyreállíthatnak átkozott kereszteződéseket.",
	["DroneUnCurse"] = "Drónok helyreállíthatnak átkozott lépcsőket.",
	["DroneMove"] = "Drónok mozgathatnak és forghatnak 90 fokkal lépcsőket alap módban.",
	["DroneSpin"] = "Drónok forgathatnak lépcsőket 180 fokkal alap módban.",
	["DroneSpeed"] = "Drónok sebessége (szint/másodperc)",
	["DroneDelay"] = "Drónok forgásának időtartalma (másodperc)",
	["DroneMax"] = "Maximum lépcsők száma (a drónok csak el fognak pusztítani lépcsőket, ha ennél több lépcső van)",
	["DroneMin"] = "Minimun lépcsők száma (a drónok csak létre fognak hozni lépcsőket, ha ennél kevesebb lépcső van)",
	["DroneBlock"] = "Átkozott kereszteződés létrejövésének esélye (százalék)",
	["DroneCurse"] = "Átkozott lépcső létrejövésének vagy egy normális lépcső megátkozásának esélye (százalék)",

	["Tower"] = "TORONY BEÁLLÍTÁSAI",
	["TowerReadOnly"] = "TORONY BEÁLLÍTÁSAI (csak olvasható)",
	["InfMode"] = "Végtelen mód (nem változtathatod meg egy verseny vagy újraépítés közben)",
	["CasualPlayers"] = "Átlagos játékosok varázsolhatnak",
	["Regeneration"] = "Lépcsőház azonnali újraépítése egy Wicked Tisztítás után (nem fog működni végtelen módban)",
	["EvenLevels"] = "Páros szintek lezárása",
	["OrbMoves"] = "Legfelső szinten lévő gömb pozíciót változtat",
	["InfRegeneration"] = "Lépcsőház azonnali újraépítése egy új szerveren, torony szintjeinek változtatása és egy végtelen verseny után.",
	--depricated
	--["TowerLevels"] = "Torony szintjei (vagy aktív szintek végtelen módban). Nem változtathatod meg egy verseny vagy újraépítés közben.",
	["TowerSize"] = "Torony mérete (lehetnek hibák)",
	["RaceDuration"] = "Verseny Maximális Időtartalma. Nem folyásólja be a mostani versenyt. (másodperc)",
	["InfStart"] = "Végtelen mód Legelső intervalluma. (2 szint jön létre egy intervallumban) (másodperc)",
	["InfReduction"] = "Végtelem mód intervallum csökkentése. (minden egyes intervallum ennyivel rövidebb) (másodperc)",
	["InfMin"] = "Végtelen mód legrövidebb intervalluma. (másodperc)",
	["CooldownTime"] = "Események és Rigek visszatöltődési ideje. (másodperc)",

}

module.gui.shop = {

	["chameleon"] = "Chameleonok osztályt változtathatnak mászás közben.",
	["spectre"] = "Spectre az egy teleportáláson alapuló osztály ami tökéletes ha egyedül játszól.",
	["mana"] = "Ez tízzel növeli a tárolható Mana mennyiségét.",
	["architect"] = "Ezzel átváltozhatsz egy Architectté akkor is, ha nem használsz VR szemüveget.",
	["3tokens"] = "Szerezz meg egy varázslatot vagy varázsolj akár 3 különleges varázslatot.",
	["30tokens"] = "Szerezz meg tíz varázslatot vagy varázsolj akár 30 különleges varázslatot.",
	["300tokens"] = "Elég zseton arra, hogy felold az összes varázslatot plusz 93 maradék zsetonnal.",

	["3TOKENS"] = "3 Multi Zseton (R$%d)",
	["30TOKENS"] = "30 Multi Zseton (R$%d)",
	["300TOKENS"] = "300 Multi Zseton (R$%d)",
	["SPECTRE PASS"] = "Spectre (R$%d)",
	["MANA PASS"] = "+10 Mana Tárhely (R$%d)",
	["CHAMELEON PASS"] = "Chameleon (R$%d)",
	["ARCHITECT"] = "Architect (R$%d)",

}

module.gui.nospellsbar = {

	["nocasual"] = "CSAK VERSENYZŐK VARÁZSOLHATNAK",
	["possessed"] = "MEG LETTÉL SZÁLLVA! (Találj Manát hogy felszabadulj)",
	["permanent"] = "MEG LETTÉL SZÁLLVA! (állandó mód)",
	["cancelled"] = "ABBAHAGYVA...", --timed spell cancelled
}


module.gui.stats = {

	["badges"] = "TELJESÍTMÉNYEID",
	["climbs"] = "MÁSZÁSAID",
	["total"] = "ÖSSZEVONT MÁSZÁSAID/NYERÉSEID",
	["best"] = "LEGJOBB IDŐD",
	["norecord"] = "[nincs rekordod]",

	["2124486274"] = "Szívasd Meg A Készítőt",
	["1803533030753957"] = "Fekete Lyuk",
	["2124480173"] = "Wicked Árulása",
	["2124480172"] = "Joker Trükkje",
	["2124637294"] = "Drifter Útja",
	["2124517579"] = "Thief Rablása",
	["4464785885277417"] = "Splicer Csavara",
	["2124480174"] = "Keeper Rendje",
	["2124637293"] = "Archon Kapuja",
	["2124517578"] = "Hacker Csalása",
	["707445818894757"] = "Gremlin Spirálja",
	["2124480171"] = "Patron Büszkesége",
	["1407551481032773"] = "Reaver Tükörképe",
	["2124637295"] = "Heretic Átka",
	["1885715582646280"] = "Necromancer Szertartása",
	["2124480175"] = "Muggle Logikája",
	["2124826874"] = "Teljes Kör",
	["2124529966"] = "Átugrottad A Kiképzést",
	["2124826880"] = "Megszállott Sors",
	["3731010929572663"] = "Hypnotizált Álom",
	["840574993122888"] = "Tükröződött Végzet",
	["2124913225"] = "Architect Terve",
	["2124702954"] = "Rootkit Letöltve",
	["2124702945"] = "Pusztíts El Mindent",
	["2124702946"] = "Rend Helyreállítva",
	["128721686760593"] = "Körülöttem Forog A Világ",
	["2124702952"] = "Inkább Megyek Lifttel",
	["3121101516427751"] = "Az Összefonódás",
	["2124702942"] = "Senkit Se Hagyok Hátra",
	["2124702950"] = "Megvilágosodtam",
	["2124702951"] = "Minden Az Enyém",
	["1165646024608180"] = "Egységben Az Erő",
	["2303731210592278"] = "Szellemek Is Emberek",
	["2124702949"] = "Kiközösítve",
	["2124702943"] = "Szívatás Az Életem",
	["2124702948"] = "A Varázslatok Túlértékeltek",
	["2124826876"] = "Tökéletes Kör",
	["2124645341"] = "Titkos Teljesítmény",
	["2126893403"] = "Titkosabb Teljesítmény",
	["2126893411"] = "Legtitkosabb Teljesítmény",

}

module.gui.questions = {

	["cancel"] = "Abba szeretnéd hagyni ezt a varázslatot? A zsetonokat nem kapod vissza.",
	["tutorial"] = "El szeretnéd végezni a kiképzést?",
	["skip"] = "Át szeretnéd ugrani a kiképzést?",
	["reshuffle"] = "El szeretnéd kerülni a lépcsők ütközését? Ha nem, akkor az útban álló lépcsők el lesznek pusztítva.",

	["gift"] = "Szeretnéd ajándékozni a(z) %s nevű terméket egy másik játékosnak?",
	["choose"] = "Válaszd meg, hogy ki kapja meg a(z) %s nevű terméket", 
	["confirm"] = "Szeretnéd ajándékozni a(z) %s nevű terméket ennek a játékosnak: %s?", --second %s is the chosen player
	["received"] = "Megszerezted a(z) %s terméket, mert %s neked ajándékozta!",
	
	["architect"] = "Architect",
	["mana"] = "+10 Mana Tárhely",
	["spectre"] = "Spectre",
	["chameleon"] = "Chameleon",

	["race"] = "Be szeretnél szállni a versenybe?",
	["racein"] = "A verseny elindul:",
	["go"] = "INDULÁS!",
	["raceoff"] = "Elmaradt a verseny",

}


module.gui.codes = {

	["title"] = "ÍRD BE A KÓDOT",
	["body"] = "Ide írd be a kódodat:",
	["prompt"] = "(kód)",
	["button"] = "ÉRVÉNYESÍTÉS",

}


module.gui.jukebox = {

	["title"] = "ZENEDOBOZ",

	["master"] = "FŐ HANGERŐ",
	["default"] = "(fő hangerőt használja)",
	["climb"] = "MÁSZÁS ZENÉJE",
	["endgame"] = "GYŐZELMI ZENE",
	["failed"] = "[nem sikerült betölteni]",
	["off"] = "LENÉMÍTVA",

}

module.gui.results = {

	["title"] = "VERSENY VÉGEREDMÉNYE",

	["place"] = "HELYEZÉS",
	["name"] = "NÉV",
	["level"] = "LEGMAGASABB ELÉRT SZINT",
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

module.gui.menu = {

	["Codes"] = "Kód érvényesítése",
	["Feedback"] = "Visszajelzés küldése",
	["Language"] = "Nyelvek",
	["Music"] = "Zenedoboz",
	["RaceResults"] = "Előző verseny végeredménye",
	["ServerSettings"] = "Egyedi torony beállításai",
	["Settings"] = "Játék beállításai",
	["Shop"] = "Bolt",
	["Spectate"] = "Más játékosok megfigyelése",
	["Stats"] = "Statisztikáid és teljesítményeid",
	["SwitchServer"] = "Torony váltó",
	["Tokens"] = "Zsetonjaid",
	["Tutorial"] = "Kiképzés",

}

module.gui.tutorial = {
	
	["complete"] = "NYERTÉL!",
	["choose"] = "Válassz egy osztályt!",
	["difficulty"] = "Nehézsége:",
	
}

module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Drónok %s Mód",
	["refill"] = "Mana Túltőltés (%s)",
	["union"] = "Szellem Unió (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Lépcső Létrehozása",
	["restore"] = "Gömb Hívása", 
	["split"] = "Szemben Álló Lépcső Újraépítése",
	["shrinkabove"] = "Feletted Lévő Lépcső Zsugorítása",
	["link"] = "Kapocs Létrehozása",
	["portal"] = "Portál Létrehozása",

	["summoner"] = "Teremtő",
	["patronevent"] = "Lépcső Túlterhelés",
	["patronaltevent"] = "Zsugorodás",

	--JOKER 
	["flip"] = "Lépcső Megfordítása",
	["flipabove"] = "Feletted Lévő Lépcső Megfordítása",
	["fake"] = "Hamis Lépcső Létrehozása",
	["invisible"] = "Láthatatlan Lépcső Létrehozása",
	["disco"] = "Zenés Lépcső",
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
	["rig"] = "Lépcső Véletlenszerű Mozgatása",

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
	["spectrealtevent"] = "Szellemek Birodalma",

	--HACKER
	["dash"] = "Lendület",
	["blink"] = "Villanás",
	["swap"] = "Csere",
	["slide"] = "Mozgólépcső",
	["slideup"] = "Lépcső Becsalása", 
	["glitch"] = "Lépcső Meghibásítása",

	["hack"] = "Végtelen Mozgólépcső Csalás",
	["hackerevent"] = "Mozgólépcsők",
	["hackeraltevent"] = "Felfele Mozgólépcsők",

	--THIEF
	["steal"] = "Lépcső Ellopása",
	["stealabove"] = "Feletted Lévő Lépcső Ellopása",
	["place"] = "Lépcső Lerakása",
	["uppass"] = "Csigalépcső Lerakása",
	["sidepass"] = "Kitérő Lerakása",
	["drop"] = "Lapos Lépcső Lerakása",

	["heist"] = "Rablás",
	["thiefevent"] = "Lapítás",
	["thiefaltevent"] = "Kitérők",

	--ARCHON
	["splitup"] = "Felfelé Vezető Kapu Létrehozása",
	["splitrotate"] = "Forgatott Kapu Létrehozása",
	["splitside"] = "Egyenes Kapu Létrehozása",
	["splitrandom"] = "Véletlenszerű Kapu Létrehozása",
	["cancelsplit"] = "Kapu Eltávolítása",
	["splitforward"] = "Felületen Lévő Kapu Létrehozása",

	["splitter"] = "Portálmánia",
	["archonevent"] = "Lépcsőkapuk",
	["archonaltevent"] = "Elosztás",

	--DRIFTER
	["indrift"] = "Szörf",
	["outdrift"] = "Lépcső Véletlenszerű Sodorítása",
	["updrift"] = "Lift",
	["diagdrift"] = "Felület Átlós Mozgatása",
	["spin"] = "Lépcső Megforgatása",
	["driftabove"] = "Feletted Lévő Lépcső Megemelése",

	["riser"] = "Liftezés",
	["drifterevent"] = "Sodródás",
	["drifteraltevent"] = "Emelés",

	--HERETIC
	["createcursed"] = "Átkozott Lépcső Létrehozása",
	["curse"] = "Lépcső Elátkozása",
	["curseabove"] = "Feletted Lévő Lépcső Elátkozása",
	["curseinter"] = "Villogás",
	["autodown"] = "Felemelt Szakadás Létrehozása",
	["autoup"] = "Szemben Álló Lépcső Leemelése Szakadással",

	["malediction"] = "Átkozódás",
	["hereticevent"] = "Szétszakadás",
	["hereticaltevent"] = "Bosszú",

	--SPLICER
	["twistup"] = "Alattad És Feletted Lévő Lépcső Összekapcsolása",
	["twistside"] = "Szomszédos Lépcsők Összekapcsolása",
	["twistrotate"] = "Forgatott Irányban Lévő Lépcsők Összekapcsolása",
	["canceltwist"] = "Csavart Lépcső Helyreállítása",
	["split2"] = "Lépcső Szétválasztása",
	["splitalt"] = "Lépcső Előrefelé Szétválasztása",

	["twister"] = "Csavaró",
	["splicerevent"] = "Összefonódás",
	["spliceraltevent"] = "Kettéválasztás",

	--NECROMANCER
	["createdual"] = "Kettős Lépcsők Létrehozása",
	["copyplatform"] = "Szellem Felületének Lemásolása",
	["soulbridge"] = "Lélek Hidak Létrehozása",
	["undeadabove"] = "Feletted Lévő Lépcső Ellélektelenítése",
	["revival"] = "Újraéledő Pont",
	["regen"] = "Mana Regenerálása",

	["duality"] = "Kettőség",
	["necromancerevent"] = "Újraélesztés",
	["necromanceraltevent"] = "Lélek Aratás",

	--REAVER
	["createmirrored"] = "Tükrös Lépcső Létrehozása",
	["bigmirror"] = "Hatalmas Tükör Létrehozása",
	["smallmirror"] = "Kicsi Tükör Létrehozása",
	["outermirror"] = "Külső Tükör Létrehozása",
	["merge"] = "Egyesülés",
	["oneway"] = "Üveglépcső",

	["reflection"] = "Tükröződés",
	["reaverevent"] = "Útlezárás",
	["reaveraltevent"] = "Üvegház",

	--GREMLIN
	["tram"] = "Villamos Lépcső Létrehozása",
	["screwup"] = "Felfelé Dugóhúzó",
	["revolve"] = "Lépcső Pörgetése",
	["trapstairs"] = "Csapóajtó Lépcső",
	["screwdown"] = "Lefelé Dugóhúzó",
	["spinplatform"] = "Felület Pörgetése",

	["tramway"] = "Villamospálya",
	["gremlinevent"] = "Forr(dul) A Dalom", 
	["gremlinaltevent"] = "Torlódás",

	--TUTORIAL
	["tcreate"] = "Lépcső Létrehozása",
	["tflip"] = "Lépcső Megfordítása",
	["tdestroy"] = "Feletted Lévő Lépcső Elpusztítása",
	["tmove"] = "Lépcső Mozgatása",
	["tdash"] = "Lendület",
	["trestore"] = "Lépcső Helyreállítása",

	--CHAMELEON
	["ditch"] = "Keresztező Lépcsők",
	["warp"] = "Lépcső Görbítése",
	["chamdown"] = "Lépcső Lefelé Mozgatása",
	["chamdraw"] = "Lenti Felvonóhíd",
	--["chamswap"] = "Szellemed Másolása (vizuális)",
	["chamdrawabove"] = "Fenti Felvonóhíd",
	["oneways"] = "Egyirányú Lépcső",

	--MISC (compatibility)
	["mugglereg"] = "A lépcsőház újraépül",
	["mugglecd"] = "Események és rigek Újratöltődnek",
	["share"] = "Mana Megosztása (legalább 2 Mana szükséges)",

	--ARCHITECT
	["archpatron"] = "Létrehozás Vagy Zsugorítás",
	["archarchon"] = "Kapu Létrehozása Lépcsőre Vagy Felületre",
	["archthief"] = "Lopás Vagy Lerakás",
	["archnecro"] = "Kettős Vagy Lélektelen Lépcső",
	["archhacker"] = "Mozgólépcső Vagy Becsalás",
	["archkeeper"] = "Mozgatás Vagy Helyreállítás",
	["archsplicer"] = "Összekapcsolás Vagy Helyreállítás",
	["archwicked"] = "Fal Vagy Pusztítás",
	["archgremlin"] = "Lépcső Vagy Felület Pörgetése",
	["archjoker"] = "Hamis Vagy Megfordított Lépcső",
	["archdrifter"] = "Sodorítás Vagy Lift",
	["archspectre"] = "Fantom Vagy Szellemesített Lépcső",
	["archreaver"] = "Tükrös Vagy Egyirányú Lépcső",
	["archheretic"] = "Kereszteződés Vagy Lépcső Átkozása",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff
local union = "Ebben a módban át tudsz menni útban álló lépcsőkön és rá tudsz menni szellem, obbi, és hamis lépcsőkre egy percig. Különleges és riges lépcsők sem hatnak rád amikor rájuk lépsz. Azonban, nem tudsz varázsolni amikor ebben a módban vagy."
local overload = "Ez a varázslat minden hatodik másodpercben ad egy Manát egy percig (összesen 10 Manát ad). Egyszerre csak egy túltöltés lehet aktív."
local timed = "Ezzel a varázslattal "  -- do not remove space
local rig = "Ez a varázslat az összes normális lépcsőre egyesével rárak " -- do not remove space
local event = "Ez a varázslat az összes normális " -- do not remove space
local fill = "Ez a varázslat az összes üres, nem átkozott kereszteződésben létre fog hozni egy lépcsőt. " -- do not remove spaces
local mode = "Ez a varázslat átváltja a drónokat %s módba. Ebben a módban a drónok véletlenszerű normális lépcsőkre ráraknak %s, vagy %s. A különleges lépcsőket pedig helyreállítja. Ha lépcsők száma határokon kívül van, akkor a drónok létrehoznak vagy elpusztítanak lépcsőket."
local timedExtra = " Ha rendelkezel %s ranggal, akkor ez a varázslat 90 másodpercig fog tartani. Ez a varázslat visszatölti minden olyan %s a Manáját amelyek rendelkeznek %s ranggal." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Ez a varázslat létrehoz egy lépcsőt az általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul.",
	["restore"] = "Ez a varázslat odahívja a gömböt ahhoz a felülethez, amelyen elvégezted ezt a varázslatot. Ha rendelkezel DEFENDER ranggal, akkor ez a varázslat 2 Manába fog kerülni. Ha rendelkezel SAVIOUR ranggal, akkor a gömb kétszer olyan gyorsan fog feléd jönni.",
	["split"] = "Ez a varázslat újjáépíti az alattad lévő lépcsőt egy másik irányban álló normális lépcsővé.",
	["shrinkabove"] = "Ez a varázslat összezsugorítja a feletted lévő lépcsőt, így simán meg tudod kerülni és utána fel tudsz rá menni.",
	["link"] = "Ez a varázslat létrehoz egy energiahidat két felület között 60 másodpercig. A kapocs alulról átmehető. Ha rendelkezel CREATOR ranggal, akkor a kapocs 120 másodpercig fog tartani.",
	["portal"] = "Ez a varázslat létrehoz egy portált, ami feljebb visz minden játékost egy szinttel. A portál 60 másodpercig tart. Ha rendelkezel PROTECTOR ranggal, akkor a portál 120 másodpercig fog tartani.",

	["summoner"] = timed ..  "bármennyiszer hozhatsz létre lépcsőket egy percig." .. string.format(timedExtra,RankData.PATRON[7].name,"Patronnak",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."Patron Riget. Ha aktiválják, akkor a rálépett játékos kap egy Manát. Ha a játékos tele van Manával, akkor a Rig nem aktiválódik. Aktiválás után a lépcső normális lesz.",
	["patronevent"] = fill ..  "A létrehozott lépcsők normálisak lesznek.",
	["patronaltevent"] = event .. "lépcsőt összezsugorítja.",
	["patronmode"] = string.format(mode,"Patron","Patron Riget","összezsugorítják"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Ez a varázslat megfordítja az alattad lévő lépcsőt, felcserélve a lépcső alját és a tetejét. Az ilyen lépcsőket vissza lehet fordítani.",
	["flipabove"] = "Ez a varázslat megfordítja a feletted lévő lépcsőt, felcserélve a lépcső alját és a tetejét. Az ilyen lépcsőket vissza lehet fordítani.",
	["fake"] = "Ez a varázslat létrehoz egy hamis lépcsőt az általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Ha egy játékos (beleértve téged) megpróbál felmenni rajta, akkor az a játékos leesik, kivéve ha az a játékos egy TRICKSTER, IT vagy Szellem Unió módban van.",
	["invisible"] =  "Ez a varázslat létrehoz egy láthatatlan lépcsőt az általad választott irányban. Ha rendelkezel JESTER ranggal, akkor láthatod az összes láthatatlan lépcsőt, és lesz választásod, hogy ne fedd fel amikor rálépsz egyre.",
	["disco"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy zenés lépcsővé. Ha egy játékos (beleértve téged) rálép, akkor az a játékos megáll és táncol 5 másodpercig. Ha rendelkezel COMIC ranggal, akkor immunis leszel zenés lépcsőkre.",
	["trap"] = "Ez a varázslat átváltoztatja az alattad lévő felületet egy csapóajtóvá 60 másodpercig. Ha egy játékos (beleértve téged) rálép, akkor az a játékos leesik az alatta lévő felületre. Ha rendelkezel JOKESTER ranggal, akkor láthatod hogy hol vannak csapdák. Ha rendelkezel TRICKSTER ranggal, akkor immunis leszel csapdákra.",

	["flipper"] = timed ..  "bármennyiszer megfordíthatsz lépcsőket egy percig. Mindig a feletted lévő lépcső fordul meg, kivéve ha nem lehet megfordítani, mert akkor az alattad lévő lépcső fordul meg."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokernek",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "Joker Riget. Ha aktiválják, akkor a lépcső megfordul.",
	["jokerevent"] = event .. "lépcsőt láthatatlanná változtatja.",
	["jokeraltevent"] = event .. "lépcsőt megfordítja.",
	["jokermode"] = string.format(mode,"Joker","Joker Riget","láthatatlanná változtatják"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Ez a varázslat elpusztítja az alattad lévő lépcsőt. A többi varázslattal szemben, ez bármilyen lépcsőn működik. Ha rendelkezel VILE ranggal, akkor ez a varázslat ingyenes lesz. Ha rendelkezel VICIOUS ranggal, akkor kapsz 1 Manát amikor elpusztítasz bármilyen különleges lépcsőt. Ha rendelkezel ANNIHILATOR ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
	["destroyabove"] = "Ez a varázslat elpusztítja a feletted lévő lépcsőt. A többi varázslattal szemben, ez bármilyen lépcsőn működik. Ha rendelkezel VICIOUS ranggal, akkor kapsz 1 Manát amikor elpusztítasz bármilyen különleges lépcsőt. Ha rendelkezel ANNIHILATOR ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
	["bend"] = "Ez a varázslat felhajlítja az alattad lévő lépcsőt.",
	["damage"] = "Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy obbivá, úgy hogy eltávolítja a lépcsőfokok többségét. Mielőtt meg próbálnád csinálni, emlékezz, hogy minden ugrás után várnod kell. Ha rendelkezel DESTROYER ranggal, akkor sétálhatsz obbikon.",
	["flatten"] = "Ez a varázslat lehajlítja a szemben álló vagy az alattad lévő lépcsőt.",
	["wall"] = "Ez a varázslat létrehoz egy falat meg egy kapcsot, amelyek 60 másodpercig tartanak. A falon átmenni és a kapocsra csak Wickedek és Szellem Unióban lévő játékosok mehetnek rá.",

	["bender"] = timed .. "bármennyiszer hajlíthatsz fel lépcsőket egy percig. Ha lehetséges, akkor a feletted és az alattad lévő lépcsők egyszere fognak felhajolódni."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickednek",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "Wicked Riget. Ha aktiválják, akkor a lépcső megsemmisíti önmagát. Ha rendelkezel DEVIL ranggal, akkor járhatsz Wicked Rigeken anélkül, hogy aktiválnád.",
	["wickedevent"] = event .. "lépcsőt elpusztítja. A lépcsőház ezután nem fog újraépülni.",
	["wickedaltevent"] = "Ez a varázslat az összes lépcsőt elpusztítja. A lépcsőház ezután újra fog épülni.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Riget","meghajlítják"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Ez a varázslat megmozgatja vízszintesen az alattad lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel CONTROLLER ranggal, akkor mozgathatsz bármilyen nem átkozott lépcsőt.",
	["rotate"] = "Ez a varázslat megforgatja vízszintesen az alattad lévő lépcsőt és elpusztítja az útban álló lépcsőt. Ha rendelkezel CONTROLLER ranggal, akkor mozgathatsz bármilyen nem átkozott lépcsőt.",
	["moveup"] = "Ez a varázslat megmozgatja az alattad lévő lépcsőt felfelé, és elpusztítja az útban álló lépcsőt. Ha rendelkezel CONTROLLER ranggal, akkor mozgathatsz bármilyen nem átkozott lépcsőt.",
	["movedown"] = "Ez a varázslat helyreállít bármilyen különleges lépcsőt. Ha a lépcső már normális, akkor ez a varázslat nem fog működni. Ha rendelkezel CAPTAIN ranggal, akkor ez a varázslat ingyenes lesz. Ha rendelkezel ADMIRAL ranggal, akkor helyreállíthatsz átkozott lépcsőket és kereszteződéseket.",
	["rig"] = "Ez a varázslat egy véletlenszerű irányba mozgatja vagy forgatja a feletted lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők nem mehetnek lefelé. Ha rendelkezel CONTROLLER ranggal, akkor mozgathatsz bármilyen nem átkozott lépcsőt.",
	["moverandom"] = "Ez a varázslat egy véletlenszerű irányba mozgatja vagy forgatja az alattad lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők nem mehetnek lefelé. Ha rendelkezel CONTROLLER ranggal, akkor mozgathatsz bármilyen nem átkozott lépcsőt.",

	["ascension"] = timed .. "bármennyiszer mozgathatsz felfélé lépcsőket egy percig."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepernek",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "Keeper Riget. Ha aktiválják, akkor a lépcső egy véletlenszerű irányba elmozdul vagy elfordul. Ha rendelkezel OPERATOR ranggal, akkor lépcsők, amiket te aktiválsz nem mehetnek lefelé. Ha rendelkezel SENTINEL ranggal, akkor járhatsz Keeper Rigeken anélkül, hogy aktiválnád.",
	["keeperevent"] = event .. "lépcsőt véletlenszerűen megmozgatja. Mielőtt végrehajtanád, lehet választani puha és erőltetett mód között. Puha módban, ez a varázslat véletlenszerű irányba mozgatja a lépcsőket, anélkül hogy elpusztítana egy lépcsőt is. Erőltetett módban viszont az útban álló lépcsők elpusztúlnak.",
	["keeperaltevent"] = "Ez a varázslat az összes különleges lépcsőt helyreállítja, még az átkozottakat is. A Tisztítással ellentétben ez nem fogja eltávolítani az átkozott kereszteződéseket.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Riget","véletlenszerűen megmozgatják"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Ez a varázslat létrehoz egy fantom lépcsőt az általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Fantom lépcsők gyorsan eltűnnek varázslás után.",
	["ghost"] = "Ez a varázslat megszellemesíti a feletted lévő lépcsőt. Szellemesített lépcsőkön átmehetsz, de nem mehetsz rájuk, kivéve ha rendelkezel AETHER ranggal, vagy ha Szellem Unióban vagy. Ha egy szellemesített lépcsőn használod ezt a varázslatot, akkor az a lépcső normális lesz.",
	["shadow"] = "Ez a varázslat megszellemesíti az alattad lévő lépcsőt. Szellemesített lépcsőkön átmehetsz, de nem mehetsz rájuk, kivéve ha rendelkezel AETHER ranggal, vagy ha Szellem Unióban vagy. Ha rendelkezel PHANTOM ranggal, akkor ez a varázslat ingyenes lesz. Ha egy szellemesített lépcsőn használod ezt a varázslatot, akkor az a lépcső normális lesz.",
	["horizontal"] = "Ez a varázslat elteleportál téged az általad választott irányba. Átteleportálhatsz nem átkozott lépcsőkön.",
	["random"] = "Ez a varázslat elteleportál téged véletlenszerűen egy ugyanazon a szinten lévő felületre.",
	["vertical"] = "Ez a varázslat elteleportál téged a feletted lévő felületre.",

	["traveller"] = timed ..  "bármennyiszer elteleportálhatsz vízszintesen egy percig."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectrének",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "Spectre Riget. Ha aktiválják, akkor a lépcsőnek 50% esélye van, hogy megszellemesedik. Ha rendelkezel VISION ranggal, akkor járhatsz Spectre rigeken anélkül, hogy aktiválnád.",
	["spectreevent"] = event .. "lépcsőt véletlenszerűen megmozgatja szellemesen. Mielőtt végrehajtanád, lehet választani puha és erőltetett mód között. Puha módban, ez a varázslat véletlenszerű irányba mozgatja a lépcsőket, anélkül hogy elpusztítana egy lépcsőt is. Erőltetett módban viszont az útban álló lépcsők elpusztúlnak. Mindkettő módban a lépcsők mozgás közben megszellemesednek.",
	["spectrealtevent"] = "Ez a varázslat az összes normális lépcsőt megszellemesíti. Ha rendelkezel AETHER ranggal, akkor rá tudsz menni szellemesített lépcsőkre. Szellem Unióval is rá tudsz menni szellemesített lépcsőkre.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Riget","véletlenszerűen megmozgatják puhán és megszellemesítve"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Ez a varázslat elteleportál téged az általad választott irányba. Nem lehet lépcsőkön keresztül teleportálni. Ha rendelkezel CRACKER ranggal, akkor ez a varázslat 50%-kal gyorsabb lesz.",
	["blink"] = "Ez a varázslat körbe teleportál téged egy olyan útban álló lépcsőn, ami nem átkozott. Ha a feletted lévő lépcső nem állja el az utadat, akkor ez a varázslat nem fog működni. Ha rendelkezel EXPLOITER ranggal, akkor ez a varázslat 50%-kal gyorsabb lesz.",
	["swap"] = "Ez a varázslat odateleportál téged, ahol a szellemed van.",
	["slide"] = "Ez a varázslat átváltoztatja a lépcsőt egy mozgólépcsővé. Választhatsz felfelé vagy lefelé haladó mozgólépcsők közül. Ha rendelkezel SCRIPTER ranggal, akkor lesz választásod arra, hogy immunis legyél a mozgólépcsőkre.",
	["slideup"] = "Ez a varázslat becsal egy lépcsőt az általad választott irányban. Csak akkor fog működni, ha a varázslás irányában van egy útban álló lépcső. Becsalt lépcső lehet bármilyen nem átkozott lépcső, és helyre fog állni amikor becsalod.",
	["glitch"] = "Ez a varázslat meghibásítja a lépcsőt, és elteleportál téged és a lépcsőt egy másik ugyanazon a szinten lévő kereszteződésbe. Ha rendelkezel ZERO ranggal, akkor ha a legfelső szinten használod ezt a varázslatot, akkor a lépcső a gömb mellé fog teleportálódni.",

	["hack"] = timed .. "bármennyiszer átváltoztathatsz lépcsőket felfelé vagy lefelé mozgólépcsőkké egy percig. Ha van a lépcső felett egy nem átkozott lépcső, akkor az a lépcső elpusztul." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackernek",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "Hacker Riget. Ha aktiválják, akkor a rálépett játékos és a lépcső elteleportálódik egy másik kereszteződésbe ugyanazon a szinten. A lépcső csak egy játékost teleportál el. Ha rendelkezel REAPER ranggal, akkor járhatsz Hacker rigeken anélkül, hogy aktiválnád.",
	["hackerevent"] = event .. "lépcsőt átváltoztatja felfelé vagy lefelé mozgólépcsővé.",
	["hackeraltevent"] = event ..  "lépcsőt átváltoztatja felfelé mozgólépcsővé",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Riget","átváltoztatják felfelé vagy lefelé mozgólépcsővé"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Ez a varázslat ellopja az alattad lévő lépcsőt. A többi nem lopós alapvető varázslat varázsolásához el kell lopnod egy lépcsőt. Ha rendelkezel HIJACKER ranggal, akkor bármilyen nem átkozott lépcsőt el tudsz lopni. Ha rendelkezel OUTLAW ranggal, akkor egyszerre 2 lépcső lehet nálad.",
	["stealabove"] = "Ez a varázslat ellopja a feletted lévő lépcsőt. A többi nem lopós alapvető varázslat varázsolásához el kell lopnod egy lépcsőt. Ha rendelkezel HIJACKER ranggal, akkor bármilyen nem átkozott lépcsőt el tudsz lopni. Ha rendelkezel OUTLAW ranggal, akkor egyszerre 2 lépcső lehet nálad.",
	["place"] = "Ez a varázslat visszarakja a lépcsőt az általad választott irányban.",
	["uppass"] = "Ez a varázslat létrehoz egy csigalépcsőt egy lopott lépcsőből. Csak a torony szélén lehet létrehozni, és egy perc után eltűnik. Ha rendelkezel BANDIT ranggal, akkor a csigalépcsőid két percig maradnak ott.",
	["sidepass"] = "Ez a varázslat létrehoz egy kitérőt egy lopott lépcsőből. Az általad választott irányban létrejön, és ottmarad egy percig. Ha rendelkezel ROBBER ranggal, akkor a kitérőid két percig maradnak ott.",
	["drop"] = "Ez a varázslat lerak egy lapos lépcsőt az általad választott irányban.",

	["heist"] = timed .. "bármennyiszer rakhatsz le lépcsőket egy percig. A sima lerakás varázslattal szemben, ez a varázslat elpusztítja a keresztező lépcsőket, mert ebben a módban automatikusan lopod el a lépcsőket." .. string.format(timedExtra,RankData.THIEF[7].name,"Thiefnek",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "Thief Riget. Ha aktiválják, a rálépett játékostól ellopsz egy manát. Ha tele vagy Manával, akkor nem kapsz Manát. Akkor se kapsz Manát, ha osztályt váltasz.",
	["thiefevent"] = event .. "lépcsőt kilapítja.",
	["thiefaltevent"] = "Ez a varázslat létrehoz egy kitérőt az összes belső északi és déli kereszteződésben. Ha a kereszteződésben van egy átok, akkor ott nem jön létre kitérő.",
	["thiefmode"] = string.format(mode,"Thief","Thief Riget","ellopnak és leraknak lépcsőket"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és az általad választott egyenes irányban lévő lépcsőt egy Kapuval. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz vízszintes kapukon.",
	["splitrotate"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és az általad választott forgatott irányban lévő lépcsőt egy Kapuval. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz vízszintes kapukon.",
	["splitup"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és a feletted lévő lépcsőt egy Kapuval. Ha nincs a lépcső felett lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel SAGE ranggal, akkor a lefelé vivő kapuk nem visznek le.",
	["cancelsplit"] = "Ez a varázslat eltávolít bármilyen lépcsőn lévő Kapupárt. Ha rendelkezel DISCIPLE ranggal, akkor eltávolíthatsz felületen lévő kapukat is. Ha rendelkezel SCHOLAR ranggal, akkor ez a varázslat ingyenes lesz.",
	["splitrandom"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és egy bármilyen nem átkozott kereszteződést egy Kapuval. Ha ott nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz vízszintes kapukon.",
	["splitforward"] = "Ez a varázslat összeköttet kettő általad választott szomszédos felületet egy kapuval. Az útban lévő lépcső nem zavarja a kapcsolatot. Ha rendelkezel DISCIPLE ranggal, akkor eltávolíthatsz felületen lévő kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz az ilyen kapukon.",

	["splitter"] = timed .. "bármennyiszer hozhatsz létre Felület Kapukat egy percig." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archonnak",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "Archon Riget. Ha aktiválják, akkor a rálépett játékost a haladott irányba elteleportálja, és átkel az útban álló lépcsőn. Aktiválás után, a lépcső normális lesz.",
	["archonevent"] = event .. "lépcsőt összekötteti véletlenszerű kapupárokkal.",
	["archonaltevent"] = event .. "lépcsőt összekötteti függőleges kapukpárokkal.",
	["archonmode"] = string.format(mode,"Archon","Archon Riget","létrehoznak véletlenszerű kapupárokat"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Ez a varázslat létrehoz egy átmeneti szörfdeszkát, ami átvisz téged és másokat az általad választott irányban lévő felületre.",
	["updrift"] = "Ez a varázslat létrehoz egy liftet az alattad és a feletted lévő felületek között. A felületek egy idő után helyreállnak. Ha rendelkezel VAGABOND ranggal, akkor a liftek felgyorsulnak. Ha rendelkezel TRAVELLER ranggal, akkor fel tudsz emelni lifteket a második szintre. Ha rendelkezel STRIDER ranggal, akkor fel tudsz emelni lifteket a harmadik szintre.",
	["diagdrift"] = "Ez a varázslat létrehoz egy mozgó felületet az alattad lévő felület és az általad választott átlósan szomszédos felület között. Az ilyen felületek helyreállnak 7 kör után.\nVAGY: Ha a játékterületen kívülre varázsolod, ez a varázslat létrehoz egy mozgó felületet ami tesz egy kört a Torony körül.",
	["spin"] = "Ez a varázslat megforgatja az alattad lévő lépcsőt 180 fokkal. Ha rendelkezel NOMAD ranggal, akkor képes leszel megforgatni bármilyen nem átkozott lépcsőt.",
	["outdrift"] = "Ez a varázslat véletlenszerűen elsodorítja az alattad lévő lépcsőt, és elkezd haladni egy azonos szinten lévő véletlenszerű üres kereszteződés felé. Ha rendelkezel NOMAD ranggal, akkor megsodorhatsz megsodort lépcsőket.",
	["driftabove"] = "Ez a varázslat elsodorítja a feletted lévő lépcsőt. Ez nem annyira véletlenszerű mint a másik varázslat, és a lépcső nem megy el egy másik kereszteződésbe. Miután a lépcső el lett sodorítva, át mehetsz alatta és utána rámehetsz.",

	["riser"] = timed .. "bármennyiszer hozhatsz létre lifteket egy percig. Meg is emelheted a lifteket ha elég magas a rangod." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifternek",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "Drifter Riget. Ha aktiválják, akkor a lépcső tesz egy 180 fokos fordulatot. Ha rendelkezel VOYAGER ranggal, akkor járhatsz Drifter rigeken anélkül, hogy aktiválnád.",
	["drifterevent"] = event .. "lépcsőt véletlenszerűen elsodorítja.",
	["drifteraltevent"] = event .. "lépcsőt megemeli.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Riget","véletlenszerűen elsodorítják"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,

	--HERETIC
	["createcursed"] = "Ez a varázslat létrehoz egy átkozott lépcsőt egy általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Ha rendelkezel BANISHED ranggal, akkor elpusztíthatsz útban álló átkozott lépcsőket.",
	["curse"] = "Ez a varázslat megátkozza az alattad lévő lépcsőt. Ha egy átkozott lépcsőn használod ezt a varázslatot, akkor az a lépcső normális lesz.",
	["curseabove"] = "Ez a varázslat megátkozza a feletted lévő lépcsőt. A lépcső felemelkedik egy pillanatra, hogy átmehess alatta. Ha egy átkozott lépcsőn használod ezt a varázslatot, akkor az a lépcső normális lesz.",
	["curseinter"] = "Ezzel a varázslattal átvilloghatsz egy szomszédos felületre. A varázslás után a kereszteződés megátkozódik. Ha rendelkezel INDIFEL ranggal, akkor használhatod ezt a varázslatot egy átkozott kereszteződésben, és eltünteti róla az átkot.",
	["autodown"] = "Ez a varázslat létrehoz és megemel egy különleges tükrözött szakaszt a lépcső alsó részéből. Csak szellem unióban lévő játékosok és Hereticek mehetnek rá arra a szakaszra.",
	["autoup"] = "Ez a varázslat létrehoz egy különleges tükrözött szakaszt a szemben álló vagy az alattad lévő lépcső felső részéből. A normális fokok le lesznek eresztve. Csak szellem unióban lévő játékosok és Hereticek mehetnek rá arra a szakaszra.",

	["malediction"] = timed .. "bármennyiszer hozhatsz létre átkozott lépcsőket egy percig. Ha rendelkezel BANISHED ranggal, akkor elpusztíthatsz útban álló átkozott lépcsőket." .. string.format(timedExtra,RankData.HERETIC[7].name,"Hereticnek",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "Heretic Riget. Ha aktiválják, a rálépett játékos meg lesz szállva. A játékosnak Manát kell találnia, hogy fel legyen szabadítva. A megszállott játékosok nem varázsolhatnak. Ha rendelkezel UNBELIEVER ranggal, akkor immunis leszel a Heretic rigre. Ha rendelkezel EXILED ranggal, akkor kapsz 1 Manát amikor egy játékost megszállnak.",
	["hereticevent"] = event .. "lépcsőre rárak felemelt vagy leengedett szakadást.",
	["hereticaltevent"] = event .. "lépcsőt megátkozza.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Riget","véletlenszerűen szétszakítják"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Ez a varázslat megcsavarja a lépcsőt jobbra vagy balra, és összekötteti az ott lévő lépcsővel. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázslatot megcsavart lépcsőkön.",
	["twistrotate"] = "Ez a varázslat megcsavarja a lépcsőt egy forgatott irányban, és összekötteti az ott lévő lépcsővel. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázslatot megcsavart lépcsőkön.",
	["twistup"] = "Ez a varázslat megcsavarja a feletted lévő lépcsőt meg nagy eséllyel az alattad lévőt is (ha normális vagy riges), és lesz belőlük egy 2 szintes csigalépcső. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázslatot megcsavart lépcsőkön.",
	["canceltwist"] = "Ez a varázslat helyreállít bármilyen csavart lépcsőt. Ha rendelkezel COMBINER ranggal, akkor ezt a varázslatot használhatod arra, hogy helyreállíts a felülethez nem kapcsolódó lépcsőket. Ha rendelkezel MIXER ranggal, akkor ez a varázslat ingyenes lesz. Ha rendelkezel OPTIMUS ranggal, akkor kapsz 1 Manát amikor helyreállítasz egy csavart lépcsőt.",
	["split2"] = "Ez a varázslat széthasítja a lépcsőt kettő egymással ellentétesen álló lépcsőkké.",
	["splitalt"] = "Ez a varázslat széthasítja a lépcsőt kettő előrefelé elválasztott lépcsőkké, így könnyen ki tudod kerülni az útban álló lépcsőt - még akkor is, ha a lépcső átkozott.",

	["twister"] = timed .. "bárminnyiszer széthasíthatsz lépcsőket egy percig. A hasítás típusa automatikusan a leghasznosabb hasítástípus lesz." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicernek",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "Splicer Riget. Ha aktiválják, akkor a lépcső összeköttetődik egy véletlenszerű irányban lévő lépcsővel. Ha rendelkezel ASSEMBLER ranggal, akkor járhatsz Splicer rigeken anélkül, hogy aktiválnád.",
	["splicerevent"] = event .. "lépcsőt véletlenszerűen összekötteti.",
	["spliceraltevent"] = event .. "lépcsőt kétirányba kettéhasítja.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Riget","véletlenszerűen összeköttetik"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	--NECROMANCER
	["createdual"] = "Ez a varázslat létrehoz egy lépcsőt nálad és a szellemednél. Ha rendelkezel SKELETON ranggal, akkor a szellemed figyelmen kívül hadja az átkozott lépcsőket és kereszteződéseket. Ha rendelkezel LICH ranggal, akkor elpusztíthatsz útban álló átkozott lépcsőket.",
	["copyplatform"] = "Ez a varázslat rámásolja a szellemed felületéről a lépcsőket a tiédre és fordítva. A lépcsők tükrözve lesznek másolva és normálisak. Ha rendelkezel REVENANT ranggal, akkor ez a varázslat eltávolíthat átkokat.",
	["soulbridge"] = "Ez a varázslat létrehoz egy kapcsot az alattad lévő felület és az általad választott átlósan szomszédos felület között. A szellemed is létrehoz egy kapcsot az ellentétes irányban. Ha ráugrasz a kapocsra, akkor a kapocs elkezd forogni.",
	["undeadabove"] = "Ez a varázslat elveszi a feletted lévő és a szellemed felett lévő lépcsőknek a lelkét. Ha a szellemed felett nincs lépcső, akkor létrejön egy. Ezeken a lépcsőkön keresztül lehet menni és utána fel lehet menni rajtuk, de elhalványulnak és eltűnnek két perc után.",
	["revival"] = "Ez a varázslat létrehoz egy újraéledési pontot ahol a szellemed van. Ha a pont alá esnél, akkor a ponthoz fogsz teleportálódni. Ez a pont eltűnik, ha elhasználod, befejezel egy mászást, leraksz egy másik pontot vagy ha osztályt váltasz Chameleonként. Ha rendelkezel ACOLYTE ranggal, akkor ha a legfelső szinten leraksz egy pontot, akkor a gömb ahhoz a ponthoz fog menni.",
	["regen"] = "Ez a varázslat ad neked 6 Manát egy mászásban egyszer. A szellemedhez közel álló játékosok is kapnak 3 Manát. Ha rendelkezel DEATHBRINGER ranggal, akkor te 10 Manát kapsz és a szellemedhez közel álló játékosok pedig 5 Manát kapnak.", 

	["duality"] = timed .. "bármennyiszer hozhatsz létre Kettős Lépcsőket egy percig. Ha rendelkezel LICH ranggal, akkor elpusztíthatsz útban álló átkozott lépcsőket." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancernek",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "Necromancer Riget. Ha aktiválják, akkor a lépcső elveszíti a lelkét és egy idő után eltűnik.",
	["necromancerevent"] = fill ..  "A létrehozott lépcsőknek nincs lelkük, és eltűnnek két perc után.",
	["necromanceraltevent"] = event .. "lépcsőnek elveszi a lelkét. Az ilyen lépcsők eltűnnek két perc után.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Riget","elveszik a lelkét"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "Ez a varázslat létrehoz egy lépcsőt egy tükörrel a közepében. Ha átmész a tükrön, akkor egybeválsz a szellemeddel. Ha még egyszer átmész a tükrön, akkor szétválsz a szellemeddel. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre, de a szellemed nem fog Manát gyűjteni.",
	["bigmirror"] = "Ez a varázslat létrehoz egy hatalmas tükröt az egész szinten 10 másodpercig. Csak olyan játékosok léphetnek rá, amelyek egybeváltak a szellemükkel. Ha elmész a tükörtől, akkor szétválsz a szellemeddel. A tükör eltávolítja az összes kisebb tükröt. Ha rendelkezel PRESENCE ranggal, akkor a tükör 15 másodpercig fog tartani.",
	["smallmirror"] = "Ez a varázslat létrehoz egy kicsi tükröt az általad választott irányban 6 másodpercig. Csak olyan játékosok léphetnek rá, amelyek egybeváltak a szellemükkel. Ha elmész a tükörtől, akkor szétválsz a szellemeddel. Ha rendelkezel PRESENCE ranggal, akkor a tükör 9 másodpercig fog tartani.",
	["outermirror"] = "Ez a varázslat összekötteti az alattad lévő felületet és a torony másik felében lévő felületet egy tükörpárral. Játékosok, amelyek átmennek a tükrön egybeválnak a szellemükkel és átteleportálódnak a torony másik felén lévő tükörhöz. A tükör eltűnik 1 perc után. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre, de a szellemed nem fog Manát gyűjteni.",
	["merge"] = "Ezzel a varázslattal manuálisan egybeválhatsz a szellemeddel. Ha rendelkezel REPLICA ranggal, akkor ezzel a varázslattal szétválhatsz a szellemeddel. Ha rendelkezel POLTERGEIST ranggal, akkor ez a varázsige hatni fog a közeledben lévő játékosokra. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre, de a szellemed nem fog Manát gyűjteni.",
	["oneway"] = "Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy üveglécspővé. Az üveglépcsőn át lehet menni, de csak olyan játékosok mehetnek rá, akik egybeváltak a szellemükkel.",

	["reflection"] = timed .. "bármennyiszer hozhatsz létre Hatalmas Tükröket egy percig. A szellemeddel automatikusan egybe fogsz válni." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavernek",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "Reaver Riget. Ha aktiválják, akkor az a játékos aki aktiválta tükröződve lesz. A játékosnak Manát kell találnia, hogy fel legyen szabadítva. Tükröződött játékosok a szellemük szemszögéből irányítják magukat, és nem hatnak rájuk Reaver tükrei. Ha rendelkezel WIGHT ranggal, akkor immunis leszel ilyen Rigekre.",
	["reaverevent"] = event .. "lépcsőt átváltoztatja véletlenszerűen lezárt egyirányú lépcsővé. Az egyirányú lépcsők olyanok, mint a tükrös lépcsők, de csak az egyik irányuk le van zárva. Ha rendelkezel ILLUSION ranggal, akkor átmehetsz a lezárt oldalon is.",
	["reaveraltevent"] = event .. "lépcsőt üveglépcsővé.",
	["reavermode"] = string.format(mode,"Reaver","Reaver Riget","átváltoztatják véletlenszerűen lezárt egyirányú lépcsővé"),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	["tram"] = "Ez a varázslat létrehoz egy Villamos Lépcsőt az általad választott irányban. Villamos lépcsők csak fele olyan hosszúak mint egy normális lépcső, és miután létrehozod automatikusan elindulnak. A lépcsőt elindítani úgy kell, hogy ráugrasz varázslat varázslása nélkül. Ha rendelkezel FIEND ranggal, akkor visszahozhatsz Villamosokat úgy, hogy ráugrasz az ahhoz tartozó felületre.",
	["screwdown"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy lefelé irányuló dugóhúzóvá. Szinte lehetetlen felmenni az ilyen lépcsőkön. Ha rendelkezel DAEMON ranggal, akkor egy kapcsolóval be tudod állítani, hogy forogjon-e a dugóhúzó. Nem fog működni, ha van egy másik Daemon a közelben.",
	["screwup"] = "Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy felfelé irányuló dugóhúzóvá. Szinte lehetetlen lemenni az ilyen lépcsőkön. Ha rendelkezel DAEMON ranggal, akkor egy kapcsolóval be tudod állítani, hogy forogjon-e a dugóhúzó. Nem fog működni, ha van egy másik Daemon a közelben.",
	["revolve"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy pörgő lépcsővé. A lépcső a Z tengelyen fog pörögni. Megválaszthatod a pörgetés irányát. A lépcső megáll minden egyes 180 fokos fordulat után.", 
	["trapstairs"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy csapóajtóvá. Ha aktiválják, akkor a lépcső el kezd forogni az X tengelyen, és leejti magáról a figyelmetlen játékosokat. Ha rendelkezel GOBLIN ranggal, akkor láthatod hogy hol vannak Gremlin csapdák. Ha rendelkezel DIABLO ranggal, akkor immunis leszel a Gremlin csapdákra.",
	["spinplatform"] = "Ez a varázslat megpörgeti a felületet az ahhoz tartozó lépcsőkkel (beleértve az átkozott lépcsőket is) az általad választott irányban. A felület megáll minden egyes 90 fokos fordulat után. A felület normális lesz, miután tesz egy teljes 360 fokos kört.",

	["tramway"] = timed .. "bármennyiszer hozhatsz létre Villamos Lépcsőket egy percig." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlinnek",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "Gremlin Riget. Ha aktiválják, akkor az a játékos aki aktiválta hipnotizálva lesz. A játékosnak Manát kell találnia, hogy fel legyen szabadítva. Hipnotizált játékosok irányításai meg vannak fordítva. Ha rendelkezel HOGOBLIN ranggal, akkor immunis leszel erre a rigre.",
	["gremlinevent"] = event .. " lépcsőt átváltoztatja véletlenszerű irányba pörgő lépcsővé.", 
	["gremlinaltevent"] = fill .. "A létrehozott lépcsők Villamos lépcsők lesznek.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Riget","átváltoztatják véletlenszerű irányba pörgő lépcsővé"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "Ez régebben Keeper egyik varázslata volt, mielőtt el lett utasítva. Ez a varázslat egy normális vagy Riges lépcsőt lejjebb visz egy szinttel. Ha megvan a Keepernek a Captain rang, akkor mozgathatsz bármilyen nem átkozott lépcsőt.",
	["chamdraw"] = "Ez régebben Heretic egyik varázslata volt, mielőtt el lett utasítva. Ez a varázslat átváltoztatja a lépcsőt egy felvonóhíddá. A lépcsőn lemenni lehetetlen, kivéve ha egy másik játékos aktiválja a hidat a lépcső aljáról.",
	["oneways"] = "Ez régebben Reaver egyik varázslata volt, mielőtt el lett utasítva. Ez a varázslat átváltoztatja a lépcsőt egy egyirányú átjáróvá, ami közben egyesíti a játékosokat a szellemükkel. Megválaszthatod, hogy melyik irányt zárod le. Ha rendelkezel ILLUSION ranggal, akkor átmehetsz a lezárt oldalon is. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre de a szellemed nem fog Manát gyűjteni.",
	["ditch"] = "Ez régebben Thief egyik varázslata volt, mielőtt el lett utasítva. Ez a varázslat átváltoztatja a lépcsőt két kereszteződő lépcsőkké.",
	["chamdrawabove"] = "Ez régebben Heretic egyik varázslata volt, mielőtt el lett utasítva. Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy felvonóhíddá, ezért utána átmehetsz alattuk. A lépcsőn felmenni lehetetlen, kivéve ha egy másik játékos aktiválja a hidat a lépcső tetejéről. A régi Unbeliever rang már nem aktív és az automatikus hídleengedés sem lehetséges.",
	["warp"] = "Ez régebben Wicked egyik varázslata volt, mielőtt el lett utasítva. Ez a varázslat meggörbít egy normális vagy riges lépcsőt a lépcsőhöz tartozó felület feletti felülethez.",

	["chameleonrigevent"] = rig .. "Chameleon Riget. Ha aktiválják, akkor történik egy véletlenszerű hatás bármelyik másik rigből.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Riget","varázsolnak egy véletlenszerű varázslatot egy másik módból"), 
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

	--MISC
	["share"] = "Ezzel a varázslattal megoszthatod a Manádat egy közelben lévő játékossal. Egyszerre csak 1 Manát oszthatsz meg.",

	--ARCHITECT
	["archpatron"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy normális lépcsőt. Ha egy normális vagy riges lépcsőn használod, akkor az össze fog zsugorodni.",
	["archarchon"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy kapupárt a két felület között. Ha egy normális vagy riges lépcsőn használod, akkor azt az általad választott irányban lévő lépcsőt egy kapupárral össze fogja köttetni.",
	["archthief"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor le fogsz rakni egy normális lépcsőt. Ha egy normális vagy riges lépcsőn használod, akkor azt el fogod lopni.",
	["archnecro"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni kettős lépcsőket. Ha egy normális vagy riges lépcsőn használod, akkor az át fog változni lélektelen lépcsővé.",
	["archhacker"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor be fogsz csalni egy lépcsőt, ha van ott egy keresztező lépcső. Ha egy normális vagy riges lépcsőn használod, akkor az át fog változni egy mozgólépcsővé, ami az általad választott irányban halad.",
	["archkeeper"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor a hozzá tartozó lépcsőt helyre fogja állítani. Ha egy normális vagy riges lépcsőn használod, akkor az meg fog mozdulni az általad választott irányban.",
	["archsplicer"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor a hozzá tartozó csavart lépcsőt helyre fogja állítani. Ha egy normális vagy riges lépcsőn használod, az meg fog csavarodni az általad választott irányban.",
	["archwicked"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy kapocs nélküli Wicked falat. Ha egy bármilyen nem átkozott lépcsőn használod, akkor az el fog pusztulni.",
	["archgremlin"] = "Ezt a varázsigét ha egy felületen használod, akkor azt a felületet meg fogja pörgetni az általad választott irányban. Ha egy normális vagy riges lépcsőn használod, akkor azt átváltoztatja egy általad választott irányban pörgő lépcsőve.",
	["archjoker"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy hamis lépcsőt. Ha egy normális, megfordított vagy riges lépcsőn használod, akkor azt megfordítja vagy visszafordítja.",
	["archdrifter"] = "Ezt a varázsigét ha egy felületen használod, akkor az át fog változni egy liftté. Ha egy normális vagy riges lépcsőn használod, akkor azt egy véletlenszerű irányba el fogja sodorítani.",
	["archspectre"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy fantom lépcsőt. Ha egy normális, szellemesített vagy riges lépcsőn használod, akkor azt meg fogja szellemesíti vagy helyre fogja állítani.",
	["archreaver"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy tükrös lépcsőt. Ha egy normális vagy riges lépcsőn használod, akkor az át fog változni az általad választott irányban lezárt egyirányú lépcsőve.",
	["archheretic"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor azt a kereszteződést ha üres, meg fogja átkozni. Ha egy normális, átkozott vagy riges lépcsőn használod, akkor azt meg fogja átkozni vagy le fogja venni róla az átkot.",

}
local CommonPerksInsertALignment = {
	[1] = "Ez a kezdő %s rangod.",
	[2] = "Kapsz Manát amikor a drónok %s módban vannak.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Ha valaki varázsol egy %s varázslatot, akkor a Manád újratöltődik.",
	[7] = "Az időzített varázslatod (%s) 50%%-kal tovább tart (90mp).",
}



module.gui.ranks = {

	["title"] = "A RANGOD",

	--none
	["none_1"] = "Nem választottál egy osztályt!",
	["none_2"] = "Hogy varázsolj, ahhoz MUSZÁJ választanod egy osztályt!",

	--possessed
	["possessed_1"] = "Meg lettél Szállva!",
	["possessed_3"] = "Megszállottként nincsenek varázslataid és ranghatásaid.",

	--hypnotised
	["hypnotised_1"] = "Meg lettél Hipnotizálva!",
	["hypnotised_3"] = "Hipnotizáltként az irányításaid meg vannak fordítva!",

	--reflected
	["reflected_1"] = "A tükörképeddé váltál!",
	["reflected_3"] = "Tükörképként a szellemedet irányítod.",

	["findmana"] = "Találj Manát hogy felszabadulj.",
	["permanent"] = "Állandó mód - Fejezd be a mászást vagy látogass meg egy szentélyt hogy felszabadulj.",

	--architect
	["architect_1"] = "Te most egy Architect vagy!",
	["architect_2"] = "Architectek nem szerezhetnek rangokat.",
	["architect_3"] = "Nyugodtan törj ki káoszt a toronyban!",

	--tutorial
	["tutorial_1"] = "A kiképzésben vagy!",
	["tutorial_2"] = "Gyűjts Manát és használj varázsigéket a torony megmászásához.",
	["tutorial_3"] = "Ne feledd, a célod, hogy megszerezd a legfelső szinten lévő fehér gömböt!",

	--shared
	["higher"] = "VAN ENNÉL NAGYOBB RANGOD",
	["current"] = "JELENLEGI RANGOD",
	["lower"] = "NINCS MEGSZEREZVE EZ A RANG",

	["more"] = "Kell még %d mászás %s-ként, hogy megszerezd ezt a rangot.",
	["done"] = "Neked már van nagyobb rangod. Az összes alacsonyabb ranghatás hozzá van adva a jelenlegi rangodhoz.",
	["max"] = "Elérted a legmagasabb rangot. %d mászást szereztél %s-ként.",
	["next"] = "Ha rányomsz a jobb nyílra, akkor meg tudod nézni, hogy mennyi mászás kell a következő ranghoz.",

	["PATRON"] = {
		[4] = "A kapcsaid kétszer addig tartanak (120mp).",
		[5] = "A portáljaid kétszer addig tartanak (120mp).",
		[6] = "A Gömb Hívása varázslatod 2 Manába kerül.",
		[8] = "Ha elfogy a Manád, ugorj rá egy felületre, hogy meg legyél áldva 1 Manával.",
		[9] = "A hívott Gömb kétszer olyan gyorsan jön feléd.",
	}, 
	["JOKER"] = { 
		[4] = "Zenés lépcsők nincsenek rád hatással.",
		[5] = "Látod az összes láthatatlan lépcsőt. Van választásod arra, hogy ne fedd fel azokat.",
		[6] = "Felismersz hamis lépcsőket és a csapdákat.",
		[8] = "Rámehetsz hamis lépcsőkre és csapdákra.", 
		[9] = "Kapsz Manát, amikor egy játékos aktivál egy átverést. Nem kapsz Manát, ha egy játékos többször aktiválja ugyanazt az átverést.",
	},
	["WICKED"] = {
		[4] = "Tudsz obbikon sétálni mintha normális lépcsők lennének.",
		[5] = "A Lépcső Elpusztítása varázslatod ingyenes.",
		[6] = "Kapsz 1 Manát minden egyes általad elpusztított különleges lépcsőért.",
		[8] = "Van választásod arra, hogy ne aktiváld a Wicked Rigeket.",
		[9] = "Elpusztíthatsz átkozott lépcsőket.",
	},
	["SPECTRE"] = { 
		[4] = "Kapsz egy bónusz Manát amikor a szellemed vesz fel egy kristályt.", 
		[5] = "A Lépcső Szellemesítése varázslatod ingyenes.",
		[6] = "Akkor is nyerni fogsz, amikor a szellemed ér hozzá a gömbhöz.",
		[8] = "Van választásod arra, hogy ne aktiváld a Spectre Rigeket.", 
		[9] = "Rámehetsz szellemesített lépcsőkre.",
	},
	["KEEPER"] = {
		[4] = "A Véletlenszerű Mozgás varázslatok és a Keeper Rigek amiket te aktiválsz nem mozoghatnak lefelé.",
		[5] = "Mozgathatsz bármilyen nem átkozott lépcsőt.",
		[6] = "A Helyreállítás varázslatod ingyenes.", 
		[8] = "Van választásod arra, hogy ne aktiváld a Keeper Rigeket.",
		[9] = "Helyreállíthatsz átkozott lépcsőket és kereszteződéseket.",
	},
	["HACKER"] = { 
		[4] = "Van választásod arra, hogy immunis legyél mozgólépcsőkre.",
		[5] = "A Lendület varázslatod 50%-kal gyorsabb.",
		[6] = "A Villanás varázslatod 50%-kal gyorsabb.", 
		[8] = "Van választásod arra, hogy ne aktiváld a Hacker Rigeket. (egybevál a mozgólépcső kapcsolójával)",
		[9] = "Ha van legalább egy szabad kereszteződés, akkor a Lépcső Meghibásítása varázslatod a legfelső szinten lévő lépcsőt a gömbhöz viszi.",
	},
	["THIEF"] = {
		[4] = "A kitérőid kétszer addig tartanak (120mp).",
		[5] = "A csigalépcsőid kétszer addig tartanak (120mp).",
		[6] = "Az összes nem átkozott lépcsőt ellophatod.",
		[8] = "Ha elfogyott a Manád, ugorj rá egy felületre, hogy elővegyél 1 Manát a leltáradból.", 
		[9] = "Egyszerre 2 lopott lépcsőt tarthatsz magadnál.",
	},
	["ARCHON"] = {
		[4] = "Használhatod a Kapu Eltávolítása varázslatot felületeken, hogy eltávolítsd az azon lévő kapukat.",
		[5] = "A Kapu Eltávolítása varázslatod ingyenes.",
		[6] = "A kapuk nem teleportálhatnak téged lefelé.",
		[8] = "Létrehozhatsz kapukat olyan lépcsőkön, amelyeken van egy kapu.",
		[9] = "Van választásod arra, hogy csak felfelé vezető Kapuk teleportáljanak el.",
	},
	["DRIFTER"] = {
		[4] = "A liftjeid 50%-kal gyorsabbak.",
		[5] = "Megforgathatsz bármilyen nem átkozott lépcsőt és megsodorhatsz megsodort lépcsőket.",
		[6] = "Felemelhetsz lifteket a Liftezés és a Lift varázslatokkal. Az emelt liftek nem gyorsabbak.",
		[8] = "Van választásod arra, hogy ne aktiváld a Drifter Rigeket.",
		[9] = "Felemelhetsz lifteket kétszer is a Liftezés és a Lift varázslatokkal. Az emelt liftek nem gyorsabbak.",
	},
	["HERETIC"] = {
		[4] = "Amikor elfogy a Manád, érj hozzá egy átkozott lépcsőhöz, hogy eltüntesd róla az átkot és kapj egy Manát.",
		[5] = "Immunis vagy a Heretic Rigekre.",
		[6] = "Végrehajthatod a Villogás varázslatodat átkozott kereszteződésekben.",
		[8] = "Az Átkozott Lépcső Létrehozása és az Átkozódás varázslataid elpusztíthatnak útban álló átkozott lépcsőket.",
		[9] = "Kapsz 1 Manát amikor valakit megszállnak.",
	},
	["SPLICER"] = {
		[4] = "Helyreállíthatsz a felülethez nem kapcsolódó csavart lépcsőket.",
		[5] = "A Csavart Lépcső Helyreállítása varázslatod ingyenes.",
		[6] = "Van választásod arra, hogy ne aktiváld a Splicer Rigeket.",
		[8] = "Megcsavarhatsz olyan lépcsőket, amelyek meg vannak csavarva.",
		[9] = "Kapsz 1 Manát amikor helyreállítasz egy csavart lépcsőt.",
	},
	["REAVER"] = {
		[4] = "Használhatod az Egyesülés varázslatot, hogy szétválj a szellemeddel.",
		[5] = "A tükreid 50%-kal tovább tartanak. (15mp-ig a hatalmas, 9mp-ig a Kicsi)",
		[6] = "Van választásod arra, hogy ne aktiváld a Reaver Rigeket.",
		[8] = "Az egybeválás varázsigéd az összes közeledben lévő játékoson is hat.",
		[9] = "Az egyirányú lépcsők lezárt oldalán is átmehetsz.",
	},
	["NECROMANCER"] = {
		[4] = "Kettős Lépcsők varázslatból a szellemed lépcsője figyelem kívül hagyja az átkozott lépcsőket és kereszteződéseket.",
		[5] = "Ha használod az Újraéledő Pont varázslatot a legfelső szinten, akkor a gömb a ponthoz fog menni.",
		[6] = "A Felület Másolása varázslatod ha kell, eltávolítja az átkokat.",
		[8] = "A Kettős Lépcsők varázsigével elpusztíthatsz átkozott lépcsőket.",
		[9] = "A Regeneráció varázslatod 10 Manát ad 6 helyett, és aki a szellemedhez közel áll az 5 Manát kap.",
	},
	["GREMLIN"] = {
		[4] = "Látod az összes Gremlin Csapdát.",
		[5] = "Rá tudsz ugrani a felületre, hogy magadhoz hívd az összes ahhoz tartozó villamost.",
		[6] = "Immunis vagy a Gremlin Rigekre.",
		[8] = "Immunis vagy a Gremlin Csapdákra.",
		[9] = "Be/ki-tudod kapcsolni a Dugóhúzó Lépcsőket egy kapcsolóval. Nem fog működni, ha van egy másik Daemon a közelben.",
	},
	["MUGGLE"] = { 
		[2] = "Az ugrásod visszatöltődési ideje 0.125 másodperccel rövidebb.",
		[3] = "Az ugrásod visszatöltődési ideje 0.25 másodperccel rövidebb.",
		[4] = "Az ugrásod visszatöltődési ideje 0.375 másodperccel rövidebb.",
		[5] = "Az ugrásod visszatöltődési ideje 0.5 másodperccel rövidebb.",
		[6] = "10%-kal gyorsabb vagy.",
		[7] = "20%-kal gyorsabb vagy.",
		[8] = "30%-kal gyorsabb vagy.",
		[9] = "20%-kal magasabbat ugrasz.",
	},
	["NONE"] = {
		[1] = "Ez az osztály nem szerezhet rangokat. Ugorj egy körre a pálya közepén hogy osztályt változtass.",
		[2] = "De most komolyan, ennek az osztálynak a rangjai nem csinálnak semmit.",
		[3] = "Csak az idődet vesztegeted, inkább fejleszd fel a MUGGLE-t.",
		[4] = "MUGGLE-el lehetnél gyorsabb meg ugorhatnál magasabbra. NONE az csak meg egy haszontalan \"osztály\" ami nem csinál semmit.",
		[5] = "Ha azt hiszed, hogy lesz egy titkos ranghatás a végen, akkor alábecsülöd a lustaságomat.",
		[6] = "Vagy talán csak ennyire unatkozol?",
		[7] = "Ha azt mondták, hogy van egy titkos ranghatás 50 mászás után, akkor neked hazudtak",
		[8] = "Ez az utolsó figyelmeztetésed. Ha ezt nem fejezed be, akkor komoly következmények lesznek.",
		[9] = "Kitartásod felettébb méltó. Kapsz egy kapcsolót, amivel immunis lehetsz bármilyen különleges lépcsőre és átmehetsz utban álló lépcsőkön.",
	},
	["CHAMELEON"] = { 
		[1] = "Ez a kezdő CHAMELEON rangod. A többi osztály ranghatásai is érvényes rád.",
		[2] = "CSAK AKKOR Kapsz Manát, amikor a drónok CHAMELEON módban vannak.",
		[3] = "Az osztály változtatási animáció sokkal gyorsabb.",
		[4] = "A kezeid rózsaszínül világítanak, tehát a többi játékos nem tudja, hogy melyik osztályt használod.",
		[5] = "A Hamis Lépcső és a Lépcső Létrehozása varázslatok rózsaszínül világítanak.",
		[6] = "Varázsolhatsz 4 olyan varázslatot, amelyek el lettek utasítva a játék fejlesztése közben.",
		[7] = "Varázsolhatsz 2 másik olyan varázslatot, amelyek el lettek utasítva a játék fejlesztése közben.",
		[8] = "Amikor osztályt váltasz annak nincs animációja, tehát a többi játékos nem látja mikor váltasz osztályt. Ki lehet kapcsolni a beállításokban.",
		[9] = "Megvarázsolhatod a Chameleon Rig varázslatot 2 multi zsetonnal.",
	},


}

module.gui.multitokens = {

	["info"] = "3 zseton kell ahhoz, hogy feloldj egy varázslatot.",
}

module.gui.feedback = {

	["title"] = "VISSZAJELZÉS KÜLDÉSE",

	["prompt"] = "Írj egy üzenetet a játék készítőjének! (legalább 20 karaktert írj. Tudjuk hogy ki vagy, tehát ne írj hülyeséget.)",
	["send"] = "KÜLDÉS",
	["locked"] = "ZÁRVA",

}

module.gui.settings = {

	["Gameplay"] = "JÁTÉKMENET BEÁLLÍTÁSAI",
	["Interface"] = "GRAFIKUS ABLAKOK BEÁLLÍTÁSAI",	

	["Billboard"] = "Saját osztályod rangjának megjelenítése a fejed felett",
	["Rank"] = "Összefoglaló Rangod megjelenítése az osztályod rangja felett",
	["Morph"] = "Átváltozási animáció megjelenítése Deceiverként vagy Usurperként",
	["ManaLimit"] = "Csökkentsd a Mana tárolási kapacitásodat ha szeretnéd megnehezíteni a játékot.",

	["Kchoices"] = "Irányválasztási ablak megjelenítése Keeperként",
	["Hchoices"] = "Irányválasztási ablak megjelenítése Hackerként",
	["Achoices"] = "Irányválasztási ablak megjelenítése Archonként",
	["Schoices"] = "Irányválasztási ablak megjelenítése Splicerként",
	["Gchoices"] = "Irányválasztási ablak megjelenítése Gremlinként",
	["CChoices"] = "Irányválasztási ablak megjelenítése Chameleonként",

	["List"] = "Animált játékoslista megjelenítése a sima Robloxos játéklista helyett",
	["SwitchBack"] = "Automatikus visszaváltás átlagos varázslatokra egy különleges varázslat végrehajtása után",
	["SafeCancel"] = "Megerősítési ablak megjelenítése amikor egy időzített varázslatot abbahagysz",
	["Multi"] = "Multi Zseton ablak megjelenítése mászások után, ha van még el nem használt Multi Zsetonod",
	["UISize"] = "Felhasználói grafikus ablak szélessége (%-ban)",

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "OSZTÁLYOD",
	["time"] = "MÁSZÁSOD IDEJE",
	["climbs"] = "JUTALMAZOTT MÁSZÁSOK",
	["tokens"] = "JUTALMAZOTT ZSETONOK",
	["rank"] = "JELENLEGI RANGOD",

	["role"] = "AZ ÖSSZEFOGLALÓ RANGOD",
	["classic"] = "REKORDOD A KLASSZIKUS TORONYBAN",
	["pro"] = "REKORDOD A PROFI TORONYBAN",	
	["infinite"] = "REKORDOD A VÉGTELEN TORONYBAN",
	["custom"] = "REKORDOD AZ EGYEDI TORONYBAN", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	["noVR"] = "REKORDOD A KLASSZIKUS TORONYBAN", --this will show in noVR tower, as they share the same record

	["cTime"] = "REKORDOD %s-KÉNT", --%s will be replaced by the used class
	["levels"] = "ELÉRT SZINTEK",
	["cClimbs"] = "ENNYI MÁSZÁSOD VAN %s-KÉNT", --%s will be replaced by the used class
	--["tClimbs"] = "ENNYI MÁSZÁSOD VAN ÖSSZEVONVA",
	--["tTokens"] = "ENNYI %s ZSETONOD VAN", %s will be replaced by the used class (or multi)
	--["spells"] = "ENNYI VARÁZSLATOT HASZNÁLTÁL", amount
	--["rRank"] = "HELYEZÉSED VERSENYBEN",if any
}

module.gui.gameover.messages = {

	["PATRON"] = {
		"SEGÍTS, VÉDJ és TEREMTS",
		"Csak mi segíthetünk bajba jutott társainkon",
		"Patronok nélkül nem lenne remény",
		"Kedvességem határtalan",
		"Osztozkodni öröm",
		"Sosem lehet túl sok lépcsőd",
		"Minden csapatba kell egy Patron",
		"Nem lehet lépcsőházad lépcsők nélkül",
		"Egy újabb jól végzett munka",
	},
	["JOKER"] = {
		"TÉVESZD MEG, ZAVARD ÖSSZE és NEVESS",
		"Ez a lépcsőház egy vicc",
		"Miért vagy ilyen komoly?",
		"HE HE HE HAW!",
		"Csak lazulj és nézd, hogy esnek le",
		"Ajándék csónak ne nézd a lapát",
		"Táncolj bolond, táncolj!",
		"Unalmas lenne a játék nélkülem",
		"A hamis lépcsők valójában igaziak",
		"Új rang elérve - vagy mégsem?",
	},
	["WICKED"] = {
		"AKADÁLYOZZ, ÁLLJ ÚTBAN és PUSZTÍTS",
		"Nem vagyok gonosz, csak túl sok a lépcső",
		"A lépcsőknek el kell tűnniük",
		"Nyugalomra semmi ok",
		"Ez a lépcsőház jobb lenne lépcsők nélkül",
		"Elpusztítom az elmédet, lelkedet, meg a testedet (meg a lépcsőket)",
		"Milyen szép ez a lépcsőház. Kár lenne, ha valaki tönkretenné",
		"Előbb utóbb minden elpusztul",
		"Tisztítsd meg az elmédet - de előtte tisztítsd meg a lépcsőházat",
	},
	["SPECTRE"] = {
		"TŰNJ EL, BÚJJ EL és TELEPORTÁLJ",
		"Mi baj lehet a teleportálással?",
		"Nem tudsz elkapni",
		"Szeretem a szellemesített lépcsőket, de szerintem ezzel a véleménnyel egyedül vagyok",
		"Miért érdekelne az engem, ha emberek leesnek?",
		"Meg lehet oldani az összes problémádat teleportálással",
		"Ha egyszer elkezdesz teleportálni, nem fogsz tudni leállni",
		"Legalább én nem rakok a lépcsőkre portálokat. Ki tenne olyasmit?",
		"Kövess, ha tudsz!",
	},
	["MUGGLE"] = {
		"FUSS, UGORJ és ESS",
		"Bezzeg az én időmben nem voltak ilyen puccos varázslatok!",
		"Esküszöm, hogy ezek a Drónok meg vannak bundázva",
		"Mindig van egy út",
		"Senki se tud úgy parkúrozni, mint én",
		"A titkom? Megállok és gondolkodok",
		"Nem hiszek a varázslásban",
		"Néha várnod kell egy drónra, hogy segítsen - Mint a való világban",
		"A varázslatok csak egy mankó rossz játékosoknak, akik nem tudják megmászni a tornyot",
	},
	["CHAMELEON"] = {
		"MÁSOLJ, UTÁNOZZ és LEPD MEG",
		"Túl lusta vagyok ahhoz, hogy kitaláljak saját varázslatokat",
		"Miért is használnál másik osztályt?",
		"Kinek kell csapat, amikor én vagyok az egész csapat?",
		"Az igazodási képesség a túlélés alapja",
		"ÉN TÉNYLEG határozott vagyok, csak szeretem meggondolni magamat",
		"Elsajátítottál egy osztályt? Én elsajátítottam az összeset",
		"Egy osztály nem elég. Nekem az összes kell",
		"Szeretem a káoszt",
	},
	["KEEPER"] = {
		"MOZGASS, FORGASS és IRÁNYÍTS",
		"Ne tedd tönkre a lépcsőházamat!",
		"Egy újabb remek győzelem a Keepereknek",
		"Küldetés teljesítve!",
		"Szeretem a rendet",
		"Káosz megszelídítve",
		"Tízből kilenc drón ezt az osztályt ajánlja",
		"Egy nap majd elrendezem ezt a tornyot",
		"Helyreállított lépcsők = boldog lépcsők",
	},
	["THIEF"] = {
		"\"KÖLCSÖNÖZZ\", HASZNÁLD és KÜLDD VISSZA",
		"Én nem lopok, csak kölcsönzök",
		"Nincs az űrben rendőr, tehát lopás elleni törvény sincs",
		"Legalább a felületeket nem lopom el",
		"Nem akarlak meglopni téged, de ha már így hagyod magadat, akkor miért is ne?",
		"Van bármilyen kézzelfogható bizonyítékod arra, hogy loptam bármit is?",
		"Olyan vagyok, mint Robin Hood - A gazdagoktól lopok és azt magamnak adom",
		"Nem mintha bárki is észrevenné, ha hiányzik egy lépcső",
		"Majd úgy is vissza rakom a lépcsőt",
	},
	["HACKER"] = {
		"HASZNÁLD KI, HIBÁSÍTSD MEG és TÖRD SZÉT",
		"Igazságos játszma? Olyan nem létezik",
		"Várj! Ezek a lépcsők nem igaziak... Mi egy szimulált Roblox játékban élünk?",
		"11000101 10010000 01010010 11000011 10011100 01001100 01010100 00100000 01001100 11000011 10001001 01010000 01000011 01010011 11000101 10010000 01001011",
		"Ki mondta, hogy itt vannak szabályok?",
		"Én csalok? Itt mindenki csal",
		"Én nem csalok, csak kihasználom a játéknak a hibáit",
		"Én vagyok a sebesség",
		"Mozgólépcső a legjobb lépcső",
	},
	["HERETIC"] = {
		"TE NEM FOGSZ ÁTJUTNI",
		"A fekete mágia olyan mint a sima mágia, csak még jobb",
		"Nem tetszik, hogy mások varázsolhatnak",
		"Halál és pusztulás",
		"Az a lényeg hogy nekem jó legyen, a többi ember meg nem fontos",
		"Nem kéne korlátozni magunkat",
		"Ami másoknak átok, az nekünk áldás. Leginkább azért, mert másoknak az átok",
		"A sötet oldalt választottad. Ez volt életed legjobb döntése",
		"Miért érdekelne engem, ha emberek elakadnak?",
	},
	["ARCHON"] = {
		"NYISS PORTÁLT, ???, HASZON",
		"Régebben én uraltam ezt a lépcsőházat",
		"Nagyon könnyen lehet nyerni, ha előre tervezel",
		"Tanulj sokat és sikeres leszel",
		"Ne hagyd, hogy mások lemásolják a házidat",
		"Men tud'm has nzálni a Arcon potát¡",
		"Mindenre fel kell készülnöd",
		"Minden problémát meg lehet oldani kapukkal",
		"Mindenkit összezavartam!",
	},
	["DRIFTER"] = {
		"SZÖRFÖLJ, LOVAGOLJ és SODRÓDJ",
		"Kinek kell lépcső, amikor az űrben vagyunk?",
		"Repüljetek bolondok!",
		"Csak sodródj az árral",
		"Az űrben nincs lefelé - nincs miért aggódni",
		"Sodródj a győzelem felé",
		"Teljes gőzzel előre!",
		"A lifteim nagyon Őrültek",
		"Szörfölj tovább",
	},
	["SPLICER"] = {
		"CSAVARJ, KAPCSOLD ÖSSZE és EGYESÍTS",
		"Nem lehet mindig egyenesen menni",
		"Az élet tele van csavarokkal",
		"Másoknak káosz, nekünk rend",
		"A lépcsők arra valók, hogy összekapcsoljam",
		"Ne kapcsolódj emberekkel, inkább KAPCSOLÓDJ LÉPCSŐKKEL!",
		"Ha elég lépcsőt kapcsolok össze, akkor előbb utóbb nyerni fogok",
		"Együtt erősebbek a lépcsők",
		"Köszönöm Markerquest, megmentettél",
		"Megcsavarom ezt a lépcsőházat",
	},
	["REAVER"] = {
		"Tükrök valójában csak átjárók.\n!ólleH",
		"Tükröm, tükröm, mond meg nékem, ki a legszebb e vidéken?\n!né táH", 
		"Láthatod a lelkedet a tükörben.\n!ttötülekköt et koygav né zA",
		"Hét évnyi balszerencse. Nekem, vagy a másiknak?\n?törküt a le etröt knükiyleM",
		"A szellemek ragadtak a tükör mögé - vagy mi?\n!röküt a inröt gof le trem rám sseis óseT", 
		"EBYGE JLÁV sé IK DLÉRESC ,JDŐZÖRKÜT\nTÜKRÖZŐDJ, CSERÉLD KI és VÁLJ EGYBE", 
		"!tocárs a tze le kujdaH\nDehogy is! Biztos, hogy segíteni fog.",
		"!tréőtzselÉ ?abtlob a mellezs a tnem tréiM\nLol!",
		".inröt gof le röküt a zE\nEz a tükör nem fog eltörni!",
		"?knüseel sé kirötle rüköt a ah zsel iM\nNe ijesztgessél már!",
	},
	["NECROMANCER"] = {
		"KÖVESS, ÉLEDJ ÚJRA és SZEREZZ HASZNOT",
		"Nem akarunk megszállni, csak barátkozni jöttünk",
		"A lelked az ENYÉM!",
		"Kövesd a szellemem. Vagy kövess engem, nekem igazából mindegy",
		"Bú! Jaj ez véletlen volt, bocsánat ha megijedtél",
		"Ideje néhány lelket begyűjteni",
		"Ne hidd el azt a sok hazugságot, amit Hollywood terjeszt. Mi jók vagyunk",
		"Ha a halál rossz, akkor a szellemidézés jó",
		"Kéne néhány léle- akarom mondani Mana, kéne Mana",
		"Nem félek attól, hogy leesek. Majd a szellemem megment!",
	},
	["GREMLIN"] = {
		"FORGASS, PÖRGESS és HIPNOTIZÁLJ",
		"Gyere játssz velem!",
		"Jaj, csak nem elszédültél?",
		"Ez a lépcsőház nagyon unalmas",
		"Hadd javítsam meg azt a lépcsőt, heheh",
		"Tetszik a remekművem? Nem? Milyen kár, pedig csak most kezdtem.",
		"Az orvos mondta, hogy lazítsak, és én így lazítok.",
		"Joker tanulhatna tőlem. Csak vicceltem, légyszi vegyél vissza a Cirkuszba!",
		"Hova tűnt a lépcső?",
		"Wheeeeeeeeeeeeeeeeeeee!!!!!!!",
	},
	["NONE"] = {
		"MINTHA ITT SE LENNÉK",
		"Nincs. Semmi. Baj.",
		" ", --worked hard on this one
		"Nem csinálok semmit, de azt legalább hibátlanul.",
		"Van értelme egyáltalán megmászni a lépcsőket?",
		"Léteznem se kéne, mégis itt vagyok.",
		"Választhatnál egy másik osztályt, de én azt se bánnám, ha nem.",
		"Így kell megfelelően megmászni a lépcsőket.",
		"Fáj a lábam.",
		"Miért sietsz Muggle? Időnk, mint a tenger.",
		"Én voltam itt először, mégis úgy érzem, hogy nem tartozok ide.",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Senkit sem hagyok hátra",
	["IT"] = "Szívatás az életem", 
	["ANNIHILATOR"] = "Pusztíts el mindent!",
	["AETHER"] = "Üdvözöljük az alvilágban", 
	["DABSFORLIF"] = "A varázslatok túlértékeltek",
	["USURPER"] = "Én csak szeretem az összes varázslatot",
	["ADMIRAL"] = "Rend helyreállítva",
	["OUTLAW"] = "Minden az enyém!",
	["ZERO"] = "Rootkit letöltve",
	["EXILED"] = "Kiközösítve",
	["ILLUMINATI"] = "Megvilágosodtam",
	["STRIDER"] = "Inkább megyek lifttel",
	["DEATHBRINGER"] = "Szellemek is emberek!",
	["OPTIMUS"] = "Az Összefonódás",
	["ILLUSION"] = "Egységben őre za.az erő nebgésygE",
	["DAEMON"] = "Körülöttem forog a világ.",
	["BLACK HOLE"] = "Első lépés teljesítve.",

}

module.gui.gameover.credits = {
	["common"] = {
		"ŐRÜLT LÉPCSŐK",
		"Játékot kitalálta, tervezte és kódolta: Sleazel",
		"Tervezésben segített: cakegirlserina",
		"Modellek csinálta: ZielonyLeszek",
		"A hátterek @wwwtyro generátora segítségével jöttek létre",
		"Adat tároló modult (ProfileSore-t) készítette: loleris",
		"Köszönjük, hogy játszottál a játékkal!",
	},
	["climb"] = "%s Mászás Zenéje - % alkotta: %",
	["endgame"] = "%s Győzelmi Zenéje - % alkotta: %",
	["disco"] = "Zenés Lépcső Zenéje - % alkotta: %",
	["elevator"] = "Lift Zenéje - % alkotta: %", --drifter platforms
	["testers"] = "VIZSGÁLÓK:",
	--["translations"] = "FORDÍTÁSOK:",
	["thanks"] = "KÜLÖN KÖSZÖNET:",
	--["music"] = "ZENE (APM catalog):",
}

module.static = {

	["cla_1"] = "Hogyan kell játszani?",
	["cla_2"] = "Először is azt javasolnám, hogy csináld meg a kiképzést. Ha te ezt még nem tetted meg, akkor kezd el a kiképzést a menüben lévő gombbal, különben ez a játék nagyon összezavaró lehet.",
	["cla_3"] = "A játéknak az a célja, hogy feljuss a legfelső szintre és megszerezd a lebegő Energikus Gömböt. Először válassz egy osztályt úgy, hogy ráugrasz egy pálya közepén levő körre.",
	["cla_4"] = "Miután megelégedtél a választásoddal, mászd meg a lépcsőket. Gyűjts lebegő kristályokat, hogy feltöltsd a Manádat. Használd az osztályod varázslatait, hogy segítsen rajtad a mászásban.",
	["cla_5"] = "Hogyan kell varázsolni?",
	["cla_6"] = "Mindegyik varázslat kerül valamennyi Manába. Ha van elég Manád, akkor nyomd meg a varázslatot. A kezeid elkezdenek világítani azt jelezve, hogy sikeresen tudtál varázsolni.",
	["cla_7"] = "Kiválasztás után, a varázslatot végre kell hajtani. Az összes varázslatot ugrással kell végrehajtani. Világító nyilak jelennek meg ahol végre lehet hajtani az adott varázslatot.",
	["cla_8"] = "Minden befejeztett mászásért kapsz 3 varázs zsetont, amivel kinyithatsz új varázslatokat. Nem lehet zsetont az egyik osztályból arra használni, hogy egy másik osztályban lévő varázslatot szerezz meg.",
	["cla_9"] = "Hogyan varázsolok különleges varázslatokat?",
	["cla_10"] = "Először az összes alapvető varázslatot meg kell szerezned, hogy használhass különleges varázslatokat. Ezeket nem kell kinyitni, de Mana helyett Zsetont használnak el.",
	["cla_11"] = "Mászd meg ezt a tornyot legalább ötszőr, hogy szerezz elegendő zsetont, de hamarabb is elérheted ezt, ha nyersz versenyeket vagy ha veszel zsetonokat. Amikor az megvan, nyomd meg a legbaloldalibb gombot vagy a 'C' billentyűt.",
	["cla_12"] = "Néhány különleges varázslat időzített, és nem kell ugrással végrehajtani, de megszüntetésük után nem kapod vissza a zsetonjaidat. Légyszíves olvasd el a további információkat az osztálynak a szentélyében, hogy megtudj többet az adott különleges varázslatról mielőtt megvarázsolnád.",

	["pro_1"] = "PROFI TORONY",
	["pro_2"] = "Páros szintek korlátozása",
	["pro_3"] = "Ebben a toronyban néhány varázslatot nem lehet megvarázsolni páros szinteken. A Csapda, Portál Létrehozása, Csigalépcső, Függöleges és Véletlenszerű Teleportálás varázslatokat csak páratlan szinteken lehet végrehajtani.",
	["pro_4"] = "Drifterek sem tudnak lifteket létrehozni azokon a felületeken. Az érintett felületek jelezve vannak egy piros körrel.", 
	["pro_5"] = "Átkozott Lépcsők",
	["pro_6"] = "Ebben a toronyban a Drónok véletlenszerűen létrehoznak Átkozott Lépcsőket vagy megátkoznak normális lépcsőket. 20% esély van arra, hogy megjelenjen egy Átkozott Lépcső. Segítő nyilak nem jelennek meg Átkozott Lépcsők közelében.",
	["pro_7"] = "Az Átkozott Lépcsők immunisak a legtöbb varázslatra. Nem tudsz átteleportálni rajtuk Spectre Teleportálásával vagy Hacker Villanásával. Továbbá, az összes varázslat, ami érintene egy Átkozott Lépcsőt se fog működni (például Keepernek a Lépcső Mozgatása).",
	["pro_8"] = "Csak Hereticek és Admirálok állíthatnak helyre Átkozott Lépcsőket. Tisztítás és Helyreállítás események is eltüntetik az átkozott lépcsőket, azonban a Drónok mindig létrehoznak újakat.",
	["pro_9"] = "Átkozott Kereszteződések",
	["pro_10"] = "Ebben a toronyban Drónok véletlenszerűen létrehoznak Átkozott Kereszteződéseket is. Amikor egy drón talál egy üres Kereszteződést, akkor 20% esélye van arra, hogy megátkozza. A Segítő Nyilakon megjelenik egy x, ami megjelöli a kereszteződést.",
	["pro_11"] = "Az Átkozott Kereszteződések megakadályozzák az összes olyan felület varázslatokat, amiket nyilakon kell végrehajtani. Nem tudsz létrehozni lépcsőket, kapcsokat vagy teleportálni az Átkozott Kereszteződésekben.",
	["pro_12"] = "Csak Hereticek, Admirálok és Drónok állíthatnak helyre Átkozott Kereszteződéseket. Wicked Tisztítás Eseménye elpusztítja az összes átkozott kereszteződést is, de újraépítés közben létre jönnek újjak.",

	["inf_1"] = "VÉGTELEN TORONY",
	["inf_2"] = "VERSENYEZNI KÖTELEZŐ",
	["inf_3"] = "Ebben a toronyban versenyezni kötelező. Nem versenyző játékosok nem varázsolhatnak és nem kapnak jutalmakat. Ha hozzáérsz a gömbhöz, akkor csak kapsz 10 Manát.",
	["inf_4"] = "Ahhoz hogy jutalmat nyerj a végtelen toronyban, be kell lépned egy versenybe és a lehető legtöbb ideig kell a tornyon maradni. A jutalmakat megkapod (ha szeresztél) miután kiestél.",
	["inf_5"] = "Nagy Drón",
	["inf_6"] = "A klasszikus és a profi toronnyal ellentétben, A Nagy Drónnak van egy különleges feladata ebben a toronyban.",
	["inf_7"] = "Mindig, amikor feljebb megy az intervallum, A Nagy Drón csinál 2 új szintet. Az összes páros szint le lesz zárva. Ezen felül, még néhány lépcső és kereszteződés lehet, hogy meg van átkozva.",
	["inf_8"] = "Ez első intervallum 20 másodpercig tart. Minél tovább tart a verseny, annál rövidebb lesz a következő intervallum.",
	["inf_9"] = "Radír",
	["inf_10"] = "A Radír az egy különleges erőtér, ami együtt növekszik a toronnyal és eltávolítja az alsó szinteket. Ha utolér a radír, akkor kiesel a versenyből.",
	["inf_11"] = "A radír fel fog gyorsulni, mint a Nagy Drón. De a drónnal ellentétben, a radír fokozatosan gyorsul, és nem radíroz ki 2 szintet egyszerre.",
	["inf_12"] = "A lépcsők és a felületek amik hozzáérnek a radírhoz eltűnnek. Kerüld el a radírt a lehető legtöbb ideig, hogy minél több jutalmat szerezz.",

	["cus_1"] = "EGYEDI TORONY",
	["cus_2"] = "TE DÖNTESZ!",
	["cus_3"] = "Az egyedi toronyban kedvedre állíthatod be a torony beállításait.",
	["cus_4"] = "A jutalmak az Egyedi Toronyban meg vannak felezve. Kapsz egy zsetont minden 12. szintért és egy mászást minden 30. szintért.",
	["cus_5"] = "Torony Beállításai",
	["cus_6"] = "Beállíthatod a tornyot úgy, ahogy akarod. Beállíthatod a szintek számát, lezárhatod a páros szinteket vagy bekapcsolhatod a végtelen módot.",
	["cus_7"] = "Csak a szerver tulajdonosa állíthatja be a tornyot.",
	["cus_8"] = "Drón Beállításai",
	["cus_9"] = "Meg tudod változtatni a kis drónok beállításait is. Beállíthatod a lépcsők számát, az átkozott lépcsők és kereszteződések megjelenésének esélyét, vagy akár ki is kapcsolhatod a drónokat.",

	["vr_1"] = "Mivel a játékot egy VR szemüvegben indítottad el, ezért automatikusan egy Architect lettél.",
	["vr_2"] = "Normális játékosokkal ellentétben, neked nem kell megmászni a tornyot. A célod, hogy megsegítsd vagy megszívasd a többi játékost.",
	["vr_3"] = "A döntés a te kezedben van. Egy gazember leszel, vagy egy megmentő? Vagy csak a kedvedre formálod a lépcsőházat? Érezd jól magad!",
	["vr_4"] = "Hogyan mozgok?",
	["vr_5"] = "Használd a bal joysticket, hogy előre vagy hátra menj. Billentsd a bal joysticket oldalra, hogy jobbra vagy balra menj.",
	["vr_6"] = "Használd a jobb joysticket, hogy fel vagy le menj. Billentsd a jobb joysticket jobbra vagy balra, hogy 'hirtelen' fordítsd a kamerát.",
	["vr_7"] = "Próbálj meg a lépcsőházon kívül lenni, hogy jól belásd a tornyot és hogy könnyebb legyen célozni.",
	["vr_8"] = "Hogyan varázsolok varázslatokat?",
	["vr_9"] = "Nyomd össze varázs gömböt a markolat gombbal. Megjelenik egy lézersugár, amivel célba vehetsz lépcsőket és felületeket.",
	["vr_10"] = "Hajtsd végre a varázslatot a ravasszal, miközben nyomva tartod a markolatot. Minden osztálynak kettő varázslata van VR-ban. Egy felületen és egy lépcsőn. A célponttól függően lesz kiválasztva a megfelelő varázslat.",
	["vr_11"] = "Hogy osztályt válts VR módban, ahhoz nyomd meg hosszan a ravaszt anélül, hogy megnyomnád a markolatot. Osztályt válthatsz a kézzel megegyező oldalú joystickkel.",

	["home_1"] = "MUGGLE OTTHONA",
	["home_2"] = "JELMONDATUNK:\nFUSS\nUGORJ\nÉS\nESS",
	["home_3"] = "ELŐNYÖK:\nGyorsabb és nagyobbat ugor magasabb rangoknál\nHÁTRÁNYOK:\nNincs varázslata\nKönnyen elakad",
	["home_4"] = "„Bezzeg az én időmben nem voltak ilyen puccos varázslatok!”\nalapítónk idézete",

	["oasis_1"] = "CHAMELEON OÁZISA",
	["oasis_2"] = "JELMONDATUNK:\nMÁSOLJ\nUTÁNOZZ\nÉS\nLEPD MEG,
	["oasis_3"] = "ELŐNYÖK:\nBármikor és bárhol változtathatsz osztályt\nHÁTRÁNYOK:\nFizetős\nAz összes osztály felfejlesztése sok időbe kerül",
	["oasis_4"] = "„Túl lusta vagyok ahhoz, hogy kitaláljak saját varázslatokat.”\nalapítónk idézete",

	["nexus_1"] = "HERETIC SZEKTÁJA",
	["nexus_2"] = "JELMONDATUNK:\nTE\nNEM\nFOGSZ\nÁTJUTNI",
	["nexus_3"] = "ELŐNYÖK:\nLegjobb a profi toronyban\nMegállíthatatlan\nHÁTRÁNYOK:\nNehezebben áll be egy csapatba\nManára éhes",
	["nexus_4"] = "„A fekete mágia olyan mint a sima mágia, csak még jobb.”\nalapítónk idézete",

	["guild_1"] = "THIEF REJTEKHELYE",
	["guild_2"] = "JELMONDATUNK:\nKÖLCSÖNÖZZ\nHASZNÁLD\nÉS\nKÜLDD VISSZA",
	["guild_3"] = "ELŐNYÖK:\nNem használ sok manát\nSokoldalú\nHÁTRÁNYOK:\nLépcsőt kell lopnia\nNem tud elpusztítani útban álló lépcsőket",
	["guild_4"] = "„Én nem lopok, csak kölcsönzök.”\nalapítónk idézete",

	["nether_1"] = "SPECTRE ALVILÁGA",
	["nether_2"] = "JELMONDATUNK:\nTŰNJ EL\nBÚJJ EL\nÉS\nTELEPORTÁLJ",
	["nether_3"] = "ELŐNYÖK:\nGyors varázslatok\nTökéletes ha egyedül játszol\nHÁTRÁNYOK:\nFizetős\nCsapatokban nem ajánlott",
	["nether_4"] = "„Mi baj lehet a teleportálással?”\nalapítónk idézete (MIA)", 

	["study_1"] = "ARCHON TANULÓHELYE",
	["study_2"] = "JELMONDATUNK:\nNYISS\nPORTÁLT\n???\nHASZON",
	["study_3"] = "ELŐNYÖK:\nHasznos varázslatok\nMegzavarhat másokat\nHÁTRÁNYOK:\nNehéz megtanulni\nElőre kell tervezned",
	["study_4"] = "„Régebben én uraltam ezt a lépcsőházat.”\nalapítónk idézete",

	["haven_1"] = "PATRON MENNYE",
	["haven_2"] = "JELMONDATUNK:\nSEGÍTS\nVÉDJ\nÉS\nTEREMTS",
	["haven_3"] = "ELŐNYÖK:\nKönnyű megtanulni\nCsapatjátékos\nHÁTRÁNYOK:\nSok Manát használ\nMások kihasználhatják",
	["haven_4"] = "„Csak mi segíthetünk bajba jutott társainkon.”\nalapítónk idézete",

	["shelter_1"] = "DRIFTER MENEDÉKE",
	["shelter_2"] = "JELMONDATUNK:\nSZÖRFÖLJ\nLOVAGOLJ\nÉS\nSODRÓDJ",
	["shelter_3"] = "ELŐNYÖK:\nSokoldalú\nCsapatjátékos\nHÁTRÁNYOK:\nParkúr tudás nélkül nem annyira hasznos\nNem annyira hasznos a Profi toronyban",
	["shelter_4"] = "„Kinek kell lépcső, amikor az űrben vagyunk?”\nalapítónk idézete",

	["circus_1"] = "JOKER CIRKUSZA",
	["circus_2"] = "JELMONDATUNK:\nTÉVESZD MEG\nZAVARD ÖSSZE\nÉS\nNEVESS",
	["circus_3"] = "ELŐNYÖK:\nSzívathatsz másokat\nNéhány varázslat hasznos\nHÁTRÁNYOK:\nDrága varázslatok\nElveszítheted a barátságaidat", 
	["circus_4"] = "„Ez a lépcsőház egy vicc.”\nalapítónk idézete",

	["base_1"] = "KEEPER BÁZISA",
	["base_2"] = "JELMONDATUNK:\nMOZGASS\nFORGASS\nÉS\nIRÁNYÍTS",
	["base_3"] = "ELŐNYÖK:\nHelyre tud állítani lépcsőket\nMeg tud mozgatni lépcsőket\nHÁTRÁNYOK:\nParkúr tudás nélkül nem annyira hasznos\nLépcső nélkül haszontalan",
	["base_4"] = "„Ne tedd tönkre a lépcsőházamat!”\nalapítónk idézete",

	["chamber_1"] = "WICKED KAMRÁJA",
	["chamber_2"] = "JELMONDATUNK:\nAKADÁLYOZZ\nÁLLJ ÚTBAN\nÉS\nPUSZTÍTS",
	["chamber_3"] = "ELŐNYÖK:\nEl tud pusztítani bármilyen lépcsőt\nVagy akár egyszerre az összeset\nHÁTRÁNYOK:\nTúlzottan támaszkodik lépcsőkre",
	["chamber_4"] = "„Nem vagyok gonosz, csak túl sok a lépcső.”\nalapítónk idézete",

	["backdoor_1"] = "HACKER MÁTRIXA",
	["backdoor_2"] = "JELMONDATUNK:\nHASZNÁLD KI\nHIBÁSÍTSD MEG\nÉS\nTÖRD SZÉT",
	["backdoor_3"] = "ELŐNYÖK:\nLeggyorsabb osztály\nNehéz követni\nHÁTRÁNYOK:\nTúlzottan támaszkodik lépcsőkre\nCsapatokban haszontalan",
	["backdoor_4"] = "„Igazságos játszma? Olyan nem létezik.”\nalapítónk idézete",

	["hub_1"] = "SPLICER KÖZPONTJA",
	["hub_2"] = "JELMONDATUNK:\nCSAVARJ\nKAPCSOLD ÖSSZE\nÉS\nEGYESÍTS",
	["hub_3"] = "ELŐNYÖK:\nSokoldalú\nJó csapatokban\nHÁTRÁNYOK:\nPicit összezavaró\nSok idő elsajátítani",
	["hub_4"] = "„Nem lehet mindig egyenesen menni.”\nalapítónk idézete",

	["shack_1"] = "GREMLIN KUNYHÓJA",
	["shack_2"] = "JELMONDATUNK:\nFORGASS\nPÖRGESS\nÉS\nHIPNOTIZÁLJ",
	["shack_3"] = "ELŐNYÖK:\nNincs\nHÁTRÁNYOK:\nMINDENKI utálni fog",
	["shack_4"] = "„Gyere játssz velem.”\nalapítónk idézete",

	["mirror_1"] = "REAVER TÜKRE",
	["mirror_2"] = "JELMONDATUNK:\nTÜKRÖZŐDJ\nCSERÉLD KI\nÉS\nVÁLLJ EGYBE",
	["mirror_3"] = "ELŐNYÖK:\nSegíthetsz másoknak a tükreiddel\nHÁTRÁNYOK:\nEgybeválás és szétválás funkció összezavaró",
	["mirror_4"] = "„Tükrök valójában csak átjárók.”\nalapítónk idézete",

	["grave_1"] = "NECROMANCER SÍRJA",
	["grave_2"] = "JELMONDATUNK:\nKÖVESS\nÉLEDJ ÚJRA\nÉS\nSZEREZZ HASZNOT",
	["grave_3"] = "ELŐNYÖK:\nSegíthetsz másoknak a szellemeddel\nHÁTRÁNYOK:\nNehéz mindig figyelni a szellemedet",
	["grave_4"] = "„Nem akarunk megszállni, csak barátkozni jöttünk.”\nalapítónk idézete",

	["studio_1"] = "ARCHITECT STÚDIÓJA",
	["studio_2"] = "JELMONDATUNK:\nTERVEZZ\nVALÓSÍTSD MEG\nÉS\nVIZSGÁLJ",
	["studio_3"] = "ELŐNYÖK:\nTud repülni\nNem használ Manát\nHÁTRÁNYOK:\nFizetős\nNem nyerhet",
	["studio_4"] = "„Most viszont én uralom a lépcsőházat!”\nalapítónk idézete",

	--SHARED
	["leader_pro"] = "Profi Torony 2 mászást ad",
	["leader_update"] = "Következő Frissítés:",	
	["leader_updating"] = "Frissítés...",	
	["leader_rank"] = "RANG",
	["leader_req"] = "SZÜKSÉGES MÁSZÁSOK", 
	["leader_off"] = "Egyedi toronyban nincsenek ranglisták.",

	--OVERALL
	["over_title"] = "ÖSSZEFOGLALÓ RANGOK",
	["over_desc"] = "Minden egyes szerzett rang ad 1 pontot",
	["over_rank"] = "RANG",
	["over_req"] = "SZÜKSÉGES PONTOK",
	["emperor_req"] = "* Ehhez kell Chameleon VAGY Spectre",
	["overmind_req"] = "** Ehhez kell Chameleon ÉS Spectre",
	["over_prefix"] = "ELŐTAG",
	["over_passes"] = "SZÜKSÉGES\nTERMÉKEK",
	["over_notgroup"] = "OLIVA SZÍNŰ - nincs benne a csoportban",
	["over_group"] = "ZÖLDESKÉK SZÍNŰ - benne van a csoportban",
	["over_mod"] = "MODERATOR - ez a játékos egy moderator",
	["over_admin"] = "ADMIN - ez a játékos egy admin", --pls sleazel uwu
	["over_owner"] = "PRANK ME - Játék készítője (Sleazel)",

	--OTHER
	["muggle_lead"] = "KITARTÓ MUGGLEÖK",
	["muggle_ranks"] = "MUGGLE RANGOK",

	["hacker_lead"] = "TITKOSÍTOTT HACKEREK",
	["hacker_ranks"] = "HACKER RANGOK",

	["wicked_lead"] = "ERŐSZAKOS WICKEDEK",
	["wicked_ranks"] = "WICKED RANGOK",

	["keeper_lead"] = "FELKÉSZÜLT KEEPEREK",
	["keeper_ranks"] = "KEEPER RANGOK",

	["joker_lead"] = "ŐRÜLT JOKEREK",
	["joker_ranks"] = "JOKER RANGOK",

	["drifter_lead"] = "LAZA DRIFTEREK",
	["drifter_ranks"] = "DRIFTER RANGOK",

	["patron_lead"] = "NEMES PATRONOK",
	["patron_ranks"] = "PATRON RANGOK",

	["archon_lead"] = "OKOS ARCHONOK",
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

	["chameleon_lead"] = "ALAKVÁLTÓ CHAMELEONOK",
	["chameleon_ranks"] = "CHAMELEON RANGOK",

	["dailies"] = "MAI REKORDOK",
	["most_climbs"] = "LEGJOBB MÁSZÓK",
	["most_wins"] = "LEGJOBB VERSENYZŐK",  
}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Üdvözöljük az Őrült Lépcsőkben!",
	["tut_big_2"] = "Először szedd fel ezt a Manát.",
	["tut_big_3"] = "Ezzel a varázslattal létrehozhatsz lépcsőket.",
	["tut_big_4"] = "Az összes varázslatot ugrással kell végrehajtani.",
	["tut_big_5"] = "Szedd fel ezt a Manát:",
	["tut_big_6"] = "Ezzel a varázslattal megfordíthatsz lépcsőket.",
	["tut_big_7"] = "Néhány varázslatot lépcsőkön kell végrehajtani.",
	["tut_big_8"] = "Szedd fel ezt a Manát:",
	["tut_big_9"] = "Ezzel a varázslattal mozgathatsz lépcsőket.",
	["tut_big_10"] = "Ugorj az előrefele mutató nyílra, hogy megmozgasd a lépcsőt.",
	["tut_big_11"] = "Sok útban álló lépcsővel fogsz találkozni ebben a játékban.",
	["tut_big_12"] = "Használd ezt a varázslatot, hogy elpusztítsd az utadban álló lépcsőt.",
	["tut_big_13"] = "El tudsz pusztítani feletted lévő lépcsőket úgy, hogy ráugrasz az alattuk lévőre.",
	["tut_big_14"] = "Szedd fel ezt a Manát:",
	["tut_big_15"] = "Használd ezt a varázsigét, hogy felületek között teleportálj.",
	["tut_big_16"] = "Ugorj a nyílra, hogy teleportálj.",
	["tut_big_17"] = "Lehet, hogy találkozol olyan lépcsőkkel, amelyeken nem lehet felmenni.",
	["tut_big_18"] = "Állítsd helyre a lépcsőt ezzel a varázslattal.",
	["tut_big_19"] = "Ugorj rá a lépcsőre, vagy az ahhoz tartozó nyílra hogy helyreállítsd a lépcsőt.",
	["tut_big_20"] = "Meg kell szerezned a legfelső szinten lévő gömböt, ha nyerni szeretnél. Sok szerencsét!",

	["tut_select"] = "Válaszd ki ezt a varázslatot.",

	["tut_small_init"] = "Ugorj, hogy elkezd a kiképzést",
	["tut_small_collect"] = "Gyűjts Manát",
	["tut_small_arrow"] = "Ugorj a nyílra",
	["tut_small_stairs"] = "Ugorj a lépcsőre",
	["tut_small_pellet"] = "Szerezd meg a gömböt",


}

module.where = {

	["platform"] = "Muszáj végrehajtani egy felületen. Nem fog működni földszinten vagy profi torony páros szintjein.",
	["arrow"] = "Muszáj végrehajtani egy felületnek az egyik nyilán.",
	["stairs"] = "Muszáj végrehajtani egy lépcsőn.",
	["above"] = "Muszáj végrehajtani az alattad lévő lépcsőn, hogy hasson a feletted lévő lépcsőre. Kapcsokon is működik.",
	["dynamic"] = "Érintheti az alattad és a feletted lévő lépcsőt.",
	["both"] = "Végre lehet hajtani egy felületnek az egyik nyilán vagy egy lépcsőn.",
	["both2"] = "Végre lehet hajtani felületeken vagy lépcsőkön.",
	["anywhere"] = "Bárhol végre lehet hajtani.",
	["nowhere"] = "Ezt a varázslatot nem kell végrehajtani.",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "Végre lehet hajtani üres kereszteződésekben, vagy ha van egy útban álló áttetsző lépcső.",
		["superforced"] = "Végre lehet hajtani üres kereszteződésekben, vagy ha van egy nem átkozott szemben álló lépcső.",
		["superforcednecro"] = "Végre lehet hajtani üres kereszteződésekben, vagy ha van egy nem átkozott szemben álló lépcső.",
		["flicker"] = "Végre lehet hajtani üres kereszteződésekben.",
		["any"] = "Végre lehet hajtani nem átkozott kereszteződésekben.",
		["wall"] = "Csak olyan nem átkozott kereszteződésekben lehet végrehajtani, amelyben nincsen egy fal vagy kapu.",
		["forced"] = "Végre lehet hajtani üres kereszteződésekben, vagy ha van egy nem átkozott szemben álló lépcső.",
		["soft"] = "Csak üres kereszteződésekben lehet végrehajtani.",
		["flatten"] = "Csak olyan kereszteződésekben lehet végrehajtani, amelyben van egy szemben álló normális vagy riges lépcső.",
		["hack"] = "Csak olyan kereszteződésekben lehet végrehajtani, amelyben van egy szemben álló nem átkozott lépcső.",
		["sidepass"] = "Csak olyan nem átkozott kereszteződésekben lehet végrehajtani, amelyben nincsen egy kitérő.",
	},

	["platform"]= {


		--platform
		["middle"] = "Ennek a varázslatnak nincs különleges feltétele.",
		["diag"] = "Végre lehet hajtani a torony belsejében vagy külsejében.",
		["outer"] = "Csak a torony szélén lehet végrehajtani.",
		["centre"] = "Ez a varázslat összetöri az összes kicsi tükröt ezen a szinten, de a hatalmasat nem.",
		["inner"] = "Csak a torony belső felületein lehet végrehajtani, amelyeken nincsen egy kapocs.",
		["prevolve"] = "Végre lehet hajtani az óra mutató járásával megegyező vagy ellentétes irányban.",
		["top"] = "Csak a legfelső szinten lévő felületeken lehet végrehajtani.",
	},

	["stairs"] ={

		["cursed"] = "Végre lehet hajtani normális, riges vagy átkozott lépcsőkön.",
		["all"] = "Végre lehet hajtani bármilyen lépcsőn.",
		["steal"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["onedirection"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["straight"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["rotate"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["flip"]= "Végre lehet hajtani normális, riges vagy megfordított lépcsőkön.",
		["gate"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["gatestr"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["gaterot"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["twist"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["twiststr"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["twistrot"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["spin"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["drift"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["escalator"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["oneway"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["revolve"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",
		["normalrig"] = "Végre lehet hajtani normális vagy riges lépcsőkön.",

	},

	["above"] = {

		["cursed"] = "Végre lehet hajtani egy normális, riges vagy átkozott lépcső alatt.",
		["all"] = "Végre lehet hajtani bármilyen lépcső alatt.",
		["steal"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt.",
		["flip"]= "Végre lehet hajtani egy normális, riges vagy megfordított lépcső alatt.",
		["onedirection"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt.",
		["slide"] = "Ezzel a varázslattal átjuthatsz bármilyen nem átkozott vagy nem áttetsző lépcsőn.",
		["normalrig"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt.",

	},

	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Végre lehet hajtani egy normális, riges vagy megfordított lépcsőn vagy egy olyan lépcső alatt. Ha valamiért nem lehet a feletted lévő lépcsőt megfordítani, akkor helyette megfordítod az alattad lévő lépcsőt.",
		['normalrig'] = "Végre lehet hajtani egy normális vagy riges lépcsőn vagy egy olyan lépcső alatt. A varázslat egyszerre hathat az alattad és a feletted lévő lépcsőkre.",
		['slide'] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha van feletted egy nem átkozott lépcső, akkor az a lépcső elpusztul.",
	},

	["both"] = {
		['restore'] = "Végre lehet hajtani bármilyen lépcsőn vagy egy felületnek a nyilán ami mellet van egy lépcső.",
		['deltwists'] = "Végre lehet hajtani csavart lépcsőkön vagy egy felületnek a nyilán ami mellet van egy csavart lépcső.",
		['ghosted'] = "Végre lehet hajtani normális, riges vagy szellemesített lépcsőn vagy egy felületnek a nyilán ami mellet van egy normális, riges vagy szellemesített lépcső.",

		["archpatron"] = "Patron Lépcső Létrehozása (ha egy nyílon használod) vagy Lépcső Zsugorítása (ha egy lépcsőn használod).",
		["archarchon"] = "Archon Felület Kapuja (ha egy nyílon használod) vagy Lépcső Kapuja (ha egy lépcsőn használod).",
		["archthief"] = "Thief Lépcső Lerakása (ha egy nyílon használod) vagy Lépcső Ellopása (ha egy lépcsőn használod).",
		["archnecro"] = "Necromancer Kettős Lépcső Létrehozása (ha egy nyílon használod) vagy Lélektelen Lépcsője (ha egy lépcsőn használod).",
		["archhacker"] = "Hacker Lépcső Becsalása (ha egy nyílon használod) vagy Mozgólépcsője (ha egy lépcsőn használod).",
		["archkeeper"] = "Keeper Lépcső Helyreállítása (ha egy nyílon használod) vagy Lépcső Mozgatása/Forgatása (ha egy lépcsőn használod).",
		["archsplicer"] = "Splicer Csavart Lépcső Helyreállítása (ha egy nyílon használod) vagy Lépcső Megcsavarása (ha egy lépcsőn használod).",
		["archwicked"] = "Wicked Fala (ha egy nyílon használod) vagy Lépcső Elpusztítása (ha egy lépcsőn használod).",
		["archjoker"] = "Joker Hamis Lépcső Létrehozása (ha egy nyílon használod) vagy Lépcső Megfordítása/Visszafordítása (ha egy lépcsőn használod).",
		["archspectre"] = "Spectre Fantom Lépcső Létrehozása (ha egy nyílon használod) Vagy Lépcső Megszellemesítése/Szellemesített Lépcső Helyreállítása (ha egy lépcsőn használod).",
		["archreaver"] = "Reaver Tükrös Lépcső Létrehozása (ha egy nyílon használod) vagy Egyirányú Lépcsője (ha egy lépcsőn használod).",
		["archheretic"] = "Heretic Átkozott Kereszteződése (ha egy nyílon használod) vagy Lépcső Megátkozása/Átok levétele (ha egy lépcsőn használod).",
	},

	['both2'] = {
		['delsplits'] = "Csak olyan lépcsőkön lehet végrehajtani, amelyeken van egy kapu.",

		["archgremlin"] = "Gremlin Felület Pörgetése (ha egy felületen használod) vagy Lépcső Pörgetése (ha egy lépcsőn használod)",
		["archdrifter"] = "Drifter Liftje (ha egy felületen használod) vagy Lépcső Véletlenszerű Sodorítása (ha egy lépcsőn használod)",

	},

	['anywhere'] = {
		['anywhere'] = "Ezt a varázslatot bárhol végre lehet hajtani.",
	},

	["nowhere"] = {
		['slide'] = "Ezt a varázslatot nem kell végrehajtani.",

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
	["coolwait"] = "Most nem lehet eseményeket és rigeket varázsolni, kérlek várj ",
	["nomirror"] = "Előbb válj egybe a szellemeddel!",
	["noreflected"] = "Ezt a varázsigét nem lehet használni tükröződve vagy.",
	["noflyarch"] = "Nem repülhetsz megszállottként, hipnotizáltként, vagy tükröződöttként.",
	["noblackhole"] = "Nem használhatod a fekete lyukat megszállottként, hipnotizáltként, vagy tükröződöttként.",
	["regenused"] = "Ebben a mászásban már regeneráltál.",

	--failed spell (server)
	["unknown"] = "Ismeretlen hiba.", --this should not show for normal players, only exploiters
	["lockedspell"] = "Ez a varázslat le van zárva!",
	["possessed"] = "Nem használhatsz varázslatokat miközben meg vagy szállva.",
	["spelllock"] = "Most nem használhatsz varázslatokat.",
	["nothere"] = "Ezt a varázslatot nem használhatod a kiképzésben.",
	["onlyracers"] = "Csak versenyzők varázsolhatnak.",
	["stashfull"] = "Tele van a leltárad.",
	["stashempty"] = "El kell lopnod egy lépcsőt mielőtt megvarázsolhatnád ezt a varázslatot.",
	["ultwait"] = "Egy másik különleges varázslat van folyamatban. Kérlek várj.",
	["notdefault"] = "A Drónoknak előbb vissza kell váltaniuk alap módba. Kérlek várj.",
	["noreshuffle"] = "Előbb válaszd meg az átrendezésnek a módját!",
	["oneoverload"] = "Nem lehet egyszerre több Mana Túltöltésed aktív.",
	["cursed"] = "Ez a lépcső átkozott!",
	["cursed2"] = "A szembem álló lépcső átkozott!",
	["blocked"] = "Ez a kereszteződés átkozott.",
	["locked"] = "Ez a lépcső le van zárva.",
	["platformlocked"] = "Ez, vagy a célba vett felület le van zárva.",
	["normalrig"] = "Ez a varázslat csak normális vagy riges lépcsőkön működik.",
	["noway"] = "Van egy lépcső ebben az irányban. (lehet, hogy láthatatlan)",
	["noway2"] = "Van egy keresztező lépcső ebben az irányban. (lehet, hogy láthatatlan)",
	["noplatform"] = "Nincs felület ebben az irányban.",
	["nopass"] = "Ezt a varázslatot csak a torony szélén lehet végrehajtani.",
	["pass"] = "Már van itt egy kitérő.",
	["link"] = "Már van itt egy kapocs.",
	["noblink"] = "Csak útban álló lépcsőkön lehet átvillanni.",
	["noblink2"] = "Csak olyan lépcsőkön lehet végrehajtani ezt a varázslatot, amelyeknek a teteje hozzá ér a felülethez.",
	["noflip"] = "Csak normális, megfordított vagy riges lépcsőket lehet megfordítani.",
	["nothingtocopy"] = "Nincs itt lépcső, amelyet te vagy a szellemed lemásolhatna.",
	["wrongdirection"] = "Nem lehet ezt a varázslatot végrehajtani ebben az irányban.",
	["notfound"] = "Nem található itt lépcső.",
	["nocursedblink"] = "Nem lehet átkozott lépcsőkön átvillanni.",
	["nostairs"] = "Nincs itt helyes irányban álló lépcső.",
	["noground"] = "Ezt a varázslatot nem lehet végrehajtani a földszinten.",
	["oddonly"] = "Ezt a varázslatot nem lehet végrehajtani ezen a szinten.",
	["noabove"] = "Nincs közvetlenül feletted lépcső.",
	["lock"] = "Most nem használhatsz varázslatokat.",
	["cantgate"] = "Ez az irány le van zárva.",
	["wall"] = "Itt van egy fal vagy kapu.",
	["nocurse"] = "Ez a varázslat csak normális, riges vagy átkozott lépcsőkön működik.",
	["nogate"] = "Ezen a lépcsőn nincs egy kapu.",
	["noghost"] = "Ez a varázslat csak normális, riges, vagy szellemesített lépcsőkön működik.",
	["wrongplace"] = "A másik lépcsőnek a játék területen belül kell lennie.",
	["archrace"] = "Nem változhatsz át Architectté miközben versenyzel.",
	["noobrace"] = "A kiképzés közben nem lehet versenyezni!",
	["toolate"] = "Most éppen van egy verseny folyamatban. Várd meg, hogy a mostani verseny befejeződjön.",
	["blockedplit"] = "A célba vett irányban lévő kereszteződés átkozott.",
	["cursedtarget"] = "Átkozott Lépcső van ebben az irányban.",
	["lockedother"] = "Még nem lehet végrehajtani ezt a varázslatot, a másik lépcső le van zárva.",
	["failedgate"] = "Nem sikerült kapukat létrehozni.",
	["notwist"] = "Ez a lépcső nem csavart.",
	["wrongmove"] = "Nem lehet a lépcsőt a játék területen kívülre mozgatni.",
	["blockedmove"] = "Nem lehet a lépcsőt mozgatni, mert ez a kereszteződés átkozott.",
	["lockedmove"] = "Még nem lehet a lépcsőt mozgatni, mert az útban álló lépcső le van zárva.",
	["normal"] = "Ez a lépcső normális.",
	["lockedinter"] = "Ez a kereszteződés le van zárva.",
	["toponly"] = "Ezt a varázslatot csak a legfelső szinten lehet megvarázsolni.",
	["duplicatemirror"] = "Már van egy tükör ezen a szinten.",
	["norestore"] = "Nem lehet helyreállítani kitérőket és csigalépcsőket.",

	--higher rank required
	["admiral2"] = "Csak akkor állíthatsz helyre átkozott lépcsőket, ha rendelkezel Admiral ranggal.",
	["admiral"] = "Csak akkor állíthatsz helyre átkozott kereszteződéseket, ha rendelkezel Admiral ranggal.",
	["infidel"] = "Csak akkor használhatod ezt a varázslatot átkozott kereszteződésekben, ha rendelkezel Infidel ranggal.",
	["banished"] = "Csak akkor pusztíthatsz el útban álló Átkozott Lépcsőket, ha rendelkezel Banished ranggal.",
	["annihilator"] = "Csak akkor pusztíthatsz el átkozott lépcsőket, ha rendelkezel Annihilator ranggal.",
	["disciple"] = "Csak akkor pusztíthatsz el Felületen lévő Kapukat, ha rendelkezel Disciple ranggal.",
	["nomad1"] = "Csak akkor forgathatsz meg bármilyen nem átkozott lépcsőt, ha rendelkezel Nomad ranggal.",
	["nomad2"] = "Csak akkor sodarhatsz meg megsodort lépcsőket, ha rendelkezel Nomad ranggal.",
	["prodigy"] = "Csak akkor írhatsz felül kapukat, ha rendelkezel Prodigy ranggal.",
	["traveller"] = "Csak akkor emelhetsz fel lifteket, ha rendelkezel Traveller ranggal.",
	["controller"] = "Csak akkor mozgathatsz meg bármilyen nem átkozott lépcsőt, ha rendelkezel Controller ranggal.",--*
	["replica"] = "Csak akkor válhatsz szét a szellemeddel ezzel a varázslattal, ha rendelkezel Replica ranggal.",--*
	["skeleton"] = "Csak akkor távolíthatsz el átkokat ezzel a varázslattal, ha rendelkezel Skeleton ranggal.",
	["hijacker"] = "Csak akkor lophatsz el bármilyen nem átkozott lépcsőt, ha rendelkezel Hijacker ranggal.",
	["transformer"] = "Csak akkor írhatsz felül megcsavart lépcsőket, ha rendelkezel Transformer ranggal.",
	["strider"] = "Csak akkor emelhetsz meg mégegyszer lifteket, ha rendelkezel Strider ranggal.",
	["lich"] = "Csak akkor pusztíthatsz el útban álló Átkozott Lépcsőket, ha rendelkezel Lich ranggal.",

	--rig activation
	["keeperrig"] = "A lépcső mozog!",
	["hackerrig"] = "A lépcső meghibásodott!",
	["jokerrig"] = "A lépcső megfordul!",
	["wickedrig"] = "A lépcső összeomlik!",
	["spectrerig"] = "A lépcső megszellemesedett!",
	["notspectrerig"] = "A lépcső NEM szellemesedett meg!",
	["patronrig"] = "%s ajándékba adott 1 Manát!",
	["thiefrig"] = "%s ellopott 1 Manát!",
	["mythiefrig"] = "%s \"ajándékba adott\" 1 Manát!",
	["notthiefrig"] = "%s már nem egy Thief - Mana nem lett ellopva.",
	["leftthiefrig"] = "Thief elhagyta a játékot - Mana nem lett ellopva.",
	["hereticrig"] = "Meg lettél szállva!",
	["archonrig"] = "Teleportálódsz!",
	["drifterrig"] = "A lépcső forog!",
	["splicerrig"] = "A lépcső megcsavarodik!",
	["necrorig"] = "A lépcső elhalványul!",
	["reaverrig"] = "Meg lettél tükröződve!",
	["gremlinrig"] = "Meg lettél hipnotizálva!",
	["reveal"] = "Megtaláltál egy láthatatlan lépcsőt!",

	--drifer lifts
	["boosted"] = "Lift megemelve!",
	["noboost"] = "Nem lehet a liftet emelni, nincs feletted felület.",
	["noupplatform"] = "Nem lehet a liftet emelni, nincs feletted felület.",

	--mana overload
	["overstarted"] = "Aktiváltad a Mana Túltöltést!",
	["overended"] = "Mana Túltöltés befejezve",

	--mana share
	["2minshare"] = "Legalább 2 Mana szükséges a megosztáshoz.",
	["noshare"] = "Nincs közeledben játékos...",
	["noinf"] = "Nem lehet megosztani végtelen Manát!",
	["toomuch"] = "%s tele van Manával!",
	["shared"] = "Megosztottál Manát %s nevű játékossal!",
	["received"] = "%s megosztotta veled a Manáját!",

	--prompts
	["morph"] = "Ugorj ide, hogy %s legyél!",
	["race"] = "Ugorj ide, hogy elkezdj egy versenyt!",
	["norace"] = "A versenyzés automatikus a végtelen módban.",

	--misc
	["secret"] = "Titok megtalálva!",
	["unlocked"] = "Varázslat feloldva!",

	--chameleon exceptions	
	["chamtutorial"] = "Nem használhatsz Chameleont a kiképzésben!",
	["champossessed"] = "Nem használhatsz Chameleont miközben meg vagy szállva.",
	["chamhypnotized"] = "Nem használhatsz Chameleont miközben hipnotizálva vagy.",
	["chamreflected"] = "Nem használhatsz Chameleont miközben a tükörképedet irányítod.",
	["morphpossessed"] = "Nem változtathatsz osztályt miközben meg vagy szállva.",
	["morphhypnotized"] = "Nem változtathatsz osztályt miközben hipnotizálva vagy.",
	["morphreflected"] = "Nem változtathatsz osztályt miközben a tükörképedet irányítod.",

	["nocode"] = "Légyszíves előbb írj be egy kódot.",
	["invalid"] = "Ez a kód nem érvényes.",
	["old"] = "Ez a kód nem aktív.",
	["accepted"] = "Kód elfogadva.",

	--free demos
	["tryspectre"] = "Spectre feloldva 10 percig! Ne hagyd el a szervert.",
	["endspectre"] = "Spectre demó 1 perc múlva véget ér!",
	["trycham"] = "Chameleon feloldva 10 percig! Ne hagyd el a szervert.",
	["new20pass"] = "Mana tárhely megnövelve!",
	["newchampass"] = "Most változtathatsz osztályt mászás közben!",
	["tryarch"] = "VR-nélküli Architect feloldva 10 percig! Ne hagyd el a szervert.",
	["newarchpass"] = "Most lehetsz ARCHITECT!",
	["endarch"] = "VR-nélküli Architect demó 1 perc múlva véget ér!",
	["newspectrepass"] = "Most lehetsz SPECTRE!",
	["endcham"] = "Chameleon demó 1 perc múlva véget ér!",
	["trymana"] = "Nagyobb tárhely feloldva 10 percig! Ne hagyd el a szervert.",
	["endmana"] = "Nagyobb tárhely demó 1 perc múlva véget ér!",

	["used"] = "Ezt a kódot elhasználtad.",
	["tooshort"] = "Az üzeneted túl rövid volt és nem lett elküldve.",
	["sent"] = "Az üzeneted sikeresen el lett küldve, köszönjük.",

	['noobteleport'] = "A kiképzés közben nem válthatsz tornyot!",
	['noobmorph'] = "Végezd el a kiképzést, hogy osztályt változtathass!",
	['noobnocode'] = "Végezd el a kiképzést, hogy kódokat használhass!",
	['noobchameleon'] = "Végezd el a kiképzést, hogy Chameleont használhass!",
	
	--GIFTING
	['notingame'] = "Nem sikerült ajándékozni, mert a játékos elhagyta a játékot!",
	['alreadyowns'] = "A játékosnak már megvan ez a termék.",
	['gotit'] = "Megszerezted a(z) %s terméket, mert %s neked ajándékozta!",
	['given'] = "%s megszerezte a(z) %s terméket!",

	--custom tower feedbacks
	["notinrace"] = "Nem állíthatod át a torony módját egy verseny közben!",
	["notinreg"] = "Nem állíthatod át a torony módját miközben a lépcsőház újraépül!",
	["infinite"] = "A szervert átállították végtelen módba!",
	["classic"] = "A szervert átállították klasszikus módba!",
	["casual"] = "Átlagos játékosok most varázsolhatnak!",
	["nocasual"] = "Átlagos játékosok most NEM varázsolhatnak!",
	["purge"] = "Tisztítás okozni fog regenerálást klasszikus módban!",
	["nopurge"] = "Tisztítás NEM fog okozni regenerálást klasszikus módban!",
	["noevens"] = "Páros szintek most le vannak zárva!",
	["evens"] = "Páros szintek most nincsenek lezárva!",
	["orbmoves"] = "Legfelső Szinti Gömb véletlenszerűen fog mozogni magától!",
	["orbstopped"] = "Legfelső Szinti Gömb NEM fog mozogni magától!",
	["infreg"] = "A lépcsőház újra fog épülni magától egy végtelen verseny után!",
	["noinfreg"] = "A lépcsőház NEM fog magától újraépülni egy végtelen verseny után!",
	["drones"] = "Kicsi Drónok bekapcsolva!",
	["nodrones"] = "Kicsi Drónok kikapcsolva!",
	["dronefix"] = "Drónok helyre fognak állítani lépcsőket!",
	["nodronefix"] = "Drónok NEM fognak helyreállítani lépcsőket!",
	["droneunlock"] = "Drónok el fognak távolítani átkozott kereszteződéseket!",
	["nodroneunlock"] = "Drónok NEM fognak eltávolítani átkozott kereszteződéseket!",
	["droneuncurse"] = "Drónok helyre fognak állítani átkozott lépcsőket!",
	["nodroneuncurse"] = "Drónok NEM fognak helyreállítani átkozott lépcsőket!",
	["dronemove"] = "Drónok meg fognak mozgatni lépcsőket alap módban!",
	["nodronemove"] = "Drónok NEM fognak megmozgatni és lépcsőket alap módban!",
	["dronespin"] = "Drónok meg fognak forgatni 180 fokban lépcsőket alap módban!",
	["nodronespin"] = "Drónok NEM fognak megforgatni 180 fokban lépcsőket alap módban!",
	["noinput"] = "Adjon meg egy értéket!",
	["nonumber"] = "Adjon meg egy számot!",
	["notrace"] = "Nem állíthatod át a toronynak a szintjeit egy verseny közben!",
	["notultimate"] = "Nem állíthatod át a toronynak a szintjeit miközben egy különleges varázslat folyamatban van!",
	["notregen"] = "Nem állíthatod át a toronynak a szintjeit miközben a lépcsőház újraépül!",
	["wait"] = "A torony szintjei változnak, légyszíves várj...",
	["duration"] = "Verseny időtartalma meg lett változtatva! (a jelenlegi versenyt nem befolyásolja)",
	["init"] = "Legelső Végtelen mód intervallum meg lett változtatva!",
	["reduction"] = "Végtelen mód Intervallum csökkentési ideje meg lett változtatva!",
	["mininf"] = "Legrövidebb végtelen mód intervallum meg lett változtatva!",
	["cooldown"] = "Esemény és Rig visszatöltődési ideje meg lett változtatva!",
	["speed"] = "Kicsi drónok sebessége meg lett változtatva!",
	["spin"] = "Kicsi drónok varázslási ideje meg lett változtatva!",
	["max"] = "Maximális lépcső szám meg lett változtatva!",
	["min"] = "Minimális lépcső szám meg lett változtatva!",
	["curse"] = "Drónok lépcsők megátkozásának esélye meg lett változtatva!",
	["block"] = "Drónok kereszteződések megátkozásának esélye meg lett változtatva!",

}

module.serverbroadcast = {
	["pranked"] = "%s átverésének áldozata lett %s!",
	["found"] = "%s megtalálta %s láthatatlan lépcsőjét!",
	["disco"] = "%s élvezi %s zenéjét.",
	["trap"] = "%s beleesett %s csapdájába.",
	["obby"] = "%s próbálja megcsinálni %s obbiját.",
	["default"] = "Drónok visszaváltottak alap módba.",
	["reg"] = "A lépcsőház újraépül.",
	["done"] = "A lépcsőház újraépült.",
	["union"] = "%s egybevált a szellemével!",
	["eliminated"] = "%s kiesett a versenyből.",
	["won"] = "%s nyerte meg a versenyt!",
	["nojoin"] = "A versenybe további játékosok már nem szállhatnak be.",
	["safety"] = "Toronynak a szintjei megváltoztak, ez a verseny nem fog elindulni.",
	["leader"] = "%s vezet!",
	["toolate"] = "Senki sem nyert időben",
	["over"] = "Versenynek vége!",
	["newrace"] = "%s kezdeményezett egy versenyt - versenyezz ellene!",
	["joined"] = "%s beszállt a versenybe!",
	["2min"] = "Senki sem akart %s ellen versenyezni!",
	["infstart"] = "Végtelen verseny elkezdődött!",

}

module.localfeedback = {

	["nomana"] = "Nincs elég Manád!",
	["notokens"] = "Nincs elég Zsetonod!",
	["unlocked"] = "Varázslat feloldva!",
	["maxmana"] = "Már tele vagy Manával!",
	["nopurchase"] = "Nem lehet Manát venni a kiképzésben!",
	["limitset"] = "Be van kapcsolva a Mana határoló - vásárlás megakadályozva.", --for refill mana
	["hasarchitect"] = "Már megvan az Architect osztály!",
	["haschameleon"] = "Már megvan a Chameleon osztály!",
	["hasspectre"] = "Már megvan a Spectre osztály!",
	["hasmana"] = "Már megvan a Nagyobb Tárhely!",
	["nomuggle"] = "Azt hitted, hogy Mugglenek van titkos különleges varázslatja, de valójában nincs.",
	["nonone"] = "Azt hitted, hogy Nonenak van titkos különleges varázslatja, de valójában nincs.",
	["nounlocks"] = "Szerezd meg az összes átlagos varázslatot, hogy hozzáférj a különleges varázslatokhoz!",
	["onetoken"] = "Meg lettél jutalmazva egy %s Varázs Zsetonnal!",
	["moretokens"] = "Meg lettél jutalmazva néhány %s Varázs Zsetonnal!",
	["music"] = "Zene sikeresen megváltoztatva.",
	["nomusic"] = "Nem sikerült a zenét betölteni.",
	["noteleport"] = "Teleportálás sikertelen!", 
	["norefresh"] = "Még nem tudsz újratölteni.",
	["failedjoin"] = "Nem sikerült csatlakozni a versenybe.",
	["nounion"] = "Most nem használhatod a Szellem Uniót.",

}

module.switchon = {

	["JOKER1"] = "Nem fogsz felfedni láthatatlan lépcsőket.",
	["WICKED1"] = "Nem fogsz aktiválni Wicked Rigeket.",
	["KEEPER1"] = "Nem fogsz aktiválni Keeper Rigeket.",
	["SPECTRE1"] = "Nem fogsz aktiválni Spectre Rigeket.",
	["HACKER1"] = "Mozgólépcső immunitás bekapcsolva.",
	["HACKER2"] = "Mozgólépcső és rig immunitás bekapcsolva.",
	["ARCHON1"] = "Csak felfelé vezető kapuk hatnak rád.",
	["DRIFTER1"] = "Nem fogsz aktiválni Drifter Rigeket.",
	["SPLICER1"] = "Nem fogsz aktiválni Splicer Rigeket.",
	["GREMLIN1"] = "Közelben lévő Dugóhúzók lezárva.",
	["NONE"] = "Különleges hatásokra való immunitás bekapcsolva.",

}

module.switchoff = {

	["JOKER1"] = "Fel fogsz fedni láthatatlan lépcsőket.",
	["WICKED1"] = "Aktiválni fogsz Wicked Rigeket.",
	["KEEPER1"] = "Aktiválni fogsz Keeper Rigeket.",
	["SPECTRE1"] = "Aktiválni fogsz Spectre Rigeket.",
	["HACKER1"] = "Mozgólépcső immunitás kikapcsolva.",
	["HACKER2"] = "Mozgólépcső és rig immunitás kikapcsolva.",
	["ARCHON1"] = "A lefelé vezető kapukon kívül az összes kapu hat rád.",
	["DRIFTER1"] = "Aktiválni fogsz Drifter Rigeket.",
	["SPLICER1"] = "Aktiválni fogsz Splicer Rigeket.",
	["GREMLIN1"] = "Közelben lévő Dugóhúzók feloldva.",
	["NONE"] = "Különleges hatásokra való immunitás kikapcsolva.",
}

local timedSpell = "%s megvarázsolt egy időzített varázslatot (%s)!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s az összes normális lépcsőre rárak Patron Riget!",
	["patronevent"] = "%s túlterheli a tornyot lépcsőkkel!",
	["patronaltevent"] = "%s az összes normális lépcsőt összezsugorítja!",

	["jokerrigevent"] = "%s az összes normális lépcsőre rárak Joker Riget!",
	["jokerevent"] = "%s az összes normális lépcsőt elrejti!",
	["jokeraltevent"] = "%s az összes normális lépcsőt megfordítotja!",

	["wickedrigevent"] = "%s az összes normális lépcsőre rárak Wicked Riget!",
	["wickedevent"] = "%s az összes normális lépcsőt elpusztította!",
	["wickedaltevent"] = "%s az ÖSSZES lépcsőt elpusztította!",

	["keeperrigevent"] = "%s az összes normális lépcsőre rárak Keeper Riget!",
	["keeperevent"] = "%s az összes normális lépcsőt átrendezi!",
	["keeperaltevent"] = "%s az összes különleges lépcsőt helyreállítja!",

	["spectrerigevent"] = "%s az összes normális lépcsőre rárak Spectre Riget!",
	["spectreevent"] = "%s az összes normális lépcsőt szellemesen átrendezi!",
	["spectrealtevent"] = "%s az összes normális lépcsőt megszellemesíti!",

	["hackerrigevent"] = "%s az összes normális lépcsőre rárak Hacker Riget!",
	["hackerevent"] = "%s az összes normális lépcsőt átváltoztatja Mozgólépcsővé!",
	["hackeraltevent"] = "%s az összes normális lépcsőt átváltoztatja Felfele Mozgólépcsővé!",

	["thiefrigevent"] = "%s az összes normális lépcsőre rárak Theif Riget!",
	["thiefevent"] = "%s az összes normális lépcsőt kilapítja!",
	["thiefaltevent"] = "%s létrehoz kitérőket az összes szinten!",

	["archonrigevent"] = "%s az összes normális lépcsőre rárak Archon Riget!",
	["archonevent"] = "%s az összes normális lépcsőre rárak egy véletlenszerű kaput!",
	["archonaltevent"] = "%s az összes normális lépcsőre rárak egy függőleges kaput!",

	["drifterrigevent"] = "%s az összes normális lépcsőre rárak Drifter Riget!",
	["drifterevent"] = "%s az összes normális lépcsőt véletlenszerűen megsodorja!",
	["drifteraltevent"] = "%s az összes normális lépcsőt megemeli!",

	["hereticrigevent"] = "%s az összes normális lépcsőre rárak Heretic Riget!",
	["hereticevent"] = "%s az összes normális lépcsőt szétszakítja!",
	["hereticaltevent"] = "%s az összes normális lépcsőt megátkozza!",

	["splicerrigevent"] = "%s az összes normális lépcsőre rárak Splicer Riget!",
	["splicerevent"] = "%s az összes normális lépcsőt összekapcsolja!",
	["spliceraltevent"] = "%s az összes normális lépcsőt szétválasztja!",

	["necromancerrigevent"] = "%s az összes normális lépcsőre rárak Necromancer Riget!",
	["necromancerevent"] = "%s túlterheli a tornyot Lelketlen lépcsőkkel!",
	["necromanceraltevent"] = "%s az összes normális lépcsőnek elveszi a lelkét!",

	["gremlinrigevent"] = "%s az összes normális lépcsőre rárak Gremlin Riget",
	["gremlinevent"] = "%s az összes normális lépcsőt átváltoztatja pörgő lépcsővé!",
	["gremlinaltevent"] = "%s túlterheli a tornyot Villamos lépcsőkkel!",

	["reaverrigevent"] = "%s az összes normális lépcsőre rárak Reaver Riget!",
	["reaverevent"] = "%s az összes normális lépcsőt átváltoztatja véletlen irányban lezárt Egyirányú Lépcsővé!",
	["reaveraltevent"] = "%s az összes normális lépcsőt átváltoztatja üveglépcsővé!",

	["newmode"] = "%s átváltotta a drónokat %s módra!",

	["chameleonrigevent"] = "%s az összes normális lépcsőre rárak Chameleon Riget!"
}

module.spells.extras = {

	["Prompt"] = "Nyomj meg egy varázslatot, hogy megtudd hogyan kell használni",
	["Title1"] = "Átlagos varázslatok",
	["Title2"] = "Egyedi különleges varázslatok",
	["Title3"] = "Megosztott varázslatok",
	["ManaCost"] = "%s Manába kerül", 
	["TokenCost"] = "%s Zsetonba kerül", 
	["Special"] = "Különleges Szükségletek: %s",
	["Execution"] = "Végrehajtás: %s",
	["Description"] = "Leírás: %s",
	["basic"] = "Átlagos",
	["ultimate"] = "Különleges",
	["unlock"] = "0 (3 hogy megszerezd)",
	["none"] = "Nincs különleges feltétele",
	["LeftHand"] = "Bal Kéz",
	["RightHand"] = "Jobb Kéz",
}

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "SZELLEM",
	["spirit"] = "SZELLEM", --only for spirit spectres
	["welcome"] = "ÜDVÖZÖLJÜK",
	["drones"] = "DRÓNOK",
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
	["stash"] = "LELTÁR",
	["backdoor"] = "MÁTRIX",
	["chamber"] = "KAMRA",
	["base"] = "BÁZIS",
	["circus"] = "CIRKUSZ",
	["shelter"] = "MENEDÉK",
	["haven"] = "MENNY",
	["study"] = "TANULÓHELY",
	["nether"] = "ALVILÁG",
	["guild"] = "REJTEKHELY",
	["nexus"] = "SZEKTA",
	["oasis"] = "OÁZIS",
	["hub"] = "KÖZPONT",
	["mirror"] = "TÜKÖR",
	["grave"] = "SÍR",
	["shack"] = "KUNYHÓ",
	["regen"] = "REGENERÁLÁS",
	["optimus"] = "OPTIMUS",
	["tutorial"] = "KIKÉPZÉS",--player mana is drained upon starting tutorial

}

module.gui.gameover.extras = {

	["possessed"] = "Tele van a hócipőm ezekkel a Heretickekkel!",
	["hypnotised"] = "Hol vagyok?",
	["reflected"] = "Engedj ki!",
	["new"] = "Új rang elérve - %s",

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
