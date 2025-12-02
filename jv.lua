--VERSION 4.1.x--
-- JAVANESE / BASA JAWA / ꦧꦱꦗꦮ --

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {

	["default"] = "ASALI",
	["validate"] = "TEBUS",

}

module.gui.switcher = {

	["join"] = "GABUNG",
	["friends"] = "KÅNCÅ ONLINE",
	["refresh"] = "nyegeraké…",
	["fail"] = "GAGAL NYEGERAKÉ! :[",
	--NEW
	["refreshbutton"] = "SEGERAKÉ",
	["failed"] = "Gagal teleportasi! :[]",
	["classic"] = "Menårå Klasik",
	["pro"] = "Menårå Pro",
	["custom"] = "Menårå Kustom",
	["noVR"] = "Menårå Nglarangi VR",
	--END NEW


}

module.gui.serversettings = {

	["Drones"] = "SETÈLAN DRONE",
	["DronesReadOnly"] = "SETÈLAN DRONE (wåcå mung)",
	["DroneEnabled"] = "Drone diaktifaké",
	["DroneFix"] = "Drone mulihaké undhak-undhakan",
	["DroneRemove"] = "Drone mbusek kutukan prapatan",
	["DroneUnCurse"] = "Drone mbebasaké undhak-undhakan kawutuk",
	["DroneMove"] = "Drone mindahaké undhak-undhakan jero mode régulèr",
	["DroneSpin"] = "Drone muter undhak-undhakan jero mode régulèr",
	["DroneSpeed"] = "Kacepetan mlesir Drone (tataran/detik)",
	["DroneDelay"] = "Durasi puteran Drone (detik)",
	["DroneMax"] = "Jumlah undhak-undhakan maksimum (Drone will exclusively destroy above this limit)",
	["DroneMin"] = "Jumlah undhak-undhakan minimum (Drone will exclusively create below this limit)",
	["DroneBlock"] = "Cursed intersection chance for every empty intersection encounter (persèn)",
	["DroneCurse"] = "Cursed stairs chance for creation and normal stairs encounter (persèn)",

	["Tower"] = "SETÈLAN MENÅRÅ",
	["TowerReadOnly"] = "SETÈLAN MENÅRÅ (wåcå mung)",
	["InfMode"] = "Mode Infinit (ora biså diganti wektu balapan utåwå pangrégénerasèn)",
	["CasualPlayers"] = "Pandaki kasual biså nganggo månterå",
	["Regeneration"] = "Panggawéan undhak-undhakan otomatis sawisé Panyirnan Wicked (ora bakal fungsi jero mode Infinit)",
	["EvenLevels"] = "Tataran genep diwatesi",
	["OrbMoves"] = "Bola pungkasan ngganti posisiné",
	["InfRegeneration"] = "Panggawéan undhak-undhakan otomatis jero server anyar, tataran menårå diganti lan sawisé balapan infinit",
	["TowerLevels"] = "Tataran menårå (utåwå tataran sing aktif jero mode Infinit). Ora biså diganti wektu balapan utåwå pangrégénerasèn",
	["RaceDuration"] = "Durasi balapan maksimum. Ora bakal ndayani balapan saiki. (detik)",
	["InfStart"] = "Interval rondhe pisanan mode Infinit (2 tataran bakal digawé saben rondhe) (detik)",
	["InfReduction"] = "Pangurangan interval mode Infinit (saben rondhe bakal dikurangi karo) (detik)",
	["InfMin"] = "Durasi interval minimum mode Infinit (detik)",

	--NEW KEY
	["CooldownTime"] = "Jångkå pangadheman Acårå lan Rig (detik)",
	--END NEW

}


module.gui.shop = {

	--NEW
	["architect"] = "Pas game Architect allows kowé dadi Architect tanpå prangkat endhas VR.",
	--END NEW

	["chameleon"] = "Chameleon bisā ngganti kelas wektu pandakèn.",
	["spectre"] = "Spectre iku kelas basis teleportasi nodheg kanggo ndaki dhèwèkan (solo play)",
	["mana"] = "Jembaraké kapasitas manamu kanthi 10 poin.",

	["3tokens"] = "Mbukak siji månterå utåwå nguncalaké telu månterå pokok.",
	["30tokens"] = "Mbukak sapuluh månterå utåwå nguncalaké telung puluh månterå pokok.",
	["300tokens"] = "Cukup kanggo mbukak kabèh månterå kanthi siså sångång puluh telu token.",

	["3TOKENS"] = "3 multitoken (R$%d)",
	["30TOKENS"] = "30 multitoken (R$%d)",
	["300TOKENS"] = "300 multitoken (R$%d)",

	--NEW
	["SPECTRE"] = "Pas game Spectre (R$%d)",
	["MANA"] = "Pas game Kapasitas Mana 20 (R$%d)",
	["CHAMELEON"] = "Pas game Chameleon (R$%d)",
	["ARCHITECT"] = "Pas game Architect (R$%d)",

	--END NEW

}


module.gui.nospellsbar = {

	["nocasual"] = "MUNG PAMBALAP BISÅ NGANGGO MÅNTERÅ",
	["possessed"] = "DISUPATANI! (Kumpulaké mana kanggo diluwari)",

}

--NEW
module.gui.stats = {

	["badges"] = "PANGREGANMU",
	["climbs"] = "PANDAKÈNMU",
	["total"] = "GUNGGUNG PANDAKÈN/KAMENANGAN",
	["best"] = "BEST TIME OVERALL",
	["norecord"] = "[ora ånå rèkor]",

	["2124486274"] = "Ngapusi Sleazel",
	["1803533030753957"] = "Luwang Ireng",
	["2124480173"] = "Panyidran Wicked",
	["2124480172"] = "Pangapusan Joker",
	["2124637294"] = "Lelakon Drifter",
	["2124517579"] = "Panyolongan Thief",
	["4464785885277417"] = "Panyambungan Splicer",
	["2124480174"] = "Printah Keeper",
	["2124637293"] = "Panyambungan Archon",
	["2124517578"] = "Èksploitasi Hacker",
	["707445818894757"] = "Pamuteran Gremlin",
	["2124480171"] = "Harga Diri Patron",
	["1407551481032773"] = "Réflèksi Reaver",
	["2124637295"] = "Pangutukan Heretic",
	["1885715582646280"] = "Ritus Necromancer",
	["2124480175"] = "Logika Muggle",
	["2124826874"] = "Full Circle",
	["2124529966"] = "Liwati Lantihan",
	["2124826880"] = "Possessed Fate",
	["3731010929572663"] = "Hypnotised Dream",
	["2124913225"] = "Désain Architect",
	["2124702954"] = "Rootkit Installed",
	["2124702945"] = "Destroy Everything",
	["2124702946"] = "Order Restored",
	["128721686760593"] = "You spin me round and round.",
	["2124702952"] = "I'll Take The Elevator",
	["3121101516427751"] = "The Entanglement",
	["2124702942"] = "Leave No Noob Behind",
	["2124702950"] = "Illuminati Confirmed",
	["2124702951"] = "Mine, Mine All Mine",
	["1165646024608180"] = "We are one.",
	["2303731210592278"] = "Rise, rise, RISE!",
	["2124702949"] = "Excommunication",
	["2124702943"] = "Pranking Is Living",
	["2124702948"] = "Spells Are Overrated",
	["2124826876"] = "Perfect Circle",
	["2124645341"] = "Bab Rahasya",
	["2126893403"] = "Bab Rahasya Super",
	["2126893411"] = "Bab Rahasya Mega",

}


module.gui.questions = {
	["cancel"] = "Åpå kowé gelem murungaké månterå winates iki? Token ora biså dibalèkaké.",
	["tutorial"]= "Åpå kowé gelem ndolan lantihan?",
	["skip"] = "Åpå kowé gelem ngliwati lantihan?",
	["reshuffle"] = "Åpå kowé gelem kabèh undhak-undhakan kanggo ngéndhåni tubrukan wektu dipindahaké? Yèn ora, undhak-undhakan sing ing arah åpå waé bakal diremukaké.",
}
--END NEW


module.gui.codes = {

	["title"] = "LEBOKAKÉ KODHE",
	["body"] = "Ketik kodhe ing kéné:",
	["prompt"] = "(kodhe)",
	["button"] = "TEBUS",

}

module.gui.jukebox = {

	["title"] = "PAMUTER MUSIK",

	["master"] = "VOLUME MASTER",
	["default"] = "(nggunakaké master volume)",
	["climb"] = "MUSIK PANDAKÈN",
	["endgame"] = "MUSIK PUNGKASAN",
	["failed"] = "[gagal momot]",
	--NEW
	["off"] = "BISU",
	--END NEW
}

module.gui.results = {

	["title"] = "ASIL BALAPAN",

	["place"] = "POSISI",
	["name"] = "JENENG",
	["level"] = "TATARAN MAKSIMAL",
	["time"] = "WEKTU",
	["rank"] = "PANGKAT",
	["not"] = "N/A",
	[1] = "PAMENANG",
	[2] = "ka-2",
	[3] = "ka-3",
	[4] = "ka-4",
	[5] = "ka-5",
	[6] = "ka-6",
	[7] = "ka-7",
	[8] = "ka-8",
	[9] = "ka-9",
	[10] = "ka-10",
	[11] = "ka-11",
	[12] = "ka-12",

}

module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "Rig %s",
	["mode"] = "Mode %s Drone",
	["refill"] = "Overload Mana (%s)",
	["union"] = "Fusi Memedi (%s)",
}

