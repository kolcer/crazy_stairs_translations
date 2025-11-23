--VERSION 4.1--
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
	["classic"] = "Klasszikus Tower",
	["pro"] = "Profi Torony",
	["custom"] = "Egyedi Torony",
	["noVR"] = "VR Nélküli Torony",

}

module.gui.serversettings = {

	["Drones"] = "DRÓN BEÁLLÍTÁSAI",
	["DronesReadOnly"] = "DRÓN BEÁLLÍTÁSAI (csak olvasható)",
	["DroneEnabled"] = "Drónok be/ki-kapcsolása.",
	["DroneFix"] = "Drónok helyreállíthatnak lépcsőket.",
	["DroneRemove"] = "Drónok eltávolíthatnak átkozott kereszteződéseket.",
	["DroneUnCurse"] = "Drónok helyreállíthatnak átkozott lépcsőket.",
	["DroneMove"] = "Drónok mozgathatnak lépcsőket alap módban.",
	["DroneSpin"] = "Drónok forgathatnak lépcsőket alap módban.",
	["DroneSpeed"] = "Drónok sebessége (szint/másodperc)",
	["DroneDelay"] = "Drónok forgásának időtartalma (másodperc)",
	["DroneMax"] = "Maximum lépcsők száma (a drónok csak el fognak pusztítani lépcsőket, ha ennél több lépcső van)",
	["DroneMin"] = "Minimun lépcsők száma (a drónok csak létre fognak hozni lépcsőket, ha ennél kevesebb lépcső van)",
	["DroneBlock"] = "Átkozott kereszteződés létrejövésének esélye (százalék)",
	["DroneCurse"] = "Átkozott lépcső létrejövésének vagy egy normális lépcső megátkozásának esélye (százalék)",

	["Tower"] = "TORONY BEÁLLÍTÁSAI",
	["TowerReadOnly"] = "TORONY BEÁLLÍTÁSAI (csak olvasható)",
	["InfMode"] = "Végtelen Mód (nem változtathatod meg egy verseny vagy újraépítés közben)",
	["CasualPlayers"] = "Átlagos játékosok varázsolhatnak",
	["Regeneration"] = "Lépcsőház azonnali újraépítése egy Wicked Tisztítás után (nem működik végtelen módban)",
	["EvenLevels"] = "Páros Szintek Lezárása",
	["OrbMoves"] = "Legfelső Szinten Lévő Gömb Pozíciót Változtat",
	["InfRegeneration"] = "Lépcsőház Azonnali újraépítése egy új szerveren, torony szintjeinek változtatása és egy végtelen verseny után.",
	["TowerLevels"] = "Torony szintjei (vagy aktív szintek végtelen módban). Nem változtathatod meg egy verseny vagy újraépítés közben.",
	["RaceDuration"] = "Verseny Maximális Időtartalma. Nem folyásólja be a mostani versenyt. (másodperc)",
	["InfStart"] = "Végtelen mód Legelső intervalluma. (2 szint jön létre egy intervallumban) (másodperc)",
	["InfReduction"] = "Végtelem mód intervallum csökkentése. (minden egyes intervallum ennyivel rövidebb) (másodperc)",
	["InfMin"] = "Végtelen mód legrövidebb intervalluma. (másodperc)",
	["CooldownTime"] = "Események és Rigek visszatöltődési ideje. (másodperc)",

}

module.gui.shop = {

	["chameleon"] = "Chameleonok osztályt tudnak változtatni mászás közben.",
	["spectre"] = "Spectre az egy teleportáláson alapuló osztály ami tökéletes ha egyedül játszól.",
	["mana"] = "Növeld a Mana tárolási kapacitásodat 10 Manával.",
	["architect"] = "Ezzel átváltozhatsz egy Architectté akkor is, ha nem használsz VR szemüveget.",
	["3tokens"] = "Szerezz meg egy varázslatot vagy varázsolj akár 3 különleges varázslatot.",
	["30tokens"] = "Szerezz meg tíz varázslatot vagy varázsolj akár 30 különleges varázslatot.",
	["300tokens"] = "Elég zseton arra, hogy kinyisd az összes varázslatot plusz 93 maradék zsetonnal.",

	["3TOKENS"] = "3 Multi Zseton (R$%d)",
	["30TOKENS"] = "30 Multi Zseton (R$%d)",
	["300TOKENS"] = "300 Multi Zseton (R$%d)",
	["SPECTRE PASS"] = "Spectre (R$%d)",
	["MANA PASS"] = "20 Mana Tárhely (R$%d)",
	["CHAMELEON PASS"] = "Chameleon (R$%d)",
	["ARCHITECT"] = "Architect (R$%d)",

}

module.gui.nospellsbar = {

	["nocasual"] = "CSAK VERSENYZŐK VARÁZSOLHATNAK",
	["possessed"] = "MEG LETTÉL SZÁLLVA! (Találj manát hogy felszabadulj)",
}


module.gui.stats = {

	["badges"] = "TELJESÍTMÉNYEID",
	["climbs"] = "MÁSZÁSAID",
	["total"] = "ÖSSZEVONT MÁSZÁSAID/NYERÉSEID",
	["best"] = "LEGJOBB IDŐD",
	["norecord"] = "[nincs rekordod]",

	["2124486274"] = "Szívasd meg a Készítőt",
	["1803533030753957"] = "Fekete Lyuk",
	["2124480173"] = "Wicked Árulása",
	["2124480172"] = "Joker Trükkje",
	["2124637294"] = "Drifter Útja",
	["2124517579"] = "Thief Rablása",
	["4464785885277417"] = "Splicer Csavarja",
	["2124480174"] = "Keeper Rendje",
	["2124637293"] = "Archon Kapcsolata",
	["2124517578"] = "Hacker Kihasználása",
	["707445818894757"] = "Gremlin's Spiral",
	["2124480171"] = "Patron Büszkesége",
	["1407551481032773"] = "Reaver Tükörképe",
	["2124637295"] = "Heretic Átka",
	["1885715582646280"] = "Necromancer Szertartása",
	["2124480175"] = "Muggle Logikája",
	["2124826874"] = "Teljes Kör",
	["2124529966"] = "Átugrottad A Kiképzést",
	["2124826880"] = "Megszálott Sors",
	["3731010929572663"] = "Hypnotizált Álom",
	["2124913225"] = "Architect Terve",
	["2124702954"] = "Rootkit Letöltve",
	["2124702945"] = "Pusztíts El Mindent",
	["2124702946"] = "Rend Helyreállítva",
	["128721686760593"] = "Körülöttem Forog A Világ.",
	["2124702952"] = "Én Inkább Megyek Lifttel",
	["3121101516427751"] = "Az Összefonódás",
	["2124702942"] = "Senkit Se Hagyok Hátra",
	["2124702950"] = "Illuminati Megerősítve",
	["2124702951"] = "Minden Az Enyém",
	["1165646024608180"] = "Egyek Vagyunk.",
	["2303731210592278"] = "Szellemek Is Emberek!",
	["2124702949"] = "Kiközösítve",
	["2124702943"] = "Szívatás Az Életem",
	["2124702948"] = "A Varázslatok Túlértékeltek",
	["2124826876"] = "Tökéletes Kör",
	["2124645341"] = "Titkos Teljesítmény",
	["2126893403"] = "Titkosabb Teljesítmény",
	["2126893411"] = "Legtitkosabb Teljesítmény",

}