module.spells.names = {

	--PATRON
	["summon"] = "Wangun Undhak-undhakan",
	["restore"] = "Panggil Bola", 
	["split"] = "Wangun Manèh ing Ngarep",
	["shrinkabove"] = "Cilikaké Undhak-undhakan ing Dhuwur",
	["link"] = "Gawé Kreteg Énérgi",
	["portal"] = "Gawé Portal",

	["summoner"] = "Pamangun",
	["patronevent"] = "Berkahi Menårå",
	["patronaltevent"] = "Panyilikan",

	--JOKER 
	["flip"] = "Walik Undhak-undhakan",
	["flipabove"] = "Walik Undhak",
	["fake"] = "Create Fake Stairs",
	["invisible"] = "Wangun Undhak-undhakan Ora Katon",
	["disco"] = "Undhak-undhakan Disko",
	["trap"] = "Gawé Basangan",

	["flipper"] = "Pamalik",
	["jokerevent"] = "Dhelikaké Menårå",
	["jokeraltevent"] = "Walik Kabèh Undhak-undhakan",

	--WICKED
	["destroy"] = "Remukaké Undhak-undhakan",
	["destroyabove"] = "Remukaké Undhak-undhakan ing Dhuwur",
	["bend"] = "Bèngkok Undhak-undhakan Munggah",
	["damage"] = "Rusak Undhak-undhakan ing Dhuwur",
	["flatten"] = "Bèngkok Undhak-undhakan ing Ngarep Mudhun",
	["wall"] = "Gawé Témbok" ,

	["bender"] = "Pambèngkok",
	["wickedevent"] = "Pangremukan",
	["wickedaltevent"] = "Sirnakaké Kabèh Menårå!",

	--KEEPER
	["move"] = "Alih Undhak-undhakan",
	["rotate"] = "Puter Undhak-undhakan",
	["moveup"] = "Munggahaké Undhak-undhakan",
	["movedown"] = "Pulih Undhak-undhakan",
	["moverandom"] = "Alih Undhak-undhakan ing Dhuwur Acak",
	["rig"] = "Alih Undhak-undhakan Acak",

	["ascension"] = "Pamunggah",
	["keeperevent"] = "Pangocok-ocokan",
	["keeperaltevent"] = "Pamulih Menårå",

	--SPECTRE
	["phantom"] = "Gawé Undhak-undhakan Ilang",
	["ghost"] = "Memedèni Undhak-undhakan ing Dhuwur",
	["shadow"] = "Memedèni Undhak-undhakan",
	["horizontal"] = "Teleportasi Horisontal",
	["random"] = "Teleportasi Acak",
	["vertical"] = "Teleportasi Munggah",

	["traveller"] = "Melip-Melip",
	["spectreevent"] = "Pangocokan Æther",
	["spectrealtevent"] = "Alam Æther",

	--HACKER
	["dash"] = "Flyhack menyang Platform",
	["blink"] = "Noclip nembus Undhak-undhakan ing Dhuwur",
	["swap"] = "Teleport menyang Memedimu",
	["slide"] = "Èskalator",
	["slideup"] = "Hack Undhak-undhakan ing Ngarep",
	["glitch"] = "Glitch Undhak-undhakan",

	["hack"] = "Pamasang Èskalator",
	["hackerevent"] = "Èskalator Munggah kanggo Kesèd",
	["hackeraltevent"] = "Èskalator Mal",

	--THIEF
	["steal"] = "Colong Undhak-undhakan",
	["stealabove"] = "Colong Undhak-undhakan ing Dhuwur",
	["place"] = "Balèkaké Undhak-undhakan",
	["uppass"] = "Undhak-undhakan Spiral",
	["sidepass"] = "Undhak-undhakan Trabasan",
	["drop"] = "Undhak-undhakan Kreteg",

	["heist"] = "Panyolong",
	["thiefevent"] = "Donyå Wråtå",
	["thiefaltevent"] = "Trabasan kanggo Kéré",

	--ARCHON
	["splitup"] = "Bukak Portal Munggah",
	["splitrotate"] = "Bukak Portal menyang Sasisih",
	["splitside"] = "Bukak Portal menyang Sandhing",
	["splitrandom"] = "Bukak Portal Acak",
	["cancelsplit"] = "Tutup Portal",
	["splitforward"] = "Bukak Portal Platform",

	["splitter"] = "Pambukak Portal",
	["archonevent"] = "Labirin Portal",
	["archonaltevent"] = "Munggah-Mudhun",

	--DRIFTER
	["indrift"] = "Plorod",
	["outdrift"] = "Lelånå Undhak-undhakan",
	["updrift"] = "Platform Lift",
	["diagdrift"] = "Lelånå Platform",
	["spin"] = "Balik Undhak-undhakan",
	["driftabove"] = "Angkat Undhak-undhakan ing Dhuwur",

	["riser"] = "Operator Lift",
	["drifterevent"] = "Tornado",
	["drifteraltevent"] = "Pangangkatan",

	--HERETIC
	["createcursed"] = "Wangun Undhak-undhakan Kawutuk",
	["curse"] = "Kutuk Undhak-undhakan",
	["curseabove"] = "Kutuk Undhak-undhakan ing Dhuwur",
	["curseinter"] = "Lumpat lan Gawé Kutukan Prapatan",
	["autodown"] = "Benthèt Munggah",
	["autoup"] = "Benthèt Mudhun",

	["malediction"] = "Pangundang",
	["hereticevent"] = "Pamecahan",
	["hereticaltevent"] = "Kutuk Kabèh Menårå",

	--SPLICER
	["twistup"] = "Sambung Undhak-undhakan Munggah",
	["twistside"] = "Sambung Undhak-undhakan Sababag",
	["twistrotate"] = "Sambung Undhak-undhakan Sacedhak",
	["canceltwist"] = "Jejeg Undhak-undhakan Diplintir",
	["split2"] = "Belah Undhak-undhakan",
	["splitalt"] = "Sigar Undhak-undhakan",

	["twister"] = "Panyambung",
	["splicerevent"] = "Konèksi Undhak-undhakan",
	["spliceraltevent"] = "Pambelahan",

	--necro
	["createdual"] = "Wangun Undhak-undhakan Kembar",
	["copyplatform"] = "Salin Platform Memedimu",
	["soulbridge"] = "Gawé Kreteg Roh",
	["undeadabove"] = "Patèni Undhak-undhakan Dhuwuk",
	["revival"] = "Papan Nangèni",
	["regen"] = "Réprodhuksi Mana",

	["duality"] = "Gemini",
	["necromancerevent"] = "Panguripan Undhak-undhakan",
	["necromanceraltevent"] = "Pamanèn Undhak-undhakan",

	--reaver
	["createmirrored"] = "Wangun Undhak-undhakan Pangilon",
	["bigmirror"] = "Gawé Platform Pangilon Gedhé",
	["smallmirror"] = "Gawé Platform Pangilon Cilik",
	["outermirror"] = "Wangun Portal Pangilon njåbå",
	["merge"] = "Gamblok Reaver",
	["oneway"] = "Undhak-undhakan Siji Arah",

	["reflection"] = "Pangilo",
	["reaverevent"] = "Arah Kepekså",
	["reaveraltevent"] = "Konjungsi Munggah",


	--gremlin
	["tram"] = "Wangun Undhak-undhakan Trèm",
	["screwup"] = "Plintir Munggah",
	["revolve"] = "Ubeng Undhak-Undhakan",
	["trapstairs"] = "Undhak-undhakan Basangan",
	["screwdown"] = "Plintir Mudhun",
	["spinplatform"] = "Ubeng Platform",

	["tramway"] = "Masinis",
	["gremlinevent"] = "Kirkus Rodha Pati",
	["gremlinaltevent"] = "Kamacetan Trèm",

	--CHAMELEON
	["ditch"] = "Undhak-undhakan Silang",
	["warp"] = "Plengkung Undhak-undhakan",
	["chamdown"] = "Pindah Undhak-undhakan Mudhun",
	["chamdraw"] = "Kreteg Angkat Ngisor",
	["chamswap"] = "Dadi Memedi",
	["chamdrawabove"] = "Kreteg Angkat Ndhuwur",

	--NEW

	["mugglereg"] = "Menårå nembé régénerasi…",
	["mugglecd"] = "Pangadheman Acårå lan Rig",
	["share"] = "Bagé mana (requires 2 Mana minimum)",

	--ARCHITECT
	["archpatron"] = "Wangun utåwå Cilikaké Undhak²an",
	["archarchon"] = "Gawé Portal ing Undhak²an utåwå Platform",
	["archthief"] = "Colong utåwå Balèkaké Undhak²an",
	["archnecro"] = "Gawé Undhak²an Kembar utåwå Patèni Undhak²an",
	["archhacker"] = "Èskalator utåwå Hack Undhak²an",
	["archkeeper"] = "Alih utåwå Pulih Undhak²an",
	["archsplicer"] = "Sambung utåwå Jejeg Undhak²an",
	["archwicked"] = "Gawé Témbok utåwå Remukaké Undhak²an",
	["archgremlin"] = "Ubeng Undhak²an utåwå Platform",
	["archjoker"] = "Wangun Undhak²an Palsu utåwå Walik Undhak²an",
	["archdrifter"] = "Lelånå Undhak²an utåwå Gawé Platform Lift",
	["archspectre"] = "Gawé Undhak²an Ilang utåwå Memedèni Undhak²an",
	["archreaver"] = "Wangun Undhak²an Pangilon utåwå Undhak²an Siji Arah",
	["archheretic"] = "Kutuk Prapatan utåwå Undhak²an",

	--END NEW

}

-- common description stuff
local union = "This is a timed Ghost Union spell. Once in Ghost Union Mode, you can clip through blocking stairs and walk on ghost, obby, and fake stairs. Special stairs will have no effect on you, and you will not trigger rigs. However, you cannot cast spells in this mode."
local overload = "This is an Overload spell. It will grant you one Mana every 6 seconds for the next minute (10 in total). You can have only one overload active at a time."
local timed = "This spell is timed. "  -- do not remove space
local rig = "This is a Rig spell. It will Rig all normal stairs, one by one, with " -- do not remove space
local event = "This is an Event spell. It will affect all normal stairs with " -- do not remove space
local fill = "This is a Fill spell. It will create stairs in every empty uncursed intersection in a random direction. " -- do not remove spaces
local mode = "This is a Drone spell. It will change the drone mode to %s. In this mode drones will cast randomly either %s or %s on normal stairs. Special stairs will be restored instead. Outside of limits, drones will create and destroy respectively."
local timedExtra = " Rank up to %s to increase the limit to 90s. Casting this spell will also refill Mana for all %s with at least %s Rank." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Månterå iki kanggo mangun undhak-undhakan ing arah dipilih. Yèn ånå undhak-undhakan ngalang-alangi ing arah, dhèwèké bakal diremukaké.",
	["restore"] = "Månterå iki kanggo manggil Bola ing tataran paling dhuwur kanggo platform dipilih. Munggah pangkat dadi DEFENDER to reduce the cost to 2 Mana. Munggah pangkat dadi SAVIOUR to double the speed at which the orb will travel to You.",
	["split"] = "Månterå iki kanggo mangun manèh undhak-undhakan ing arah ngarep. Undhak-undhakan diwangun manèh bakal biyasa     Recreated stairs will be normal regardeless of original stairs type.",
	["shrinkabove"] = "This spell shrinks above stairs, allowing you to walk around them.",
	["link"] = "Månterå iki kanggo nggawé kreteg énérgi      spell creates an energy bridge between platforms for 60 seconds. Links are intangible from below. Rank up to the CREATOR rank to extend the time to 120 seconds.",
	["portal"] = "Månterå iki kanggo nggawé portal sing teleportasi      spell creates portal that will teleport all players one platform up. Portal lasts 60 seconds. Rank up to PROTECTOR to extend the time to 120 seconds.",

	["summoner"] = timed ..  "It allows you to create as many stairs as you like for one minute. Keep jumping on the arrows to create stairs." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."the Patron Rig. Patron Rig, once triggered, will increase triggering player Mana by one. If player has maximum Mana, stairs will not trigger. After triggering, stairs will become normal again.",
	["patronevent"] = fill ..  "Created stairs will be normal.",
	["patronaltevent"] = event .. "the Shrink spell.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Shrink Spell"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "This spell flips stairs around, so top will become bottom and vice versa. You may also flip such stairs back.",
	["flipabove"] = "This spell flips above stairs, so top will become bottom and vice versa. You may also flip such stairs back.",
	["fake"] = "This spell allows you to create fake stairs in the chosen direction. If there are any crossing stairs in the way, they will be destroyed. Any player (including you) that will attempt to climb them will fall through, with the exception of TRICKSTERS, ITS and players in the Ghost Union Mode.",
	["invisible"] =  "This spell creates invisible stairs. However, this will not destroy crossing stairs, so you can only place stairs in an empty intersection. Rank up to JESTER to see all invisible stairs, and have the option to not reveal them.",
	["disco"] = "This spell turns stairs into disco mode. Any player (including you) will stop and dance on them for 5 seconds (usually twice). Ranks COMIC and up are immune to disco stairs.",
	["trap"] = "This spell turns platform into a trap door for 60 seconds. Any player (including you) that will walk on the trap will fall to the platform below. Rank up to JOKESTER to be able to detect platform traps. Rank up to TRICKSTER to be immune to such traps.",

	["flipper"] = timed ..  "It allows you to cast as many flip stairs spells as you like for one minute. Always above stairs will be flipped, if found. If not, below stairs will be flipped instead."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "the Joker Rig. Stairs, once triggered, will flip automatically.",
	["jokerevent"] = event .. "the Invisiblity.",
	["jokeraltevent"] = event .. "the Flip spell.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Invisible Spell"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "This spell destroys stairs. Unlike other spells, it will work on any stairs. Rank up to VILE to cast this spell for free. Rank up to VICIOUS to get 1 Mana everytime you destroy any special stairs. Rank up to ANNIHILATOR to destroy cursed stairs.",
	["destroyabove"] = "This spell destroys above stairs. Unlike other spells, it will work on any stairs. Rank up to VICIOUS to get 1 Mana everytime you destroy any special stairs. Rank up to ANNIHILATOR to destroy cursed stairs.",
	["bend"] = "This spell bends stairs up. Use it to gain access to above platform.",
	["damage"] = "This spell turn above stairs into an obby, by removing most of the steps. Before attempting, remember about jump cooldown. Rank up to DESTROYER to walk on obbies just like on normal stairs.",
	["flatten"] = "This spell bends opposite stairs down. Use it to gain access to the opposite platform.",
	["wall"] = "This spell creates energy wall on the platform plus a link to opposite platform for 60 seconds. Only Wickeds and Ghost Unions can go through such wall and on the link.",

	["bender"] = timed .. "It allows you to cast as many bend up stairs as you like for one minute. Both below and above stairs will be bent at the same time if requirements are met."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "the Wicked Rig. Stairs, once triggered, will destroy automatically. Rank up to Devil to walk on Wicked Rigs without triggering them.",
	["wickedevent"] = event .. "the Destroy spell. Regeneration will not be triggered.",
	["wickedaltevent"] = "This is an Event spell. It will destroy all the stairs and curses in the game. No exceptions. Regeneration will be triggered.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","Bend Spell"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "This spell will move stairs in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on the stairs, prompting you to choose direction. Stairs cannot be moved outside the game area. Rank up to CONTROLLER to move any un-cursed stairs.",
	["rotate"] = "This spell will rotate stairs in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on stairs, prompting you to choose direction. Stairs cannot be rotated outside the game area. Rank up to CONTROLLER to move any un-cursed stairs.",
	["moveup"] = "This spell will move stairs up, destroying any stairs in the way. Stairs cannot be moved above top level. Rank up to CONTROLLER to move any un-cursed stairs.",
	["movedown"] = "This spell fixes any special stairs. If stairs are already normal, this spell will not execute. Rank up to CAPTAIN to cast this spell for free. Rank up to ADMIRAL to be able to fix Cursed Stairs and Cursed Intersections.",
	["rig"] = "This spell will move or rotate stairs in random direction, destroying any stairs in the way. Rank up to OPERATOR to avoid stairs going down. Rank up to CONTROLLER to move any un-cursed stairs.",
	["moverandom"] = "This spell will move or rotate above stairs in random direction, destroying any stairs in the way. Rank up to OPERATOR to avoid stairs going down. Rank up to CONTROLLER to move any un-cursed stairs.",

	["ascension"] = timed .. "It allows you to cast as many move up spells as you like for one minute."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "the Keeper Rig. Stairs, once triggered, will move or rotate in random direction. Rank up to Operator, for any rigs that you trigger to never go down. Rank up to Sentinel to have an option not to trigger them.",
	["keeperevent"] = event .. "the Random Move spell. Before executing you can choose soft or forced mode. In soft mode, this spell will move or rotate all normal stairs in random direction, without destroying anything in the process. In forced mode, this spell will move or rotate all stairs in random direction, destroying any staircases in the way.",
	["keeperaltevent"] = "This is an Event spell. It will restore all stairs in the game, including cursed ones. Unlike Purge it will not remove cursed intersections.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Rig","Random Move Spell"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "This spell will create Phantom Stairs in the chosen direction. If there are any crossing stairs in the way, they will be destroyed. Phantom stairs will quickly fade away after casting, disappearing completely.",
	["ghost"] = "This spells lets you ghostify above stairs. You can walk through ghostified stairs, but cannot walk on them unless you are ranked up to AETHER. Use this spell again to de-ghostify stairs. ",
	["shadow"] = "This spell lets you ghostify stairs. You can walk through ghostified stairs, but cannot walk on them unless you are ranked up to AETHER. Rank up to PHANTOM to cast this spell for free. Use this spell again to de-ghostify stairs.",
	["horizontal"] = "This spell lets you teleport horizontally in the chosen direction. You can teleport through any un-cursed stairs in the way.",
	["random"] = "This spell will teleport you to a random platform on the same level.",
	["vertical"] = "This spell will teleport you up, to the platform above.",

	["traveller"] = timed ..  "It allows you to cast as many Horizontal Teleport spells, as you like for one minute."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "the Spectre Rig. Stairs, once triggered, will have a 50% chance of ghosting. Rank up to Vision to have an option to walk on Spectre Rigs without triggering them.",
	["spectreevent"] = event .. "the Ghosted Random Move spell. Before executing you can choose soft ghosted or forced ghosted mode. In soft ghosted mode this spell will move or rotate normal stairs in random direction, without destroying anything in the process. In forced ghost mode, this spell will move or rotate all stairs in random direction, destroying any staircases in the way.",
	["spectrealtevent"] = "This is an Event spell. It will ghostify all normal stairs. Rank up to Aether to walk on ghostified stairs. Ghost Union can also be used to walk on ghostified stairs.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Soft Ghosted Random Move Spell"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "This spell will teleport you in the chosen direction. You cannot teleport through blocking stairs. Rank up to CRACKER to speed up this spell by 50%.",
	["blink"] = "This spell will teleport you around any un-cursed blocking above stairs. If the above stairs do not effectively block the way, this spell won't work. Rank up to EXPLOITER to speed up this spell by 50%.",
	["swap"] = "This spell will teleport you to the spot where your ghost is. Unlike other basic spells, Swap can be cast anywhere.",
	["slide"] = "This spell will turn stairs into an Escalator. You can choose either Up or Down Escalator. Rank up to SCRIPTER to have an option to be immune to Escalators.",
	["slideup"] = "This spell will hack in stairs in the chosen direction. For this to work, there have to be stairs already present in that intersection facing the opposite way. Hacked in stairs can be of any un-cursed type and will be restored upon emerging.",
	["glitch"] = "This spell will glitch stairs, teleporting you and themselves to a different spot on the same level. Rank up to ZERO, to teleport stairs next to the orb, if you already are on the top level.",

	["hack"] = timed .. "It allows you to cast as many Upwards Escalators as you like for one minute. If there are blocking un-cursed stairs above, they will be demolished." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "the Hacker Rig. Stairs, once triggered it will teleport player and stairs to a different spot on the same level. Only one player will be teleported. Rank up to REAPER to have an option to walk on Hacker Rigs without triggering them.",
	["hackerevent"] = event .. "the Random Escalator spell.",
	["hackeraltevent"] = event ..  "the Upward Escalator spell.",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Rig","Random Escalator spell"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "This spell allows you to steal a below normal or rigged stairs. Either this or steal above is required to cast other basic thief spells. Rank up to HIJACKER to be able to steal any un-cursed stairs. Rank up to OUTLAW to be able to steal 2 staircases at a time.",
	["stealabove"] = "This spell allows you to steal an above normal or rigged stairs. Either this or steal below is required to cast other basic thief spells. Rank up to HIJACKER to be able to steal any un-cursed stairs. Rank up to OUTLAW to be able to steal 2 staircases at a time.",
	["place"] = "This spell allows you to place the stolen stairs back in the chosen direction. However, this will not demolish crossing stairs, so you can only place stairs in an empty intersection.",
	["uppass"] = "This spell allows you to create a spiral staircase from stolen stairs. It can only be cast on outer platforms and will last one minute. Rank up to BANDIT for the staircase to last two minutes.",
	["sidepass"] = "This spell allows you to create a bent bypass from stolen stairs. It will be created in chosen direction and will last one minute. Rank up to ROBBER for the bypass to last two minutes.",
	["drop"] = "This spell allows you to ditch stairs for free. You will need to find an empty intersection though. Ditched stairs are flat.",

	["heist"] = timed .. "It allows you to cast place stairs spell as many times as you like. Unlike regular place spell, this spell can be cast through crossing stairs, as stairs will be stolen automatically in this mode." .. string.format(timedExtra,RankData.THIEF[7].name,"Thieves",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "the Thief Rig. Stairs once triggered, will steal one Mana from triggering player and add it to your own Mana. You will not receive Mana if your Mana is at maximum. You will also not receive Mana if you change alignment.",
	["thiefevent"] = event .. "the Flatten Stairs spell.",
	["thiefaltevent"] = "This is an Event spell. It will create bypass in each inward north and south intersection. If the intersection is cursed, bypass will not be created.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Steal or Place spell"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "This spell will connect below stairs to another in a horizontal direction of your choosing with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to ILLUMINATI to be able to walk through horizontal portals.",
	["splitrotate"] = "This spell will connect below stairs to another in a rotated horizontal direction of your choosing with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to ILLUMINATI to be able to walk through horizontal portals.",
	["splitup"] = "This spell will connect below stairs to stairs above with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to SAGE to ignore downward connections.",
	["cancelsplit"] = "This spell will discard any Gates on stairs. Rank up to DISCIPLE to be able to remove platform Gates. Rank up to SCHOLAR to cast this spell for free.",
	["splitrandom"] = "This spell will connect below stairs to any valid intersection on the same floor with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to ILLUMINATI to be able to walk through horizontal portals.",
	["splitforward"] = "This spell will connect two platforms in a horizontal direction of your choosing with a Gate. Rank up to DISCIPLE to be able to remove platform splits. Occupying stairs won't block the connection. Rank up to ILLUMINATI to be able to walk through such portals.",

	["splitter"] = timed .. "It allows you to create as many platform splits as you like for one minute." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "the Archon Rig. Stairs, once triggered, will teleport the player to the direction they were walking in, crossing any blocking un-cursed stairs. After triggering, stairs will become normal again.",
	["archonevent"] = event .. "the Random Gate spell.",
	["archonaltevent"] = event .. "the Upward Gate spell.",
	["archonmode"] = string.format(mode,"Archon","Archon Rig","Random Gate spell"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "This spell will create a temporary surfboard, moving you to a platform in a direction of your choosing.  You cannot surf through blocking stairs.",
	["updrift"] = "This spell will create an elevator using below and above platforms. The platforms will be restored after a given time period. Rank up to VAGABOND to speed up the movement. Rank up to TRAVELLER to be able to boost the lift to second level. Rank up to STRIDER to be able to boost lift again to third level.",
	["diagdrift"] = "This spell will either: Create a horizontal elevator using below and any platform in a diagonal fashion. Such elevator will disappear after 7 return journeys. OR: If cast in outside direction, this spell will create an elevator would circle around the Tower once.",
	["spin"] = "This spell will rotate below stairs 180 degrees. Rank up to NOMAD to be able to spin drifted stairs.",
	["outdrift"] = "This spell will drift below stairs into random orientation, towards a random empty intersection on the same level. Rank up to NOMAD to drift already drifted stairs.",
	["driftabove"] = "This spell will drift above stairs with less randomness and within the same intersection, so that you can walk under and climb them.",

	["riser"] = timed .. "It allows you to create as many Vertical Elevators as you want for one minute. You can also boost lifts while using this spell, if you are ranked high enough." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "the Drifter Rig. Stairs, once triggered, will spin around in random direction. Rank up to VOYAGER to gain immunity to this rig.",
	["drifterevent"] = event .. "the Random Drift spell.",
	["drifteraltevent"] = event .. "the Lift Above Stairs spell.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Random Drift spell"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "This spell allows you to create cursed stairs in the chosen direction. Any crossing stairs will be destroyed. Rank up to BANISHED to destroy crossing cursed stairs.",
	["curse"] = "This spell will curse below stairs. Use this spell again to uncurse stairs.",
	["curseabove"] = "This spell will curse above stairs. Stairs will lift temporarily, allowing you to cross. Use this spell again to uncurse stairs.",
	["curseinter"] = "This spell will allow you to flicker across to the opposite platform, if there are no stairs in the way. Intersection will become cursed after this spell, so other players cannot use it anymore. If you are ranked up to INFIDEL, you can use this spell on already cursed interscetions, uncursing them in the process.",
	["autodown"] = "Use this spell to create and lift special mirrored section of the lower part of the staircase. Only ghost unions and Heretics can walk on that section.",
	["autoup"] = "Use this spell to create special mirrored section of upper part of the crossing staircase. Regular steps will be lowered down. Only ghost unions and Heretics can walk on that section.",

	["malediction"] = timed .. "It allows you to create as many cursed stairs as you want for one minute." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "the Heretic Rig. Stairs, once triggered, will possess the triggering player. They will have to find Mana to be released. Possessed players cannot cast spells. Rank up to UNBELIEVER to gain immunity to this rig. Rank up to EXILED to get 1 mana each time a player is possessed.",
	["hereticevent"] = event .. "the Random Schism spell.",
	["hereticaltevent"] = event .. "the Curse Stairs spell.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Random Schism spell"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "This spell will twist stairs in right or left direction, connecting them to the neighbouring staircase. If there are no stairs in the chosen destination, they will be created. Rank up to TRANSFORMER to use this spell on already twisted stairs.",
	["twistrotate"] = "This spell will twist stairs in the rotated horizontal direction, connecting them to the neighbouring staircase. If there are no stairs in the chosen destination, they will be created. Rank up to TRANSFORMER to use this spell on already twisted stairs.",
	["twistup"] = "This spell will twist above stairs and likely below stairs too (if they are normal or rigged), so they create 2-level spiral staircase up. Rank up to TRANSFORMER to use this spell on already twisted stairs.",
	["canceltwist"] = "This spell will restore any twisted stairs. Rank up to COMBINER to cast this spell from platform on disconnected twisted stairs. Rank up to MIXER to cast this spell for free. Rank up to OPTIMUS to gain 1 Mana every time You restore twisted stairs.",
	["split2"] = "This spell splits stairs into two opposing staircases, allowing you to access all four platforms.",
	["splitalt"] = "This spell splits stairs into two separated staircases, allowing you to bypass above stairs - even when they are cursed.",

	["twister"] = timed .. "It allows you to cast as many Split Stairs Spells as you like for one minute. Split spell variety will be chosen automatically for Your benefit." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "the Splicer Rig. Stairs, once triggered, will splice in a random direction. Rank up to ASSEMBLER to have the option to avoid Splicer Rigs.",
	["splicerevent"] = event .. "the Random Splice spell.",
	["spliceraltevent"] = event .. "the Split Stairs spell.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Random Splice spell"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	["createdual"] = "This spell will Create Stairs for both you and Your ghost, so that players near the ghost can use them. Rank up to SKELETON for ghost to ignore cursed stairs and intersections. Rank up to LICH to demolish crossing stairs with this spell.",
	["copyplatform"] = "This spell will copy any stairs from ghost platform to yours and vice-versa. Stairs will be copied in mirrored fashion. Copied stairs will always be normal. Rank up to REVENANT for this spell to remove curses if it needs to.",
	["soulbridge"] = "This spell will create a rotating link between Yours and any diagonal platform of Your choice. Your ghost will also create a link in the opposite direction. Necromancer links spin automatically. If you create a link in the middle of the map, 2 links will create an 'X' shape.",
	["undeadabove"] = "This spell will remove soul from above stairs and stairs above your ghost. If there are no stairs above your ghost, they will be created. Such stairs can be walked through and walked on, but will fade away after a minute.",
	["revival"] = "Use this spell to create a 'revival' point where your ghost is. If you ever fall below such point, you will be teleported there. Revival point will be removed after use, completed climb or when you cast another one. Chameleon morph will also remove the point. Rank up to Acolyte to bring Orb to this point, if you cast it on the top level.",
	["regen"] = "Use this spell to regenerate Mana once per climb. You will get 6 Mana points upon use. Players near Your ghost will get 3 Mana too. Rank up to DEATHBRINGER to regenerate 10 Mana and 5 Mana for players near Your ghost.", 

	["duality"] = timed .. "It allows you to cast at many Dual Stairs as you like for one minute. Crossing stairs will be demolished regradless of rank." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "the Necromancer Rig. Stairs, once triggered, will have their soul removed and will fade away.",
	["necromancerevent"] = fill ..  "Created stairs will be soul-less and will fade away after a minute.",
	["necromanceraltevent"] = event .. "the Remove Soul spell. Such stairs will fade away after a minute.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Remove Soul spell"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,


	["createmirrored"] = "This spell will Create Stairs with a mirror in the middle. Once you walk through the mirror, you will merge with Your ghost. Walk through the mirror again and you will separate from Your ghost. Rank up to Poltergeist to demolish crossing stairs with this spell. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["bigmirror"] = "This spell will create a giant mirror on the whole level for 10 seconds. Only players merged with their ghost can walk on the mirror. When you step away from mirror, you will become unmerged. Giant mirrors will remove any small mirrors on the level. Rank up to Presence to extend mirror lifetime to 15 seconds.",
	["smallmirror"] = "This spell will create a small mirror in the chosen direction for 6 seconds. Only players merged with their ghost can walk on the mirror. When you step away from mirror, you will become unmerged. Rank up to Presence to extend mirror lifetime to 9 seconds.",
	["outermirror"] = "This spell will create a mirror in the outer direction and twin mirror on the other side of the map. It can only be used in outer platforms. Players who walk through such mirror will merge with their ghost and teleport to the connected mirror on the other side of the tower. Mirror will fade away after 60 seconds. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["merge"] = "Use this spell to manually merge with Your ghost. Rank up to REPLICA to use this spell to unmerge from Your ghost. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["oneway"] = "This spell will turn below stairs into one-way passage, while merging players with their ghost, if they walk in proper direction. You can choose which direction to block. Rank up to Illusion to be immune to one-way stairs effect. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",

	["reflection"] = timed .. "It allows you to cast as many Giant Mirrors as you like for one minute. You will be merged with your ghost automatically." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "the Reaver Rig. Stairs, once triggered, will turn into one-way stairs with random direction blocked. Rank up to WIGHT to have an option to avoid below Reaver Rigs.",
	["reaverevent"] = event .. "the Random One-Way Stairs spell.",
	["reaveraltevent"] = event .. "the Upward One-Way Stairs spell.",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Random One-Way Stairs spell."),
	["reaverrefill"] = overload,
	["reaverunion"] = union,


	["tram"] = "This spell will create Tram Stairs in the chosen direction. Tram stairs have only half the length of the normal stairs, and once created will automatically travel to the target platform. To make stairs travel back, jump on them without a spell equipped. Rank up to FIEND to remotely bring back away Trams from any platform.",
	["screwdown"] = "This spell will turn below stairs into downwards corkscrew. It will be near to impossible to ascend such stairs. Rank up to DAEMON to manually control rotation with a switch. (it may not work when there is another Daemon nearby).",
	["screwup"] = "This spell will turn above stairs into upwards corkscrew, allowing you to pass. It will be near to impossible to descend such stairs. Rank up to DAEMON to manually control rotation with a switch. (it may not work when there is another Daemon nearby).",
	["revolve"] = "This spell will turn below stairs into revolving propeller on a Z axis. You can choose direction of the rotation. Stairs will stop briefly after each 180 turn.",
	["trapstairs"] = "This spell will turn below stairs into a trap door. Stairs, once triggered, will revolve on X axis, dropping careless players below. Rank up to GOBLIN to detect Gremlin Traps. Rank up to DIABLO to be immune to Gremlin traps.",
	["spinplatform"] = "This spell will revolve the whole platform with any adjacent stairs (including cursed ones), in the direction of your choice. Platform will pause briefly after each 90 degree turn. Once full 360 spin is achieved, platform will turn back to normal.",

	["tramway"] = timed .. "It allows you to cast as many Tram Stairs as you like for one minute." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "the Gremlin Rig. Stairs, once triggered, will hypnotise the triggering player. They will have to find Mana to be released. Hypnotised players have their controls reversed. Rank up to HOBGOBLIN to be immune to Gremlin Rigs.",
	["gremlinevent"] = event .. "the Random Revolve Stairs spell.", 
	["gremlinaltevent"] = fill .. "Created stairs will be of Tram variety.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Random Revolve Stairs spell"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "This used to be a Keeper spell, before it got rejected. It will move any normal or rigged stairs down. If you have ranked Keeper to Captain, you may also move any un-cursed stairs.",
	["chamswap"] = "This used to be a Necromancer spell, before it got rejected. It will copy your ghost, but unlike Reaver merge, your ghost is still active. This spell was unfinished and it is purely visual now.",
	["chamdraw"] = "This used to be a Heretic spell, before it got rejected. It will turn stairs into drawbridge, making descent impossible unless other player activates bridge from below.",
	["ditch"] = "This used to be a thief spell, before it got rejected. It will turn stairs into a crossed staircase.",
	["chamdrawabove"] = "This used to be a Heretic spell, before it got rejected. It will turn above stairs into drawbridge, allowing you to pass. Ascend is impossible unless other player activates bridge from above. Old Unbeliever rank is no longer active and auto draw from below is no longer possible.",
	["warp"] = "This used to be a wicked spell. It will warp stairs back to the platform.",

	["chameleonrigevent"] = rig .. "the Chameleon Rig. Stairs once triggered, will execute random effect from all other rigs.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","random spell from all other modes"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

	--NEW
	["share"] = "Karo månterå iki, kowé biså mbagèkaké mana dhéwé kanggo pandaki kecedhak. Kowé mung biså mbagèkaké siji mana at a time, lan kowé kudu duwé minimum lolo mana kanggo mbagèkaké iki.",

	--ARCHITECT
	["archpatron"] = "This spell used on platform's arrows, will create normal stairs. When used on normal or rigged stairs, it will shrink them.",
	["archarchon"] = "This spell when used on platform's arrows, will create a gate between platforms. When used on stairs, it will gate them in the direction of Your choice.",
	["archthief"] = "This spell when used on platform's arrows, will place normal stairs. When used on normal or rigged stairs it will steal them.",
	["archnecro"] = "This spell when used on platform's arrows, will create Dual stairs. When used on normal or rigged stairs, it will turn them into Undead Stairs.",
	["archhacker"] = "This spell when used on platform's arrows, will hack-in any crossing stairs. When used on normal or rigged stairs, it will turn them into an Escalator of your choice.",
	["archkeeper"] = "This spell when used on platform's arrows, will restore adjacent stairs. When used on normal or rigged stairs, it will move them in the direction of Your choice.",
	["archsplicer"] = "This spell when used on platform's arrows, will restore adjacent twisted stairs. When used on normal or rigged stairs, it will twist them in the direction of Your choice.",
	["archwicked"] = "This spell when used on platform's arrows, will create a wicked's wall without the link. When used on any uncursed stairs, it will destroy them.",
	["archgremlin"] = "This spell when used on platform, will revolve the platform in the direction of Your choice. When used on normal or rigged stairs, it will revolve them in the direction of Your choice.",
	["archjoker"] = "This spell when used on platform's arrows, will create fake stairs. When used on normal, flipped or rigged stairs, it flip or un-flip them.",
	["archdrifter"] = "This spell when used on platform, will turn it into an elevator. When used on normal or rigged stairs, it will drift them into a random direction.",
	["archspectre"] = "This spell when used on platform's arrows, will create Phantom stairs. When used on normal, ghosted or rigged stairs, it will Ghost or un-Ghost them.",
	["archreaver"] = "This spell when used on platform's arrows, will create Mirrored stairs. When used on normal or rigged stairs, it turn them into One-Way stairs of Your choice.",
	["archheretic"] = "This spell when used on platform's arrows, will curse an empty intersection without flickering anyone. When used on normal, cursed or rigged stairs, it curse or un-curse them.",

}
local CommonPerksInsertALignment = {
	[1] = "This is Your starter %s rank.",
	[2] = "Kowé bakal ngolèhaké mana bonus nalikå Drone jero mode %s.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Yèn wong nganggo månterå %s, mana kowé bakal diisi manèh.",
	[7] = "Månterå %s kowé bakal last 50%% longer (90s).",
}



module.gui.ranks = {

	["title"] = "PANGKATMU",

	--none

	["none_1"] = "Kowé wis durung milih kelas!",
	["none_2"] = "Nganggo månterå, kowé KUDU milih kelas!",

	--NEW
	["possessed_1"] = "Kowé wis disupatani!",
	["possessed_2"] = "Ngumpulaké mana utåwå rig Patron kanggo diluwari.",
	["possessed_3"] = "Minångkå Possessed, kowé ora biså nganggo månterå lan perk pangkatmu dipatèni.",

	["hypnotised_1"] = "Kowé wis dihipnotis!",
	["hypnotised_2"] = "Ngumpulaké mana utåwå rig Patron kanggo diluwari.",
	["hypnotised_3"] = "Minångkå Hypnotised, kontrolmu are dibalikaké!",

	["architect_1"] = "Kowé saiki Architect!",
	["architect_2"] = "Architect ora biså ngolèhaké pangkat åpå waé.",
	["architect_3"] = "Njlajahi menårå kanggo nyebabaké kasemrawutan!",
	--END NEW

	--shared
	["higher"] = "HIGHER RANK ACQUIRED",
	["current"] = "PANGKAT SAIKIMU",
	["lower"] = "PANGKAT ORA DIOLÈHAKÉ",

	["more"] = "You need %d more climbs as %s to obtain this rank.",
	["done"] = "You already own a higher rank. All lower rank effects add up to the current rank.",
	["max"] = "This is the maximum rank. You have made %d climbs as %s.",
	["next"] = "Click on the right arrow to check requirements for the next rank.",

	["PATRON"] = {
		[4] = "Your links will last twice as long (120s).",
		[5] = "Your portals will last twice as long (120s).",
		[6] = "The cost of the Call the Orb spell is reduced to 2 Mana.",
		[8] = "If you are out of Mana, jump on a platform to be blessed with 1 Mana.",
		[9] = "Called Orb will travel twice as fast.",
	}, 
	["JOKER"] = { 
		[4] = "Disco stairs have no effect on you.",
		[5] = "You can now see all invisible stairs. You have the option to not reveal them.",
		[6] = "You can now detect platform traps and fake stairs.",
		[8] = "You can now walk on fake stairs.", 
		[9] = "You will get bonus Mana when someone triggers any prank. (1 mana per player pranked)",
	},
	["WICKED"] = {
		[4] = "You can now walk on obbies as if they were normal stairs.",
		[5] = "The Destroy Below spell is now free.",
		[6] = "You will get 1 bonus Mana from destroying any special stairs.",
		[8] = "You have the option to avoid triggering any Wicked Rigs.",
		[9] = "You can now destroy cursed stairs.",
	},
	["SPECTRE"] = { 
		[4] = "You will get an extra 1 Mana when you collect crystals with Your Ghost.", 
		[5] = "Your GHOSTIFY spell is now free.",
		[6] = "You can now touch the orb at the top with your ghost to finish a climb.",
		[8] = "You have the option to avoid triggering any Spectre Rigs.", 
		[9] = "You can now walk on ghosted stairs.",
	},
	["KEEPER"] = {
		[4] = "The Move Random spell and Keeper Rigs that you trigger will never cause the stairs to go down.",
		[5] = "You can now move any un-cursed stairs.",
		[6] = "Your Restore spell is now free.", 
		[8] = "You have the option to avoid triggering any Keeper Rigs.",
		[9] = "You can now restore cursed stairs and cursed intersections.",
	},
	["HACKER"] = { 
		[4] = "You have the option to be immune to Escalators.",
		[5] = "Your Dash spell is now 50% faster.",
		[6] = "Your Blink spell is now 50% faster.", 
		[8] = "You have the option to avoid triggering any Hacker Rigs. (merges with Escalator switch)",
		[9] = "If there is at least one free intersection, casting Glitch on the top level will create stairs leading to the orb.", 
	},
	["THIEF"] = {
		[4] = "Your Bypass will now last twice as long (120s).",
		[5] = "Your Spiral Staircase will now last twice as long (120s).",
		[6] = "You can now steal any un-cursed stairs.",
		[8] = "If you are out of Mana, jump on a platform to get 1 Mana from your stash.", 
		[9] = "You can now keep 2 stolen stairs at the same time.",
	},
	["ARCHON"] = {
		[4] = "You can now cast the Destroy Gate spell on platforms, to remove Platform Gates.",
		[5] = "Your Destroy Gate spell is now free.",
		[6] = "Gates will never teleport you down.",
		[8] = "You can now cast Gate spells on stairs with Gates already on them.",
		[9] = "You can choose to avoid teleportation on all but upward Gates.",
	},
	["DRIFTER"] = {
		[4] = "Your upward platform drifts will appear and move 50% faster.",
		[5] = "You can now spin and drift already drifted stairs.",
		[6] = "You can now boost Elevators with both Riser and Elevator spells. Vagabond perk does not apply to boosted Elevators.",
		[8] = "You have the option to avoid triggering any Drifter Rigs.",
		[9] = "You can now boost Elevators twice, with both Riser and Elevator spells. Vagabond perk does not apply to boosted Elevators.",
	},
	["HERETIC"] = {
		[4] = "When out of Mana, you can touch cursed stairs to uncurse them and get one Mana.",
		[5] = "You are now immune to being possessed.",
		[6] = "You can now cast the Flicker spell on a cursed intersection.",
		[8] = "Your Create Cursed Stairs and Malediction spells can now destroy blocking cursed stairs.",
		[9] = "Kowé bakal ngolèhaké 1 mana èkstra saben wektu wong disupatani.",
	},
	["SPLICER"] = {
		[4] = "Kowé saiki biså njejegaké undhak-undhakan disconnected from platform.",
		[5] = "Your Restore Twist spell is now free.",
		[6] = "You have the option to avoid below Splicer Rigs.",
		[8] = "You can now splice already spliced stairs.",
		[9] = "You will get 1 Mana everytime you restore a Splice.",
	},
	["REAVER"] = {
		[4] = "Kowé saiki biså nganggo månterå Gamblok kowé kanggo unmerge.",
		[5] = "Your floor mirrors will last 50% longer. (15d gedhé, 9d cilik)",
		[6] = "You have the option to avoid below Reaver Rigs.",
		[8] = "You can now demolish crossing stairs, while casting Mirrored Stairs.",
		[9] = "You are now immune to one-way stairs.",
	},
	["NECROMANCER"] = {
		[4] = "Create Dual Stairs will ignore cursed intersections and stairs on ghost's platform.",
		[5] = "If you use a Revival Point on the top floor, it will bring the orb to where the point is placed.",
		[6] = "Månterå Salin Platform Memedimu bakal mbusek kutukan if it needs to.",
		[8] = "You can demolish crossing stairs, while casting Dual Stairs.",
		[9] = "Regenerate restores 10 mana instead of 6, and will restore 5 mana to those nearby your ghost.",
	},
	["GREMLIN"] = {
		[4] = "Kowé saiki biså ndetèksi kabèh basangan Gremlim.",
		[5] = "Kowé saiki biså mlumpat ing platform kanggo manggil kabèh trèm adjacent.",
		[6] = "You are now immune to rig Gremlin.",
		[8] = "You are now immune to basangan Gremlin.",
		[9] = "You can now control Corkscrew Stairs via a toggle. This may not work if there is another Daemon nearby.",
	},
	["MUGGLE"] = { 
		[2] = "Your jump cooldown is reduced by 0.125s.",
		[3] = "Your jump cooldown is reduced by 0.25s.",
		[4] = "Your jump cooldown is reduced by 0.375s.",
		[5] = "Your jump cooldown is reduced by 0.5s.",
		[6] = "Your walkspeed is increased by 10%.",
		[7] = "Your walkspeed is increased by 20%.",
		[8] = "Your walkspeed is increased by 30%.",
		[9] = "Your jump power is increased by 20%.",
	},
	["NONE"] = {
		[1] = "None ora biså ngolèhaké pangkat åpå waé. Mlumpat ing lèmèr ngganti ing the tengah péta kanggo ngganti kelasmu.",
		[2] = "Aku serious, NONE ora duwé perk pangkat åpå waé.",
		[3] = "You are just wasting your time, you could at least rank up MUGGLE instead.",
		[4] = "MUGGLE gets walkspeed boosts, you know? None does not get anything.",
		[5] = "If you think there is a secret rank perk at the end, you must really underestimate my laziness.",
		[6] = "Maybe you just like to torture yourself?",
		[7] = "People at discord are lying, there is no secret perk at 50 climbs.",
		[8] = "This is your final warning, stop before a total disappointment.",
		[9] = "You persistence is admirable. You get a total toggleable immunity to special stairs.",
	},

	["CHAMELEON"] = { 
		[1] = "This is your starter CHAMELEON rank. Other alignment rank bonuses still apply.",
		[2] = "EXCEPTION! You will ONLY get bonus Mana when drones are in CHAMELEON mode.",
		[3] = "Alignment change animation is much faster now.",
		[4] = "Your hands will now glow purple when casting, disguising your motives.",
		[5] = "Fake Stairs and Create Stairs spells will both have a purple glow.",
		[6] = "You can now cast 4 spells which were rejected during development.",
		[7] = "You can now cast 2 more spells which were rejected during development.",
		[8] = "Changing alignments doesn't have a morph animation anymore, making switching alignments seamless and private. Can be turned off in options.",
		[9] = "You can now cast the Mystery Rig spell with multi-tokens.",
	},


}


module.gui.multitokens = {

	["info"] = "Kowé butuh 3 token kanggo mbukak månterå.",

}

module.gui.feedback = {

	["prompt"] = "Klik kéné kanggo nulis lan ngirim pesen menyang developer! (minimum 20 karakter)",
	["send"] = "KIRIM",
	["locked"] = "DIKUNCI",

}

module.gui.settings = {

	--NEW

	["Gameplay"] = "SETÈLAN GAMEPLAY",
	["Interface"] = "SETÈLAN ANTARMUKA",

	["Billboard"] = "Show Your own avatar billboard",
	["Rank"] = "Show Your Overall Rank in the avatar billboard",
	["Morph"] = "Show the morph animation when using Chameleon ranked up to Deceiver or higher",
	["ManaLimit"] = "Reduce Your own Mana capacity for an extra challenge",

	["KChoices"] = "Tampilaké window milih arah kanggo Keeper, nalikå nganggo månterå ngalih",
	["HChoices"] = "Tampilaké window milih arah kanggo Hacker, nalikå nganggo månterå èskalator",
	["AChoices"] = "Tampilaké window milih arah kanggo Archon, nalikå nganggo månterå portal",
	["RChoices"] = "Tampilaké window milih arah kanggo Reaver, nalikå nganggo månterå siji arah",
	["SChoices"] = "Tampilaké window milih arah kanggo Splicer, nalikå nganggo månterå nyambung",
	["GChoices"] = "Tampilaké window milih arah kanggo Gremlin, nalikå nganggo månterå mubeng",


	["List"] = "Tampilaké pratélan pandolan animasi rather than standard Roblox Leaderboard",
	["SwitchBack"] = "Otomatis ngganti manèh menyang månterå dhasar sawisé nglakokaké månterå pokok",
	["SafeCancel"] = "Tampilaké window konfirmasi nalikå murungaké månterå pokok winates",
	["Multi"] = "Tampilaké window milih multitoken sawisé pandakèn, nalikå kowé isih duwé multitoken sing durung dienggo",
	["UISize"] = "Adjust the maximum width of the User Interface (%)"
	--END NEW

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "KELASMU",
	["time"] = "WEKTU PANDAKÈNMU",
	["climbs"] = "PANDAKÈN DIOLÈHAKÉ",
	["tokens"] = "TOKEN DIOLÈHAKÉ",
	["rank"] = "PANGKAT SAIKIMU",

	--NEW
	["role"] = "SAKABÈHÉ PANGKATMU",
	["classic"] = "RÈKOR MENÅRÅ KLASIK",	
	["pro"] = "RÈKOR MENÅRÅ PRO",	
	["infinite"] = "RÈKOR MENÅRÅ INFINIT",
	["custom"] = "RÈKOR MENÅRÅ KUSTOM", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	["noVR"] = "RÈKOR MENÅRÅ KLASIK", --this will show in noVR tower, as they share the same record

	["cTime"] = "RÈKOR %s", --%s will be replaced by the used class
	["levels"] = "TATARAN KAGAYUH",
	["cClimbs"]	= "%s PANDAKÈN", --%s will be replaced by the used class
	["tClimbs"] = "GUNGGUNG PANDAKÈN",
	["tTokens"] = "%s TOKEN",	--%s will be replaced by the used class	(or multi)
	["spells"] = "MÅNTERÅ DILAKOKAKÉ",	--amount
	["rRank"] = "POSISI BALAPAN",--if any
	--END NEW

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"HELP, PROTECT and CREATE",
		"Those noobs need our help",
		"There would be no hope without us Patrons",
		"11 out of 10, on the scale of niceness",
		"Sharing is caring",
		"You can never have too many stairs",
		"There is no I in Team, but there is definitely a Patron",
		"You cannot have a staircase without stairs",
		"Another job well done",
	},
	["JOKER"] = {
		"DECEIVE, CONFUSE and LAUGH",
		"This staircase is a joke",
		"Why so serious?",
		"HAHAHA!",
		"Relax and watch them fall",
		"Ojo nesu~",
		"You know the rules and so do I",
		"It would be boring without me",
		"Fake stairs are real",
	},
	["WICKED"] = {
		"PREVENT, BLOCK and DESTROY",
		"I'm not evil, there are just too many stairs",
		"Those stairs got to go",
		"Watch the world burn",
		"This staircase looks better without stairs",
		"I will destroy your mind, soul and body (and stairs)",
		"1. Nggawé obby, 2. nonton noob struggle, 3. Enjoy~",
		"All things die eventually",
		"Clear your mind - but first clear the staircase",
	},
	["SPECTRE"] = {
		"DISAPPEAR, HIDE and TELEPORT",
		"Of course teleporting is safe",
		"You can't catch me",
		"The beauty of ghosted stairs is unparalleled",
		"People falling? Why should I care?",
		"You can solve all your problems with teleporting",
		"Once you start teleporting, you will not be able to stop",
		"At least I'm not teleporting stairs",
		"Keep up you noobs!",
	},
	["MUGGLE"] = {
		"WALK, JUMP and FALL",
		"We did not have those fancy spells in alpha stage",
		"I swear those Drones are rigged",
		"There is always a path",
		"Stairjumping is a talent",
		"My secret? Stop and think",
		"I don't believe in magic",
		"Sometimes you need to wait for a drone - Like in real life",
		"People use spells? Noobs!",
	},
	["CHAMELEON"] = {
		"COPY, IMITATE and SURPRISE",
		"I am too lazy to come up with my own spells",
		"More variety = more fun",
		"Teaming is slow - Morphing is fast",
		"Ability to adjust is the basis of survival",
		"I AM decisive, I just like to change my mind",
		"You mastered a class? I mastered all the classes",
		"Siji kelas mung dah? Jelèh!",
		"I like chaos",
	},
	["KEEPER"] = {
		"MOVE, ROTATE and CONTROL",
		"Stop messing up my staircase!",
		"Another mighty success for the Keepers",
		"Mission complete!",
		"I like order",
		"Chaos tamed",
		"I am the only true alignment",
		"One day I will sort out this tower",
		"Fixed stairs = happy stairs",
	},
	["THIEF"] = {
		"\"BORROW\", USE and RETURN",
		"It's called borrowing actually",
		"Flat land is so beautiful",
		"At least I do not steal platforms",
		"Just do not walk on steal rigs, smh",
		"Like did you see me steal anything?",
		"I am like Robin Hood - Steal from the rich and give to myself",
		"It's not like anyone would notice one staircase missing",
		"Stairs redistribution prevents anarchy",
	},
	["HACKER"] = {
		"EXPLOIT, GLITCH and BREAK",
		"Fair play? There's no such thing",
		"Wait! This staircase is not real... Are we living in a simulated Roblox experience?",
		"01010101 01001110 01000100 01001000 01000001 01001011 00101101 01010101 01001110 01000100 01001000 01000001 01001011 01000001 01001110 00100000 11000011 10001001 01000100 01000001 0100111001010011",
		"Have you seen any rules posted anywhere here?",
		"I'm cheating? Everybody here is",
		"I mean few tweaks here and there - Hardly an exploit",
		"Speed is all that matters",
		"Escalators for life",
	},
	["HERETIC"] = {
		"YOU SHALL NOT PASS",
		"Banning black magic is like banning fun",
		"Possess people. Keep the Overmind satiated",
		"Death and decay",
		"Dark ritual complete",
		"We should not restrict ourselves",
		"Get possessed",
		"Choose the dark side - It's easier than Illumination",
		"Why would I care if people get stranded?",
	},
	["ARCHON"] = {
		"OPEN PORTAL, ???, PROFIT",
		"I used to rule this staircase",
		"Plan ahead to succeed",
		"Study hard and you will succeed",
		"Ability to gate stairs is an Art form",
		"I can't using my Archon potar",
		"The cake is a lie",
		"There is a gate for every problem",
		"Confused everyone!",
	},
	["DRIFTER"] = {
		"SURF, RIDE, and GLIDE",
		"Who needs stairs anyway? We're in space!",
		"Fly you fools!",
		"Surf the Solar Wind",
		"There is no down in space - Jump without worry",
		"Drift everything - Jump to victory",
		"Don't stop - Keep drifting",
		"I love to ride platforms",
		"Keep surfing",
	},
	["SPLICER"] = {
		"TWIST, SPLICE and CONNECT",
		"Never go in a straight line for too long",
		"Splice up your life",
		"Other people's mess is Splicer's order",
		"I can totally connect those stairs",
		"Connect with people - nah, CONNECT WITH STAIRS!",
		"My mind is just twisted like that",
		"Split or Splice - that is the question",
		"Thanks Markerquest, you saved me",
		"This staircase is too straight",
	},
	["REAVER"] = {
		"REFLECT, REPLACE and MERGE",
		"Mirrors are just doorways",
		"This staircase is an illusion",
		"You can see your soul in the mirror",
		"Are we watching them, or are they watching us?",
		"Seven years of bad luck. For me or for the other one?",
		"Are the ghosts stuck behind the mirror - or are we?",
		"I can no longer see myself, I see the future",
		"MOM! It's not a phase!!!",
		"Don't sneak up on me like that!",
	},
	["NECROMANCER"] = {
		"FOLLOW, REVIVE and BENEFIT",
		"We aren’t actually haunting you, we just wanna be friends",
		"Your soul is MINE!",
		"Follow my ghost. Trust me!",
		"It is safe near my ghost. Why would I lie?",
		"Time to harvest some souls",
		"We just have a bad PR. I blame Hollywood",
		"If death is bad, then Necromancy must be good",
		"I need to collect sou- I mean Mana, I need mana",
		"I am not scared of falling, this is a strategic spell!",
	},
	["GREMLIN"] = {
		"ROTATE, REVOLVE and HYPNOTISE",
		"Come play with me!",
		"You spin me right 'round, baby, right 'round",
		"This staircase is too boring",
		"Let me fix that staircase for you, heheh",
		"Do you like my masterpiece? No? Too bad, I am only starting.",
		"Doctor told me to relax, and this is how I relax.",
		"Joker take some notes. Just kidding, hire me back in the Circus please!",
		"Where did that staircase go?",
		"Waaaaaaaaaaaaaa!!!",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Leave no noob behind",
	["IT"] = "Pranking is living",
	["ANNIHILATOR"] = "Destroy everything!",
	["AETHER"] = "Enter the nether realm",
	["DABSFORLIF"] = "Spells are overrated",
	["USURPER"] = "I just like all the spells",
	["ADMIRAL"] = "Order restored",
	["OUTLAW"] = "Mine, mine all MINE!",
	["ZERO"] = "Rootkit installed",
	["EXILED"] = "Excommunication",
	["ILLUMINATI"] = "Illuminati confirmed",
	["STRIDER"] = "I'll take the elevator",
	["DEATHBRINGER"] = "Rise, rise, RISE!",
	["OPTIMUS"] = "The Entanglement",
	["ILLUSION"] = "We are one",
	["DAEMON"] = "You spin me round and round.",
	["BLACK HOLE"] = "The Nothingness", 

}

module.gui.gameover.credits = {

	["common"] = {
		"UNDHAK-UNDHAKAN ÉDAN",
		"Gamené dikonsèptualisasikaké, dirancang lan dikodhe Sleazel",
		"Help with design - cakegirlserina",
		"Modèl digawé ZielonyLeszek",
		"Skybox digawé génerator wwwtyro.net",
		"Datastore module, ProfileStore, digawé loleris",
		"Matur nuwun wis ndolan! :]",	
	},
	["climb"] = "Musik pandakèn %s - % by %",
	["endgame"] = "Musik pangkasan %s - % by %",
	["disco"] = "Musik undhak-undhakan disko - % by %",
	["elevator"] = "Musik lift - % by %", --drifter platforms
	["testers"] = "PANGUJI:",
	["thanks"] = "PANARIMA SPÉSIAL:",

}

module.static = {

	["cla_1"] = "Carané ndolan Undhak-Undhakan Édan?",
	["cla_2"] = "Kapisan, it is highly recommended to complete the tutorial. If you haven't done so, please rejoin the game, as the experience could get really confusing otherwise.",
	["cla_3"] = "The goal of the game is to reach the top and collect the floating Energy Orb. First choose your alignment (class) by jumping on the glowing pads in the middle of the map.",
	["cla_4"] = "Once happy with the choice, collect floating shapes to refill Mana and climb the stairs. Use your class spell to help you with the climb.",
	["cla_5"] = "Carané nganggo månterå?",
	["cla_6"] = "Every spell has a mana cost that will be required to cast the spell. When you collect enough Mana click on the spell. Your hands will start to glow, indicating a successful cast.",
	["cla_7"] = "After casting, the spell still needs to be executed. All spells are executed by jumping. Depending on the spell, you will need to jump either on platform or stairs. Guide arrows will appear, to help you with the execution.",
	["cla_8"] = "Once you complete the climb, you will receive 3 spell tokens, that will let you unlock one spell. Complete the climb again to unlock more spells. You can't use tokens from one class to unlock a spell from another.",
	["cla_9"] = "Carané nglakokaké månterå pokok?",
	["cla_10"] = "First you will need to unlock all basic spells to access the ultimate spells. Ultimate spells do not require unlocking themself, but they use Tokens instead of Mana when cast.",
	["cla_11"] = "Complete the climb enough times to unlock all basic spells. You may want to try to win the race to get extra Tokens. There is also option to purchase tokens. Once unlocked, click leftmost button or press 'C'",
	["cla_12"] = "Some ultimate spells are timed, and do not require execution. Please read more info in the Alignment Guilds to learn more about an ultimate spell, before casting. Cancelling a timed spell will not refund tokens",

	["pro_1"] = "MENÅRÅ PRO",
	["pro_2"] = "Even levels restrictions",
	["pro_3"] = "In the Pro Tower some platform spells cannot be cast on the even levels. Trap, Create Portal, Vertical Teleport, Spiral Staicase and Random Teleport can only be executed on odd levels.",
	["pro_4"] = "Drifters cannot drift those platforms neither.Affected platforms are marked with the red circle in the middle.",
	["pro_5"] = "Cursed Stairs",
	["pro_6"] = "In the Pro Tower Drones will randomly create Cursed Stairs or turn normal stairs into Cursed ones. There is 20% chance of Cursed Stairs apperance. Guide arrows will not show near Cursed Stairs.",
	["pro_7"] = "Cursed Stairs are immune to most spells. You cannot teleport through them nor use Hacker Blink spell. Furthermore, all spells that would cause Cursed Stairs destruction will not work (like Keeper's Move).",
	["pro_8"] = "Only Heretics and Admirals can restore Cursed Stairs. Purge Event and Restoration will get rid of all cursed stairs too. However Drones will always create new ones in Pro Tower.",
	["pro_9"] = "Cursed Intersections",
	["pro_10"] = "In the Pro Tower Drones will randomly create Cursed Intersections too. When Drone finds an empty Intersection, there is 20% chance of the Curse. Guide Arrows will turn to crosses to mark the intersection.",
	["pro_11"] = "Cursed Intersections prevent all platform spells, that are executed on arrows. You cannot create stairs, links nor teleport through Cursed Intersection.",
	["pro_12"] = "Only Heretics, Admirals and Drones can restore Cursed Intersections. As with Cursed Stairs, Wicked's Purge Event will remove all Curses, but during regeneration new ones will appear.",

	["inf_1"] = "MENÅRÅ INFINIT",
	["inf_2"] = "RACE MANDATORY",
	["inf_3"] = "In the infinite tower, participating in the race is mandatory. Casual players are not allowed to cast spells and will not receive any awards for climbing. Touching the orb will just grant 10 Mana.",
	["inf_4"] = "To 'complete' infinite tower you need to join the race and try to stay on it as long as you can. You will receive rewards (if any) upon elimination.",
	["inf_5"] = "Fallen Drone",
	["inf_6"] = "Unlike classic and pro towers, Fallen Drone has a special task in the infinite tower.",
	["inf_7"] = "Each 'raise interval', Fallen Drone will create 2 new levels. Each even level will be restricted. On top of that, some stairs or intersections may even become cursed.",
	["inf_8"] = "First interval lasts for 20 seconds. Each raise will reduce the interval by half second, until the levels are created faster than they could be climbed.",
	["inf_9"] = "Eraser",
	["inf_10"] = "Eraser is a special force field that will rise together with tower and remove bottom levels. Falling behind the eraser eliminates players from the round. This is similar to rising lava in other games.",
	["inf_11"] = "Much like Fallen Drone, eraser will speed up. It will however raise steadily, rather than removing 2 levels at the same time.",
	["inf_12"] = "Stairs and platforms touched by eraser will vanish. Try to avoid the eraser for as long as you can to ensure victory.",

	["cus_1"] = "MENÅRÅ KUSTOM",
	["cus_2"] = "YOU DECIDE!",
	["cus_3"] = "In custom tower you can adjust any tower settings to your liking.",
	["cus_4"] = "Rewards in Custom Tower are halved. You will get 1 token each 12 levels and qualifying climb each 30 levels.",
	["cus_5"] = "Tower Settings",
	["cus_6"] = "By changing the tower settings you can have it your way. Choose levels, restrict even levels or even set the tower to the infinite mode.",
	["cus_7"] = "Only server owner can adjust the settings.",
	["cus_8"] = "Drone Settings",
	["cus_9"] = "You can also change the small drone setting. Adjust the max count, the min count or even disable them altoghether.",

	["vr_1"] = "By launching Crazy Stairs in VR mode you automatically become an Architect.",
	["vr_2"] = "Unlike regular players, Architects do not need to ascend the staircase. Your goal is to help or troll other players that are climbing the tower.",
	["vr_3"] = "The choice is yours. Will you be a menace or a saviour? Or do you simply want to mess around? Have fun!",
	["vr_4"] = "How do I navigate?",
	["vr_5"] = "Use your left thumbstick to move forward or backward. Tilting the left thumbstick sideways will make you move left and right instead.",
	["vr_6"] = "Use your right thumbstick to move up or down. Tilting the right thubmstick left or right will result in 'snap' turning of the camera.",
	["vr_7"] = "Try to stay outside of the staircase for better view and ease of targeting.",
	["vr_8"] = "How do I cast spells?",
	["vr_9"] = "To cast a spell, squeeze magic orb with the grip button. Laser pointer will appear that will help you target stairs and platforms for spell execution.",
	["vr_10"] = "Execute the spell with the trigger button, while still holding the grip button. Each alignment in VR has two spells. One platform and one stairs spell. Depending on the target, a proper spell will be chosen.",
	["vr_11"] = "To change an alingment in the VR mode, press and hold the trigger button, without the grip button. You can then change alignment with the corresponding hand's thumbstick.",

	["home_1"] = "OMAH MUGGLE",
	["home_2"] = "OUR MOTTO:\nWALK\nJUMP\nAND\nFALL",
	["home_3"] = "PROS:\nWalkspeed and jump power bonus at higher ranks\nBragging rights\nCONS:\nNo spells\nGets stuck easily",
	["home_4"] = "'We did not have those fancy spells in alpha stage!'\nour founder's quote",

	["oasis_1"] = "OASIS CHAMELEON",
	["oasis_2"] = "OUR MOTTO:\nCOPY\nIMITATE\nAND\nSURPRISE",
	["oasis_3"] = "PROS:\nCan change alignments anywhere, anytime\nCONS:\nCosts Robux\nRanking up all classes takes time",
	["oasis_4"] = "'I am too lazy to come up with my own spells.'\nour founder's quote",

	["nexus_1"] = "SARANG HERETIC",
	["nexus_2"] = "OUR MOTTO:\nYOU\nSHALL\nNOT\nPASS",
	["nexus_3"] = "PROS:\nBest in pro tower\nCannot be stopped\nCONS:\nTeaming is tricky\nMana hungry",
	["nexus_4"] = "'Banning black magic is like banning fun.'\nour founder's quote",

	["guild_1"] = "PANDHELIKAN THIEF",
	["guild_2"] = "OUR MOTTO:\nBORROW\nUSE\nAND\nRETURN",
	["guild_3"] = "PROS:\nMana efficient\nVersatile\nCONS:\nNeeds to steal stairs\nCannot destroy crossing stairs",
	["guild_4"] = "'It's called borrowing actually.'\nour founder's quote",

	["nether_1"] = "NÅRÅKÅ SPECTRE",
	["nether_2"] = "OUR MOTTO:\nDISAPPEAR\nHIDE\nAND\nTELEPORT",
	["nether_3"] = "PROS:\nFast spells\nPerfect for solo play\nCONS:\nCosts Robux\nNot recommended for teams",
	["nether_4"] = "'Of course teleporting is safe.'\nour founder's quote (MIA)",

	["study_1"] = "STUDHI ARCHON",
	["study_2"] = "OUR MOTTO:\nOPEN\nPORTAL\n???\nPROFIT",
	["study_3"] = "PROS:\nUseful Rig\nConfuses opponents\nCONS:\nHardest to learn\nRequires planning",
	["study_4"] = "'I used to rule this staircase.'\nour founder's quote",

	["haven_1"] = "SWARGÅ PATRON",
	["haven_2"] = "OUR MOTTO:\nHELP\nPROTECT\nAND\nCREATE",
	["haven_3"] = "PROS:\nEasiest to learn\nTeam player\nCONS:\nUses a lot of Mana\nMay attract leechers",
	["haven_4"] = "'Those noobs need our help!'\nour founder's quote",

	["shelter_1"] = "TÈNDA DRIFTER",
	["shelter_2"] = "OUR MOTTO:\nSURF\nRIDE\nAND\nGLIDE",
	["shelter_3"] = "PROS:\nVersatile\nTeam player\nCONS:\nRequires some parkour skills\nTricky in pro towers",
	["shelter_4"] = "'Who needs stairs anyway? We're in space!'\nour founder's quote",

	["circus_1"] = "SIRKUS JOKER",
	["circus_2"] = "OUR MOTTO:\nDECEIVE\nCONFUSE\nAND\nLAUGH",
	["circus_3"] = "PROS:\nMade for trolling\nFlips are very useful\nCONS:\nExpensive spells\nYou may ruin friendships",
	["circus_4"] = "'This staircase is a joke.'\nour founder's quote",

	["base_1"] = "PANGKALAN KEEPER",
	["base_2"] = "OUR MOTTO:\nMOVE\nROTATE\nAND\nCONTROL",
	["base_3"] = "PROS:\nCan restore stairs\nCan reuse stairs\nCONS:\nRequires parkour to use correctly\nUseless without stairs",
	["base_4"] = "'Stop messing up my staircase!'\nour founder's quote",

	["chamber_1"] = "KAMAR WICKED",
	["chamber_2"] = "OUR MOTTO:\nPREVENT\nBLOCK\nAND\nDESTROY",
	["chamber_3"] = "PROS:\nCan destroy any stairs\nCan purge whole staircase\nCONS:\nOver-reliant on stairs",
	["chamber_4"] = "'I'm not evil, there are just too many stairs.'\nour founder's quote",

	["backdoor_1"] = "WÈB HACKER",
	["backdoor_2"] = "OUR MOTTO:\nEXPLOIT\nGLITCH\nAND\nBREAK",
	["backdoor_3"] = "PROS:\nFastest alignment\nHard to follow\nCONS:\nOver-reliant on stairs\nUseless in teams",
	["backdoor_4"] = "'Fair play? There's no such thing.'\nour founder's quote",

	["hub_1"] = "GARASI SPLICER",
	["hub_2"] = "OUR MOTTO:\nTWIST\nSPLICE\nAND\nCONNECT",
	["hub_3"] = "PROS:\nVersatile\nGood in teams\nCONS:\nBit confusing.\nTakes time to learn",
	["hub_4"] = "'Never go in a straight line for too long.'\nour founder's quote",

	["shack_1"] = "GUBUG GREMLIN",
	["shack_2"] = "OUR MOTTO:\nROTATE\nREVOLVE\nAND\nHYPNOTISE",
	["shack_3"] = "PROS:\nNo pros\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE",
	["shack_4"] = "'Come play with me.'\nour founder's quote",

	["mirror_1"] = "PANGILON REAVER",
	["mirror_2"] = "OUR MOTTO:\nREFLECT\nREPLACE\nAND\nMERGE",
	["mirror_3"] = "PROS:\nMirrors can be used by other players\nCONS:\nMerge and unmerge mechanic may be confusing.",
	["mirror_4"] = "'Mirrors are just doorways.'\nour founder's quote",

	["grave_1"] = "KUBURAN NECROMANCER",
	["grave_2"] = "OUR MOTTO:\nFOLLOW\nREVIVE\nAND\nBENEFIT",
	["grave_3"] = "PROS:\nWorks well if other players follow your ghost.\nSpells help you and others as well.\nCONS:\nHeaviest alignment on mana.\nDifficult to get used to watching your ghost.",
	["grave_4"] = "'We aren’t actually haunting you, we just wanna be friends.'\nour founder's quote",

	--NEW (architect)
	["studio_1"] = "STUDHIO ARCHITECT",
	["studio_2"] = "OUR MOTTO:\nDESIGN\nIMPLEMENT\nAND\nTEST",
	["studio_3"] = "PROS:\nAbility to Fly\nDoes not use Mana\nCONS:\nCost Robux\nCannot acquire climbs",
	["studio_4"] = "'Now I rule this staircase!'\nour founder's quote",
	--END NEW

	--SHARED
	["leader_pro"] = "Pandakèn Menårå Pro diwilang 2 kali lipet",	
	["leader_update"] = "Dianyari ing: ",	
	["leader_updating"] = "Nganyari…",	
	["leader_rank"] = "PANGKAT",
	["leader_req"] = "PANDAKÈN DIBUTUHAKÉ",
	["leader_off"] = "Papan pangkat ora sumadhiyå jero Menårå Kustom.",

	--OVERALL
	["over_title"] = "SAKABÈHÉ PANGKAT",
	["over_desc"] = "Saben pangkat sing wis diolèhaké nambah 1 poin",
	["over_rank"] = "PANGKAT",
	["over_req"] = "POIN DIBUTUHAKÉ",
	["emperor_req"] = "* Mbutuhaké Chamelon UTÅWÅ Spectre",
	["overmind_req"] = "** Mbutuhaké Chamelon LAN Spectre",
	["over_prefix"] = "ATER-ATER",
	["over_passes"] = "PAS GAME\nDIBUTUHAKÉ",
	["over_notgroup"] = "WERNÅ IJO JAÉTUN tegesé sing dudu anggota grup",
	["over_group"] = "WERNÅ BIRU CAHYA tegesé sing anggota grup",
	["over_mod"] = "MODERATOR tegesé wong sing moderator",
	["over_admin"] = "ADMIN tegesé wong sing admin", -- pwease sleazel uwu
	["over_owner"] = "PRANK AKU tegesé panggawé game (Sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLE PALING CEPET",
	["muggle_ranks"] = "PANGKAT MUGGLE",

	["hacker_lead"] = "HACKER PALING MAJU",
	["hacker_ranks"] = "PANGKAT HACKER",

	["wicked_lead"] = "WICKED PALING NAKAL",
	["wicked_ranks"] = "PANGKAT WICKED",

	["keeper_lead"] = "KEEPER PALING SETYA",
	["keeper_ranks"] = "PANGKAT KEEPER",

	["joker_lead"] = "JOKER PALING ÉDAN",
	["joker_ranks"] = "PANGKAT JOKER",

	["drifter_lead"] = "DRIFTER PALING WANI",
	["drifter_ranks"] = "PANGKAT DRIFTER",

	["patron_lead"] = "PATRON PALING APIK",
	["patron_ranks"] = "PANGKAT PATRON",

	["archon_lead"] = "ARCHON PALING PRIGEL",
	["archon_ranks"] = "PANGKAT ARCHON",

	["spectre_lead"] = "SPECTRE PALING MEMEDI",
	["spectre_ranks"] = "PANGKAT SPECTRE",

	["thief_lead"] = "THIEF PALING SINAMUN",
	["thief_ranks"] = "PANGKAT THIEF",

	["heretic_lead"] = "HERETIC PALING KEJEM",
	["heretic_ranks"] = "PANGKAT HERETIC",

	["necromancer_lead"] = "UNDEAD NECROMANCERS",
	["necromancer_ranks"] = "PANGKAT NECROMANCER",

	["splicer_lead"] = "SPLICER PALING TÈKNIS",
	["splicer_ranks"] = "PANGKAT SPLICER",

	["reaver_lead"] = "REFLECTED REAVER",
	["reaver_ranks"] = "PANGKAT REAVER",

	["gremlin_lead"] = "GREMLIN PALING BEGJÅ",
	["gremlin_ranks"] = "PANGKAT GREMLIN",

	["chameleon_lead"] = "SWIFT CHAMELEON",
	["chameleon_ranks"] = "PANGKAT CHAMELEON",

	["dailies"] = "RÈKOR DINÅ IKI",
	["most_climbs"] = "PANDAKÈN PALING AKÈH",
	["most_wins"] = "MENANG BALAPAN PALING AKÈH", 

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
		["superforced"] = "Can be executed on an empty intersection, or through crossing stairs. Rank up to BANISHED to demolish crossing cursed stairs.",
		["flicker"] = "Can be executed on an empty intersection. Rank up to Infidel to execute on a cursed intersection.",
		["any"] = "Can be executed on any un-cursed intersection.",
		["wall"] = "Can be executed on any un-cursed intersection, without a Wall or Gate in the way.",
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

		--NEW
		["archpatron"] = "Patron's Create Stairs (when used on arrows) or Shrink Stairs (when used on stairs)",
		["archarchon"] = "Archon's Platform Gate (when used on arrows) or Gate Stairs (when used on stairs)",
		["archthief"] = "Thief's Place Stairs (when used on arrows) or Steal Stairs (when used on stairs)",
		["archnecro"] = "Necromancer's Create Dual Stairs (when used on arrows) or Undead Stairs (when used on stairs)",
		["archhacker"] = "Hacker's Hack-In Stairs (when used on arrows) or Escalator (when used on stairs)",
		["archkeeper"] = "Keeper's Restore Stairs (when used on arrows) or Move/Rotate Stairs (when used on stairs)",
		["archsplicer"] = "Splicer's Restore Twisted Stairs (when used on arrows) or Twist Stairs (when used on stairs)",
		["archwicked"] = "Wicked's Wall without a Link (when used on arrows) or Destroy Stairs (when used on stairs)",
		["archjoker"] = "Joker's Create Fake Stairs (when used on arrows) or Flip/Unflip Stairs (when used on stairs)",
		["archspectre"] = "Spectre's Create Phantom Stairs (when used on arrows) or Ghost/UnGhost Stairs (when used on stairs)",
		["archreaver"] = "Reaver's Create Mirrored Stairs (when used on arrows) or One-Way Stairs (when used on stairs)",
		["archheretic"] = "Heretic's Curse Intersection without Flicker (when used on arrows) or Curse/unCurse Stairs (when used on stairs)",

	},

	['both2'] = {
		['delsplits'] = "Can be excuted on gated stairs only. Rank up to Disciple to use this spell to remove Platform's gates.",

		["archgremlin"] = "Gremlin's Revolve Platform (when used on platform) or Revolve Stairs (when used on stairs)",
		["archdrifter"] = "Drifter's Elevator (when used on platform) or Random Drift Stairs (when used on stairs)",
	},

	['anywhere'] = {
		['anywhere'] = "This spell can be executed anywhere.",
	},

	["nowhere"] = {
		['slide'] = "This spell does not require an execution.",

	},

}