module.gui.questions = {

	["cancel"] = "Abba akarod hagyni ezt a varázslatot? A zsetonokat nem kapod vissza."
	["tutorial"] = "Szeretnéd elvégezni a kiképzést?",
	["skip"] = "Szeretnéd átugrani a kiképzést?",
	["reshuffle"] = "El akarod kerülni a lépcsők ütközését? Ha nem, akkor az útban álló lépcsők el lesznek pusztítva.",

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

module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Drónok %s Mód",
	["refill"] = "Mana Túlterhelés (%s)",
	["union"] = "Szellem Unió (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Lépcső Létrehozása",
	["restore"] = "Gömb Hívása", 
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
	["glitch"] = "Hibás Lépcső",

	["hack"] = "Végtelen Mozgólépcső Csalás",
	["hackerevent"] = "Mozgólépcsők",
	["hackeraltevent"] = "Felfele Mozgólépcsők",

	--THIEF
	["steal"] = "Lépcső Ellopása",
	["stealabove"] = "Feletted Lévő Lépcső Ellopása",
	["place"] = "Lépcső Lerakása",
	["uppass"] = "Csigalépcső",
	["sidepass"] = "Kitérő Létrehozása",
	["drop"] = "Lépcső Elhagyása",

	["heist"] = "Rablás",
	["thiefevent"] = "Lapos Föld",
	["thiefaltevent"] = "Kitérő Az Összes Lépcső Mellé",

	--ARCHON
	["splitup"] = "Felfelé Vezető Kapu Létrehozása",
	["splitrotate"] = "Forgatott Kapu Létrehozása",
	["splitside"] = "Egyenes Kapu Létrehozása",
	["splitrandom"] = "Véletlenszerű Kapu Létrehozása",
	["cancelsplit"] = "Kapu Eltávolítása",
	["splitforward"] = "Felületen Lévő Kapu Létrehozása",

	["splitter"] = "Portálmánia",
	["archonevent"] = "Lépcsőkapu", 
	["archonaltevent"] = "Elosztás",

	--DRIFTER
	["indrift"] = "Szörf",
	["outdrift"] = "Lépcső Véletlenszerű Sodorítása",
	["updrift"] = "Lift",
	["diagdrift"] = "Felület Átlósan Megmozgósítása",
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
	["autodown"] = "Szakadás Felemelése",
	["autoup"] = "Szemben Lévő Lépcső Szakadásának Leemelése",

	["malediction"] = "Átkozódás",
	["hereticevent"] = "Szétszakadás",
	["hereticaltevent"] = "Bosszú",

	--SPLICER
	["twistup"] = "Alattad És Feletted Lévő Lépcső Összekapcsolása",
	["twistside"] = "Párhuzamos Lépcsők Összekapcsolása",
	["twistrotate"] = "Szomszédos Lépcsők Összekapcsolása",
	["canceltwist"] = "Csavart Lépcső Helyreállítása",
	["split2"] = "Lépcső Szétválasztása",
	["splitalt"] = "Lépcső Előrefelé Szétválasztása",

	["twister"] = "Csavaró",
	["splicerevent"] = "Összefonódás",
	["spliceraltevent"] = "Kettéválasztás",
	
	--NECROMANCER
	["createdual"] = "Kettős Lépcső Létrehozása",
	["copyplatform"] = "Szellem Felületének Lemásolása",
	["soulbridge"] = "Lélek Híd Létrehozása",
	["undeadabove"] = "Feletted Lévő Lépcső Ellélektelenítése",
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
	["reaveraltevent"] = "Egybeolvadás", 
	
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

	--CHAMELEON
	["ditch"] = "Keresztező Lépcsők",
	["warp"] = "Lépcső Görbítése",
	["chamdown"] = "Lépcső Lefelé Mozgatása",
	["chamdraw"] = "Lenti Felvonóhíd",
	["chamswap"] = "Szellemed Másolása (vizuális)",
	["chamdrawabove"] = "Fenti Felvonóhíd",

	--MISC (compatibility)
	["mugglereg"] = "A lépcsőház újraépül",
	["mugglecd"] = "Események és Rigek Újratöltődnek",
	["share"] = "Mana Megosztása (legalább 2 Mana szükséges)",

	--ARCHITECT
	["archpatron"] = "Létrehozás vagy Zsugorítás",
	["archarchon"] = "Kapu Létrehozása Lépcsőre Vagy Felületre",
	["archthief"] = "Lopás Vagy Lerakás",
	["archnecro"] = "Kettős Vagy Lélektelen Lépcső",
	["archhacker"] = "Mozgolépcső Vagy Becsalás",
	["archkeeper"] = "Mozgatás Vagy Helyreállítás",
	["archsplicer"] = "Összekapcsolás Vagy Helyreállítás",
	["archwicked"] = "Fal Vagy Pusztítás",
	["archgremlin"] = "Lépcső Vagy Egy Felület Pörgetése",
	["archjoker"] = "Hamis Vagy Megfordított Lépcső",
	["archdrifter"] = "Sodorítás Vagy Lift",
	["archspectre"] = "Fantom Vagy Szellemesített Lépcső",
	["archreaver"] = "Tükrös Vagy Egyirányú Lépcső",
	["archheretic"] = "Kereszteződés Vagy Lépcső Átkozása",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff
local union = "Ez egy időzített Szellem Unió varázslat. Ebben a módban át tudsz menni útban álló lépcsőkön és rá tudsz menni szellem, obbi, és hamis lépcsőkre. Különleges és riges lépcsők sem hatnak rád amikor rájuk lépsz. Azonban, nem tudsz varázsolni amikor ebben a módban vagy."
local overload = "Ez egy túltöltés varázslat. Minden hatodik másodpercben kapsz egy Manát egy percig (összesen 10 manát kapsz). Egyszerre csak egy túltöltés lehet aktív."
local timed = "Ez a varázslat időzített. "  -- do not remove space
local rig = "Ez egy Riges varázslat. Az összes normális lépcsőre egyesével rárak " -- do not remove space
local event = "Ez egy Esemény varázslat. Az összes normális " -- do not remove space
local fill = "Ez egy Kitöltő varázslat. Az összes üres nem átkozott kereszteződésben létre fog hozni egy lépcsőt. ", -- do not remove spaces
local mode = "Ez egy drón varázslat. Átváltoztatja a drónokat %s módba. Ebben a módban a drónok véletlenszerűen normális lépcsőkre ráraknak %s vagy %s. A különleges lépcsőket pedig helyreállítja. Ha lépcsők számai határokon kívül van, akkor a drónok létrehoznak vagy elpusztítanak lépcsőket."
local timedExtra = " Ha rendelkezel %s ranggal, akkor ez a varázslat 90 másodpercig fog tartani. Ez a varázslat visszatölti minden olyan %s a Manáját amelyek rendelkeznek %s ranggal." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Ez a varázslat létrehoz egy lépcsőt az általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul.",
	["restore"] = "Ez a varázslat odahívja a legfelső szinten lévő gömböt a választott felületre. Ha rendelkezel DEFENDER ranggal, akkor ez a varázslat 2 Manába fog kerülni. Ha rendelkezel SAVIOUR ranggal, akkor a gömb kétszer olyan gyorsan fog feléd jönni.",
	["split"] = "Ez a varázslat újraépíti az alattad lévő lépcsőt a másik irányba. Az újraépített lépcső normális lesz attól függetlenül, hogy milyen volt az eredeti lépcső.",
	["shrinkabove"] = "Ez a varázslat összezsugorítja a feletted lévő lépcsőt, így simán meg tudod kerülni és utána fel tudsz rá menni.",
	["link"] = "Ez a varázslat létrehoz egy energiahidat két felület között 60 másodpercig. A kapocs alján át lehet menni. Ha rendelkezel CREATOR ranggal, akkor a kapocs 120 másodpercig fog tartani.",
	["portal"] = "Ez a varázslat létrehoz egy portált, ami minden játékost egy szinttel feljebb visz. A portál 60 másodpercig tart. Ha rendelkezel PROTECTOR ranggal, akkor a portál 120 másodpercig fog tartani.",

	["summoner"] = timed ..  "Ezzel bármennyiszer hozhatsz létre lépcsőket egy percig." .. string.format(timedExtra,RankData.PATRON[7].name,"Patronnak",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."Patron Riget. Ha aktiválják, akkor a rálépett játékos kap egy Manát. Ha a játékos tele van Manával, akkor a Rig nem aktiválódik. Aktiválás után a lépcső megint normális lesz.",
	["patronevent"] = fill ..  "A létrehozott lépcsők normálisak lesznek.",
	["patronaltevent"] = event .. "lépcsőt összezsugorítja.",
	["patronmode"] = string.format(mode,"Patron","Patron Riget","összezsugorítja"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Ez a varázslat megfordítja az alattad lévő lépcsőt, így az alja a teteje lesz és fordítva. Az ilyen lépcsőket vissza lehet fordítani.",
	["flipabove"] = "Ez a varázslat megfordítja a feletted lévő lépcsőt, így az alja a teteje lesz és fordítva. Az ilyen lépcsőket vissza lehet fordítani.",
	["fake"] = "Ez a varázslat létrehoz egy hamis lépcsőt az általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Ha egy játékos (beleértve téged) megpróbál felmenni rajta, akkor az a játékos leesik, kivéve TRICKSTERek, ITek és Szellem Unió módban lévő játékosok.",
	["invisible"] =  "Ez a varázslat létrehoz egy láthatatlan lépcsőt az általad választott irányban. Azonban ez nem tud lépcsőket elpusztítani, tehát egy szabad kereszteződésbe kell raknod. Ha rendelkezel JESTER ranggal, akkor láthatod az összes láthatatlan lépcsőt, és lesz választásod, hogy ne fedd fel azokat.",
	["disco"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy diszkós lépcsővé. Ha egy játékos (beleértve téged) rálép, akkor megáll (általában kétszer) és táncol 5 másodpercig. Ha rendelkezel COMIC ranggal, akkor immunis leszel diszkó lépcsőkre.",
	["trap"] = "Ez a varázslat átváltoztatja az alattad lévő felületet egy csapóajtóvá 60 másodpercig. Ha egy játékos (beleértve téged) rálép, akkor az a játékos leesik az alatta lévő felületre. Ha rendelkezel JOKESTER ranggal, akkor láthatod hogy hol vannak csapdák. Ha rendelkezel TRICKSTER ranggal, akkor immunis leszel csapdákra.",

	["flipper"] = timed ..  "Ezzel bármennyiszer megfordíthatsz lépcsőket egy percig. Mindig a feletted lévő lépcső fordul meg. Ha nem lehet megfordítani, akkor az alattad lévő lépcső fordul meg."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokernek",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "Joker Riget. Ha aktiválják, akkor a lépcső átfordul.",
	["jokerevent"] = event .. "lépcsőt láthatatlanná változtatja.",
	["jokeraltevent"] = event .. "lépcsőt megfordítja.",
	["jokermode"] = string.format(mode,"Joker","Joker Riget","láthatatlanná változtatja."),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Ez a varázslat elpusztítja azt a lépcsőt, amin állsz. A többi varázslattal szemben, ez bármilyen lépcsőn működik. Ha rendelkezel VILE ranggal, akkor ez a varázslat ingyenes lesz. Ha rendelkezel VICIOUS ranggal, akkor kapsz 1 Manát amikor elpusztítasz bármilyen különleges lépcsőt. Ha rendelkezel ANNIHILATOR ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
	["destroyabove"] = "Ez a varázslat elpusztítja a feletted lévő lépcsőt. A többi varázslattal szemben, ez bármilyen lépcsőn működik. Ha rendelkezel VICIOUS ranggal, akkor kapsz 1 Manát amikor elpusztítasz bármilyen különleges lépcsőt. Ha rendelkezel ANNIHILATOR ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
	["bend"] = "Ez a varázslat felhajlítja az alattad lévő lépcsőt. Ezt arra lehet használni, hogy eljuss a feletted lévő felületre.",
	["damage"] = "Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy obbivá, úgy hogy eltávolítja a lépcsőfokok többségét. Mielőtt meg próbálnád csinálni, emlékezz, hogy minden ugrás után várni kell. Ha rendelkezel DESTROYER ranggal, akkor tudsz sétálni obbikon.",
	["flatten"] = "Ez a varázslat lehajlítja a szemben lévő lépcsőt. Ezt arra lehet használni, hogy eljuss a szemben lévő felületre.",
	["wall"] = "Ez a varázslat létrehoz egy falat meg egy kapcsot, amelyek 60 másodpercig tartanak. A falon átmenni és a kapocsra rámenni csak Wickedek és Szellem Unióban lévő játékosok tudnak.",

	["bender"] = timed .. "Ezzel bármennyiszer hajlíthatsz fel lépcsőket egy percig. A feletted és az alattad lévő lépcsők egyszere fognak felhajolódni, ha megvannak hozzá a feltételek."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickednek",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "Wicked Riget. Ha aktiválják, akkor a lépcső megsemmisíti önmagát. Ha rendelkezel DEVIL ranggal, akkor tudsz Wicked Rigeken járni, anélkül, hogy aktiválódna.",
	["wickedevent"] = event .. "lépcsőt elpusztítja. A lépcsőház ezután nem fog újraépülni.",
	["wickedaltevent"] = "Ez egy Esemény varázslat. Az összes lépcsőt elpusztítja kivétel nélkül. A lépcsőház ezután újra fog épülni.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Riget","meghajlítja"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Ez a varázslat megmozgatja vízszintesen az alattad lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Varázslás után, nyilak jelennek meg lépcsőkön, a választási irányokat mutatva. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["rotate"] = "Ez a varázslat megforgatja vízszintesen az alattad lévő lépcsőt és elpusztítja az útban álló lépcsőt. Varázslás után, nyilak jelennek meg lépcsőkön, a választási irányokat mutatva. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["moveup"] = "Ez a varázslat megmozgatja az alattad lévő lépcsőt felfelé, és elpusztítja az útban álló lépcsőt. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["movedown"] = "Ez a varázslat helyreállít bármilyen különleges lépcsőt. Ha a lépcső már normális, akkor ez a varázslat nem fog működni. Ha rendelkezel CAPTAIN ranggal, akkor ez a varázslat ingyenes lesz. Ha rendelkezel ADMIRAL ranggal, akkor helyre tudsz állítani Átkozott Lépcsőket és Átkozott Kereszteződéseket.",
	["rig"] = "Ez a varázslat egy véletlenszerű irányba mozgatja vagy forgatja a feletted lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők nem mehetnek lefelé. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["moverandom"] = "Ez a varázslat egy véletlenszerű irányba mozgatja vagy forgatja az alattad lévő lépcsőt, és elpusztítja az útban álló lépcsőt. Ha rendelkezel OPERATOR ranggal, akkor a lépcsők nem mehetnek lefelé. Ha rendelkezel CONTROLLER ranggal, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",

	["ascension"] = timed .. "Ezzel bármennyiszer mozgathatsz felfélé lépcsőket egy percig."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepernek",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "Keeper Riget. Ha aktiválják, akkor a lépcső egy véletlenszerű irányba elmozdul. Ha rendelkezel OPERATOR ranggal, akkor lépcsők, amiket te aktiválsz, azok nem mehetnek lefelé. Ha rendelkezel SENITEL ranggal, akkor tudsz Keeper Rigeken járni, anélkül, hogy aktiválódna.",
	["keeperevent"] = event .. "lépcsőt véletlenszerűen megmozgatja. Mielőtt végrehajtanád, lehet választani puha és erőltetett mód között. Puha módban, ez a varázslat véletlenszerű irányba mozgatja a lépcsőket, anélkül hogy elpusztítana bármit is. Erőltetett módban viszont az útban álló lépcsők elpusztúlnak.",
	["keeperaltevent"] = "Ez egy Esemény varázslat. Az összes különleges lépcsőt helyreállítja, még az átkozottakat is. A Tisztítással ellentétben ez nem fogja eltávolítani az átkozott kereszteződéseket.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Riget","véletlenszerűen megmozgatja"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Ez a varázslat létrehoz egy fantom lépcsőt az általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Fantom lépcsők gyorsan eltűnnek varázslás után.",
	["ghost"] = "Ez a varázslat megszellemesíti a feletted lévő lépcsőt. A szellemesített lépcsőkön át tudsz menni, de nem tudsz rájuk menni kivéve ha rendelkezel AETHER ranggal. Ha egy szellemesített lépcsőn használod ezt a varázslatot, akkor a lépcső normális lesz.",
	["shadow"] = "Ez a varázslat megszellemesíti az alattad lévő lépcsőt. A szellemesített lépcsőkön át tudsz menni, de nem tudsz rájuk menni kivéve ha rendelkezel AETHER ranggal. Ha rendelkezel PHANTOM ranggal, akkor ez a varázslat ingyenes lesz. Ha egy szellemesített lépcsőn használod ezt a varázslatot, akkor a lépcső normális lesz.",
	["horizontal"] = "Ez a varázslat elteleportál vízszintesen egy általad választott irányba. Át tudsz teleportálni nem átkozott útban álló lépcsőkön.",
	["random"] = "Ez a varázslat elteleportál téged véletlenszerűen egy ugyanazon a szinten lévő felületre.",
	["vertical"] = "Ez a varázslat elteleportál téged a feletted lévő felületre.",

	["traveller"] = timed ..  "Ezzel bármennyiszer elteleportálhatsz vízszintesen egy percig."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectrének",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "Spectre Riget. Ha aktiválják, akkor a lépcsőnek 50% esélye van, hogy megszellemesedik. Ha rendelkezel VISION ranggal, akkor tudsz Spectre rigeken járni, anélkül, hogy aktiválnád.",
	["spectreevent"] = event .. "lépcsőt véletlenszerűen megmozgatja szellemesen. Mielőtt végrehajtanád, lehet választani puha és erőltetett mód között. Puha módban, ez a varázslat véletlenszerű irányba mozgatja a lépcsőket, anélkül hogy elpusztítana bármit is. Mozgás közben a lépcsők megszellemesednek. Erőltetett módban viszont az útban álló lépcsők elpusztúlnak.",
	["spectrealtevent"] = "Ez egy esemény varázslat. Ez a varázslat megszellemesíti az összes normális lépcsőt. Ha rendelkezel AETHER ranggal, akkor rá tudsz menni szellemesített lépcsőkre. Szellem Unióval is rá tudsz menni szellemesített lépcsőkre.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Riget","véletlenszerűen megmozgatja puhán és szellemesen"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Ez a varázslat elteleportál téged az általad választott irányba. Nem tudsz lépcsőkön keresztül teleportálni. Ha rendelkezel CRACKER ranggal, akkor 50%-kal gyorsabb lesz a varázslat.",
	["blink"] = "Ez a varázslat körbe teleportál téged egy olyan útban álló lépcsőn, ami nem átkozott. Ha a feletted lévő lépcső nem állja el az utadat, akkor ez a varázslat nem fog működni. Ha rendelkezel EXPLOITER ranggal, akkor 50%-kal gyorsabb lesz a varázslat.",
	["swap"] = "Ez a varázslat odateleportál téged, ahol a szellemed van. A legtöbb alapvető varázslattal szemben, ezt bárhol végre lehet hajtani.",
	["slide"] = "Ez a varázslat átváltoztatja a lépcsőt egy mozgólépcsővé. Választhatsz Felfelé vagy Lefelé mozgólépcsők közül. Ha rendelkezel SCRIPTER ranggal, akkor lesz választásod arra, hogy immunis legyél a mozgólépcsőkre.",
	["slideup"] = "Ez a varázslat becsal egy lépcsőt az általad választott irányban. Csak akkor fog a varázslat működni, ha a varázslás irányában van egy másik irányba álló lépcső. Becsalt lépcső lehet bármilyen nem átkozott lépcső és helyre fog állni amikor becsalod.",
	["glitch"] = "Ez a varázslat meghibásítja a lépcsőt, és elteleportál téged és a lépcsőt egy másik helyre ugyanazon a szinten. Ha rendelkezel ZERO ranggal, akkor ha a legfelső szinten használod ezt a varázslatot, akkor a lépcső a gömb mellé fog teleportálódni.",

	["hack"] = timed .. "Ezzel bármennyiszer átváltoztathatsz lépcsőket felfelé vagy lefelé mozgólépcsőkké egy percig. Ha van felette nem átkozott útban álló lépcső, akkor az a lépcső elpusztul." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackernek",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "Hacker Riget. Ha aktiválják, akkor a rálépett játékos és a lépcső elteleportálódik egy másik helyre ugyanazon a szinten. Csak egy játékost teleportál el. Ha rendelkezel REAPER ranggal, akkor tudsz Hacker rigeken járni, anélkül, hogy aktiválnád.",
	["hackerevent"] = event .. "lépcsőt átváltoztatja felfelé vagy lefelé mozgólépcsővé.",
	["hackeraltevent"] = event ..  "lépcsőt átváltoztatja felfelé mozgólépcsővé",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Riget","átváltoztatja felfelé vagy lefelé mozgólépcsővé"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Ez a varázslat ellopja az alattad lévő lépcsőt. A többi nem lopós alapvető varázslat varázsolásához el kell lopnod egy lépcsőt. Ha rendelkezel HIJACKER ranggal, akkor bármilyen nem átkozott lépcsőt el tudsz lopni. Ha rendelkezel OUTLAW ranggal, akkor egyszerre 2 lépcső lehet nálad.",
	["stealabove"] = "Ez a varázslat ellopja a feletted lévő lépcsőt. A többi nem lopós alapvető varázslat varázsolásához el kell lopnod egy lépcsőt. Ha rendelkezel HIJACKER ranggal, akkor bármilyen nem átkozott lépcsőt el tudsz lopni. Ha rendelkezel OUTLAW ranggal, akkor egyszerre 2 lépcső lehet nálad.",
	["place"] = "Ez a varázslat visszarakja a lépcsőt az általad választott irányban. Azonban ez nem pusztítja el az útban álló lépcsőt, tehát csak szabad kereszteződésekbe rakhatsz lépcsőket.",
	["uppass"] = "Ez a varázslat létrehoz egy csigalépcsőt egy lopott lépcsőből. Csak külső felületeken lehet létrehozni és ottmarad egy percig. Ha rendelkezel BANDIT ranggal, akkor a csigalépcső két percig marad ott.",
	["sidepass"] = "Ez a varázslat létrehoz egy kitérőt egy lopott lépcsőből. Az általad választott irányban létrejön, és ottmarad egy percig. Ha rendelkezel ROBBER ranggal, akkor a kitérő két percig marad ott.",
	["drop"] = "Ez a varázslat elhagy lépcsőket ingyen. De ehhez kell egy szabad kereszteződés. Az elhagyott lépcsők laposak.",

	["heist"] = timed .. "Ezzel bármennyiszer rakhatsz le lépcsőket egy percig. A sima lerakás varázslattal szemben, ez a varázslat elpusztítja a keresztező lépcsőket, mert ebben a módban automatikusan lopod el a lépcsőket." .. string.format(timedExtra,RankData.THIEF[7].name,"Thiefnek",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "Thief Riget. Ha aktiválják, a rálépett játékostól ellopsz egy manát, amit te megkapsz. Ha te tele vagy Manával, akkor nem kapsz Manát. Akkor se kapsz Manát, ha osztályt váltasz.",
	["thiefevent"] = event .. "lépcsőt kilapítja.",
	["thiefaltevent"] = "Ez egy Esemény varázslat. Ez létrehoz egy kitérést az összes belső északi és déli kereszteződésben. Ha a kereszteződésben van egy átok, akkor ott nem jön létre kitérés.",
	["thiefmode"] = string.format(mode,"Thief","Thief Riget","ellop és lerak lépcsőket"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és az általad választott egyenes és vízszintes irányban lévő lépcsőt egy Kapuval. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz vízszintes kapukon.",
	["splitrotate"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és az általad választott forgatott és vízszintes irányban lévő lépcsőt egy Kapuval. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz vízszintes kapukon.",
	["splitup"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és a feletted lévő lépcsőt egy Kapuval. Ha nincs a lépcső felett lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel SAGE ranggal, akkor a lefelé vivő kapuk nem visznek le.",
	["cancelsplit"] = "Ez a varázslat eltávolít bármilyen lépcsőn lévő Kapupárt. Ha rendelkezel DISCIPLE ranggal, akkor eltávolíthatsz felületen lévő kapukat is. Ha rendelkezel SCHOLAR ranggal, akkor ez a varázslat ingyenes lesz.",
	["splitrandom"] = "Ez a varázslat összekötteti az alattad lévő lépcsőt és egy bármilyen nem átkozott kereszteződést egy Kapuval. Ha ott nincs lépcső, akkor létrejön egy. Ha rendelkezel PRODOGY ranggal, akkor felülírhatsz kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz vízszintes kapukon.",
	["splitforward"] = "Ez a varázslat összeköttet kettő általad választott szomszédos felületet egy kapuval. Az útban lévő lépcső nem zavarja a kapcsolatot. Ha rendelkezel DISCIPLE ranggal, akkor eltávolíthatsz felületen lévő kapukat. Ha rendelkezel ILLUMINATI ranggal, akkor átmehetsz az ilyen kapukon.",

	["splitter"] = timed .. "Ezzel bármennyiszer hozhatsz létre Felület Kapukat egy percig." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archonnak",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "Archon Riget. Ha aktiválják, akkor a rálépett játékost a haladott irányba elteleportálja, és átkel az útban álló lépcsőn. Aktiválás után, a lépcső megint normális lesz.",
	["archonevent"] = event .. "lépcsőt összekötteti véletlenszerű kapukkal.",
	["archonaltevent"] = event .. "lépcsőt összekötteti függőleges kapukkal.",
	["archonmode"] = string.format(mode,"Archon","Archon Riget","létrehoz véletlenszerű kapupárokat"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Ez a varázslat létrehoz egy átmeneti szörfdeszkát, ami átvisz téged és másokat egy felületre egy általad választod irányban. Nem lehet útban álló lépcsőkön keresztül szörfölni.",
	["updrift"] = "Ez a varázslat létrehoz egy liftet az alattad és a feletted lévő felületek között. A felületek egy idő után helyreállnak. Ha rendelkezel VAGABOND ranggal, akkor a liftek felgyorsulnak. Ha rendelkezel TRAVELLER ranggal, akkor fel tudod emelni a liftet a második szintre. Ha rendelkezel STRIDER ranggal, akkor fel tudod emelni a liftet a harmadik szintre.",
	["diagdrift"] = "Ennek a varázslatnak kettő módja van: Létrehoz egy mozgó felületet az alattad lévő felület és az általad választott átlósan szomszédos felület között. Az ilyen felületek helyreállnak 7 kör után. VAGY: Ha a játékterületen kívülre varázsolod, ez a varázslat létrehoz egy mozgó felületet ami tesz egy kört a Torony körül.",
	["spin"] = "Ez a varázslat megforgatja az alattad lévő lépcsőt 180 fokkal. Ha rendelkezel NOMAD ranggal, akkor képes leszel megforgatni sodródott lépcsőket.",
	["outdrift"] = "Ez a varázslat véletlenszerűen elsodorítja az alattad lévő lépcsőt, és elkezd haladni egy azonos szinten lévő véletlenszerű üres kereszteződés felé. Ha rendelkezel NOMAD ranggal, akkor képes leszel megforgatni sodródott lépcsőket.",
	["driftabove"] = "Ez a varázslat elsodorítja a feletted lévő lépcsőt. Ez nem annyira véletlenszerű mint az előző varázslat, és nem is megy el egy másik kereszteződésbe. Miután el lett sodorítva, át mehetsz alata és utána rámehetsz.",

	["riser"] = timed .. "Ezzel bármennyiszer csinálhatsz lifteket egy percig. Meg is emelheted a lifteket ha elég nagy a rangod." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifternek",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "Drifter Riget. Ha aktiválják, akkor a lépcső megfordul. Ha rendelkezel VOYAGER ranggal, akkor tudsz Drifter rigeken járni, anélkül, hogy aktiválnád.",
	["drifterevent"] = event .. "lépcsőt véletlenszerűen elsodorítja.",
	["drifteraltevent"] = event .. "lépcsőt megemeli.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Riget","véletlenszerűen elsodorítja"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,

	--HERETIC
	["createcursed"] = "Ez a varázslat létrehoz egy átkozott lépcsőt egy általad választott irányban. Ha van útban egy lépcső, akkor az a lépcső elpusztul. Ha rendelkezel BANISHED ranggal, akkor elpusztíthatsz útban álló átkozott lépcsőket.",
	["curse"] = "Ez a varázslat megátkozza az alattad lévő lépcsőt. Ha egy átkozott lépcsőn használod ezt a varázslatot, akkor az a lépcső normális lesz.",
	["curseabove"] = "Ez a varázslat megátkozza a feletted lévő lépcsőt. A lépcső felemelkedik egy pillanatra, hogy át tudj menni alatta. Ha egy átkozott lépcsőn használod ezt a varázslatot, akkor az a lépcső normális lesz.",
	["curseinter"] = "Ezzel a varázslattal átvilloghatsz egy szomszédos felületre, ha nincsen az utadban lépcső. A varázslás után a kereszteződés megátkozódik, tehát a többi játékos nem tudja használni. Ha rendelkezel INDIFEL ranggal, akkor használhatod ezt a varázslatot egy már átkozott kereszteződésben, és eltünteti róla az átkot.",
	["autodown"] = "Ez a varázslat létrehoz és megemel egy különleges tükrözött szakaszt a lépcső alsó részéből. Csak szellem uniók és Hereticek mehetnek rá arra a szakaszra.",
	["autoup"] = "Ez a varázslat létrehoz egy különleges tükrözött szakaszt a szemben lévő lépcső felső részéből. A normális fokok le lesznek eresztve. Csak szellem uniók és Hereticek mehetnek rá arra a szakaszra.",

	["malediction"] = timed .. "Ezzel bármennyiszer hozhatsz létre átkozott lépcsőket egy percig." .. string.format(timedExtra,RankData.HERETIC[7].name,"Hereticnek",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "Heretic Riget. Ha aktiválják, a rálépett játékos meg lesz szállva. A játékosnak Manát kell találnia, hogy fel legyen szabadítva. A megszállott játékosok nem tudnak varázsolni. Ha rendelkezel UNBELIEVER ranggal, akkor immunis leszel erre a rigre. Ha rendelkezel EXILED ranggal, akkor kapsz 1 Manát amikor egy játékost megszállnak.",
	["hereticevent"] = event .. "lépcsőre rárak felemelt vagy leengedett szakadást.",
	["hereticaltevent"] = event .. "lépcsőt megátkozza.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Riget","véletlenszerűen szétszakítja"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Ez a varázslat megcsavarja a lépcsőt jobbra vagy balra, és összekötteti az ott lévő lépcsővel. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázslatot már megcsavart lépcsőkön.",
	["twistrotate"] = "Ez a varázslat megcsavarja a lépcsőt egy forgatott irányban, és összekötteti az ott lévő lépcsővel. Ha a választott irányban nincs lépcső, akkor létrejön egy. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázslatot már megcsavart lépcsőkön.",
	["twistup"] = "Ez a varázslat megcsavarja a feletted lévő lépcsőt meg nagy eséllyel az alattad lévőt is (ha normális vagy riges), és lesz belőlük egy 2 szintes csigalépcső. Ha rendelkezel TRANSFORMER ranggal, akkor használhatod ezt a varázslatot már megcsavart lépcsőkön.",
	["canceltwist"] = "Ez a varázslat helyreállít bármilyen csavart lépcsőt. Ha rendelkezel COMBINER ranggal, akkor ezt a varázslatot használhatod arra, hogy helyreállíts a felülethez nem kapcsolódó lépcsőket. Ha rendelkezel MIXER ranggal, akkor ez a varázslat ingyenes lesz. Ha rendelkezel OPTIMUS ranggal, akkor kapsz 1 Manát amikor helyreállítasz egy csavart lépcsőt.",
	["split2"] = "Ez a varázslat széthasítja a lépcsőt kettő szemben álló lépcsőkké, így elérve négy felületet.",
	["splitalt"] = "Ez a varázslat széthasítja a lépcsőt kettő elválasztott lépcsőkké, így könnyen ki tudod kerülni az útban álló lépcsőt - még akkor is, ha a lépcső átkozott.",

	["twister"] = timed .. "Ezzel bárminnyiszer széthasíthatsz lépcsőket egy percig. A hasítás típusa automatikusan a leghasznosabb hasítástípus lesz." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicernek",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "Splicer Riget. Ha aktiválják, akkor összeköttetődik egy véletlen irányban lévő lépcsővel. Ha rendelkezel ASSEMBLER ranggal, akkor tudsz Splicer rigeken járni, anélkül, hogy aktiválnád.",
	["splicerevent"] = event .. "lépcsőt véletlenszerűen összekötteti.",
	["spliceraltevent"] = event .. "lépcsőt kétirányba kettéhasítja.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Riget","véletlenszerűen összekötteti"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,
	
	--NECROMANCER
	["createdual"] = "Ez a varázslat létrehoz egy lépcsőt nálad és a szellemednél, hogy a szellemedhez közel álló játékosok is tudják használni. Ha rendelkezel SKELETON ranggal, akkor a szellemed figyelmen kívül hadja az átkozott lépcsőket és kereszteződéseket. Ha rendelkezel LICH ranggal, akkor el tudsz pusztítani útban álló lépcsőket.",
	["copyplatform"] = "Ez a varázslat rámásolja a szellemed felületéről a lépcsőket a tiédre és fordítva. A lépcsők tükrözve lesznek másolva és normálisak. Ha rendelkezel REVENANT ranggal, akkor ez a varázslat eltávolít átkokat ha kell.",
	["soulbridge"] = "Ez a varázslat létrehoz egy forgó kapcsot az alattad lévő felület és az általad választott átlósan szomszédos felület között. A te szellemed is létrehoz egy kapcsot az ellentétes irányban. Necromancer kapcsok automatikusan forognak. Ha a pálya közepén hozol létre egy kapcsot, akkor a másik kapoccsal alakít egy 'X' formát.",
	["undeadabove"] = "Ez a varázslat elveszi a feletted lévő és a szellemed felett lévő lépcsőnek a lelkét. Ha a szellemed felett nincs lépcső, akkor létrejön egy. Ezeken a lépcsőkön keresztül lehet menni és utána fel lehet menni rajtuk, de elhalványulnak és eltűnnek egy perc után.",
	["revival"] = "Ez a varázslat létrehoz egy 'újraéledési' pontot ahol a szellemed van. Ha a pont alá esnél, akkor a ponthoz fogsz teleportálódni. Ez a pont eltűnik, ha elhasználod, befejezel egy mászást, leraksz egy másik pontot vagy ha osztályt váltasz Chameleonként. Ha rendelkezel ACOLYTE ranggal, akkor ha a legfelső szinten leraksz egy pontot, akkor a gömb ahhoz a ponthoz fog menni.",
	["regen"] = "Ez a varázslat ad neked Manát egy mászásban egyszer. 6 manát fogsz kapni, ha elhasználod. A szellemedhez közel álló játékosok is kapnak 3 Manát. Ha rendelkezel DEATHBRINGER ranggal, akkor te 10 Manát kapsz és a szellemedhez közel álló játékosok pedig 5 Manát kapnak.", 
	
	["duality"] = timed .. "Ezzel bármennyiszer hozhatsz létre Kettős Lépcsőket egy percig. Az útban álló lépcsők el lesznek pusztítva rangtól függetlenül." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancernek",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "Necromancer Riget. Ha aktiválják, akkor a lépcső elveszíti a lelkét és egy idő után eltűnik.",
	["necromancerevent"] = fill ..  "A létrehozott lépcsőknek nincs lelkük, és eltűnnek egy perc után.",
	["necromanceraltevent"] = event .. "lépcsőnek elveszi a lelkét. Az ilyen lépcsők eltűnnek egy perc után.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Riget","elveszi a lelkét"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "Ez a varázslat létrehoz egy lépcsőt egy tükörrel a közepében. Ha átmész a tükrön, akkor egybeválsz a Szellemeddel. Ha még egyszer átmész a tükrön, akkor szétválsz a szellemeddel. Ha rendelkezel POLTERGEIST ranggal, akkor el tudsz pusztítani útban álló lépcsőket. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre de a szellemed nem fog Manát gyűjteni.",
	["bigmirror"] = "Ez a varázslat létrehoz egy hatalmas tükröt ez egész szinten 10 másodpercig. Csak olyan játékosok léphetnek rá, amelyek egybeváltak a szellemükkel. Ha elmész a tükörtől, akkor szétválsz a szellemedtől. El fog távolítani minden kicsi tükröt a szintről. Ha rendelkezel PRESENCE ranggal, akkor a tükör 15 másodpercig fog tartani.",
	["smallmirror"] = "Ez a varázslat létrehoz egy kicsi tükröt az általad választott irányban 6 másodpercig. Csak olyan játékosok léphetnek rá, amelyek egybeváltak a szellemükkel. Ha elmész a tükörtől, akkor szétválsz a szellemedtől. Ha rendelkezel PRESENCE ranggal, akkor a tükör 9 másodpercig fog tartani.",
	["outermirror"] = "Ez a varázslat létrehoz egy tükröt a külső irányban egy tükörpárral a pálya másik oldalán. Csak külső felületeken lehet használni. Játékosok, amelyek átmennek a tükrön egybeválnak a szellemükkel és átteleportálódnak a torony másik felén lévő tükörhöz. A tükör eltűnik 1 perc után. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre de a szellemed nem fog Manát gyűjteni.",
	["merge"] = "Ezzel a varázslattal manuálisan egybeválhatsz a Szellemeddel. Ha rendelkezel REPLICA ranggal, akkor ezzel a varázslattal szétválhatsz a szellemeddel. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre de a szellemed nem fog Manát gyűjteni.",
	["oneway"] = "Ez a varázslat átváltoztatja a lépcsőt egy egyirányú átjáróvá, és közben egyesíti a játékosokat a szellemükkel, ha jó irányba haladnak. Megválaszthatod, hogy melyik irányt zárod le. Ha rendelkezel ILLUSION ranggal, akkor átmehetsz a lezárt oldalon is. Miközben egybe vagy válva a szellemeddel, rá tudsz menni Kicsi és Hatalmas tükrökre de a szellemed nem fog Manát gyűjteni.",

	["reflection"] = timed .. "Ezzel bármennyiszer hozhatsz létre Hatalmas Tükröket egy percig. A szellemeddel automatikusan egybe fogsz válni." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavernek",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "Reaver Riget. Ha aktiválják, akkor a lépcső átváltozik egy egyirányú lépcsővé, amelynek véletlenszerűen le van zárva az egyik oldala. Ha rendelkezel WIGHT ranggal, akkor tudsz Reaver rigeken járni, anélkül, hogy aktiválnád.",
	["reaverevent"] = event .. "lépcsőt átváltoztatja véletlenszerűen lezárt egyirányú lépcsővé",
	["reaveraltevent"] = event .. "lépcsőt átváltoztatja fentről lezárt egyirányú lépcsővé",
	["reavermode"] = string.format(mode,"Reaver","Reaver Riget","átváltoztatja véletlenszerűen lezárt egyirányú lépcsővé"),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	["tram"] = "Ez a varázslat létrehoz egy Villamos Lépcsőt az általad választott irányban. A Villamos lépcső csak fele olyan hosszú mint egy normális lépcső, és miután létrehozod automatikusan elutazik a célba vett felületre. A lépcső vissza fog utazni, ha ráugrasz varázslat varázslása nélkül. Ha rendelkezel FIEND ranggal, akkor visszahozhatsz Villamosokat úgy, hogy ráugrasz a hozzá tartozó felületre.",
	["screwdown"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy lefelé irányuló dugóhúzóvá. Szinte lehetetlen felmenni az ilyen lépcsőkön. Ha rendelkezel DAEMON ranggal, akkor egy kapcsolóval tudod beállítani, hogy forogjon-e a dugóhúzó. (nem fog működni, ha van egy másik Daemon a közelben).",
	["screwup"] = "Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy felfelé irányuló dugóhúzóvá. Szinte lehetetlen lemenni az ilyen lépcsőkön. Ha rendelkezel DAEMON ranggal, akkor egy kapcsolóval tudod beállítani, hogy forogjon-e a dugóhúzó. (nem fog működni, ha van egy másik Daemon a közelben).",
	["revolve"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy pörgő lépcsővé. A lépcső a Z tengelyen fog pörögni. Megválaszthatod a pörgetés irányát. A lépcső megáll mindegyik 180 fokos fordulat után.", 
	["trapstairs"] = "Ez a varázslat átváltoztatja az alattad lévő lépcsőt egy csapóajtóvá. Ha aktiválják, akkor el kezd forogni az X tengelyen, és leejti magáról az összes figyelmetlen játékost. Ha rendelkezel GOBLIN ranggal, akkor láthatod hogy hol vannak Gremlin csapdák. Ha rendelkezel DIABLO ranggal, akkor immunis leszel a Gremlin csapdákra.",
	["spinplatform"] = "Ez a varázslat megpörgeti az egész felületet és a rajta lévő összes lépcsőt (beleértve az átkozott lépcsőket is), az általad választott irányban. A felület megáll minden egyes 90 fokos fordulat után. A felület megint normális lesz, miután tesz egy teljes 360 fokos kört.",
	
	["tramway"] = timed .. "Ezzel bármennyiszer hozhatsz létre Villamos Lépcsőket egy percig." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlinnek",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "Gremlin Riget. Ha aktiválják, akkor az a játékos aki aktiválta hipnotizálva lesz. A játékosnak Manát kell találnia, hogy fel legyen szabadítva. Hipnotizált játékosok irányításai meg vannak fordítva. Ha rendelkezel HOGOBLIN ranggal, akkor immunis leszel erre a rigre.",
	["gremlinevent"] = event .. " lépcsőt átváltoztatja véletlenszerű irányba pörgő lépcsővé.", 
	["gremlinaltevent"] = fill .. "A létrehozott lépcsők Villamos lépcsők lesznek.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Riget","átváltoztatja véletlenszerű irányba pörgő lépcsővé."),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "Ez régebben egy Keeper varázslat volt, mielőtt el lett utasítva. Ez a varázslat egy normális vagy Riges lépcsőt lejjebb visz egy szinttel. Ha megvan a Keepernek a Captain rang, akkor tudsz mozgatni bármilyen nem átkozott lépcsőt.",
	["chamswap"] = "Ez régebben egy Necromancer varázslat volt, mielőtt el lett utasítva. Ez a varázslat lemásolja a szellemedet, de a Reaver egybeválássával ellentétben a te szellemed aktív marad. Ez a varázslat nincs befejezve és haszontalan.",
	["chamdraw"] = "Ez régebben egy Heretic varázslat volt, mielőtt el lett utasítva. Ez a varázslat átváltoztatja a lépcsőt egy felvonóhíddá, tehát így lehetetlen lemenni a lépcsőn kivéve ha egy másik játékos aktiválja a hidat a lépcső aljáról.",
	["ditch"] = "Ez régebben egy Theif varázslat volt, mielőtt el lett utasítva. Ez a varázslat átváltoztatja a lépcsőt két kereszteződő lépcsőkké.",
	["chamdrawabove"] = "Ez régebben egy Heretic varázslat volt, mielőtt el let utasítva. Ez a varázslat átváltoztatja a feletted lévő lépcsőt egy felvonóhíddá, ezért utána átmehetsz alattuk. Felmenni rajta lehetetlen, kivéve ha egy másik játékos aktiválja a hidat a lépcső tetejéről. A régi Unbeliever rang már nem aktív és az automatikus hídleengedés sem lehetséges.",
	["warp"] = "Ez régebben egy Wicked varázslat volt. Ez a varázslat meggörbít egy normális vagy riges lépcsőt vissza a felületre.",

	["chameleonrigevent"] = rig .. "Chameleon Riget. Ha aktiválják, akkor történik egy véletlenszerű hatás bármelyik másik rigből.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Riget","varázsol egy véletlenszerű varázslatot egy másik módból"), 
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

	--MISC
	["share"] = "Ezzel a varázslattal megoszthatod a Manádat egy közelben lévő játékossal. Egyszerre csak egy Manát tudsz megosztani, és kell legalább kettő Mana hogy ezt meg tudjad tenni.",
	
	--ARCHITECT
	["archpatron"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy normális lépcsőt. Ha egy normális vagy riges lépcsőn használod, akkor az össze fog zsugorodni.",
	["archarchon"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy kapupárt a két felület között. Ha egy normális vagy riges lépcsőn használod, akkor azt az általad választott irányban lévő lépcsőt egy kapupárral össze fogja köttetni.",
	["archthief"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor le fogsz rakni egy normális lépcsőt. Ha egy normális vagy riges lépcsőn használod, akkor azt el fogod lopni.",
	["archnecro"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni kettős lépcsőket. Ha egy normális vagy riges lépcsőn használod, akkor az át fog változtatni lélektelen lépcsővé.",
	["archhacker"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor be fogsz csalni egy lépcsőt, ha van ott egy keresztező lépcső. Ha egy normális vagy riges lépcsőn használod, akkor az át fog változni egy mozgólépcsővé, ami az általad választott irányban halad.",
	["archkeeper"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor a hozzá tartozó lépcsőt helyre fogja állítani. Ha egy normális vagy riges lépcsőn használod, akkor az meg fog mozdulni az általad választott irányban.",
	["archsplicer"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor a hozzá tartozó csavart lépcsőt helyre fogja állítani. Ha egy normális vagy riges lépcsőn használod, az meg fog csavaródni az általad választott irányban.",
	["archwicked"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy kapocs nélküli Wicked falat. Ha egy bármilyen nem átkozott lépcsőn használod, akkor az el fog pusztulni.",
	["archgremlin"] = "Ezt a varázsigét ha egy felületen használod, akkor azt a felületet meg fogja pörgetni az általad választott irányban. Ha egy normális vagy riges lépcsőn használod, akkor azt átváltoztatja egy abban az irányban pörgő lépcsőve.",
	["archjoker"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy hamis lépcsőt. Ha egy normális, megfordított vagy riges lépcsőn használod, akkor azt megfordítja vagy visszafordítja.",
	["archdrifter"] = "Ezt a varázsigét ha egy felületen használod, akkor az át fog változni egy liftté. Ha egy normális vagy riges lépcsőn használod, akkor azt egy véletlenszerű irányba el fogja sodorítani.",
	["archspectre"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy fantom lépcsőt. Ha egy normális, szellemesített vagy riges lépcsőn használod, akkor azt meg fogja szellemesíti vagy helyre fogja állítani.",
	["archreaver"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor ez létre fog hozni egy tükrös lépcsőt. Ha egy normális vagy riges lépcsőn használod, akkor az át fog változni az általad választott irányban lezárt egyirányú lépcsőve.",
	["archheretic"] = "Ezt a varázsigét ha egy felületnek a nyilán használod, akkor azt a kereszteződést ha üres, meg fogja átkozni. Ha egy normális, átkozott vagy riges lépcsőn használod, akkor azt meg fogja átkozni vagy le fogja venni róla az átkot.",

}
local CommonPerksInsertALignment = {
	[1] = "Ez a kezdő %s rangod.",
	[2] = "Kapsz bónusz Manát amikor a drónok %s módban vannak.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Ha valaki varázsol egy %s varázslatot, akkor a Manád újratöltődik.",
	[7] = "Az időzített varázslatod (%s) 50%%-kal tovább tart (90s).",
}



module.gui.ranks = {

	["title"] = "A RANGOD",

	--none
	["none_1"] = "Nem választottál egy osztályt!",
	["none_2"] = "Hogy varázsolj, ahhoz MUSZÁJ választanod egy osztályt!",

	--possessed
	["possessed_1"] = "Meg lettél Szállva!",
	["possessed_2"] = "Találj Manát vagy Patron Riget hogy felszabadulj.",
	["possessed_3"] = "Megszállottként nem használhatod a varázslataidat és a ranghatásaid sem működnek.",

	--hypnotised
	["hypnotised_1"] = "Meg lettél Hipnotizálva!",
	["hypnotised_2"] = "Találj Manát vagy Patron Riget hogy felszabadulj.",
	["hypnotised_3"] = "Hipnotizáltként az irányításaid meg vannak fordítva!",

	--architect
	["architect_1"] = "Te most egy Architect vagy!",
	["architect_2"] = "Architectek nem tudnak rangokat szerezni.",
	["architect_3"] = "Nyugodtan törj ki káoszt a toronyban!",

	--shared
	["higher"] = "VAN ENNÉL NAGYOBB RANGOD",
	["current"] = "A JELENLEGI RANGOD",
	["lower"] = "EZ A RANG NINCS MEGSZEREZVE",

	["more"] = "Kell még %d mászás %s-ként, hogy megszerezd ezt a rangot.",
	["done"] = "Neked már van egy ennél nagyobb rangod. Az összes alacsonyabb ranghatás hozzá van adva a jelenlegi rangodhoz.",
	["max"] = "Ez a legmagasabb rang. %d mászást szereztél %s-ként.",
	["next"] = "Ha rányomsz a jobb nyílra, akkor meg tudod nézni, hogy mennyi mászás kell a következő ranghoz.",

	["PATRON"] = {
		[4] = "A kapcsaid kétszer addig tartanak (120mp).",
		[5] = "A portáljaid kétszer addig tartanak (120mp).",
		[6] = "A Gömb Hívása varázslatod mostantól 2 Manába kerül.",
		[8] = "Ha elfogy a Manád, ugorj rá egy felületre, hogy meg legyél áldva 1 Manával.",
		[9] = "A hívott Gömb kétszer olyan gyorsan jön feléd.",
	}, 
	["JOKER"] = { 
		[4] = "Diszkó lépcsők nincsenek rád hatással.",
		[5] = "Mostantól látod az összes láthatatlan lépcsőt. Van rá választásod, hogy ne fedd fel őket.",
		[6] = "Mostantól felismered a csapdákat és a hamis lépcsőket.",
		[8] = "Mostantól rá tudsz menni hamis lépcsőkre és csapdákra.", 
		[9] = "Kapsz bónusz Manát, amikor egy játékos aktivál egy átverést. (1 Mana egy játékos átveréséért)",
	},
	["WICKED"] = {
		[4] = "Mostantól tudsz obbikon sétálni mintha egy normális lépcső lenne.",
		[5] = "A Lépcső Elpusztítása varázslatod monstantól ingyenes.",
		[6] = "Kapsz 1 bónusz Manát minden egyes általad elpusztított különleges lépcsőért.",
		[8] = "Van választásod arra, hogy ne aktiváld a Wicked Rigeket.",
		[9] = "Mostantól el tudsz pusztítani átkozott lépcsőket.",
	},
	["SPECTRE"] = { 
		[4] = "Kapsz egy bónusz Manát amikor a szellemed vesz fel egy kristályt.", 
		[5] = "A Lépcső Szellemesítése varázslatod mostantól ingyenes.",
		[6] = "Mostantól akkor is nyerni fogsz, amikor a szellemed ér hozzá a gömbhöz.",
		[8] = "Van választásod arra, hogy ne aktiváld a Spectre Rigeket.", 
		[9] = "Mostantól rá tudsz menni szellemesített lépcsőkre.",
	},
	["KEEPER"] = {
		[4] = "A Véletlenszerű Mozgás varázslatok és a Keeper Rigek amiket te aktiválsz mostantól nem mozoghatnak lefelé.",
		[5] = "Mostantól mozgathatsz bármilyen nem átkozott lépcsőt.",
		[6] = "A Helyreállítás varázslatod mostantól ingyenes.", 
		[8] = "Van választásod arra, hogy ne aktiváld a Keeper Rigeket.",
		[9] = "Mostantól helyreállíthatsz átkozott lépcsőket és átkozott kereszteződéseket.",
	},
	["HACKER"] = { 
		[4] = "Van választásod arra, hogy immunis legyél mozgólépcsőkre.",
		[5] = "A Lendület varázslatod mostantól 50%-kal gyorsabb.",
		[6] = "A Villanás varázslatod mostontól 50%-kal gyorsabb.", 
		[8] = "Van választásod arra, hogy ne aktiváld a Hacker Rigeket. (egybevál a Mozgólépcső kapcsolójával)",
		[9] = "Ha van legalább egy szabad kereszteződés, akkor a Hibás Lépcső varázslatod a legfelső szinten lévő a lépcsőt a gömbhöz viszi.", 
	},
	["THIEF"] = {
		[4] = "A kikerüléseid kétszer addig tartanak (120mp).",
		[5] = "A csigalépcsőid kétszer addig tartanak (120mp).",
		[6] = "Mostantól az összes nem átkozott lépcsőt el tudod lopni.",
		[8] = "Ha elfogyott a Manád, ugorj rá egy felületre, hogy elővegyél 1 Manát a leltáradból.", 
		[9] = "Mostantól egyszerre 2 lopott lépcsőt tudsz magadnál tartani.",
	},
	["ARCHON"] = {
		[4] = "Mostantól tudod használni a Kapu Eltávolítása varázslatot felületeken, hogy elpusztítsd a rajta lévő kapukat.",
		[5] = "A Kapu Eltávolítása varázslatod mostantól ingyenes.",
		[6] = "A kapuk mostantól nem teleportálnak téged lefelé.",
		[8] = "Mostantól létrehozhatsz Kapukat olyan lépcsőkön, amelyeken már van egy Kapu.",
		[9] = "Van választásod arra, hogy csak felfelé vezető Kapuk teleportáljanak el.", 
	},
	["DRIFTER"] = {
		[4] = "A felfelé haladó liftjeid gyorsabban jelennek meg és 50%-kal gyorsabban haladnak.",
		[5] = "Mostantól megtudsz forgatni sodródott lépcsőket.",
		[6] = "Mostantól fel tudod emelni a lifteket a Liftezés és a Lift varázslatokkal. Az emelt liftek nem gyorsabbak.",
		[8] = "Van választásod arra, hogy ne aktiváld a Drifter Rigeket.",
		[9] = "Mostantól kétszer tudod felemelni a lifteket a Liftezés és a Lift varázslatokkal. Az emelt liftek nem gyorsabbak.",
	},
	["HERETIC"] = {
		[4] = "Amikor elfogy a Manád, akkor hozzáérhetsz egy átkozott lépcsőhöz, hogy eltüntesd róla az átkot és kapj egy Manát.",
		[5] = "Mostantól immunis vagy a megszállásra.",
		[6] = "Mostantól végrehajthatod a Villogás varázslatodat átkozott kereszteződésekben.",
		[8] = "Az Átkozott Lépcső Létrehozása és az Átkozódás varázslataid mostantól el tudnak pusztítani útban álló átkozott lépcsőket.",
		[9] = "Kapsz 1 bónusz Manát amikor valakit megszállnak.",
	},
	["SPLICER"] = {
		[4] = "Mostantól helyre tudsz állítani a felülethez nem kapcsolódó lépcsőket.",
		[5] = "Az Elcsavart Lépcső Helyreállítása varázslatod mostantól ingyenes.",
		[6] = "Van választásod arra, hogy ne aktiváld a Splicer Rigeket.",
		[8] = "Mostantól meg tudsz csavarni már megcsavart lépcsőket.",
		[9] = "Kapsz 1 bónusz Manát amikor helyreállítasz egy csavart lépcsőt.",
	},
	["REAVER"] = {
		[4] = "Mostantól használhatod az Egyesülés varázslatot, hogy szétválj a szellemeddel.",
		[5] = "A tükreid 50%-kal tovább fognak tartani. (15mp-ig a hatalmas, 9mp-ig a Kicsi)",
		[6] = "Van választásod arra, hogy ne aktiváld a Reaver Rigeket.",
		[8] = "Mostantól el tudsz pusztítani keresztező lépcsőket a Tükrös Lépcső varázslatoddal.",
		[9] = "Mostantól immunis vagy az egyirányú lépcsőkre.",
	},
	["NECROMANCER"] = {
		[4] = "Kettős Lépcsők varázslatból a szellemed lépcsője figyelem kívül fogja hagyni az átkozott lépcsőket és kereszteződéseket. ",
		[5] = "Ha használod az Újraéledő Pont varázslatot a legfelső szinten, akkor a gömb a ponthoz fog menni.",
		[6] = "A Felület Másolása varázslatod ha kell, eltávolítja az átkokat.",
		[8] = "Mostantól el tudsz pusztítani keresztező lépcsőket a Kettős Lépcsők varázslatoddal.",
		[9] = "A Regeneráció varázslatod 10 Manát ad 6 helyett, és aki a szellemedhez közel áll az 5 Manát kap.",
	},
	["GREMLIN"] = {
		[4] = "Mostantól látod az összes Gremlin Csapdát.",
		[5] = "Mostantól rá tudsz ugrani a felületre, hogy magadhoz hívd az összes hozzá tartozó villamost.",
		[6] = "Mostantól immunis vagy a Gremlin Rigekre.",
		[8] = "Mostantól immunis vagy a Gremlin Csapdákra.",
		[9] = "Mostantól be/ki-tudod kapcsolni a Dugóhúzó Lépcsőket egy kapcsolóval. Nem fog működni, ha van egy másik Daemon a közelben.",
	},
	["MUGGLE"] = { 
		[2] = "Az ugrásod visszatöltődési ideje 0.125 másodperccel rövidebb.",
		[3] = "Az ugrásod visszatöltődési ideje 0.25 másodperccel rövidebb.",
		[4] = "Az ugrásod visszatöltődési ideje 0.375 másodperccel rövidebb.",
		[5] = "Az ugrásod visszatöltődési ideje 0.5 másodperccel rövidebb.",
		[6] = "Mostantól 10%-kal gyorsabb vagy.",
		[7] = "Mostantól 20%-kal gyorsabb vagy.",
		[8] = "Mostantól 30%-kal gyorsabb vagy.",
		[9] = "Mostantól 20%-kal nagyobbat ugrasz.",
	},
	["NONE"] = {
		[1] = "Ez az osztály nem tud rangokat szerezni. Ugorj egy körre a pálya közepén hogy osztályt változtass.",
		[2] = "De most komolyan, ennek az osztálynak a rangjai nem csinálnak semmit.",
		[3] = "Csak az idődet vesztegeted, inkább fejleszd fel a MUGGLE-t.",
		[4] = "MUGGLE-el lehetnél gyorsabb meg ugorhatnál magasabbra. NONE az meg egy haszontalan \"osztály\" ami nem csinál semmit.",
		[5] = "Ha azt hiszed, hogy lesz egy titkos ranghatás a végen, akkor alábecsülöd a lustaságomat.",
		[6] = "Vagy talán csak szereted magadat kínozni?",
		[7] = "Ha valaki mondta, hogy van egy titkos ranghatás 50 mászás után, akkor ő hazudott.",
		[8] = "Ez az utolsó figyelmeztetésed. Ha ezt nem fejezed be, akkor nagyot fogsz csalódni.",
		[9] = "A kitartásod felettébb méltó. Kapsz egy kapcsolót, amivel immunis lehetsz bármilyen különleges lépcsőre.",
	},
	["CHAMELEON"] = { 
		[1] = "Ez a kezdő CHAMELEON rangod. A többi osztály ranggal járó előnye is érvényes rád.",
		[2] = "CSAK AKKOR Kapsz bónusz Manát, amikor a drónok CHAMELEON módban vannak.",
		[3] = "Az osztály változtatási animáció mostantól sokkal gyorsabb.",
		[4] = "A kezeid mostantól rózsaszínül világítanak, tehát a többi játékos nem tudja, hogy melyik osztályt használod.",
		[5] = "A Hamis Lépcső és a Lépcső Létrehozása varázslatok mostantól rózsaszínül világítanak.",
		[6] = "Mostantól meg tudsz varázsolni 4 varázslatot, amelyek el lettek utasítva a játék fejlesztése közben.",
		[7] = "Mostantól meg tudsz varázsolni 2 másik varázslatot, amelyek el lettek utasítva a játék fejlesztése közben.",
		[8] = "Amikor osztályt váltasz annak nincs animációja, tehát a többi játékos nem látja mikor váltasz osztályt. Ki lehet kapcsolni a beállításokban.",
		[9] = "Mostantól meg tudod varázsolni a Chameleon Rig varázslatot multi zsetonokkal.",
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

	["Kchoices"] = "Irányválasztási ablak megjelenítése Keeperként, amikor a Lépcső Mozgatása vagy Forgatása varázslatokat használod",
	["Hchoices"] = "Irányválasztási ablak megjelenítése Hackerként, amikor a Mozgólépcső varázslatot használod",
	["Achoices"] = "Irányválasztási ablak megjelenítése Archonként, amikor az Egyenes vagy Forgatott Kapu létrehozása varázslatokat használod",
	["Rchoices"] = "Irányválasztási ablak megjelenítése Reaverként, amikor az Egyirányú Lépcső varázslatot használod",
	["Schoices"] = "Irányválasztási ablak megjelenítése Splicerként, amikor a Szomszédos vagy Párhuzamos Lépcsők Összeköttetése varázslatokat használod ",
	["Gchoices"] = "Irányválasztási ablak megjelenítése Gremlinként, amikor a Felület vagy Lépcső Pörgetése varázslatokat használod",

	["List"] = "Animált játékoslista megjelenítése a sima Robloxos játéklista helyett",
	["SwitchBack"] = "Automatikus visszaváltás átlagos varázslatokra egy különleges varázslat végrehajtása után",
	["SafeCancel"] = "Megerősítési ablak megjelenítése amikor egy időzített varázslatot abbahagysz",
	["Multi"] = "Multi Zseton ablak megjelenítése mászások után, ha van még el nem használt Multi Zsetonod",
	["UISize"] = "Állítsd a felhasználói grafikus ablak szélességet (%-ban)",

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
	["tClimbs"] = "ENNYI MÁSZÁSOD VAN ÖSSZEVONVA",
	["tTokens"] = "ENNYI %s ZSETONOD VAN", --%s will be replaced by the used class (or multi)
	["spells"] = "ENNYI VARÁZSLATOT HASZNÁLTÁL", --amount
	["rRank"] = "HELYEZÉSED VERSENYBEN",--if any
}

module.gui.gameover.messages = {

	["PATRON"] = {
		"SEGÍTS, VÉDJ és TEREMTS",
		"Csak mi segíthetünk bajba jutott társainkon",
		"Patronok nélkül nem lenne remény",
		"A kedvességem egy 1-től 10-es skálán 11-es",
		"Osztozkodni öröm",
		"Sosem lehet túl sok lépcsőd",
		"Minden csapatba kell egy Patron",
		"Nem lehet lépcsőházad lépcsők nélkül",
		"Egy újabb jól végzett munka",
	},
	["JOKER"] = {
		"TÉVESSZ MEG, VERJ ÁT és NEVESS",
		"Ez a lépcsőház egy vicc",
		"Miért vagy ilyen komoly?",
		"HE HE HE HAW!",
		"Lazulj és nézd, hogy esnek le",
		"Nincsen bizonyítékod arra, hogy ez a lépcső hamis",
		"Táncolj bolond, táncolj!",
		"Unalmas lenne a játék nélkülem",
		"A hamis lépcsők valójában igaziak",
		"Új rang elérve - vagy mégsem?",
	},
	["WICKED"] = {
		"AKADÁLYOZZ, ÁLLJ ÚTBAN és PUSZTÍTS",
		"Nem vagyok gonosz, csak túl sok a lépcső",
		"A lépcsőknek el kell tűnniük",
		"Nézd, hogy ég a világ", 
		"Ez a lépcsőház jobb lenne lépcsők nélkül",
		"Elpusztítom az elmédet, lelkedet, és a testedet (meg a lépcsőket)",
		"Milyen szép ez a lépcsőház. Kár lenne, ha valaki tönkretenné",
		"Előbb utóbb mind meghalunk",
		"Tisztítsd meg az elmédet - de előtte tisztítsd meg a lépcsőházat",
	},
	["SPECTRE"] = {
		"TŰNJ EL, BÚJJ EL és TELEPORTÁLJ",
		"Mi baj lehet a teleportálással?",
		"Nem tudsz elkapni",
		"Szeretem a szellemesített lépcsőket, de szerintem ezzel a véleménnyel egyedül vagyok",
		"Miért érdekelne az engem, ha emberek leesnek?",
		"Meg tudod oldani az összes problémádat teleportálással",
		"Ha egyszer elkezdesz teleportálni, nem fogsz tudni leállni",
		"Legalább én nem rakok a lépcsőkre teleportálókat. Ki tenne olyasmit?",
		"Tudnátok tartani a tempót?",
	},
	["MUGGLE"] = {
		"FUSS, UGORJ és ESS",
		"Bezzeg az én időmben nem voltak ilyen puccos varázslatok!",
		"Esküszöm, hogy ezek a Drónok meg vannak bundázva",
		"Mindig van egy út",
		"Senki se tud úgy parkúrozni, mint én",
		"A titkom? Megállok és gondolkodok",
		"Nem hiszek a varázslatban",
		"Néha várnod kell egy drónra, hogy segítsen - Mint a való világban",
		"A varázslatok csak egy mankó rossz játékosoknak, akik nem tudják megmászni a tornyot",
	},
	["CHAMELEON"] = {
		"MÁSOLJ, UTÁNOZZ és LEPJ MEG MÁSOKAT",
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
		"Tízből kilenc drón ajánlja ezt az osztályt",
		"Egy nap majd elrendezem ezt a tornyot",
		"Helyreállított lépcsők = boldog lépcsők",
	},
	["THIEF"] = {
		"\"KÖLCSÖNÖZZ\", HASZNÁLD és KÜLDD VISSZA",
		"Tulajdonképpen ezt úgy hívják, hogy kölcsönzés",
		"Nincsenek az űrben rendőrök, tehát lopás elleni törvény sincs",
		"Legalább a felületeket nem lopom el",
		"Csak ne lépj rá a lopás rigekre, nem kell egy lángelme ehhez",
		"Láttád te egyáltalán hogy loptam valamit?",
		"Olyan vagyok, mint Robin Hood - A gazdagoktól lopok és a pénzt magamnak adom",
		"Nem minthogyha valaki észrevenné, ha hiányzik egy lépcső",
		"A lépcsők újraelosztása megakadályozza az anarchiát",
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
		"A sötet oldal nagyon jó",
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
		"Van egy kapu minden problémára",
		"Mindenkit megzavartam!",
	},
	["DRIFTER"] = {
		"SZÖRFÖLJ, LOVAGOLJ és SODRÓDJ",
		"Kinek kell lépcső, amikor az űrben vagyunk?",
		"Repüljetek bolondok!",
		"Csak sodródj az árral",
		"Az űrben nincs lefelé - nincs miért aggódni",
		"Sodródj a győzelem felé",
		"Ne állj meg - sodródj tovább",
		"Szeretek liftezni",
		"Szörfölj tovább",
	},
	["SPLICER"] = {
		"CSAVARJ, KAPCSOLD ÖSSZE és EGYESÍTS",
		"Soha ne menj egy egyenes vonalon túl sokáig",
		"Az élet tele van csavarokkal",
		"Másoknak káosz, nekünk rend",
		"Jól összekötöttem azokat a lépcsőket",
		"Ne kapcsolódj emberekkel, inkább KAPCSOLÓDJ LÉPCSŐKKEL!",
		"Ha elég lépcsőt kötök össze, akkor előbb utóbb nyerni fogok",
		"Együtt erősebbek a lépcsők",
		"Köszönöm Markerquest, megmentettél",
		"Megcsavarom ezt a lépcsőházat",
	},
	["REAVER"] = {
		"Tükrök valójában csak átjárók.\n!ólleH",
		"Ez a lépcsőház csak egy illúzió.\n?knuygav kóizúlli yge kasc dnim nav iM", 
		"Láthatod a lelkedet a tükörben.\n!ttötülekköt et koygav né zA",
		"Hét évnyi balszerencse. Nekem, vagy a másiknak?\n?törküt a le etröt knükiyleM",
		"A szellemek ragadtak a tükör mögé - vagy mi?\n!röküt a inröt gof le trem rám sseis óseT", 
		"EBYGE JLÁV sé IK DLÉRESC ,JDŐZÖRKÜT\nTÜKRÖZŐDJ, CSERÉLD KI és VÁLJ EGYBE", 
		"!tocárs a tze le kujdaH\nDehogy is! Biztos, hogy segíteni fog.",
		"!neila men nödlöf a treM ?kenneila tilüvínödlöf a kájvíh tréiM\nLol!"
		".inröt gof le röküt a zE\nEz a tükör nem fog eltörni!",
		"?knüseel sé kirötle rüköt a ah zsel iM\nNe ijesztgessél már!",
	},
	["NECROMANCER"] = {
		"KÖVESS, ÉLEDJ ÚJRA és SZEREZZ HASZNOT",
		"Nem akarunk meg szállni téged, csak barátok akarunk lenni",
		"A lelked az ENYÉM!",
		"Kövesd a szellemem. Vagy kövess engem, nekem igazából mindegy",
		"Bú! Jaj ez véletlen volt, bocsánat ha megijedtél",
		"Ideje néhány lelket begyűjteni",
		"Ne hidd el azt a sok hazugságot, amit Hollywood terjeszt. Mi jók vagyunk",
		"Ha a halál rossz, akkor a Szellemidézés jó",
		"Kéne néhány léle- akarom mondani Mana, kéne Mana",
 		"Nem félek attól, hogy leesek. Majd a szellemem megment!",
	},
	["GREMLIN"] = {
		"FORGASS, PÖRGESS és HIPNOTIZÁLJ",
		"Gyere játssz velem!",
		"Mi a baj? Elszédültél? Bocsánat, azt hittem, hogy ennél jobb vagy",
		"Ez a lépcsőház nagyon unalmas",
		"Hadd javítsam meg azt a lépcsőt, heheh",
		"Tetszik a remekművem? Nem? Milyen kár, pedig csak most kezdtem.",
		"Az orvos mondta, hogy lazítsak, és én így lazítok.",
		"Joker tanulhatna tőlem. Csak vicceltem, légyszi vegyél vissza a Cirkuszba!",
		"Hova tűnt a lépcső?",
		"Wheeeeeeeeeeeeeeeeeeee!!!!!!!",
	},
	["NONE"] = {
		"MINTHA ITT SE LENNÉNK",
		"Nagyon erős leszek, ha majd százszor megmászom a tornyot.",
		" ", --worked hard on this one
		"A semmittevést nem lehet elhibázni.",
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

	["SAVIOUR"] = "Senkit se hagyok hátra",
	["IT"] = "Szívatás az életem", 
	["ANNIHILATOR"] = "Pusztíts el mindent!",
	["AETHER"] = "Beléptem az alvilágba", 
	["DABSFORLIF"] = "A varázslatok túlértékeltek",
	["USURPER"] = "Én csak szeretem az összes varázslatot",
	["ADMIRAL"] = "Rend helyreállítva",
	["OUTLAW"] = "Minden az enyém!",
	["ZERO"] = "Rootkit letöltve",
	["EXILED"] = "Kiközösítve",
	["ILLUMINATI"] = "Illuminati megerősítve",
	["STRIDER"] = "Én inkább megyek lifttel",
	["DEATHBRINGER"] = "Szellemek is emberek!",
	["OPTIMUS"] = "Az Összefonódás",
	["ILLUSION"] = "Egyek knuygav.vagyunk keygE",
	["DAEMON"] = "Körülöttem forog a világ.",
	["BLACK HOLE"] = "Nincs. Semmi. Baj.",

}

module.gui.gameover.credits = {
	["common"] = {
		"ŐRÜLT LÉPCSŐK",
		"Játékot kitalálta, tervezte és kódolta: Sleazel",
		"Tervezésben segített: cakegirlserina",
		"Modellek csinálta: ZielonyLeszek",
		"Skyboxok @wwwtyro generátorával",
		"Adat tároló modult (ProfileSore-t) készítette: loleris",
		"Köszönjük, hogy játszottál a játékkal!",	
	},
	["climb"] = "%s Mászás Zenéje - % alkotta: %",
	["endgame"] = "%s Győzelmi Zenéje - % alkotta: %",
	["disco"] = "Diszkó Lépcső Zenéje - % alkotta: %",
	["elevator"] = "Lift Zenéje - % alkotta: %", --drifter platforms
	["testers"] = "VIZSGÁLÓK:",
	--["translations"] = "FORDÍTÁSOK:",
	["thanks"] = "KÜLÖN KÖSZÖNET:",
	--["music"] = "ZENE (APM catalog):",
}

module.static = {

	["cla_1"] = "Hogyan kell játszani?",
	["cla_2"] = "Először is én azt ajánlanám, hogy csináld meg a kiképzést. Hogyha te ezt még nem tetted meg, legyen szíves lépj ki és lépj be újra, különben ez a játék nagyon összezavaró lehet.",
	["cla_3"] = "A játék az a célja, hogy feljuss a legfelső szintre és megszerezd a lebegő Energikus Gömböt. Először válassz egy osztályt úgy, hogy ráugrasz egy villogó körre a pálya közepén.",
	["cla_4"] = "Miután megelégedtél a választásoddal, mászd meg a lépcsőket. Gyűjts lebegő formákat, hogy feltöltsd a Manádat. Használd az osztályod varázslatáit, hogy segítsen rajtad a mászásban.",
	["cla_5"] = "Hogyan kell varázsolni?",
	["cla_6"] = "Minden varázslat kerül valamennyi Manába, hogy megvarázsold. Hogyha van elég Manád, nyomd meg a varázslatot. A kezeid elkezdenek világítani azt jelezve, hogy sikeres tudtál varázsolni.",
	["cla_7"] = "Miután sikerült varázsolni, a varázslatot végre kell hajtani. Az összes varázslatot ugrással kell végrehajtani. A varázslattól függően felületeken vagy lépcsőkön kell végrehajtani az adott varázslatot. Világító nyilak jelennek meg, hogy segítsenek a végrehajtásban.",
	["cla_8"] = "Amikor befejezted a mászást, kapsz 3 varázs zsetont, amivel kinyithatsz egy új varázslatot. Fejezz be még több mászást, hogy még több varázslatokat szerezz meg. Nem lehet zsetont az egyik osztályból arra használni, hogy egy másik osztályban lévő varázslatot szerezz meg.",
	["cla_9"] = "Hogyan varázsolok különleges varázslatokat?",
	["cla_10"] = "Először az összes alapvető varázslatot meg kell szerezned, hogy használhass különleges varázslatokat. Ezeket nem kell kinyitni, de Mana helyett Zsetont használnak el.",
	["cla_11"] = "Fejezd be a mászást elégszer, hogy megszerezd az összes alapvető varázslatot. Érdemes versenyeket nyerni, mert bónusz Zsetonokat szerezhetsz. Vagy vehetsz zsetonokat. Amikor az megvan, nyomd meg a legbaloldalibb gombot vagy a 'C' billentyűt.",
	["cla_12"] = "Néhány különleges varázslat időzített, és nem kell végrehajtani. Légyszíves olvasd el a további információkat az Osztálynak a Szentélyében, hogy többet tudjon az adott különleges varázslatról mielőtt megvarázsolnád. Egy időzített különleges varázslat megszüntetése után nem kapod vissza a zsetonokat.",

	["pro_1"] = "PROFI TORONY",
	["pro_2"] = "Páros szintek korlátozásai",
	["pro_3"] = "A Profi Toronyban néhány felület varázslatot nem lehet megvarázsolni páros szinteken. A Csapda, Portál Létrehozása, Függőleges Teleportálás, Csigalépcső, és Véletlenszerű Teleportálás varázslatokat csak páratlan szinteken lehet végrehajtani.",
	["pro_4"] = "Drifterek se tudnak lifteket létrehozni azokon a felületeken. Az érintett felületek jelezve vannak egy piros körrel.", --amelynek a közepében van egy X
	["pro_5"] = "Átkozott Lépcsők",
	["pro_6"] = "A Profi Toronyban, Drónok véletlenszerűen létrehoznak Átkozott Lépcsőket vagy megátkoznak egy normális lépcsőt. 20% esély van arra, hogy megjelenjen egy Átkozott Lépcső. Segítő nyilak nem jelennek meg Átkozott Lépcsők közelében.",
	["pro_7"] = "Az Átkozott Lépcsők immunisak a legtöbb varázslatokra. Nem tudsz átteleportálni rajtuk és használni a Hacker Villanás varázslatot. Továbbá, az összes varázslat, ami érintene egy Átkozott Lépcsőt se fog működni (például Keepernek a Lépcső Mozgatása).",
	["pro_8"] = "Csak Hereticek és Admirálok tudnak helyreállítani Átkozott Lépcsőket. Tisztítás és Helyreállítás események is eltüntetik az átkozott lépcsőket. Azonban a Drónok mindig létrehoznak újakat a Profi toronyban.",
	["pro_9"] = "Átkozott Kereszteződések",
	["pro_10"] = "A Profi Toronyban Drónok véletlenszerűen létrehoznak Átkozott Kereszteződéseket is. Amikor egy drón talál egy üres Kereszteződést, akkor 20% esélye van arra, hogy megátkozza. A Segítő Nyilakon megjelenik egy x, ami megjelöli a kereszteződést.",
	["pro_11"] = "Az Átkozott Kereszteződések megakadályozzák az összes olyan felület varázslatokat, amiket nyilakon kell végrehajtani. Nem tudsz létrehozni lépcsőket, kapcsokat vagy átteleportálni az Átkozott Kereszteződéseken.",
	["pro_12"] = "Csak Hereticek, Admirálok és Drónok tudnak helyreállítani Átkozott Kereszteződéseket. Úgy mint az Átkozott Lépcsőknél, Wicked Tisztítás Eseménye elpusztítja az összes átkot, de újraépítés közben új átkok jönnek létre.",

	["inf_1"] = "VÉGTELEN TORONY",
	["inf_2"] = "VERSENYEZNI KÖTELEZŐ",
	["inf_3"] = "A végtelen toronyban, a versenyben részt venni kötelező. Nem versenyző játékosok nem varázsolhatnak és nem kapnak jutalmat. Ha hozzáérsz a gömbhöz, akkor csak kapsz 10 Manát.",
	["inf_4"] = "Ahhoz hogy 'nyerj' a végtelen toronyban, be kell lépned egy versenyben és a lehető legtöbb ideig kell a tornyon maradni. A jutalmakat megkapod (ha szeresztél) miután kiestél.",
	["inf_5"] = "Leesett Drón",
	["inf_6"] = "A klasszikus és a profi toronnyal ellentétben, A Leesett Drónnak van egy különleges feladata a végtelen toronyban.",
	["inf_7"] = "Mindig, amikor feljebb megy az intervallum, A Leesett Drón csinál 2 új szintet. Az összes páros szint le lesz zárva. Ezen felül, még néhány lépcső és kereszteződés lehet, hogy meg van átkozva.",
	["inf_8"] = "Ez első intervallum 20 másodpercig tart. Minden egyes növelés csökkenti az intervallumot fél másodperccel. Addig fog az intervallum csökkeni, ameddig a szintek gyorsabban jönnek létre, mint ahogy azt meg lehetne mászni.",
	["inf_9"] = "Radír",
	["inf_10"] = "A Radír az egy különleges erőtér, ami együtt növekszik a toronnyal és eltávolítja az alsó szinteket. Ha utolér a radír, akkor kiestél a versenyből. Ez olyan, mint egy növekvő láva másik játékokban.",
	["inf_11"] = "A radír fel fog gyorsulni, mint a Leesett Drón. De a drónnal ellentétben, a radír fokozatosan gyorsul, és nem radíroz ki 2 szintet egyszerre.",
	["inf_12"] = "A lépcsők és a felületek amik hozzáérnek a radírhoz eltűnnek. Kerüld el a radírt a lehető legtöbb ideig, hogy 'nyerj'.",

	["cus_1"] = "EGYEDI TORONY",
	["cus_2"] = "TE DÖNTESZ!
	["cus_3"] = "Az egyedi toronyban kedvedre állíthatod be a beállításokat.",
	["cus_4"] = "A jutalmak az Egyedi Toronyban meg vannak felezve. Kapsz egy zsetont minden 12. szintért és egy mászást minden 30. szintért.",
	["cus_5"] = "Torony Beállításai",
	["cus_6"] = "Beállíthatod a tornyot úgy, ahogy akarod. Beállíthatod a szintek számát, lezárhatod a páros szinteket vagy bekapcsolhatod a végtelen módot.",
	["cus_7"] = "Csak a szerver tulajdonosa állíthatja be a tornyot.", --Nyilvános szervereken csak az a játékos állíthatja be a tornyot, amelyik a legtöbb időt töltött el a szerverben.
	["cus_8"] = "Drón Beállításai",
	["cus_9"] = "Meg tudod változtatni a kis drónok beállításait is. Beállíthatod a lépcsők számát, az esélyt átkozott lépcsőkre és kereszteződésekre, vagy akár ki is kapcsolhatod a drónokat.",

	["vr_1"] = "Mivel a játékot VR-ban indítottad el, ezért automatikusan egy Architect lettél.",
	["vr_2"] = "Normális játékosokkal ellentétben, neked nem kell megmászni a tornyot. A te célod, hogy megsegítsd vagy megszívasd a többi játékost.",
	["vr_3"] = "Te döntés a te kezedben van. Egy gazember leszel, vagy egy megmentő? Vagy csak a kedvedre formálod a lépcsőházat? Érezd jól magad!",
	["vr_4"] = "Hogyan mozgok?",
	["vr_5"] = "Használd a bal joysticket, hogy előre meg hátra menj. Billentsd a bal joysticket oldalra, hogy jobbra vagy balra menj.",
	["vr_6"] = "Használd a jobb joysticket, hogy fel meg le menj. Billentsd a jobb joysticket jobbra vagy balra, hogy 'hirtelen' fordítsd a kamerát.",
	["vr_7"] = "Próbálj meg a lépcsőházon kívül lenni, hogy jól belásd a tornyot és hogy könnyebb legyen célozni.",
	["vr_8"] = "Hogyan varázsolok varázslatokat?",
	["vr_9"] = "Nyomd össze varázs gömböt a markolat gombbal. Megjelenik egy lézersugár, ami segít célba venni lépcsőket és felületeket.",
	["vr_10"] = "Hajtsd végre a varázslatot a ravasszal, miközben le nyomva tartod a markolatot. Minden osztálynak kettő varázslata van VR-ban. Egy felületen és egy lépcsőn. A célponttól függően ki lesz választva a megfelelő varázslat.",
	["vr_11"] = "Hogy osztályt válts VR módban, ahhoz nyomd meg hosszan a ravaszt anélül, hogy megnyomnád a markolatot. Osztályt tudsz váltani a kézzel megegyező oldalú joystickkel.",

	["home_1"] = "MUGGLE OTTHONA",
	["home_2"] = "JELMONDATUNK:\nFUSS\nUGORJ\nÉS\nESS",
	["home_3"] = "ELŐNYÖK:\nGyorsabb és nagyobbat ugor magasabb rangoknál\nHÁTRÁNYOK:\nNincsenek varázslatai\nKönnyen elakad",
	["home_4"] = "„Bezzeg az én időmben nem voltak ilyen puccos varázslatok!”\nalapítónk idézete",

	["oasis_1"] = "CHAMELEON OÁZISA",
	["oasis_2"] = "JELMONDATUNK:\nMÁSOLJ\nUTÁNOZZ\nÉS\nLEPJ MEG MÁSOKAT",
	["oasis_3"] = "ELŐNYÖK:\nBármikor és bárhol változtathatsz osztályt\nHÁTRÁNYOK:\nRobuxba kerül\nAz összes osztály felfejlesztése sok időbe kerül",
	["oasis_4"] = "„Túl lusta vagyok ahhoz, hogy kitaláljak saját varázslatokat.”\nalapítónk idézete",

	["nexus_1"] = "HERETIC SZEKTÁJA",
	["nexus_2"] = "JELMONDATUNK:\nTE\nNEM\nFOGSZ\nÁTJUTNI",
	["nexus_3"] = "ELŐNYÖK:\nLegjobb a profi toronyban\nMegállíthatatlan\nHÁTRÁNYOK:\nNehezen áll be egy csapatba\nManára éhes",
	["nexus_4"] = "„A fekete mágia olyan mint a sima mágia, csak még jobb.”\nalapítónk idézete",

	["guild_1"] = "THIEF REJTEKHELYE",
	["guild_2"] = "JELMONDATUNK:\nKÖLCSÖNÖZZ\nHASZNÁLD\nÉS\nKÜLDD VISSZA",
	["guild_3"] = "ELŐNYÖK:\nNem használ sok manát\nSokoldalú\nHÁTRÁNYOK:\nLépcsőt kell lopnia\nNem tud elpusztítani útban álló lépcsőket.",
	["guild_4"] = "„Tulajdonképpen ezt úgy hívják, hogy kölcsönzés.”\nalapítónk idézete",

	["nether_1"] = "SPECTRE ALVILÁGA",
	["nether_2"] = "JELMONDATUNK:\nTŰNJ EL\nBÚJJ EL\nÉS\nTELEPORTÁLJ",
	["nether_3"] = "ELŐNYÖK:\nGyors varázslatok\nTökéletes ha egyedül játszol\nHÁTRÁNYOK:\nRobuxba kerül\nNem ajánlott csapatokban",
	["nether_4"] = "„Mi baj lehet a teleportálással?”\nalapítónk idézete (MIA)", 

	["study_1"] = "ARCHON TANULÓHELYE",
	["study_2"] = "JELMONDATUNK:\nNYISS\nPORTÁLT\n???\nHASZON",
	["study_3"] = "ELŐNYÖK:\nHasznos Rig\nMegzavar másokat\nHÁTRÁNYOK:\nNehéz megtanulni\nKell hozzá előre tervezni",
	["study_4"] = "„Régebben én uraltam ezt a lépcsőházat.”\nalapítónk idézete",

	["haven_1"] = "PATRON MENNYE",
	["haven_2"] = "JELMONDATUNK:\nSEGÍTS\nVÉDJ\nÉS\nTEREMTS",
	["haven_3"] = "ELŐNYÖK:\nKönnyű megtanulni\nCsapatjátékos\nHÁTRÁNYOK:\nSok Manát használ\nMások kihasználhatják",
	["haven_4"] = "„Csak mi segíthetünk bajba jutott társainkon.”\nalapítónk idézete",

	["shelter_1"] = "DRIFTER MENEDÉKE",
	["shelter_2"] = "JELMONDATUNK:\nSZÖRFÖLJ\nLOVAGOLJ\nÉS\nSODRÓDJ",
	["shelter_3"] = "ELŐNYÖK:\nSokoldalú\nCsapatjátékos\nHÁTRÁNYOK:\nKell hozzá parkúr tudás\nNem annyira hasznos Profi toronyban",
	["shelter_4"] = "„Kinek kell lépcső, amikor az űrben vagyunk?”\nalapítónk idézete",

	["circus_1"] = "JOKER CIRKUSZA",
	["circus_2"] = "JELMONDATUNK:\nTÉVESSZ MEG\nZAVARJ MEG\nÉS\nNEVESS",
	["circus_3"] = "ELŐNYÖK:\nSzívathatsz másokat\nA fordító varázslatok hasznosak\nHÁTRÁNYOK:\nDrága varázslatok\nTönkre teheted a barátságaidat", 
	["circus_4"] = "„Ez a lépcsőház egy vicc.”\nalapítónk idézete",

	["base_1"] = "KEEPER BÁZISA",
	["base_2"] = "JELMONDATUNK:\nMOZGASS\nFORGASS\nÉS\nIRÁNYÍTS",
	["base_3"] = "ELŐNYÖK:\nHelyre tudja állítani a lépcsőket\nMeg tudja mozgatni a lépcsőket\nHÁTRÁNYOK:\nKell hozzá parkúr, hogy jól használd\nHaszontalan lépcsők nélkül",
	["base_4"] = "„Ne tedd tönkre a lépcsőházamat!”\nalapítónk idézete",

	["chamber_1"] = "WICKED KAMRÁJA",
	["chamber_2"] = "JELMONDATUNK:\nAKADÁLYOZZ\nÁLLJ ÚTBAN\nÉS\nPUSZTÍTS",
	["chamber_3"] = "ELŐNYÖK:\nEl tud pusztítani bármilyen lépcsőt\nVagy akár egyszerre az összeset\nHÁTRÁNYOK:\nTúlzottan támaszkodik lépcsőkre",
	["chamber_4"] = "„Nem vagyok gonosz, csak túl sok a lépcső.”\nalapítónk idézete",

	["backdoor_1"] = "HACKER HÁTSÓ AJTAJA",
	["backdoor_2"] = "JELMONDATUNK:\nHASZNÁLD KI\nHIBÁSÍTSD MEG\nÉS\nTÖRD SZÉT",
	["backdoor_3"] = "ELŐNYÖK:\nLeggyorsabb osztály\nNehéz követni\nHÁTRÁNYOK:\nTúlzottan támaszkodik lépcsőkre\nHaszontalan csapatokban",
	["backdoor_4"] = "„Igazságos játszma? Olyan nem létezik.”\nalapítónk idézete",

	["hub_1"] = "SPLICER KÖZPONTJA",
	["hub_2"] = "JELMONDATUNK:\nCSAVARJ\nKAPCSOLJ ÖSSZE\nÉS\nEGYESÍTS",
	["hub_3"] = "ELŐNYÖK:\nSokoldalú\nJó csapatokban\nHÁTRÁNYOK:\nPicit összezavaró\nSok idő elsajátítani",
	["hub_4"] = "„Soha ne menj egy egyenes vonalon túl sokáig.”\nalapítónk idézete",

	["shack_1"] = "GREMLIN KUNYHÓJA",
	["shack_2"] = "JELMONDATUNK:\nFORGASS\nPÖRGESS\nÉS\nHIPNOTIZÁLJ",
	["shack_3"] = "ELŐNYÖK:\nNincs\nHÁTRÁNYOK:\nMINDENKI utálni fog",
	["shack_4"] = "„Gyere játssz velem.”\nalapítónk idézete",

	["mirror_1"] = "REAVER TÜKRE",
	["mirror_2"] = "JELMONDATUNK:\nTÜKRÖZŐDJ\nKICSERÉD KI\nÉS\nVÁLLJ EGYBE",
	["mirror_3"] = "ELŐNYÖK:\nTükröket másik játékosok is tudják használni\nHÁTRÁNYOK:\n:Egybeválás és szétválás funkció összezavaró lehet.",
	["mirror_4"] = "„Tükrök valójában csak átjárók.”\nalapítónk idézete",

	["grave_1"] = "NECROMANCER SÍRJA",
	["grave_2"] = "JELMONDATUNK:\nKÖVESS\nÉLEDJ ÚJRA\nÉS\nSZEREZZ HASZNOT",
	["grave_3"] = "ELŐNYÖK:\nA szellemed tud segíteni másik játékosoknak\nHÁTRÁNYOK:\nLegtöbb varázslat nagyon drága\nNehéz mindig figyelni a szellemedet",
	["grave_4"] = "„Nem akarunk meg szállni téged, csak barátok akarunk lenni.”\nalapítónk idézete",

	["studio_1"] = "ARCHITECT STÚDIÓJA",
	["studio_2"] = "JELMONDATUNK:\nTERVEZZ\nVALÓSÍTSD MEG\nÉS\nVIZSGÁLJ",
	["studio_3"] = "ELŐNYÖK:\nTud repülni\nNem használ Manát\nHÁTRÁNYOK:\nRobuxba kerül\nNem nyerhetsz ezzel az osztállyal",
	["studio_4"] = "„Most viszont én uralom a lépcsőházat!”\nalapítónk idézete",

	--SHARED
	["leader_pro"] = "Profi Torony 2 mászást ad",	
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
	["over_passes"] = "SZÜKSÉGES\nTERMÉKEK",
	["over_notgroup"] = "OLIVA SZÍNŰ - nincs benne a csoportban", 
	["over_group"] = "ZÖLDESKÉK SZÍNŰ - benne van a csoportban",
	["over_mod"] = "MODERATOR - ez a játékos egy moderator",
	["over_admin"] = "ADMIN - ez a játékos egy admin", --pls sleazel uwu
	["over_owner"] = "PRANK ME - Játék készítője (sleazel)",

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
	["most_climbs"] = "LEGTÖBB MÁSZÁS",
	["most_wins"] = "LEGTÖBB VERSENYGYŐZELEM",  
}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Üdvözöljük az Őrült Lépcsőkben!",
	["tut_big_2"] = "Először tanuld meg hogyan változz át.",
	["tut_big_3"] = "Te most egy Patron vagy. Patronok létre tudnak hozni lépcsőket.",
	["tut_big_4"] = "Az összes varázslatot ugrással kell végrehajtani.",
	["tut_big_5"] = "Menő, ugye? Most változz át Jokerré. Jokerek meg tudják fordítani a lépcsőket.",
	["tut_big_6"] = "Te most egy Joker vagy, használd ezt a varázslatot, hogy megfordíts a lépcsőt.",
	["tut_big_7"] = "Néhány varázslatot lépcsőkön kell végrehajtani.",
	["tut_big_8"] = "Most változz át Keeperré. Keeperek tudnak mozgatni lépcsőket.",
	["tut_big_9"] = "Te most egy Keeper vagy, használd ezt a varázslatot, hogy megmozgasd a lépcsőt.",
	["tut_big_10"] = "Ugorj az előre álló nyílra, hogy megmozgasd a lépcsőt.",
	["tut_big_11"] = "Sok útban álló lépcsővel fogsz találkozni ebben a játékban.",
	["tut_big_12"] = "Te most egy Wicked vagy, használd ezt a varázslatot, hogy elpusztítsd az utadban álló lépcsőt.",
	["tut_big_13"] = "El tudsz pusztítani feletted lévő lépcsőket úgy, hogy ráugrasz az alattuk lévőre.",
	["tut_big_14"] = "Mielőtt elkezdenél játszani, hadd mutassam meg neked a fizetős osztályt.",
	["tut_big_15"] = "Te most egy Spectre vagy. Spectre az egy fizetős osztály, ami legjobb, ha egyedül játszol.",
	["tut_big_16"] = "A célod - juss fel a legfelső szintre és szerezd meg a gömböt. Sok szerencsét!",

	["tut_select"] = "Válaszd ki ezt a varázslatot.",

	["tut_small_init"] = "Ugorj, hogy elkezd a kiképzést",
	["tut_small_morph"] = "Ugorj a körre.", 
	["tut_small_arrow"] = "Ugorj a nyílra.",
	["tut_small_stairs"] = "Ugorj a lépcsőre.",

}

module.where = {

	["platform"] = "Muszáj végrehajtani egy felületen. Nem fog működni földszinten vagy profi torony páros szintein.",
	["arrow"] = "Muszáj végrehajtani egy felületnek az egyik nyilán.",
	["stairs"] = " Muszáj végrehajtani egy lépcsőn.",
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
		["through"] = "Végre lehet hajtani üres kereszteződésekben vagy útban nem álló lépcsőkön keresztűl.",
		["superforced"] = "Végre lehet hajtani üres kereszteződésekben, vagy útban álló lépcsőkön keresztűl. Ha rendelkezel BANISHED ranggal, akkor elpusztíthatsz útban lévő átkozott lépcsőket.",
		["flicker"] = "Végre lehet hajtani üres kereszteződésekben. Ha rendelkezel INDIFEL ranggal, akkor végre hajthatod átkozott kereszteződésekben is.",
		["any"] = "Végre lehet hajtani bármilyen nem átkozott kereszteződésben.",
		["wall"] = "Végre lehet hajtani bármilyen nem átkozott kereszteződésben, amelyben nincsen egy Fal vagy Kapu.",
		["forced"] = "Végre lehet hajtani üres kereszteződésekben, vagy nem átkozott útban álló lépcsőkön keresztűl.",
		["halfsoft"] = "Végre lehet hajtani üres kereszteződésekben, vagy nem átkozott útban álló lépcsőkön keresztűl magasabb rangokon.",
		["soft"] = "Csak üres kereszteződésekben lehet végrehajtani.",
		["flatten"] = "Csak olyan kereszteződésekben lehet végrehajtani, amelyben van egy útban álló normális vagy riges lépcső.",
		["hack"] = "Csak olyan kereszteződésekben lehet végrehajtani, amelyben van egy útban álló nem átkozott lépcső.
		["sidepass"] = "Végre lehet hajtani bármilyen nem átkozott kereszteződésben, amelyben nincs egy Kitérő.",
	},

	["platform"]= {
		

		--platform
		["middle"] = "Ennek a varázslatnak nincsen különleges feltétele.",
		["diag"] = "Végre lehet hajtani a torony külső és belső felületein átlós irányban.",
		["outer"] = "Csak a torony külső felületein lehet végrehajtani.",
		["centre"] = "Ez a varázslat összetöri az összes kicsi tükröt ezen a szinten, de a hatalmasat nem.",
		["inner"] = "Csak a torony belső felületein lehet végrehajtani, amelyeken nincsen egy kapocs.",
		["prevolve"] = "Végre lehet hajtani az óra mutató járásával megegyező vagy ellentétes irányban.",
		["top"] = "Csak a legfelső szinten lévő felületeken lehet végrehajtani.",
	},
	
	["stairs"] ={
		
		["cursed"] = "Végre lehet hajtani normális, riges vagy átkozott lépcsőkön.",
		["all"] = "Végre lehet hajtani bármilyen lépcsőn. Ha rendelkezel Annihilator ranggal, akkor elpusztíthatsz átkozott lépcsőket.",
		["steal"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Hijacker ranggal, akkor ellophatsz bármilyen nem átkozott lépcsőt.",
		["onedirection"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["straight"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["rotate"] = "Végre lehet hajtani normális vagy riges lépcsőkön. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["flip"]= "Végre lehet hajtani normális, riges vagy megfordított lépcsőkön.",
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
		["flip"]= "Végre lehet hajtani egy normális, riges vagy megfordított lépcső alatt.",
		["onedirection"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt. Ha rendelkezel Controller ranggal, akkor megmozgathatsz bármilyen nem átkozott lépcsőt.",
		["slide"] = "Ezzel a varázslattal átjuthatsz bármilyen nem átkozott lépcsőn.",
		["normalrig"] = "Végre lehet hajtani egy normális vagy riges lépcső alatt.",

	},
	
	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Végre lehet hajtani egy normális, riges vagy megfordított lépcsőn vagy egy olyan lépcső alatt. Ha valamiért nem tudod a feletted lévő lépcsőt megfordítani, akkor helyette megfordítod az alattad lévő lépcsőt.",
		['normalrig'] = "Végre lehet hajtani egy normális vagy riges lépcsőn vagy egy olyan lépcső alatt alatt. A varázslat egyszerre hathat az alattad és a feletted lévő lépcsőkre.",
		['slide'] = "Végre lehet hajtani egy normális vagy riges lépcsőn. Ha van feletted egy nem átkozott lépcső, akkor az a lépcső elpusztul.",
	},
	
	["both"] = {
		['restore'] = "Végre lehet hajtani bármilyen lépcsőn vagy egy felületnek a nyilán ami mellet van egy lépcső. Ha rendelkezel Admiral ranggal, akkor helyreállíthatsz átkozott lépcsőket.",
		['deltwists'] = "Végre lehet hajtani csavart lépcsőkön vagy egy felületnek a nyilán ami mellet van egy csavart lépcső. Ha rendelkezel Combiner ranggal, akkor helyreállíthatsz a felülethez nem kapcsolódó lépcsőket.",
		['ghosted'] = "Végre lehet hajtani normális, riges vagy szellemesített lépcsőn vagy egy felületnek a nyilán ami mellet van egy normális, riges vagy szellemesített lépcső.",

		["archpatron"] = "Patron Lépcső Létrehozása (ha egy nyílon használod) vagy Lépcső Zsugorítása (ha egy lépcsőn használod)",
		["archarchon"] = "Archon Felület Kapuja (ha egy nyílon használod) vagy Lépcső Kapuja (ha egy lépcsőn használod)",
		["archthief"] = "Thief Lépcső Lerakása (ha egy nyílon használod) vagy Lépcső Ellopása (ha egy lépcsőn használod)",
		["archnecro"] = "Necromancer Kettős Lépcső Létrehozása (ha egy nyílon használod) vagy Lélektelen Lépcsője (ha egy lépcsőn használod)",
		["archhacker"] = "Hacker Lépcső Becsalása (ha egy nyílon használod) vagy Mozgólépcsője (ha egy lépcsőn használod)",
		["archkeeper"] = "Keeper Lépcső Helyreállítása (ha egy nyílon használod) vagy Lépcső Mozgatása/Forgatása (ha egy lépcsőn használod)",
		["archsplicer"] = "Splicer Csavart Lépcső Helyreállítása (ha egy nyílon használod) vagy Lépcső Megcsavarása (ha egy lépcsőn használod)",
		["archwicked"] = "Wicked Fala (ha egy nyílon használod) vagy Lépcső Elpusztítása (ha egy lépcsőn használod)",
		["archjoker"] = "Joker Hamis Lépcső Létrehozása (ha egy nyílon használod) vagy Lépcső Megfordítása/Visszafordítása (ha egy lépcsőn használod)",
		["archspectre"] = "Spectre Fantom Lépcső Létrehozása (ha egy nyílon használod) Vagy Lépcső Megszellemesítése/Szellemesített Lépcső Helyreállítása (ha egy lépcsőn használod)",
		["archreaver"] = "Reaver Tükrös Lépcső Létrehozása (ha egy nyílon használod) vagy Egyirányú Lépcsője (ha egy lépcsőn használod)",
		["archheretic"] = "Heretic Átkozott Kereszteződése (ha egy nyílon használod) vagy Lépcső Megátkozása/Átok levétele (ha egy lépcsőn használod)",
	},
	
	['both2'] = {
		['delsplits'] = "Csak kapuzott lépcsőkön lehet végrehajtani. Ha rendelkezel Disciple ranggal, akkor a Felületeknek a kapuját is el tudod tüntetni.",

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
	["coolwait"] = "Most nem tudsz eseményeket és rigeket varázsolni, kérlek várj ",
	["nomirror"] = "Egybe kell válnod a szellemeddel, hogy rá tudj menni tükrökre.",
	["regenused"] = "Ebben a mászásban már Regeneráltál.",

	--failed spell (server)
	["unknown"] = "Ismeretlen hiba.", --this should not show for normal players, only exploiters
	["lockedspell"] = "Ez a varázslat le van zárva!",
	["possessed"] = "Nem használhatsz varázslatokat miközben meg vagy szállva.",
	["spelllock"] = "Most nem használhatsz varázslatokat.",
	["nothere"] = "Ezt a varázslatot nem használhatod a kiképzésben.",
	["onlyracers"] = "Csak versenyzők varázsolhatnak.",
	["cancelfirst"] = "Előbb szüntesd meg a jelenlegi varázslatot...",
	["stashfull"] = "Tele van a leltárad.",
	["stashempty"] = "El kell lopnod egy lépcsőt mielőtt megvarázsolnád ezt a varázslatot.",
	["ultwait"] = "Egy másik különleges varázslat van folyamatban. Kérlek várj.",
	["notdefault"] = "A Drónoknak előbb vissza kell váltaniuk alap módba. Kérlek várj.",
	["noreshuffle"] = "Előbb válaszd meg az átrendezésnek a módját!",
	["oneoverload"] = "Nem lehet egyszerre több Mana Túltöltésed aktív.",
	["cursed"] = "Ez a lépcső átkozott!",
	["cursed2"] = "Átkozott lépcső van az utadban!",
	["blocked"] = "Ez a kereszteződés átkozott.",
	["locked"] = "Ez a lépcső le van zárva.",
	["platformlocked"] = "Célba vett felület le van zárva.",
	["normalrig"] = "Ez a varázslat csak normális vagy riges lépcsőkön működik.",
	["noway"] = "Van egy lépcső abban az irányban. (lehet, hogy láthatatlan)",
	["noway2"] = "Van egy keresztező lépcső abban az irányban. (lehet, hogy láthatatlan)",
	["noplatform"] = "Nincs felület abban az irányban.",
	["nopass"] = "Ezt a varázslatot csak a torony szélén lehet végrehajtani.",
	["pass"] = "Már van itt egy kitérés.",
	["link"] = "Már van itt egy kapocs.",
	["noblink"] = "Csak útban álló lépcsőkön lehet átvillanni.",
	["noblink2"] = "Csak olyan lépcsőkön tudod végrehajtani ezt a varázslatot, amelyeknek a teteje hozzá ér az útban álló lépcsőhöz.", 
	["noflip"] = "Csak normális, megfordított vagy riges lépcsőket lehet megfordítani.",
	["nothingtocopy"] = "Nincsenek itt lépcsők, amelyeket te vagy a szellemed le tudna másolni.",
	["wrongdirection"] = "Nem tudod ezt a varázslatot végrehajtani abban az irányban.",
	["notfound"] = "Nem található itt lépcső.",
	["nocursedblink"] = "Nem tudsz átkozott lépcsőkön átvillanni.",
	["nostairs"] = "Nincsen itt lépcső.",
	["noground"] = "Ezt a varázslatot nem lehet végrehajtani a földszinten.",
	["oddonly"] = "Ezt a varázslatot nem lehet végrehajtani ezen a szinten.",
	["noabove"] = "Nincsen közvetlenül feletted lépcső.",
	["lock"] = "Most nem használhatsz varázslatokat.",
	["outdrift"] = "A külső lifteket csak a torony külső felületein lehet létrehozni.",
	["cantgate"] = "Ez az irány le van zárva.",
	["wall"] = "Már van itt egy fal.",
	["nocurse"] = "Csak normális, riges vagy átkozott lépcsőket lehet megátkozni/átkot levenni róla.",
	["nogate"] = "Ezen a lépcsőn nincs egy kapu.",
	["noghost"] = "Csak normális, riges vagy szellemesített lépcsőket lehet szellemesíteni/szellemteleníteni.",
	["wrongplace"] = "A másik lépcsőnek a játék területen belül kell lennie.",
	["archrace"] = "Nem változhatsz át Architectté miközben egy versenyben vagy.",
	["blockedplit"] = "Nem lehet kaput létrehozni, a célba vett irányban van egy átok.",
	["cursedtarget"] = "Átkozott Lépcső van abban az irányban.",
	["lockedother"] = "Még nem tudod létrehozni a lépcsőt, a másik lépcső le van zárva.",
	["failedgate"] = "Nem sikerült kapukat létrehozni.",
	["notwist"] = "Ez a lépcső nem csavart.",
	["wrongmove"] = "Nem lehet a lépcsőt a játék területen kívülre mozgatni.",
	["blockedmove"] = "Nem lehet a lépcsőt mozgatni, mert átok van abban az irányban.",
	["lockedmove"] = "Még nem lehet a lépcsőt mozgatni, mert az útban álló lépcső le van zárva.",
	["normal"] = "Ez a lépcső már normális.",
	["lockedinter"] = "Ez a kereszteződés le van zárva.",
	["toponly"] = "A 'Gömb Hívása' varázslatot csak a legfelső szinten lehet megvarázsolni.",
	["duplicatemirror"] = "Már van egy tükör ezen a szinten.",
	["norestore"] = "Nem tudod helyreállítani a kitéréseket és a csigalépcsőket.",

	--higher rank required
	["admiral2"] = "Csak akkor állíthatsz helyre átkozott lépcsőket, ha rendelkezel Admiral ranggal.",
	["admiral"] = "Csak akkor állíthatsz helyre átkozott kereszteződéseket, ha rendelkezel Admiral ranggal.",
	["infidel"] = "Csak akkor használhatod ezt a varázslatot átkozott kereszteződésekben, ha rendelkezel Infidel ranggal.",
	["banished"] = "Csak akkor pusztíthatsz el útban álló Átkozott Lépcsőket, ha rendelkezel Banished ranggal. ",
	["annihilator"] = "Csak akkor pusztíthatsz el átkozott lépcsőket, ha rendelkezel Annihilator ranggal.",
	["disciple"] = "Csak akkor pusztíthatsz el Felületen lévő Kapukat, ha rendelkezel Disciple ranggal.",
	["nomad"] = "Csak akkor forgathatsz meg sodródott lépcsőket, ha rendelkezel Nomad ranggal.",
	["prodigy"] = "Csak akkor írhatsz felül kapukat, ha rendelkezel Prodigy ranggal.",
	["traveller"] = "Csak akkor emelhetsz fel lifteket, ha rendelkezel Traveller ranggal.",
	["controller"] = "Csak akkor mozgathatsz meg bármilyen nem átkozott lépcsőt, ha rendelkezel Controller ranggal.",--*
	["replica"] = "Csak akkor válhatsz szét a szellemeddel ezzel a varázslattal, ha rendelkezel Replica ranggal.",--*
	["lich"] = "Csak akkor pusztíthatsz el keresztező lépcsőket, ha rendelkezel Lich ranggal.",
	["hijacker"] = "Csak akkor lophatsz el bármilyen nem átkozott lépcsőt, ha rendelkezel Hijacker ranggal.",
	["transformer"] = "Csak akkor csavarhatsz meg megcsavart lépcsőket, ha rendelkezel Transformer ranggal.",
	["strider"] = "Csak akkor emelhetsz meg mégegyszer lifteket, ha rendelkezel Strider ranggal.",
	["poltergeist"] = "Csak akkor pusztíthatsz el keresztező lépcsőket, ha rendelkezel Poltergeist ranggal.",

	--rig activation
	["keeperrig"] = "A lépcső mozog!",
	["hackerrig"] = "A lépcső meghibásodott!",
	["jokerrig"] = "A lépcső átfordul!",
	["wickedrig"] = "A lépcső összeomlik!",
	["spectrerig"] = "A lépcső megszellemesedett!",
	["notspectrerig"] = "A lépcső NEM szellemesedett meg!",
	["patronrig"] = "%s adott neked ajándékba 1 Manát!",
	["thiefrig"] = "%s ellopott tőled 1 Manát!",
	["mythiefrig"] = "Elloptál egy Manát ettől a játékostól: %s",
	["notthiefrig"] = "%s már nem egy thief - mana nem lett ellopva.",
	["leftthiefrig"] = "Thief elhagyta a játékot - mana nem lett ellopva.",
	["hereticrig"] = "Meg lettél szállva!",
	["archonrig"] = "Teleportálódsz!",
	["drifterrig"] = "A lépcső forog!",
	["splicerrig"] = "A lépcső megcsavarodik!",
	["necrorig"] = "A lépcső elhalványul!",
	["reaverrig"] = "A lépcső egyirányú lett!",
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
	["2minshare"] = "Legalább 2 Mana szükséges a megosztáshoz.",
	["noshare"] = "Nincsen közelben játékos, aki Manát kaphatna...",
	["noinf"] = "Nem tudsz megosztani végtelen Manát!",
	["toomuch"] = "%s tele van Manával!",
	["shared"] = "Megosztottál Manát ezzel a játékossal: %s!",
	["received"] = "%s megosztotta veled a Manáját!",
	
	--prompts
	["scancel"] = "Szüntesd meg a varázslatodat, hogy változtass osztályt.",
	["morph"] = "Ugorj ide, hogy %s legyél!",
	
	--misc
	["secret"] = "Titok megtalálva!",
	["unlocked"] = "Varázslat feloldva!",

	--chameleon exceptions	
	["chamtutorial"] = "Nem használhatsz Chameleont a kiképzésben!",
	["champossessed"] = "Nem használhatsz Chameleont miközben meg vagy szállva.",
	["chamhypnotized"] = "Nem használhatsz Chameleont miközben hipnotizálva vagy.",
	["chamspell"] = "Előbb hajtsd végre vagy szüntesd meg a mostani varázslatodat.",
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
	["newchampass"] = "Most már változtathatsz osztályt mászás közben!",

	["tryarch"] = "VR-nélküli Architect feloldva 10 percig! Ne hagyd el a szervert.",
	["newarchpass"] = "Most már lehetsz ARCHITECT!",
	["endarch"] = "VR-nélküli Architect demó 1 perc múlva véget ér!",

	["newspectrepass"] = "Most már lehetsz SPECTRE!",
	["endcham"] = "Chameleon demó 1 perc múlva véget ér!",
	["trymana"] = "Nagyobb tárhely feloldva 10 percig! Ne hagyd el a szervert.",
	["endmana"] = "Nagyobb tárhely demó 1 perc múlva véget ér!",

	
	["used"] = "Ezt a kódot már elhasználtad.",
	["tooshort"] = "Az üzeneted túl rövid volt és nem lett elküldve.",
	["sent"] = "Az üzeneted sikeresen el lett küldve, köszönjük.",

	--custom tower feedbacks
	["notinrace"] = "Nem állíthatod át a végtelen módot egy verseny közben!",
	["notinreg"] = "Nem állíthatod át a végtelen módot miközben a lépcsőház újraépül!",
	["infinite"] = "A szerver most végtelen módban van!",
	["classic"] = "A szerver most klasszikus módban van!",
	["casual"] = "Átlagos játékosok most varázsolhatnak!",
	["nocasual"] = "Átlagos játékosok most nem varázsolhatnak!",
	["purge"] = "Tisztítás most okoz regenerálást klasszikus módban!",
	["nopurge"] = "Tisztítás most nem okoz regenerálást klasszikus módban!",
	["noevens"] = "Páros szintek most le vannak zárva!",
	["evens"] = "Páros szintek most nincsenek lezárva!",
	["orbmoves"] = "Legfelső Szinti Gömb most véletlenszerűen mozog magától!",
	["orbstopped"] = "Legfelső Szinti Gömb most nem mozog magától!",
	["infreg"] = "A lépcsőház most újra fog épülni magától egy végtelen verseny után!",
	["noinfreg"] = "A lépcsőház most nem fog magától újraépülni egy végtelen verseny után!",
	["drones"] = "Kicsi Drónok bekapcsolva!",
	["nodrones"] = "Kicsi Drónok kikapcsolva!",
	["dronefix"] = "Drónok helyre fognak állítani lépcsőket!",
	["nodronefix"] = "Drónok nem fognak helyreállítani lépcsőket!",
	["droneunlock"] = "Drónok el fognak távolítani átkozott kereszteződéseket!",
	["nodroneunlock"] = "Drónok nem fognak eltávolítani átkozott kereszteződéseket!",
	["droneuncurse"] = "Drónok helyre fognak állítani átkozott lépcsőket!",
	["nodroneuncurse"] = "Drónok nem fognak helyreállítani átkozott lépcsőket!",
	["dronemove"] = "Drónok meg fognak mozgatni lépcsőket alap módban!",
	["nodronemove"] = "Drónok nem fognak megmozgatni lépcsőket alap módban!",
	["dronespin"] = "Drónok meg fognak forgatni lépcsőket alap módban!",
	["nodronespin"] = "Drónok nem fognak megforgatni lépcsőket alap módban!",
	["noinput"] = "Adjál meg egy értéket!",
	["nonumber"] = "Adjál meg egy számot!",
	["notrace"] = "Nem állíthatod át a toronynak a szintjeit egy verseny közben!",
	["notultimate"] = "Nem állíthatod át a toronynak a szintjeit miközben egy különleges varázslat folyamatban van!",
	["notregen"] = "Nem állíthatod át a toronynak a szintjeit miközben a lépcsőház újraépül!",
	["wait"] = "A torony szintjei változnak, légyszíves várj...",
	["duration"] = "Verseny időtartalma megváltozotatva (a jelenlegi versenyt nem befolyásolja)",
	["init"] = "Legelső Végtelen mód intervallum megváltoztatva",
	["reduction"] = "Végtelen mód Intervallum csökkentési ideje megváltoztatva",
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
	["pranked"] = "%s átverésének áldozata lett %s!",
	["found"] = "%s megtalálta %s láthatatlan lépcsőjét!",
	["disco"] = "%s élvezi %s diszkó zenéjét.",
	["trap"] = "%s beleesett %s csapdájába.",
	["obby"] = "%s megpróbálja megcsinálni %s obbiját.",
	["default"] = "Drónok visszaváltottak alap módba.",
	["reg"] = "A lépcsőház újraépül.",
	["done"] = "Lépcsőház újraépítése be lett fejezve.",
	["union"] = "%s egybevált a szellemével!",
	["eliminated"] = "%s kiesett a versenyből.",
	["won"] = "%s megnyerte a versenyt!",
	["falsestart"] = "Érvénytelen Indulás",
	["countdown"] = "Verseny %d másodperc múlva!",
	["noplayers"] = "Senki sem versenyzik, végtelen mód nem fog elindulni!",
	["nojoin"] = "A verseny bezárult - új játékosok már nem szállhatnak be.",
	["allfalse"] = "Az összes játékos Túl Korán indult el!",
	["safety"] = "Toronynak a szintjei megváltoztak, ez a verseny nem fog elindulni.",
	["leader"] = "%s vezet!",
	["toolate"] = "Senki sem nyert időben",
	["go"] = "INDULÁS!",
	["over"] = "Versenynek vége!",

	["newrace"] = "%s elkezdte megmászni a tornyot - versenyezz ellene!",
	["joined"] = "%s beszállt a versenybe!",
	["2min"] = "%s olyan jó a játékban, hogy senki se hívta ki!",
	["infstart"] = "Végtelen verseny elkezdődött!",

}

module.localfeedback = {

	["cancel"] = "Előbb szüntesd meg a mostani varázslatodat!",
	["nomana"] = "Nincs elég Manád!",
	["notokens"] = "Nincsen elég Zsetonod!",
	["unlocked"] = "Varázslat feloldva!",
	["maxmana"] = "Már tele vagy Manával!",
	["nopurchase"] = "Nem kell Manát venned a kiképzésben!",

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
	["nomusic"] = "Nem sikerült betölteni a zenét.",
	["noteleport"] = "Teleportálás sikertelen!", 
	["norefresh"] = "Még nem tudsz újratölteni.",

}

module.switchon = {

	["JOKER1"] = "Nem fogsz láthatatlan lépcsőket felfedni.",
	["WICKED1"] = "Nem fogsz aktiválni Wicked Rigeket.",
	["KEEPER1"] = "Nem fogsz aktiválni Keeper Rigeket.",
	["SPECTRE1"] = "Nem fogsz aktiválni Spectre Rigeket.",
	["HACKER1"] = "Mozgólépcső immunitás bekapcsolva.",
	["HACKER2"] = "Mozgólépcső és rig immunitás bekapcsolva.",
	["ARCHON1"] = "Csak felfelé vezető kapuk hatnak rád.",
	["DRIFTER1"] = "Nem fogsz aktiválni Drifter Rigeket.",
	["SPLICER1"] = "Nem fogsz aktiválni Splicer Rigeket.",
	["REAVER1"] = "Nem fogsz aktiválni Reaver Rigeket.",
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
	["REAVER1"] = "Aktiválni fogsz Reaver Rigeket.",
	["GREMLIN1"] = "Közelben lévő Dugóhúzók feloldva.",
	["NONE"] = "Különleges hatásokra való immunitás kikapcsolva.",
}

local timedSpell = "%s megvarázsolta az osztálya időzített varázslatát (%s)!"

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
	["hackeraltevent"] = "%s az összes normális lépcsőt átváltoztatta Felfelé haladó Mozgólépcsővé!",

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
	["splicerevent"] = "%s az összes normális lépcsőt összekapcsolta!",
	["spliceraltevent"] = "%s az összes normális lépcsőt szétválasztotta!",

	["necromancerrigevent"] = "%s rárakott az összes normális lépcsőre Necromancer Riget!",
	["necromancerevent"] = "%s túlterhelte a tornyot Lelketlen lépcsőkkel!",
	["necromanceraltevent"] = "%s az összes normális lépcsőnek elvette a lelkét!",

	["gremlinrigevent"] = "%s rárakott az összes normális lépcsőre Gremlin Riget",
	["gremlinevent"] = "%s az összes normális lépcsőt átváltoztatta pörgő lépcsővé!",
	["gremlinaltevent"] = "%s túlterhelte a tornyot Villamos lépcsőkkel!",

	["reaverrigevent"] = "%s rárakott az összes normális lépcsőre Reaver Riget!",
	["reaverevent"] = "%s az összes normális lépcsőt átváltoztatta véletlen irányban lezárt Egyirányú Lépcsővé!",
	["reaveraltevent"] = "%s az összes normális lépcsőt átváltoztatta fentről lezárt Egyirányú Lépcsővé!",

	["newmode"] = "%s átváltotta a drónokat %s módra!",

	["chameleonrigevent"] = "%s rárakott az összes normális lépcsőre Chameleon Riget!"
}

module.spells.extras = {

	["Prompt"] = "Nyomj meg egy varázslatot, hogy megtudd hogyan kell használni",
	["Title1"] = "Átlagos varázslatok",
	["Title2"] = "Egyedi különleges varázslatok",
	["Title3"] = "Megosztott különleges és átlagos varázslatok",
	["ManaCost"] = "%s Manába kerül", 
	["TokenCost"] = "%s Zsetonba kerül", 
	["Special"] = "Különleges Szükségletek: %s",
	["Execution"] = "Végrehajtás: %s",
	["Description"] = "Leírás: %s",
	["basic"] = "Átlagos",
	["ultimate"] = "Különleges",
	["unlock"] = "0 (3 a megszerzéshez)",
	["none"] = "Nincsen különleges feltétele",
	["LeftHand"] = "Bal Kéz",
	["RightHand"] = "Jobb Kéz",
}

module.gui.basic.jumpdelay = "ugrás visszatöltődik"
module.gui.basic.dancetime = "ITT AZ IDEJE TÁNCOLNI!"

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

	["possessed"] = "Azok az idegesítő Hereticek!",
	["hypnotised"] = "Hol vagyok?",
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