module.spells.manacosts = {
	"0 mana",
	"1 mana",
	"2 mana",
	"3 mana",
	"4 mana", 
	"0 mana + undhak-undhakan",
	"1 mana + undhak-undhakan",
	"2 mana + undhak-undhakan",
	"3 mana + undhak-undhakan", 
	"", 
	"10 mana" 
}

module.spells.tokencosts = {

	"1 token",
	"2 token",
	"3 token",

	["chameleonrigevent"] = "2 multitoken",
	["unlock"] = "(mbukak kanggo 3 token)",
}

module.serverfeedback = {

	--failed spell (local)
	["nomana"] = "Ora cukup mana!",
	["notokens"] = "Ora cukup token!",
	["coolwait"] = "Kowé ora biså nganggo Rig lan Acårå saiki, njaluk ngentèni!",
	["nomirror"] = "Kowé kudu nggamblokaké memedimu kanggo mlaku ing platform pangilon.",
	["regenused"] = "Kowé wis nganggo Réprodhuksi Mana sapisan wektu pandakèn iki.",

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
	["noreshuffle"] = "Choose reshuffle mode first!",
	["oneoverload"] = "You can't have multiple Mana Overloads active.",
	["cursed"] = "These stairs are cursed!",
	["cursed2"] = "Cursed stairs are in the way!",
	["blocked"] = "This intersection is cursed.",
	["locked"] = "These stairs are locked.",
	["platformlocked"] = "Target platform is locked.",
	["normalrig"] = "This spell works only on normal or rigged stairs.",
	["noway"] = "Stairs are in the way. (might be invisible)",
	["noway2"] = "Crossing stairs are in the way. (might be invisible)",
	["noplatform"] = "No platform found in that direction.",
	--NEW
	["nopass"] = "This spell can only be cast on the edge of the staircase.",
	--END NEW
	["pass"] = "Pass is already here.",
	["link"] = "Link is already here.",
	["noblink"] = "You can only blink through blocking stairs.",
	["noblink2"] = "You cannot blink on stairs disconnected from the above stairs.",
	["noflip"] = "Only normal, flipped or rigged stairs can be flipped.",
	["nothingtocopy"] = "No staircases are available to copy for you nor your ghost.",
	["wrongdirection"] = "You cannot cast this spell in that direction.",
	["notfound"] = "Stairs not found.",
	["nocursedblink"] = "You can't blink around cursed stairs.",
	["nostairs"] = "There are no stairs here.",
	["noground"] = "This spell cannot be cast on the ground level.",
	["oddonly"] = "This spell cannot be cast on this level.",
	["noabove"] = "No stairs found directly above.",
	["lock"] = "You cannot cast spells now",
	["outdrift"] = "Outside drift can only be created on the outer platforms.",
	["cantgate"] = "This direction is blocked.",
	["wall"] = "Wall is already here.",
	["nocurse"] = "Only normal, cursed or rigged stairs can be cursed/uncursed.",
	["nogate"] = "These stairs are not gated.",
	["noghost"] = "Only ghosted stairs can be de-ghostified.",
	--NEW
	["wrongplace"] = "Other stairs must be in the game area.",
	["archrace"] = "You cannot morph into an Architect while in the race.",
	--END NEW
	["blockedplit"] = "Can't create split, target intersection is cursed.",
	["cursedtarget"] = "There are Cursed Stairs in that destination.",
	["lockedother"] = "Cannot create stairs yet, other stairs are locked.",
	["failedgate"] = "Split creation has failed.",
	["notwist"] = "Those stairs are not twisted.",
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
	["infidel"] = "Rank up to Infidel to flicker on cursed intersection.",
	["banished"] = "Rank up to Banished, to destroy crossing Cursed Stairs.",
	["annihilator"] = "Rank up to Annihilator to destroy Cursed Stairs.",
	["disciple"] = "Rank up to Disciple to destroy Platform Splits.",
	["nomad"] = "Rank up to Nomad to spin already drifted stairs.",
	["prodigy"] = "Rank up to Prodigy, to override Gates.",
	["traveller"] = "Rank up to Traveller to boost Elevators.",
	["controller"] = "Rank up to Controller, to move any uncursed stairs.",--*
	["replica"] = "Rank up to Replica, to use this spell to unmerge.",--*
	--NEW
	["skeleton"] = "Rank up to Skeleton to remove curses while using this spell.",
	--END NEW
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
	["gremlinrig"] = "You have been hypnotised!",
	["reveal"] = "You have revealed invisible stairs!",

	--drifer lifts
	["boosted"] = "Lift diupgrade!",
	["noboost"] = "Ora biså ngupgrade, no more platforms above.",
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
	["scancel"] = "Wurungaké månteråmu kanggo ngganti kelas.",
	["morph"] = "Lumpat kéné kanggo dadi %s!",

	--misc
	["secret"] = "Rahasya ditemokaké!",
	["unlocked"] = "Månterå saiki dibukak!",

	--chameleon exceptions	
	["chamtutorial"] = "You can't use CHAMELEON in the tutorial!",
	["champossessed"] = "You can't use chameleon while possessed.",
	["chamhypnotised"] = "You can't use chameleon while hypnotised.",
	["chamspell"] = "Please execute or cancel current spell first.",
	["morphpossessed"] = "You can't change alignment while possessed.",
	["morphhypnotised"] = "You can't change alignment while hypnotised.",

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
	--NEW
	["newarchpass"] = "You can now become an ARCHITECT!",
	["tryarch"] = "Non-VR Architect unlocked for 10 minutes! Do not leave server.",
	["endarch"] = "Non-VR Architect demo will end in 1 minute!",
	--END NEW
	["newspectrepass"] = "You can now become a SPECTRE!",
	["endcham"] = "Chameleon demo will end in 1 minute!",
	["trymana"] = "Bigger storage unlocked for 10 minutes! Do not leave server.",
	["endmana"] = "Bigger storage demo will end in 1 minute!",


	["used"] = "Code has been used already.",
	["tooshort"] = "Your message was too short and not sent.",
	["sent"] = "Your message was sent successfully, thank you.",

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
	["trap"] = "%s has fallen for %s's trap.",
	["obby"] = "%s is attempting %s's obby.",
	["default"] = "Drones are now back in the default mode.",
	["reg"] = "Staircase is regenerating.",
	["done"] = "Staircase regeneration complete.",
	["union"] = "%s has merged with their ghost!",
	["eliminated"] = "%s has been eliminated.",
	["won"] = "%s has won the race!",
	["falsestart"] = "False Start",
	["countdown"] = "Race in %d seconds!",
	["noplayers"] = "No racing players, infinite mode will not start!",
	["nojoin"] = "Race is now closed - no new players can join.",
	["allfalse"] = "All players have False Started!",
	["safety"] = "Tower levels have changed, this race will not start.",
	["leader"] = "%s has taken the lead!",
	["toolate"] = "Nobody has reached the top in time!",
	["go"] = "GO!",
	["over"] = "Race over!",

	--NEW
	["newrace"] = "%s has started climbing — race them!",
	["joined"] = "%s has joined the	race!",
	["2min"] = "Nobody has challenged %s!",
	["infstart"] = "Infinite race startedlea!"
	--END NEW

}

module.localfeedback = {

	["cancel"] = "Cancel other spell first!",
	["nomana"] = "Not enough Mana!",
	["notokens"] = "Not enough Tokens!",
	["unlocked"] = "Spell unlocked!",
	["maxmana"] = "Your mana is already at maximum!",
	["nopurchase"] = "You do not need to purchase mana in the tutorial!",
	--NEW
	["limitset"] = "You have a mana limiter active - purchase prevented.", --for refill mana
	["hasarchitect"] = "You already have the Architect Pass!",
	--END NEW
	["haschameleon"] = "You already have the Chameleon Pass!",
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


--NEW (redone)
module.switchon = {

	["JOKER1"] = "You will no longer reveal invisible stairs.",
	["WICKED1"] = "You will no longer trigger below Wicked Rigs.",
	["KEEPER1"] = "You will no longer trigger below Keeper Rigs.",
	["SPECTRE1"] = "You will no longer trigger below Spectre Rigs.",
	["HACKER1"] = "Escalators immunity on.",
	["HACKER2"] = "Escalators and rig immunity on.",
	["ARCHON1"] = "Only upward splits will teleport you.",
	["DRIFTER1"] = "You will no longer trigger below Drifter Rigs.",
	["SPLICER1"] = "You will no longer trigger below Splicer Rigs.",
	["REAVER1"] = "You will no longer trigger below Reaver Rigs.",
	["GREMLIN1"] = "Nearby Corkscrews locked.",
	["NONE"] = "All special effects immunity on.",

}

module.switchoff = {

	["JOKER1"] = "You will now reveal invisible stairs.",
	["WICKED1"] = "You will now trigger below Wicked Rigs.",
	["KEEPER1"] = "You will now trigger below Keeper Rigs.",
	["SPECTRE1"] = "You will now trigger below Spectre Rigs.",
	["HACKER1"] = "Escalator immunity off.",
	["HACKER2"] = "Escalator and rig immunity off.",
	["ARCHON1"] = "All except down splits will teleport you.",
	["DRIFTER1"] = "You will now trigger below Drifter Rigs.",
	["SPLICER1"] = "You will now trigger below Splicer Rigs.",
	["REAVER1"] = "You will now trigger below Reaver Rigs.",
	["GREMLIN1"] = "Nearby Corkscrews unlocked.",
	["NONE"] = "All special effects immunity off.",
}
--END NEW

local timedSpell = "%s wis nganggo månterå %s!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo Pawèwèh Mana!",
	["patronevent"] = "%s has just overloaded the tower with stairs!",
	["patronaltevent"] = "%s has just shrunk all normal stairs!",

	["jokerrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Walik!",
	["jokerevent"] = "%s wis ndhelikaké kabèh undhak-undhakan biyasa!",
	["jokeraltevent"] = "%s wis malikaké kabèh undhak-undhakan biyasa!",

	["wickedrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Remuk!",
	["wickedevent"] = "%s wis ngremukaké kabèh undhak-undhakan biyasa!",
	["wickedaltevent"] = "%s wis nyirnakaké KABÈH menårå!",

	["keeperrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Alih Acak!",
	["keeperevent"] = "%s has just shuffled all normal stairs!",
	["keeperaltevent"] = "%s wis mulihaké kabèh undhak-undhakan!",

	["spectrerigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå 50%% chance of dimemedèni!",
	["spectreevent"] = "%s has just phantom shuffled all normal stairs!",
	["spectrealtevent"] = "%s wis memedèni kabèh undhak-undhakan biyasa!",

	["hackerrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Glitch!",
	["hackerevent"] = "%s wis nggawé kabèh undhak-undhakan biyasa dadi Èskalator!",
	["hackeraltevent"] = "%s wis nggawé kabèh undhak-undhakan biyasa dadi Èskalator upwards!",

	["thiefrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Colong Mana!",
	["thiefevent"] = "%s has flattened all normal stairs!",
	["thiefaltevent"] = "%s wis nggawé trabasan ing kabèh tataran!",

	["archonrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Fase!",
	["archonevent"] = "%s wis mbukak portal acak ing kabèh undhak-undhakan biyasa!",
	["archonaltevent"] = "%s has just vertically gated all normal stairs!",

	["drifterrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Balik!",
	["drifterevent"] = "%s wis nglelånå kabèh undhak-undhakan biyasa kanthi acak!",
	["drifteraltevent"] = "%s wis ngangkataké kabèh undhak-undhakan biyasa!",

	["hereticrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Supatani!",
	["hereticevent"] = "%s has just schismatized all normal stairs!",
	["hereticaltevent"] = "%s wis ngutuk kabèh undhak-undhakan biyasa!",

	["splicerrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Sambung!",
	["splicerevent"] = "%s wis nyambung kabèh undhak-undhakan biyasa!",
	["spliceraltevent"] = "%s wis nyigar kabèh undhak-undhakan biyasa!",

	["necromancerrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Patèni!",
	["necromancerevent"] = "%s has just overloaded the tower with Soulless stairs!",
	["necromanceraltevent"] = "%s wis matèni kabèh undhak-undhakan biyasa!",

	["gremlinrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Hipnotis!",
	["gremlinevent"] = "%s wis mubeng kabèh undhak-undhakan biyasa!",
	["gremlinaltevent"] = "%s has just overloaded the tower with Tram stairs!",

	["reaverrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Siji Arah!",
	["reaverevent"] = "%s has just turned all normal stairs into random One-Ways!",
	["reaveraltevent"] = "%s has turned all normal stairs into upward One-Ways!",

	["newmode"] = "%s wis ngganti Drone dadi mode %s!",

	["chameleonrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo månterå Mistéri!"
}

module.spells.extras = {

	["Prompt"] = "Klik månterå ing ngisor, kanggo sinau carané nganggoné.",
	["Title1"] = "Månterå dhasar",
	["Title2"] = "Månterå pokok sing unik",
	["Title3"] = "Månterå pokok sing dibagé lan Bagé Mana",
	["ManaCost"] = "Biyåyå mana: %s", 
	["TokenCost"] = "Biyåyå token: %s", 
	["Special"] = "Syarat spésial: %s",
	["Execution"] = "Ngendi kanggo Nglakokaké: %s",
	["Description"] = "Dèskripsi: %s",
	["basic"] = "Dhasar",
	["ultimate"] = "Pokok",
	["unlock"] = "0 (3 kanggo mbukak)",
	["none"] = "Ora ånå syarat spésial",

	--NEW
	["LeftHand"] = "Tangan Kiwa",
	["RightHand"] = "Tangan Tengen",

}

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "MEMEDI",
	["spirit"] = "SPIRIT", --only for spirit spectres
	["welcome"] = "SUGENG RAWUH!",
	["drones"] = "DRONE",
	["orb"] = "BOLA",
	["refill"] = "NGISI", --for all 2nd rank bonuses
	["overload"] = "OVERLOAD",
	["steal"] = "NYOLONG",
	["gift"] = "PAWÈWÈH",
	["share"] = "DIBAGÉ",
	["prank"] = "NGAPUSI",
	["possession"] = "NYUPATANI",
	["ritual"] = "RITUAL",
	["purge"] = "PANGREMUKAN VICIOUS",
	["blessing"] = "BERKAT",
	["hack"] = "HACK",
	["stash"] = "SIMPENAN",
	["backdoor"] = "WÈB",
	["chamber"] = "KAMAR",
	["base"] = "PANGKALAN",
	["circus"] = "SIRKUS",
	["shelter"] = "TÈNDA",
	["haven"] = "SWARGÅ",
	["study"] = "STUDHI",
	["nether"] = "NÅRÅKÅ",
	["guild"] = "PANDHELIKAN",
	["nexus"] = "SARANG",
	["oasis"] = "OASIS",
	["hub"] = "GARASI",
	["mirror"] = "PANGILON",
	["grave"] = "KUBURAN",
	["shack"] = "GUBUG",
	["regen"] = "RÉPRODHUKSI",
	["optimus"] = "PANJEJEGAN OPTIMUS",
	--NEW
	["tutorial"] = "LANTIHAN",--player mana is drained upon starting tutorial
	--END NEW

}


module.gui.gameover.extras = {

	["noobs"] = "Tutorials are for noobs!",
	["possessed"] = "Those annoying Heretics!",
	["hypnotised"] = "Where am I?",
	["new"] = "New rank acquired - %s",

}

module.gui.gameover.raceplacements = {
	"KOWÉ WIS MENANG BALAPAN!",
	"POSISI KALORO!",
	"POSISI KATELU!",
	"Kowé wis posisi kapapat.",
	"Kowé wis posisi kalimå.",
	"Kowé wis posisi kaenem.",
	"Kowé wis posisi kapitu.",
	"Kowé wis posisi kawolu.",
	"Kowé wis posisi kasångå.",
	"Kowé wis posisi kasapuluh.",
	"Kowé wis posisi kasawelas.",
	"Kowé wis posisi karolas.",
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
