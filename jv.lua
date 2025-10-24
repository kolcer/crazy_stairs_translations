--VERSION 1.0--
--JAVANESE | JAWA | ꦗꦮ --

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "IYA",
	["no"] = "ORA",
	["ok"] = "OKÉ",
	["menu"] = "MENU",
	["default"] = "DEFAULT",
	["validate"] = "TEBUS",
	["play"] = "MÅIN",
	["skip"] = "LIWATI\nLATIHAN",
	["loading"] = "MOMOT, NJALUK NGENTÈNI…",
	["mode"] = "MODE\n%s",
	["cd"] = "PANGADHEMAN\nPOKOK",
	["complete"] = "RAMPUNG",
}

module.gui.switcher = {

	["title"] = "GANTI SERVER",

	["public"] = "SERVER PUBLIK",
	["private"] = "SERVER PRIBADHI",
	["join"] = "GABUNG",
	["friends"] = "KÅNCÅ ONLINE",
	["refresh"] = "nyegeraké…",
	["fail"] = "GAGAL NYEGERAKÉ! :[",

}

module.gui.serversettings = {

	["title"] = "SETÈLAN OWNER",

	["Moderation"] = "MODHERASI",
	["rules"] = "Server duwékmu, Aturan duwékmu.",
	["temp"] = "Kabèh mute and ban are temporary",
	["kick"] = "KICK",
	["ban"] = "BAN",
	["mute"] = "MUTE",

	["Drones"] = "SETÈLAN DRONE",
	["DronesReadOnly"] = "SETÈLAN DRONE (wåcå mung)",
	["DroneEnabled"] = "Drone diaktifaké",
	["DroneFix"] = "Drone mulihaké undhak-undhakan",
	["DroneRemove"] = "Drone mbusek prapatan dikutuk",
	["DroneUnCurse"] = "Drone mulihaké undhak-undhakan dikutuk",
	["DroneMove"] = "Drone move undhak-undhakan in mode default",
	["DroneSpin"] = "Drone spin undhak-undhakan in mode default",
	["DroneSpeed"] = "Kacepetan mlesir Drone (tataran/detik)",
	["DroneDelay"] = "Durasi puteran Drone (detik)",
	["DroneMax"] = "Max staircases amount (drones will exclusively destroy above this limit)",
	["DroneMin"] = "Min staircases amount (drones will exclusively create below this limit)",
	["DroneBlock"] = "Kamungkinan prapatan dikutuk kanggo saben ånå prapatan kothong encounter (persèn)",
	["DroneCurse"] = "Kamungkinan undhak-undhakan dikutuk for creation and undhak-undhakan biyasa encounter (persèn)",

	["Tower"] = "SETÈLAN MENÅRÅ",
	["TowerReadOnly"] = "SETÈLAN MENÅRÅ (wåcå mung)",
	["InfMode"] = "Mode Infinit (ora biså diganti wektu mbalap utåwå mulih)",
	["CasualPlayers"] = "Pendaki kasual allowed to cast månterå",
	["Regeneration"] = "Auto Staircase generation after a Wicked's Purge (will not work in the infinite mode)",
	["EvenLevels"] = "Even Levels Restricted",
	["OrbMoves"] = "Endgame orb changes position",
	["InfRegeneration"] = "Auto Staircase generation on new server, tower levels change and after the infinite race",
	["TowerLevels"] = "Tower levels (or active levels in the infinite mode). Cannot be changed during a race or a regeneration",
	["RaceDuration"] = "Durasi Balap Maximum. Will not affect current race. (detik)",
	["InfStart"] = "Initial Infinite mode round interval (2 levels are created each round) (detik)",
	["InfReduction"] = "Infinite mode interval reduction (each round is shorter by) (detik)",
	["InfMin"] = "Infinite mode minimum interval duration (detik)",
	["Cooldown"] = "Jångkå pangadheman Acårå lan Rig (detik)",

}

module.gui.shop = {

	["title"] = "TOKO UNDHAK-UNDHAKAN ÉDAN",

	["chameleon"] = "Chameleon biså ngganti kelas wektu pendakian.",
	["spectre"] = "Spectre iku kelas teleport based nodheg kanggo mendaki dhèwèkan (solo play).",
	["mana"] = "Expand your Mana storage capacity by 10 points.",

	["3tokens"] = "Unlock one spell or cast up to 3 ultimate spells.",
	["30tokens"] = "Unlock ten spells or cast up to 30 ultimate spells.",
	["300tokens"] = "Enough to unlock all spells with 93 tokens left.",

	["3TOKENS"] = "3 Multi Token (R$%d)",
	["30TOKENS"] = "30 Multi Token (R$%d)",
	["300TOKENS"] = "300 Multi Token (R$%d)",
	["SPECTRE PASS"] = "Gamepass Spectre (R$%d)",
	["MANA PASS"] = "Gamepass Énérgi 20 Mana (R$%d)",
	["CHAMELEON PASS"] = "Gamepass Chameleon (R$%d)",

}

module.gui.spellbar = {

	["share"] = "BAGÉ\nMANA",
	["nocasual"] = "MUNG PAMBALAP SING BISÅ CAST MÅNTERÅ",

} 

module.gui.stats = {

	["total"] = "Gunggung pendakian: %d / Kamenangan: %d",
	["class"] = "Pendakian minångkå %s: %d",
	["best"] = "Wektu %s paling rikat: %.2f",
	["na"] = "n/a",

}

module.gui.spell = {

	["possessed"] = "DISUPATANI! (Kumpulaké mana kanggo diluwari)",
	["released"] = "DILUWARI!",
	["timesup"] = "wektuné entèk…",

}


module.gui.activatecham = {

	["title"] = "AKTIFAKÉ CHAMELEON",
	["body"] = "Åpå kowé gelem ngaktifaké mode Chameleon?\nIki bakal stay active for the rest of the climb."

}

module.gui.cacel = {

	["title"] = "WURUNGAKÉ MÅNTERÅ WINATES",
	["body"] = "Åpå kowé gelem murungaké månterå winates iki? Token ora bakal be refunded."

}

module.gui.climbtimer = {

	["prompt"] = "Climb the\nstairs!",
	["floor"] = "Lanté",
	["last"] = "Last time",

}

module.gui.codes = {

	["title"] = "LEBOKAKÉ KODHÉ",
	["body"] = "Ketik kodhé ing kéné:",
	["prompt"] = "(kodhé)",
	["button"] = "TEBUS",

}

module.gui.gauges = {

	["prompt"] = "Lumpat kanggo miwiti, utåwå klik lagi kanggo murung.",

	["found"] = "%d undhak-undhakan ditemokaké (%.1f%% kisèn)",
	["special"] = "%d sing spésial (%.1f%%)",
	["affected"] = "%d undhak-undhakan bakal kenå pengaruh (%.1f%%)",
	["cursed"] = "%d prapatan dikutuk ditemokaké (%.1f%%)",
	["fill"] = "%d undhak-undhakan bakal diwangun (%.1f%%)",
	["purge"] = "%d objèk bakal diremuk (%.1f%%)",
	["normal"] = "%d sing wis biyasa (%.1f%%)",
	["restore"] = "%d undhak-undhakan bakal dipulihaké (%.1f%%)",
	["bypass1"] = "%d kutukan are in the way (%.1f%%)",
	["bypass2"] = "%d trabasan sing wis ånå (%.1f%%)",
	["bypass3"] = "%d trabasan bakal digawé (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "PAMUTER MUSIK",

	["master"] = "VOLUME MASTER",
	["default"] = "(nggunakaké volume master)",
	["climb"] = "MUSIK MENDAKI",
	["endgame"] = "MUSIK ENDGAME",
	["failed"] = "[gagal momot]",

}

module.gui.results = {

	["title"] = "ASIL BALAP",

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

module.gui.racetimer = {

	["gather"] = "Kowé\nmèlu balap iki.",
	["race"] = "BALAP IKI\nRAMPUNG!",
	["inf"] = "Kasingkiraké!",
	["off"] = "TIMER\nBALAP.",
	["wait"] = "Balap diwiwiti ing",
	["on"] = "Posisi",

}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "Rig %s",
	["mode"] = "Mode %s Drone",
	["refill"] = "Overload Mana %s",
	["union"] = "Fusi Memedi %s",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Wangun Undhak-undhakan",
	["restore"] = "Panggil Orb", 
	["split"] = "Rebuild Opposite",
	["shrinkabove"] = "Cilikaké Undhak-undhakan ing Dhuwur",
	["link"] = "Gawé Kreteg",
	["portal"] = "Gawé Portal",

	["summoner"] = "Pambangun",
	["patronevent"] = "Berkahi Menårå karo Undhak-undhakan",
	["patronaltevent"] = "Panyilikan",

	--JOKER 
	["flip"] = "Walik Undhak-undhakan",
	["flipabove"] = "Walik Undhak-undhakan ing Dhuwur",
	["fake"] = "Wangun Undhak-undhakan Palsu",
	["invisible"] = "Wangun Undhak-undhakan Ora Katon/Didhelikaké",
	["disco"] = "Undhak-undhakan sing nggawé wong nari",
	["trap"] = "Gawé Trap",

	["flipper"] = "Pamalik",
	["jokerevent"] = "Dhelikaké Menårå",
	["jokeraltevent"] = "Walik Kabèh Undhak-undhakan",

	--WICKED
	["destroy"] = "Remukaké Undhak-undhakan",
	["destroyabove"] = "Remukaké Undhak-undhakan ing Dhuwur",
	["bend"] = "Bèngkok Undhak-undhakan Munggah",
	["damage"] = "Rusak Undhak-undhakan ing Dhuwur",
	["flatten"] = "Bèngkok Undhak-undhakan Opposite Mudhun",
	["wall"] = "Gawé Témbok",

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
	["keeperevent"] = "Pangocok-ocok",
	["keeperaltevent"] = "Pamulih Menårå",

	--SPECTRE
	["phantom"] = "Gawé Undhak-undhakan Ilang",
	["ghost"] = "Memedèni Undhak-undhakan ing Dhuwur",
	["shadow"] = "Memedèni Undhak-undhakan",
	["horizontal"] = "Teleportasi  Horisontal",
	["random"] = "Teleportasi Acak",
	["vertical"] = "Teleportasi Munggah",

	["traveller"] = "Melip-Melip",
	["spectreevent"] = "Phantom Shuffle",
	["spectrealtevent"] = "Alam Æther",

	--HACKER
	["dash"] = "Flyhack menyang Platform",
	["blink"] = "Noclip tembus Undhak-undhakan ing Dhuwur",
	["swap"] = "Teleport menyang Memedimu",
	["slide"] = "Èskalator",
	["slideup"] = "Hack Undhak-undhakan",
	["glitch"] = "Glitch Undhak-undhakan",

	["hack"] = "Pamasang Èskalator",
	["hackerevent"] = "Escalation",
	["hackeraltevent"] = "Breach",

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
	["splitup"] = "Gawé Portal Munggah",
	["splitrotate"] = "Gawé Portal menyang Sasisih",
	["splitside"] = "Gawé Portal menyang Sandhing",
	["splitrandom"] = "Gawé Portal Acak",
	["cancelsplit"] = "Tutup Portal",
	["splitforward"] = "Gawé Portal Platform",

	["splitter"] = "Pambukak Portal",
	["archonevent"] = "Labirin Portal",
	["archonaltevent"] = "Munggah-Mudhun",

	--DRIFTER
	["indrift"] = "Surf",
	["outdrift"] = "Lelånå Undhak-undhakan",
	["updrift"] = "Platform Lift",
	["diagdrift"] = "Lelånå Platform",
	["spin"] = "Balik Undhak-undhakan",
	["driftabove"] = "Angkat Undhak-undhakan ing Dhuwur",

	["riser"] = "Operator Lift",
	["drifterevent"] = "Tornado",
	["drifteraltevent"] = "Pangangkatan",

	--HERETIC
	["createcursed"] = "Wangun Undhak-undhakan Dikutuk",
	["curse"] = "Kutuk Undhak-undhakan",
	["curseabove"] = "Kutuk Undhak-undhakan ing Dhuwur",
	["curseinter"] = "Lumpat lan Kutuk Prapatan",
	["autodown"] = "Benthèt Munggah",
	["autoup"] = "Benthèt Mudhun",

	["malediction"] = "Pangundang",
	["hereticevent"] = "Pamecahan",
	["hereticaltevent"] = "Kutuk Kabèh Menårå",

	--SPLICER
	["twistup"] = "Sambung Undhak-undhakan Munggah",
	["twistside"] = "Sambung Undhak-undhakan Sababag",
	["twistrotate"] = "Sambung Undhak-undhakan Sacedhak",
	["canceltwist"] = "Jegeg Undhak-undhakan Diplintir",
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
	["bigmirror"] = "Gawé Platform Pangilon Raksasa",
	["smallmirror"] = "Gawé Platform Pangilon Cilik",
	["outermirror"] = "Wangun Portal Pangilon njåbå",
	["merge"] = "Gamblok Reaver",
	["oneway"] = "Undhak-undhakan Siji Arah",

	["reflection"] = "Pangilo",
	["reaverevent"] = "Cross Roads",
	["reaveraltevent"] = "Conjucture",
	
	
	--gremlin
	["tram"] = "Wangun Undhak-undhakan Trèm",
	["screwup"] = "Plintir Munggah",
	["revolve"] = "Ubeng Undhak-Undhakan",
	["trapstairs"] = "Undhak-undhakan Trapdoor",
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

	--MISC (compatibility)
	["reg"] = "Staircase is regenerating",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff
local union = "This is a timed Ghost Union spell. Once in Ghost Union Mode, you can clip through blocking stairs and walk on ghost, obby, and fake stairs. Special stairs will have no effect on you, and you will not trigger rigs. However, you cannot cast spells in this mode."
local overload = "This is an Overload spell. It will grant you one Mana every 6 seconds for the next minute (10 in total). You can have only one overload active at a time."
local timed = "Månterå iki winates. "  -- do not remove space
local rig = "This is a Rig spell. It will Rig all normal stairs, one by one, with " -- do not remove space
local event = "This is an Event spell. It will affect all normal stairs with " -- do not remove space
local fill = "This is a Fill spell. It will create stairs in every empty uncursed intersection in a random direction. " -- do not remove spaces
local mode = "This is a Drone spell. It will change the drone mode to %s. In this mode drones will cast randomly either %s or %s on normal stairs. Special stairs will be restored instead. Outside of limits, drones will create and destroy respectively."
local timedExtra = "Munggah pangkat dadi %s kanggo increase the limit to 90s. Casting this spell will also refill Mana for all %s with at least %s Rank. " -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Månterå iki kanggo mangun undhak-undhakan ing arah sing dipilih. Yèn ånå undhak-undhakan sing nyilang ing arahmu, dhèwèké bakal diremukaké.",
	["restore"] = "Månterå iki kanggo calls the orb on the top level to the chosen platform. Munggah pangkat dadi DEFENDER kanggo reduce the cost to 2 Mana. Munggah pangkat dadi SAVIOUR kanggo double the speed at which the orb will travel to You.",
	["split"] = "Månterå iki kanggo recreates below stairs in the opposite direction. Recreated stairs will be normal regardeless of original stairs type.",
	["shrinkabove"] = "Månterå iki kanggo nyilikaké undhak-undhakan sing ånå ing dhuwur, allowing you to walk around them.",
	["link"] = "Månterå iki kanggo nggawé kreteg énérgi between platforms sasuwéné 60 detik. Links are intangilbe from below. Munggah pangkat dadi the CREATOR rank to extend the time to 120 seconds.",
	["portal"] = "Månterå iki kanggo nggawé portal that will teleport all players one platform up. Portal lasts 60 seconds. Munggah pangkat dadi PROTECTOR to extend the time to 120 seconds.",

	["summoner"] = timed ..  "It allows you to create as many stairs as you like for one minute. Keep jumping on the arrows to create stairs." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."the Patron Rig. Patron Rig, once triggered, will increase triggering player Mana by one. If player has maximum Mana, stairs will not trigger. After triggering, stairs will become normal again.",
	["patronevent"] = fill ..  "Created stairs will be normal.",
	["patronaltevent"] = event .. "the Shrink spell.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Shrink Spell"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Månterå iki kanggo malikaké undhak-undhakan, nganti bagéan ndhuwur bakal dadi bagéan ngisor lan kosokbaliné. Kowé ugå biså malikaké dhèwèké manèh.",
	["flipabove"] = "Månterå iki kanggo malikaké undhak-undhakan sing ånå ing dhuwur, nganti bagéan ndhuwur bakal dadi bagéan ngisor lan kosokbaliné. Kowé ugå biså malikaké dhèwèké manèh.",
	["fake"] = "Månterå iki kanggo mangun undhak-undhakan palsu ing arah sing dipilih. Yèn ånå undhak-undhakan sing nyilang ing arahmu, dhèwèké bakal diremukaké. Any player (including you) that will attempt to climb them will fall through, with the exception of TRICKSTERS, ITS and players in the Ghost Union Mode.",
	["invisible"] =  "Månterå iki kanggo nggawé undhak-undhakan didhelikaké. However, this will not destroy crossing stairs, so you can only place stairs in an empty intersection. Munggah pangkat dadi JESTER to see all invisible stairs, and have the option to not reveal them.",
	["disco"] = "Månterå iki kanggo nggawé undhak-undhakan dadi disco mode. Any player (including you) will stop and dance on them for 5 seconds (usually twice). Ranks COMIC and up are immune to disco stairs.",
	["trap"] = "Månterå iki kanggo nggawé turns platform into a trap door for 60 seconds. Any player (including you) that will walk on the trap will fall to the platform below. Munggah pangkat dadi JOKESTER to be able to detect platform traps. Munggah pangkat dadi TRICKSTER to be immune to such traps.",

	["flipper"] = timed ..  "It allows you to cast as many flip stairs spells as you like for one minute. Always above stairs will be flipped, if found. If not, below stairs will be flipped instead."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "the Joker Rig. Stairs, once triggered, will flip automatically.",
	["jokerevent"] = event .. "the Invisiblity.",
	["jokeraltevent"] = event .. "the Flip spell.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Invisible Spell"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Månterå iki kanggo ngremukaké undhak-undhakan. Ora kåyå månterå liyåné, it will work on any stairs. Munggah pangkat dadi VILE kanggo cast månterå iki kanthi gratis. Munggah pangkat dadi VICIOUS to get 1 Mana everytime you destroy any special stairs. Munggah pangkat dadi ANNIHILATOR kanggo ngremukaké undhak-undhakan dikutuk.",
	["destroyabove"] = "Månterå iki kanggo ngremukaké undhak-undhakan sing ånå ing dhuwur. Unlike other spells, it will work on any stairs. Munggah pangkat dadi VICIOUS to get 1 Mana everytime you destroy any special stairs. Munggah pangkat dadi ANNIHILATOR kanggo ngremukaké undhak-undhakan dikutuk.",
	["bend"] = "This spell bends stairs up. Use it to gain access to above platform.",
	["damage"] = "This spell turn above stairs into an obby, by removing most of the steps. Before attempting, remember about jump cooldown. Munggah pangkat dadi DESTROYER to walk on obbies just like on normal stairs.",
	["flatten"] = "This spell bends opposite stairs down. Use it to gain access to the opposite platform.",
	["wall"] = "Månterå iki kanggo nggawé témbok ing platform kanggo mblokir pendaki, lan ugå kreteg menyang platform iring sasuwéné 60 detik. Mung Wicked lan memedi digabung sing biså mlaku tembus témbok lan ing kreteg.",

	["bender"] = timed .. "It allows you to cast as many bend up stairs as you like for one minute. Both below and above stairs will be bent at the same time if requirements are met."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "the Wicked Rig. Stairs, once triggered, will destroy automatically. Munggah pangkat dadi Devil to walk on Wicked Rigs without triggering them.",
	["wickedevent"] = event .. "the Destroy spell. Regeneration will not be triggered.",
	["wickedaltevent"] = "This is an Event spell. It will destroy all the stairs and curses in the game. No exceptions. Regeneration will be triggered.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","Bend Spell"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Månterå iki kanggo ngalih undhak-undhakan in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on the stairs, prompting you to choose direction. Stairs cannot be moved outside the game area. Munggah pangkat dadi CONTROLLER kanggo ngalih undhak-undhakan åpå waé.",
	["rotate"] = "This spell will rotate stairs in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on stairs, prompting you to choose direction. Stairs cannot be rotated outside the game area. Munggah pangkat dadi CONTROLLER to move any un-cursed stairs.",
	["moveup"] = "This spell will move stairs up, destroying any stairs in the way. Stairs cannot be moved above top level. Munggah pangkat dadi CONTROLLER to move any un-cursed stairs.",
	["movedown"] = "Månterå iki kanggo mulihaké undhak-undhakan sing spésial åpå waé. If stairs are already normal, this spell will not execute. Munggah pangkat dadi CAPTAIN kanggo cast månterå iki kanthi gratis. Munggah pangkat dadi ADMIRAL to be able to fix Cursed Stairs and Cursed Intersections.",
	["rig"] = "This spell will move or rotate stairs in random direction, destroying any stairs in the way. Munggah pangkat dadi OPERATOR to avoid stairs going down. Munggah pangkat dadi CONTROLLER to move any un-cursed stairs.",
	["moverandom"] = "This spell will move or rotate above stairs in random direction, destroying any stairs in the way. Munggah pangkat dadi OPERATOR to avoid stairs going down. Munggah pangkat dadi CONTROLLER to move any un-cursed stairs.",

	["ascension"] = timed .. "It allows you to cast as many move up spells as you like for one minute."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "the Keeper Rig. Stairs, once triggered, will move or rotate in random direction. Munggah pangkat dadi Operator, for any rigs that you trigger to never go down. Munggah pangkat dadi Sentinel to have an option not to trigger them.",
	["keeperevent"] = event .. "the Random Move spell. Before executing you can choose soft or forced mode. In soft mode, this spell will move or rotate all normal stairs in random direction, without destroying anything in the process. In forced mode, this spell will move or rotate all stairs in random direction, destroying any staircases in the way.",
	["keeperaltevent"] = "This is an Event spell. It will restore all stairs in the game, including cursed ones. Unlike Purge it will not remove cursed intersections.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Rig","Random Move Spell"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Månterå iki kanggo nggawé undhak-undhakan Phantom ing arah sing dipilih. Yèn ånå undhak-undhakan sing nyilang ing arahmu, dhèwèké bakal diremukaké. Phantom stairs will quickly fade away after casting, disappearing completely.",
	["ghost"] = "This spells lets you ghostify above stairs. You can walk through ghostified stairs, but cannot walk on them unless you are ranked up to AETHER. Use this spell again to de-ghostify stairs. ",
	["shadow"] = "This spell lets you ghostify stairs. You can walk through ghostified stairs, but cannot walk on them unless you are ranked up to AETHER. Munggah pangkat dadi PHANTOM kanggo cast månterå iki kanthi gratis. Use this spell again to de-ghostify stairs.",
	["horizontal"] = "This spell lets you teleport horizontally in the choosen direction. You can teleport through any un-cursed stairs in the way.",
	["random"] = "This spell will teleport you to a random platform on the same level.",
	["vertical"] = "This spell will teleport you up, to the platform above.",

	["traveller"] = timed ..  "It allows you to cast as many Horizontal Teleport spells, as you like for one minute."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "the Spectre Rig. Stairs, once triggered, will have a 50% chance of ghosting. Munggah pangkat dadi Vision to have an option to walk on Spectre Rigs without triggering them.",
	["spectreevent"] = event .. "the Ghosted Random Move spell. Before executing you can choose soft ghosted or forced ghosted mode. In soft ghosted mode this spell will move or rotate normal stairs in random direction, without destroying anything in the process. In forced ghost mode, this spell will move or rotate all stairs in random direction, destroying any staircases in the way.",
	["spectrealtevent"] = "This is an Event spell. It will ghostify all normal stairs. Munggah pangkat dadi Aether to walk on ghostified stairs. Ghost Union can also be used to walk on ghostified stairs.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Soft Ghosted Random Move Spell"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Månterå iki kanggo nggawému teleport in the chosen direction. You cannot teleport through blocking stairs. Munggah pangkat dadi CRACKER to speed up this spell by 50%.",
	["blink"] = "Månterå iki kanggo nggawému teleport around any un-cursed blocking above stairs. If the above stairs do not effectively block the way, this spell won't work. Munggah pangkat dadi EXPLOITER to speed up this spell by 50%.",
	["swap"] = "This spell will teleport you to the spot where your ghost is. Unlike other basic spells, Swap can be cast anywhere.",
	["slide"] = "This spell will turn stairs into an Escalator. You can choose either Up or Down Escalator. Munggah pangkat dadi SCRIPTER to have an option to be immune to Escalators.",
	["slideup"] = "Månterå iki kangoo hack in stairs in the chosen direction. For this to work, there have to be stairs already present in that intersection facing the opposite way. Hacked in stairs can be of any un-cursed type and will be restored upon emerging.",
	["glitch"] = "Månterå iki kanggo menèhi glitch ing undhak-undhakan, teleport kamu dan dheweke menyang a different spot on the same level. Munggah pangkat dadi ZERO, to teleport stairs next to the orb, if you already are on the top level.",

	["hack"] = timed .. "It allows you to cast as many Upwards Escalators as you like for one minute. If there are blocking un-cursed stairs above, they will be demolished." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "the Hacker Rig. Stairs, once triggered it will teleport player and stairs to a different spot on the same level. Only one player will be teleported. Munggah pangkat dadi REAPER to have an option to walk on Hacker Rigs without triggering them.",
	["hackerevent"] = event .. "the Random Escalator spell.",
	["hackeraltevent"] = event ..  "the Upward Escalator spell.",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Rig","Random Escalator spell"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Månterå iki kanggo nyolong undhak-undhakan sing biyasa utåwå rigged. Either this or steal above is required to cast other basic thief spells. Munggah pangkat dadi HIJACKER supåyå biså nyolong undhak-undhakan ora kawutuk åpå waé. Munggah pangkat dadi OUTLAW supåyå biså nyolong 2 undhak-undhakan sisan.",
	["stealabove"] = "Månterå iki kanggo nyolong undhak-undhakan sing biyasa utåwå rigged sing ånå ing dhuwur. Either this or steal below is required to cast other basic thief spells. Munggah pangkat dadi HIJACKER supåyå biså nyolong undhak-undhakan ora kawutuk åpå waé. Munggah pangkat dadi OUTLAW supåyå biså nyolong 2 undhak-undhakan sisan.",
	["place"] = "Månterå iki kanggo mbalèkaké undhak-undhakan dicolong ing arah sing dipilih. However, this will not demolish crossing stairs, so you can only place stairs ing prapatan sing kosong.",
	["uppass"] = "Månterå iki kanggo mangun undhak-undhakan spiral karo undhak-undhakan sing dicolong kowé. It can only be cast on outer platforms and will last one minute. Munggah pangkat dadi BANDIT kanggo undhak-undhakan spiral to last loro menit.",
	["sidepass"] = "Månterå iki kanggo mangun trabasan bèngkong karo undhak-undhakan sing dicolong kowé. Iki bakal diwangun ing arah sing dipilih sasuwéné siji menit. Munggah pangkat dadi ROBBER kanggo trabasan to last loro menit.",
	["drop"] = "Månterå iki kanggo mangun undhak-undhakan kreteg kanthi gratis. Nanging kowé kudu nemokaké prapatan sing kosong. Undhak-undhakan kreteg wråtå.",

	["heist"] = timed .. "It allows you to cast place stairs spell as many times as you like. Unlike regular place spell, this spell can be cast through crossing stairs, as stairs will be stolen automatically in this mode." .. string.format(timedExtra,RankData.THIEF[7].name,"Thieves",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "the Thief Rig. Stairs once triggered, will steal one Mana from triggering player and add it to your own Mana. You will not receive Mana if your Mana is at maximum. You will also not receive Mana if you change alignment.",
	["thiefevent"] = event .. "the Flatten Stairs spell.",
	["thiefaltevent"] = "This is an Event spell. It will create bypass in each inward north and south intersection. If the intersection is cursed, bypass will not be created.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Steal or Place spell"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Månterå iki kanggo nggawé portal nyambung below stairs to another in a horizontal direction of your choosing with a Gate. If there are no stairs, they will be created. Munggah pangkat dadi PRODIGY to override an existing connection. Munggah pangkat dadi ILLUMINATI to be able to walk through horizontal portals.",
	["splitrotate"] = "Månterå iki kanggo nggawé portal below stairs to another in a rotated horizontal direction of your choosing with a Gate. If there are no stairs, they will be created. Munggah pangkat dadi PRODIGY to override an existing connection. Munggah pangkat dadi ILLUMINATI to be able to walk through horizontal portals.",
	["splitup"] = "Månterå iki kanggo nggawé portal nyambung undhak-undhakan ing ngisor karo undhak-undhakan ing dhuwur. Yèn ora ånå undhak-undhakan ing dhuwur, dhèwèké bakal digawé. Munggah pangkat dadi PRODIGY kanggo nyingkiraké portal sing wis ånå. Munggah pangkat dadi SAGE kanggo merduli portal menyang ngisor.",
	["cancelsplit"] = "Månterå iki kanggo nutup portal åpå waé ing undhak-undhakan. Munggah pangkat dadi DISCIPLE supåyå bisã nutup platform portal. Munggah pangkat dadi SCHOLAR kanggo cast månterå iki kanthi gratis",
	["splitrandom"] = "This spell will connect below stairs to any valid intersection on the same floor with a Gate. If there are no stairs, they will be created. Munggah pangkat dadi PRODIGY to override an existing connection. Munggah pangkat dadi ILLUMINATI to be able to walk through horizontal portals.",
	["splitforward"] = "This spell will connect two platforms in a horizontal direction of your choosing with a Gate. Munggah pangkat dadi DISCIPLE to be able to remove platform splits. Occupying stairs won't block the connection. Munggah pangkat dadi ILLUMINATI to be able to walk through such portals.",

	["splitter"] = timed .. "It allows you to create as many platform splits as you like for one minute." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "the Archon Rig. Stairs, once triggered, will teleport the player to the direction they were walking in, crossing any blocking un-cursed stairs. After triggering, stairs will become normal again.",
	["archonevent"] = event .. "the Random Gate spell.",
	["archonaltevent"] = event .. "the Upward Gate spell.",
	["archonmode"] = string.format(mode,"Archon","Archon Rig","Random Gate spell"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Månterå iki kanggo nggawé temporary surfboard, moving you to a platform ing arah sing dipilihmu.  Kowé ora biså surf tembus undhak-undhakan sing mblokir.",
	["updrift"] = "Månterå iki kanggo nggawé lift using below and above platforms. The platforms will be restored after a given time period. Munggah pangkat dadi VAGABOND to speed up the movement. Munggah pangkat dadi TRAVELLER supåyå biså ngupgrade lift menyang tataran kaloro. Munggah pangkat dadi STRIDER supåyå biså ngupgrade lift manèh menyang tataran katelu.",
	["diagdrift"] = "Månterå iki kanggo nggawé: Create a horizontal elevator using below and any platform in a diagonal fashion. Such elevator will disappear after 7 return journeys. UTÅWÅ: If casted in outside direction, månterå bakal nggawé elevator circle around the menårå once.",
	["spin"] = "Månterå iki kanggo mbalikaké undhak-undhakan ing ngisor 180 drajat. Munggah pangkat dadi NOMAD supåyå biså mbalikaké undhak-undhakan dilelånå.",
	["outdrift"] = "Månterå iki kanggo nglelånå undhak-undhakan ing ngisor menyang orièntasi acak, maring a prapatan sing kosong acak ing tataran sing pådhå. Munggah pangkat dadi NOMAD kanggo mlelånå undhak-undhakan sing wis dilelånå.",
	["driftabove"] = "This spell will drift above stairs with less randomness and within the same intersection, so that you can walk under and climb them.",

	["riser"] = timed .. "It allows you to create as many Vertical Elevators as you want for one minute. You can also boost lifts while using this spell, if you are ranked high enough." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "the Drifter Rig. Stairs, once triggered, will spin around in random direction. Munggah pangkat dadi VOYAGER to gain immunity to this rig.",
	["drifterevent"] = event .. "the Random Drift spell.",
	["drifteraltevent"] = event .. "the Lift Above Stairs spell.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Random Drift spell"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Månterå iki kanggo mangun undhak-undhakan kawutuk ing arah sing dipilih. Undhak-undhakan åpå waé sing ngalang-alangi ing arahmu bakal diremukaké. Munggah pangkat dadi BANISHED kanggo ngremukaké undhak-undhakan kawutuk sing ngalang-alangi.",
	["curse"] = "Månterå iki kanggo ngutuk undhak-undhakan ngisor. Nggunakaké månterå manèh kanggo mbébasaké undhak-undhakan.",
	["curseabove"] = "Månterå iki kanggo ngutuk undhak-undhakan sing ånå ing dhuwur. Dhèwèké bakal diangkat kanggo sauntårå, marengaké kowé kanggo mendaki ing ngisoré. Nggunakaké månterå manèh kanggo mbébasaké undhak-undhakan.",
	["curseinter"] = "Månterå iki kanggo mlumpat menyang platform iring, yèn ora ånå undhak-undhakan ing arah. Prapatan bakal dikutuk sawisé månterå iki, saénggå pendaki liyå ora biså nggunakakéné manèh. Munggah pangkat dadi INFIDEL supåyå biså nggunakaké månterå iki ing prapatan sing wis kawutuk, lan ugå mbebasakéné.",
	["autodown"] = "Use this spell to create and lift special mirrored section of the lower part of the staircase. Only ghost unions and Heretics can walk on that section.",
	["autoup"] = "Use this spell to create special mirrored section of upper part of the staircase. Regular steps will be lowered down. Only ghost unions and Heretics can walk on that section.",

	["malediction"] = timed .. "It allows you to create as many cursed stairs as you want for one minute." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "the Heretic Rig. Stairs, once triggered, will possess the triggering player. They will have to find Mana to be released. Possessed players cannot cast spells. Munggah pangkat dadi UNBELIEVER to gain immunity to this rig. Munggah pangkat dadi EXILED to get 1 mana each time a player is possessed.",
	["hereticevent"] = event .. "the Random Schism spell.",
	["hereticaltevent"] = event .. "the Curse Stairs spell.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Random Schism spell"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Månterå iki kanggo mlintir undhak-undhakan menyang arah kiwå utåwå tengen, nyambungaké dhèwèké to the neighbouring staircase. Yèn ora ånå undhak-undhakan ing arah sing dipilih, dhèwèké bakal digawé. Munggah pangkat dadi TRANSFORMER to use this spell on undhak-undhakan sing wis diplintir.",
	["twistrotate"] = "Månterå iki kanggo mlintir undhak-undhakan menyang the rotated horizontal arah, nyambungaké them to the neighbouring staircase. Yèn ora ånå undhak-undhakan ing arah sing dipilih, dhèwèké bakal digawé. Munggah pangkat dadi TRANSFORMER to use this spell on already twisted stairs.",
	["twistup"] = "Månterå iki kanggo nyambungaké above stairs and likely below stairs too (if they are normal or rigged), so they create 2-level spiral staircase up. Munggah pangkat dadi TRANSFORMER to use this spell on already twisted stairs.",
	["canceltwist"] = "Månterå iki kanggo njejegaké any undhak-undhakan sing diplintir. Munggah pangkat dadi COMBINER to cast this spell from platform on disconnected twisted stairs. Munggah pangkat dadi MIXER kanggo cast månterå iki kanthi gratis. Munggah pangkat dadi OPTIMUS to gain 1 Mana every time You restore twisted stairs.",
	["split2"] = "Månterå iki kanggo mbelah undhak-undhakan into two opposing staircases, allowing you to access all four platforms.",
	["splitalt"] = "Månterå iki kanggo nyigar undhak-undhakan into two separated staircases, allowing you to bypass above stairs - even when they are cursed.",

	["twister"] = timed .. "It allows you to cast as many Split Stairs Spells as you like for one minute. Split spell variety will be chosen automatically for Your benefit." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "the Splicer Rig. Stairs, once triggered, will splice in a random direction. Munggah pangkat dadi ASSEMBLER to have the option to avoid Splicer Rigs.",
	["splicerevent"] = event .. "the Random Splice spell.",
	["spliceraltevent"] = event .. "the Split Stairs spell.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Random Splice spell"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	["createdual"] = "Månterå iki kanggo mangun undhak-undhakan for both you and Your ghost, so that players near the ghost can use them. Munggah pangkat dadi SKELETON for ghost to ignore cursed stairs and intersections. Munggah pangkat dadi LICH to demolish crossing stairs with this spell.",
	["copyplatform"] = "Månterå iki kanggo nyalin any stairs from ghost platform to yours and vice-versa. Stairs will be copied in mirrored fashion. Copied stairs will always be normal. Munggah pangkat dadi REVENANT for this spell to remove curses if it needs to.",
	["soulbridge"] = "Månterå iki kanggo nggawé a rotating link between Yours and any diagonal platform of Your choice. Your ghost will also create a link in the opposite direction. Necromancer links spin automatically. If you create a link in the middle of the map, 2 links will create an 'X' shape.",
	["undeadabove"] = "Månterå iki kanggo remove soul from above stairs and stairs above your ghost. If there are no stairs above your ghost, they will be created. Such stairs can be walked through and walked on, but will fade away after a minute.",
	["revival"] = "Månterå iki kanggo create a 'revival' point where your ghost is. If you ever fall below such point, you will be teleported there. Revival point will be removed after use, completed climb or when you cast another one. Chameleon morph will also remove the point. Munggah pangkat dadi Acolyte to bring Orb to this point, if you cast it on the top level.",
	["regen"] = "Månterå iki kanggo regenrate Mana once per climb. You will get 6 Mana points upon use. Players near Your ghost will get 3 Mana too. Munggah pangkat dadi DEATHBRINGER to regenerate 10 Mana and 5 Mana for players near Your ghost.", 
	
	["duality"] = timed .. "It allows you to cast at many Dual Stairs as you like for one minute. Crossing stairs will be demolished regradless of rank." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "the Necromancer Rig. Stairs, once triggered, will have their soul removed and will fade away.",
	["necromancerevent"] = fill ..  "Created stairs will be soul-less and will fade away after a minute.",
	["necromanceraltevent"] = event .. "the Remove Soul spell. Such stairs will fade away after a minute.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Remove Soul spell"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,


	["createmirrored"] = "Månterå iki kanggo mangun undhak-undhakan nganggo pangilon ing tengahné. Sauwisé kowé mlaku tembus pangilonné, kowé bakal digabung karo memedimu. Lumaku tembus pangilonné again lan kowé bakal dipisahaké karo memedimu. Munggah pangkat dadi Poltergeist to demolish crossing stairs with this spell. Wektu digabung karo memedimu, kowé biså mlaku ing platform pangilon, nanging memedimu ora bakal ngumpulaké mana kanggo kowé.",
	["bigmirror"] = "Månterå iki kanggo nggawé pangilon raksasa ing tataran kabèh sasuwéné 10 detik. Mung pendaki sing digabung karo memediné biså mlaku ing platform pangilon. Nalikå kowé ngadoh saka platform pangilon, kowé bakal dipisahaké. Pangilon raksasa bakal mbusek pangilon cilik ing tataran sing pådhå. Munggah pangkat dadi Presence to extend mirror lifetime to 15 seconds.",
	["smallmirror"] = "Månterå iki kanggo nggawé pangilon cilik ing arah sing dipilih sasuwéné 6 detik. Mung pendaki sing digabung karo memediné biså mlaku ing platform pangilon. Nalikå kowé ngadoh saka platform pangilon, kowé bakal dipisahaké. Munggah pangkat dadi Presence to extend mirror lifetime to 10 seconds.",
	["outermirror"] = "Månterå iki kanggo mangun pangilon ing arah outer and twin mirror on the other side of the map. Portal jaba pangilon mung biså can only be used in outer platforms. Pendaki sing mlaku tembus pangilon bakal digabung karo memediné lan teleport to the connected mirror on the other side of menårå. Portal Jaba Pangilon bakal fade away after 60 detik. Wektu digabung karo memedimu, kowé biså mlaku ing platform pangilon, nanging memedimu ora bakal ngumpulaké mana kanggo kowé.",
	["merge"] = "Månterå iki kanggo nggamblok to manually merge with Your ghost. Munggah pangkat dadi REPLICA to use this spell to unmerge from Your ghost. Wektu digabung karo memedimu, kowé biså mlaku ing platform pangilon, nanging memedimu ora bakal ngumpulaké mana kanggo kowé.",
	["oneway"] = "Månterå iki kanggo nggawé undhak-undhakan dadi one-way passage, while merging players with their ghost, if they walk in proper direction. Kowé biså milih arah sing arep diblokir. Munggah pangkat dadi Alien to be immune to one-way stairs effect. Wektu digabung karo memedimu, kowé biså mlaku ing platform pangilon, nanging memedimu ora bakal ngumpulaké mana kanggo kowé.",

	["reflection"] = timed .. "It allows you to cast as many Giant Mirrors as you like for one minute. You will be merged with your ghost automatically." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "the Reaver Rig. Stairs, once triggered, will turn into one-way stairs with random direction blocked. Munggah pangkat dadi WIGHT to have an option to avoid below Reaver Rigs.",
	["reaverevent"] = event .. "the Random One-Way Stairs spell.",
	["reaveraltevent"] = event .. "the Upward One-Way Stairs spell.",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Random One-Way Stairs spell."),
	["reaverrefill"] = overload,
	["reaverunion"] = union,


	["tram"] = "Månterå iki kanggo mangun undhak-undhakan trèm ing arah sing dipilih. Undhak-undhakan trèm have only half the length of the normal stairs, and once created will automatically travel to the target platform. To make stairs travel back, jump on them without a spell equipped. Munggah pangkat dadi FIEND to remotely bring back away Trams from any platform.",
	["screwdown"] = "This spell will turn below stairs into downwards corkscrew. It will be near to impossible to ascend such stairs. Munggah pangkat dadi DAEMON to manually control rotation with a switch. (it may not work when there is another Daemon nearby).",
	["screwup"] = "This spell will turn above stairs into upwards corkscrew, allowing you to pass. It will be near to impossible to descend such stairs. Munggah pangkat dadi DAEMON to manually control rotation with a switch. (it may not work when there is another Daemon nearby).",
	["revolve"] = "This spell will turn below stairs into revolving propeller on a sumbu Z. Kowé biså milih arah mubeng. Undhak-undhakan bakal ngaso sadhélå sawisé saben muter 180 drajat.",
	["trapstairs"] = "Månterå iki kanggo nggawé undhak-undhakan dadi a trap door. Stairs, once triggered, will revolve on X axis, dropping careless players below. Munggah pangkat dadi GOBLIN to detect Gremlin Traps. Munggah pangkat dadi DIABLO to be immune to Gremlin traps.",
	["spinplatform"] = "Månterå iki kanggo mubeng sakabèhé platform nganggo undhak-undhakan sing disandhing any (kalebu sing dikutuk), in the direction of your choice. Platform bakal ngaso sadhélå sawisé saben muter 90 drajat. Once full 360 spin is achieved, platform will turn back to normal.",
	
	["tramway"] = timed .. "It allows you to cast as many Tram Stairs as you like for one minute." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "the Gremlin Rig. Stairs, once triggered, will hypnotize the triggering player. They will have to find Mana to be released. Hypnotized players have their controls reversed. Munggah pangkat dadi HOBGOBLIN to be immune to Gremlin Rigs.",
	["gremlinevent"] = event .. "the Random Revolve Stairs spell.", 
	["gremlinaltevent"] = fill .. "Created stairs will be of Tram variety.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Random Revolve Stairs spell"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "This used to be a Keeper spell, before it got rejected. Månterå iki kanggo mindahaké undhak-undhakan biyasa utåwå rig mudhun. If you have ranked Keeper to Captain, you may also move any un-cursed stairs.",
	["chamswap"] = "This used to be a Necromancer spell, before it got rejected. Månterå iki kanggo dadi memedimu, nanging ora kåyå månterå Gamblok Reaver, memedimu isih aktif. This spell was unfinished and it is purely visual now.",
	["chamdraw"] = "This used to be a Heretic spell, before it got rejected. Månterå iki kanggo will turn stairs into drawbridge, making descent impossible unless other player activates bridge from below.",
	["ditch"] = "This used to be a thief spell, before it got rejected. Månterå iki kanggo will turn stairs into a crossed staircase.",
	["chamdrawabove"] = "This used to be a Heretic spell, before it got rejected. Månterå iki kanggo will turn above stairs into drawbridge, allowing you to pass. Ascend is impossible unless other player activates bridge from above. Old Unbeliever rank is no longer active and auto draw from below is no longer possible.",
	["warp"] = "This used to be a wicked spell. Månterå iki kanggo mlengkung undhak-undhakan back to the platform.",

	["chameleonrigevent"] = rig .. "the Chameleon Rig. Stairs once triggered, will execute random effect from all other rigs.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","random spell from all other modes"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}
local CommonPerksInsertALignment = {
	[1] = "This is Your starter %s rank.",
	[2] = "You will get bonus Mana when drones are in %s mode.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "If someone casts a %s spell, your Mana will be refilled.",
	[7] = "Your %s spell will last 50%% longer (90s).",
}



module.gui.ranks = {

	["title"] = "PANGKAT",

	--none
	["none_1"] = "Kowé durung milih kelas!",
	["none_2"] = "Kowé ora have access to any spells!",
	["none_3"] = "Lumpat ing lèmèr ngganti ing tengah menårå kanggo ngganti kelas.",

	--shared
	["higher"] = "HIGHER RANK ACQUIRED",
	["current"] = "PANGKAT CURRENT KOWÉ",
	["lower"] = "RANK NOT ACQUIRED",

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
		[4] = "Undhak-undhakan Disko saiki ora biså nggawé kowé menyang nari.",
		[5] = "You can now see all invisible stairs. You have the option to not reveal them.",
		[6] = "Kowé saiki biså ndetèksi platform sing trap lan undhak-undhakan sing palsu.",
		[8] = "Kowé saiki biså walk on fake stairs.", 
		[9] = "Kowé bakal will get bonus mana nalikå someone triggers any prank. (1 mana per player pranked)",
	},
	["WICKED"] = {
		[4] = "You can now walk on obbies as if they were normal stairs.",
		[5] = "Månterå Remukaké Undhak-undhakan Dhuwur saiki gratis.",
		[6] = "Kowé biså njaluk 1 mana bonus karo ngremukaké undhak-undhakan sing spésial.",
		[8] = "You have the option to avoid triggering any Wicked Rigs.",
		[9] = "Kowé saiki biså ngremukaké undhak-undhakan sing dikutuk.",
	},
	["SPECTRE"] = { 
		[4] = "You will get an extra 1 Mana when you collect crystals with Your Ghost.", 
		[5] = "Your GHOSTIFY spell is now free.",
		[6] = "Kowé saiki biså touch orb at the top with your ghost to finish a climb.",
		[8] = "You have the option to avoid triggering any Spectre Rigs.", 
		[9] = "Kowé saiki biså walk on ghosted stairs.",
	},
	["KEEPER"] = {
		[4] = "The Move Random spell and Keeper Rigs that you trigger will never cause the stairs to go down.",
		[5] = "Kowé saiki biså ngalih undhak-undhakan sing ora dikutuk any.",
		[6] = "Månterå Pulih kowé saiki dadi gratis.", 
		[8] = "You have the option to avoid triggering any Keeper Rigs.",
		[9] = "Kowé saiki biså mulihaké undhak-undhakan lan prapatan sing dikutuk.",
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
		[6] = "Kowé saiki biså cast månterå Flicker mring prapatan sing dikutuk.",
		[8] = "Your Create Cursed Stairs and Malediction spells can now destroy blocking cursed stairs.",
		[9] = "You will get 1 extra Mana everytime someone is possessed.",
	},
	["SPLICER"] = {
		[4] = "You can now restore disconnected stairs from platform.",
		[5] = "Your Restore Twist spell is now free.",
		[6] = "You have the option to avoid below Splicer Rigs.",
		[8] = "Kowé saiki biså nyambungaké undhak-undhakan sing wis diplintir.",
		[9] = "You will get 1 Mana everytime you restore a Splice.",
	},
	["REAVER"] = {
		[4] = "You can now use your Merge spell to unmerge.",
		[5] = "Your floor mirrors will last 50% longer. (15s big, 9s small)",
		[6] = "You have the option to avoid below Reaver Rigs.",
		[8] = "You can now demolish crossing stairs, while casting Mirrored Stairs.",
		[9] = "You are now immune to one-way stairs.",
	},
	["NECROMANCER"] = {
		[4] = "Create Dual Stairs will ignore cursed intersections and stairs on ghost's platform.",
		[5] = "If you use a Revival Point on the top floor, it will bring the orb to where the point is placed.",
		[6] = "Copy Platform spell will remove curses if it needs to.",
		[8] = "You can demolish crossing stairs, while casting Dual Stairs.",
		[9] = "Regenerate restores 10 mana instead of 6, and will restore 5 mana to those nearby your ghost.",
	},
	["GREMLIN"] = {
		[4] = "Kowé saiki biså ndetèksi basangan Gremlin.",
		[5] = "You can now jump on platform to call all adjacent Trams.",
		[6] = "You are now immune to Gremlin Rigs.",
		[8] = "You are now immune to Gremlin Traps.",
		[9] = "You can now control Corkscrew Stairs via a button. This may not work if there is another Daemon nearby.",
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

module.gui.reshuffle = {

	["title"] = "MODE RESHUFFLE UNDHAK-UNDHAKAN",

	["body"] = "Åpå kowé gelem kabèh undhak-undhakan to avoid collisions while moving? Yèn ora, any stairs in the way will be destroyed.",

}

module.gui.multitokens = {

	["title"] = "PILIH TOKENMU",

	["info"] = "Kowé butuh 3 token kanggo mbukak månterå.",
	["notokens"] = "Kowé ora duwé multi token left",
	["nopass"] = "ORA ÅNÅ GAME PASS",

}

module.gui.feedback = {

	["title"] = "KIRIM UMPAN BALIK",

	["prompt"] = "Klik kéné kanggo nulis lan ngirim pesen menyang developer! (minimum of 20 characters)",
	["send"] = "KIRIM",
	["locked"] = "DIKUNCI",

}

module.gui.settings = {

	["title"] = "SETÈLAN GAME",

	["ANIM"] = "SETÈLAN\nANIMASI",	
	["MISC"] = "MISCELLANEOUS\nSETTINGS",
	["INTER"] = "SETÈLAN\nINTERACE",	
	["INTER2"] = "SETÈLAN\INTERACE ÈKSTRA",	

	["list"] = "Tampilaké animated playerlist",
	["morph"] = "Tampilaké animasi ngganti nalikå using Deceiver or Usurper",
	["billboard"] = "Tampilaké billboard avatar kowé",
	["rank"] = "Tampilaké Your Overall Rank in avatar billboard",
	["switchback"] = "Otomatis switch back to basic spells after executed ultimate spell",
	["safecancel"] = "Show confirmation window when cancelling a timed ultimate spell",
	["multi"] = "Tampilaké window milih Multi Token after the climb",
	["kchoices"] = "Tampilaké window milih arah kanggo Keeper (ora nyambut gawé ing konsol)",
	["hchoices"] = "Tampilaké window milih arah kanggo Hacker (ora nyambut gawé ing konsol)",
	["achoices"] = "Tampilaké window milih arah kanggo Archon (ora nyambut gawé ing konsol)",
	["rchoices"] = "Tampilaké window milih arah kanggo Reaver (ora nyambut gawé ing konsol)",
	["schoices"] = "Tampilaké window milih arah kanggo Splicer (ora nyambut gawé ing konsol)",
	["gchoices"] = "Tampilaké window milih arah kanggo Gremlin (ora nyambut gawé ing konsol)",
	["stats"] = "Tampilaké èkstra statistika nalikå casting månterå Acårå lan Rig",

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "KELASMU",
	["time"] = "WEKTU PENDAKIANMU",
	["climbs"] = "PENDAKIAN DIOLÈHAKÉ",
	["tokens"] = "TOKEN DIOLÈHAKÉ",
	["rank"] = "YOUR CURRENT RANK",

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
		"Kok emen?",
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
		"1)Make an obby 2)Watch noobs struggle 3)Enjoy",
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
		"Siji kelas mung dah? Boring!",
		"I like chaos",
	},
	["KEEPER"] = {
		"MOVE, ROTATE and CONTROL",
		"Stop messing up my staircase!",
		"Another mighty success for the Keepers",
		"Mission complete!",
		"I like order",
		"Chaos tamed",
		"Aku the only true alignment",
		"One day I will sort out this tower",
		"Undhak-undhakan dipulih = undhak-undhakan happy! :]",
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
		"01010101 01001110 01000100 01001000 01000001 01001011 00101101 01010101 01001110 01000100 01001000 01000001 01001011 01000001 01001110 00100000 11000011 10001001 01000100 01000001 01001110",
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
		"Yèn wong njaluk terdampar, ngåpå aku care iku, èh?",
	},
	["ARCHON"] = {
		"OPEN PORTAL, ???, PROFIT",
		"I used to rule this staircase",
		"Plan ahead to succeed",
		"Study hard and you will succeed",
		"Ability to gate stairs is an Art form",
		"Aku ora iso nggunakaké potar Archon aku",
		"The cake is a lie",
		"There is a gate for every problem",
		"Bingungaké kabèh pendaki lah!",
	},
	["DRIFTER"] = {
		"SURF, RIDE, and GLIDE",
		"Såpå butuh undhak²an anyway? Kami dalem AKASA lah!",
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
		"Other people mess is Splicer's order",
		"Aku biså totally connect those stairs",
		"Sambungaké karo wong - nah, SAMBUNGAKÉ KARO UNDHAK-UNDHAKAN!",
		"My mind is just twisted like that",
		"Loro bab sing paling apik babagan Splicer: nyambungaké dan coklat mint.",
		"Matur nuwun kanggo nylametké aku, Markerquest..",
		"Undhak-undhakan iki lurus banget!",
	},
	["REAVER"] = {
		"REFLECT, REPLACE and MERGE",
		"Mirrors are just doorways",
		"This staircase is an illusion",
		"You can see your soul in the mirror",
		"Are we watching them, or are they watching us?",
		"Seven years of bad luck. For me or for the other one?",
		"Åpå the ghosts stuck behind the mirror - or are we?",
		"I can no longer see myself, I see the future",
		"Iki ora fase, Ibu!!!",
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
 		"Aku ora wedi karo tibå, iku månterå stratégis aku babo!",
	},
	["GREMLIN"] = {
		"ROTATE, REVOLVE and HYPNOTIZE",
		"Come play with me!",
		"You spin me right 'round, baby, right 'round",
		"This staircase is too boring",
		"Let me fix that staircase for you, heheh",
		"Opo you like my masterpiece? No? Too bad, I am only starting.",
		"Dhokter told me to relax, and this is how I relax.",
		"Joker take some notes. Just kidding, hire me back in the Circus please!",
		"Undhak-undhakan iku lungå nang ndi ah?",
		"Waaaaaaaaaaaaaa!!!!!!!",
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
	["ALIEN"] = "We are one",
	["DAEMON"] = "You spin me round and round.",

}

module.gui.gameover.credits = {

	"CRAZY STAIRS",
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

	["cla_1"] = "Carané måin Undhak-undhakan Édan?",
	["cla_2"] = "First, it is highly recommended to complete the tutorial. If you haven't done so, please rejoin the game, as the experience could get really confusing otherwise.",
	["cla_3"] = "The goal of the game is to reach the top and collect the floating Energy Orb. First choose your alignment (class) by jumping on the glowing pads in the middle of the map.",
	["cla_4"] = "Once happy with the choice, collect floating shapes to refill Mana and climb the stairs. Use your class spell to help you with the climb.",
	["cla_5"] = "Carané cast månterå?",
	["cla_6"] = "Every spell has a mana cost that will be required to cast the spell. When you collect enough Mana click on the spell. Your hands will start to glow, indicating a successful cast.",
	["cla_7"] = "After casting, the spell still needs to be executed. All spells are executed by jumping. Depending on the spell, you will need to jump either on platform or stairs. Guide arrows will appear, to help you with the execution.",
	["cla_8"] = "Once you complete the climb, you will receive 3 spell tokens, that will let you unlock one spell. Complete the climb again to unlock more spells. You can't use tokens from one class to unlock a spell from another.",
	["cla_9"] = "Carané cast månterå ultimate?",
	["cla_10"] = "First you will need to unlock all basic spells to access the ultimate spells. Ultimate spells do not require unlocking themself, but they use Tokens instead of Mana when cast.",
	["cla_11"] = "Complete the climb enough times to unlock all basic spells. You may want to try to win the race to get extra Tokens. There is also option to purchase tokens. Once unlocked, click leftmost button or press 'C'",
	["cla_12"] = "Some ultimate spells are timed, and do not require execution. Please read more info in the Alignment Guilds to learn more about an ultimate spell, before casting. Cancelling a timed spell will not refund tokens",

	["pro_1"] = "MENÅRÅ PRO",
	["pro_2"] = "Tataran Even restrictions",
	["pro_3"] = "In the Pro Tower some platform spells cannot be cast on the even levels. Trap, Create Portal, Vertical Teleport, Spiral Staicase and Random Teleport can only be executed on odd levels.",
	["pro_4"] = "Drifters cannot drift those platforms neither.Affected platforms are marked with the red circle in the middle.",
	["pro_5"] = "Undhak-undhakan Dikutuk",
	["pro_6"] = "Jero Menårå Pro, Drone bakal randomly mangun undhak-undhakan dikutuk utåwå ngutuk undhak-undhakan sing biyasa. There is 20% chance of Cursed Stairs apperance. Panah panuntun ora bakal ditampilaké ning cedhak undhak-undhakan dikutuk.",
	["pro_7"] = "Cursed Stairs are immune to most spells. You cannot teleport through them nor use Hacker Blink spell. Furthermore, all spells that would cause Cursed Stairs destruction will not work (like Keeper's Move).",
	["pro_8"] = "Heretic lan Admiral mung biså mulihaké undhak-undhakan dikutuk. Purge Event and Restoration will get rid of all cursed stairs too. However, Drone bakal always create new ones in Pro Tower.",
	["pro_9"] = "Prapatan Dikutuk",
	["pro_10"] = "Jero Menårå Pro, drone bakal randomly nggawé prapatan dikutuk too. When Drone finds an empty Intersection, there is 20% chance of the Curse. Guide Arrows will turn to crosses to mark the intersection.",
	["pro_11"] = "Prapatan dikutuk nyegah kabèh månterå platform, that are executed on arrows. Kowé ora biså nggawé undhak-undhakan, kreteg utåwå teleportasi tembus prapatan dikutuk.",
	["pro_12"] = "Heretic, Admiral lan Drone mung biså mulihaké prapatan dikutuk. As with Cursed Stairs, Wicked's Purge Event will remove all Curses, but during regeneration new ones will appear.",

	["inf_1"] = "MENÅRÅ INFINIT",
	["inf_2"] = "RACE MANDATORY",
	["inf_3"] = "In the infinite tower, participating in the race is mandatory. Casual players are not allowed to cast spells and will not receive any awards for climbing. Touching the orb will just grant 10 Mana.",
	["inf_4"] = "To 'complete' infinite tower you need to join the race and try to stay on it as long as you can. You will receive rewards (if any) upon elimination.",
	["inf_5"] = "Fallen Drone",
	["inf_6"] = "Ora kåyå menårå klasik lan pro, Fallen Drone duwé tugasé spésial ing menårå infinit.",
	["inf_7"] = "Each 'raise interval', Fallen Drone will create 2 new levels. Each even level will be restricted. On top of that, some stairs or intersections may even become cursed.",
	["inf_8"] = "First interval lasts for 20 seconds. Each raise will reduce the interval by half second, until the levels are created faster than they could be climbed.",
	["inf_9"] = "Busakan",
	["inf_10"] = "Busak is a special force field that will rise together with tower and remove bottom levels. Falling behind the eraser eliminates players from the round. This is similar to rising lava in other games.",
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

	["vr_1"] = "By launching Crazy Stairs in mode VR, kowé otomatis dadi Architect.",
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
	["home_2"] = "SESANTI:\nLAYU\nLUMPAT\nLAN\nTIBA",
	["home_3"] = "PROS:\nWalkspeed and jump power bonus at higher ranks\nBragging rights\nCONS:\nOra duwé månterå\nGets stuck easily",
	["home_4"] = "'We did not have those fancy spells in alpha stage!'\nour founder's quote",

	["oasis_1"] = "OASIS CHAMELEON",
	["oasis_2"] = "SESANTI:\nSALIN\nTIRU\nLAN\nKAGÈT",
	["oasis_3"] = "PROS:\nCan change alignments anywhere, anytime\nCONS:\nCosts Robux\nRanking up all classes takes time",
	["oasis_4"] = "'I am too lazy to come up with my own spells.'\nour founder's quote",

	["nexus_1"] = "SARANG HERETIC",
	["nexus_2"] = "SESANTI:\nAWAKMU\nMBOTÉN\nAJENG\nLIWETI",
	["nexus_3"] = "PROS:\nBest in pro tower\nCannot be stopped\nCONS:\nTeaming is tricky\nMana hungry",
	["nexus_4"] = "'Banning black magic is like banning fun.'\nour founder's quote",

	["guild_1"] = "PANDHELIKAN THIEF",
	["guild_2"] = "SESANTI:\nCOLONG\nGUNAKAKÉ\nLAN\nBALÈKAKÉ",
	["guild_3"] = "PROS:\nMana efficient\nVersatile\nCONS:\nNeeds to steal stairs\nOra biså remukaké undhak-undhakan crossing",
	["guild_4"] = "'It's called borrowing actually.'\nour founder's quote",

	["nether_1"] = "NÅRÅKÅ SPECTRE",
	["nether_2"] = "SESANTI:\nILANG\nDHELIK\nLAN\nTELEPORT",
	["nether_3"] = "PROS:\nMånterå Fast\nPerfect for solo play\nCONS:\nMbutuhaké Robux\nNot recommended for teams",
	["nether_4"] = "'Of course teleporting is safe.'\nour founder's quote (MIA)",

	["study_1"] = "STUDHI ARCHON",
	["study_2"] = "SESANTI:\nBUKAK\nPORTAL\n???\nUNTUNG",
	["study_3"] = "PROS:\nUseful Rig\nConfuses opponents\nCONS:\nHardest to learn\nRequires planning",
	["study_4"] = ""I used to rule this staircase."\nour founder's quote",

	["haven_1"] = "SWARGÅ PATRON",
	["haven_2"] = "SESANTI:\nBIYANTU\nPROTECT\nLAN\nGAWÉ",
	["haven_3"] = "PROS:\nPaling gampang kanggo sinau\nTeam player\nCONS:\nUses a lot of Mana\nMay attract leechers",
	["haven_4"] = ""Those noobs need our help!"\nour founder's quote",

	["shelter_1"] = "PAPAN PANGAYOM DRIFTER",
	["shelter_2"] = "SESANTI:\nLELÅNÅ\nTUMPAK\nLAN\nPLOROD",
	["shelter_3"] = "PROS:\nVersatile\nTeam player\nCONS:\nRequires some parkour skills\nTricky in pro towers",
	["shelter_4"] = "'Who needs stairs anyway? We're in space!'\nour founder's quote",

	["circus_1"] = "SIRKUS JOKER",
	["circus_2"] = "SESANTI:\nPAÈS\nBINGUNGAKÉ\nLAN\nGUYU",
	["circus_3"] = "PROS:\nMade for trolling\nFlips are very useful\nCONS:\nExpensive spells\nYou may ruin friendships",
	["circus_4"] = "'This staircase is a joke.'\nour founder's quote",

	["base_1"] = "PANGKALAN KEEPER",
	["base_2"] = "SESANTI:\nALIH\nROTATE\nLAN\nCONTROL",
	["base_3"] = "PROS:\nCan restore stairs\nCan reuse stairs\nCONS:\nRequires parkour to use correctly\nUseless without stairs",
	["base_4"] = "'Stop messing up my staircase!'\nour founder's quote",

	["chamber_1"] = "KAMAR WICKED",
	["chamber_2"] = "SESANTI:\nREMUKAKÉ\nBLOKIR\nLAN\nCEGAH",
	["chamber_3"] = "PROS:\nCan destroy any stairs\nCan purge whole staircase\nCONS:\nOver-reliant on stairs",
	["chamber_4"] = "'I'm not evil, there are just too many stairs.'\nour founder's quote",

	["backdoor_1"] = "WÈB HACKER",
	["backdoor_2"] = "SESANTI:\nHACK\nGLITCH\nLAN\nBREAK",
	["backdoor_3"] = "PROS:\nKelas Fastest\nHard to follow\nCONS:\nOver-reliant on stairs\nUseless in teams",
	["backdoor_4"] = "'Fair play? There's no such thing.'\nour founder's quote",

	["hub_1"] = "GARASI SPLICER",
	["hub_2"] = "SESANTI:\nSAMBUNG\nBELAH\nLAN\nPLINTIR",
	["hub_3"] = "PROS:\nVersatile\nGood in teams\nCONS:\nBit confusing.\nTakes time to learn",
	["hub_4"] = "'Never go in a straight line for too long.'\nour founder's quote",

	["shack_1"] = "GUBUG GREMLIN",
	["shack_2"] = "SESANTI:\nROTATE\nREVOLVE\nLAN\nHYPNOTIZE",
	["shack_3"] = "PROS:\nOra pro\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE",
	["shack_4"] = "'Come play with me.'\nour founder's quote",

	["mirror_1"] = "PANGILON REAVER",
	["mirror_2"] = "SESANTI:\nILO\nGANTI\nLAN\nGABUNG",
	["mirror_3"] = "PROS:\nMirrors can be used by other players\nCONS:\nMerge and unmerge mechanic may be confusing.",
	["mirror_4"] = "'Mirrors are just doorways.'\nour founder's quote",

	["grave_1"] = "KUBURAN NECROMANCER",
	["grave_2"] = "SESANTI:\nFOLLOW\nREVIVE\nLAN\nBENEFIT",
	["grave_3"] = "PROS:\nWorks well if other players follow your ghost.\nSpells help you and others as well.\nCONS:\nHeaviest alignment on mana.\nDifficult to get used to watching your ghost.",
	["grave_4"] = "'We aren’t actually haunting you, we just wanna be friends.'\nour founder's quote",

	--SHARED
	["leader_pro"] = "Pro Tower counts as 2 climbs",	
	["leader_update"] = "Update in: ",	
	["leader_updating"] = "Updating...",	
	["leader_rank"] = "PANGKAT",
	["leader_req"] = "PENDAKIAN REQ",
	["leader_off"] = "Leaderboards ora kasadhiya njero Menårå Custom.",

	--OVERALL
	["over_title"] = "OVERALL RANKS",
	["over_desc"] = "Each acquired rank adds 1 point",
	["over_rank"] = "RANK",
	["over_req"] = "POINTS REQ",
	["emperor_req"] = "* Requires Chamelon UTAWA Spectre",
	["overmind_req"] = "** Requires Chamelon LAN Spectre",
	["over_prefix"] = "PREFIX",
	["over_passes"] = "GAME PASSES\nREQUIRED",
	["over_notgroup"] = "WERNÅ IJO JAÉTUN - not in group",
	["over_group"] = "WERNÅ BIRU CAHYA - in the group",
	["over_mod"] = "MODERATOR - player is a moderator",
	["over_admin"] = "ADMIN - player is an admin", -- pwease sleazel uwu
	["over_owner"] = "PRANK ME - Pangripat game (Sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLE PALING CEPET",
	["muggle_ranks"] = "PANGKAT MUGGLE",

	["hacker_lead"] = "HACKER PALING MAJENG",
	["hacker_ranks"] = "PANGKAT HACKER",

	["wicked_lead"] = "WICKED PALING NAKAL",
	["wicked_ranks"] = "PANGKAT WICKED",

	["keeper_lead"] = "KEEPER PALING SATYA",
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

	["necromancer_lead"] = "NECROMANCER PALING UNDEAD",
	["necromancer_ranks"] = "PANGKAT NECROMANCER",

	["splicer_lead"] = "SPLICER PALING TÈKNIS",
	["splicer_ranks"] = "PANGKAT SPLICER",

	["reaver_lead"] = "REAVER PALING MIKIRAKÉ",
	["reaver_ranks"] = "PANGKAT REAVER",

	["gremlin_lead"] = "GREMLIN PALING BEGJÅ",
	["gremlin_ranks"] = "PANGKAT GREMLIN",

	["chameleon_lead"] = "CHAMELEON PALING KESÈD",
	["chameleon_ranks"] = "PANGKAT CHAMELEON",

	["dailies"] = "RÈKOR DINÅ IKI",
	["most_climbs"] = "MENDHAK PALING AKÈH",
	["most_wins"] = "MENANG BALAPAN PALING AKÈH", 

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Sugeng rawuh ing Undhak-Undhakan Édan!",
	["tut_big_2"] = "Kapisan, sinau piyé carané ngganti.",
	["tut_big_3"] = "Kowé saiki dadi Patron, Patron biså nggawé undhak-undhakan.",
	["tut_big_4"] = "Kabèh månterå mbutuhaké diolèhi karo mlumpat.",
	["tut_big_5"] = "Kerèn, 'kan? Saiki nggati kanngo dadi Joker. Joker biså malikaké undhak-undhakan.",
	["tut_big_6"] = "Kowé saiki dadi Joker, gunakaké månterå iki kanggo malikaké undhak-undhakan.",
	["tut_big_7"] = "Sawatårå månterå kudu dilakokaké mring undhak-undhakan.",
	["tut_big_8"] = "Saiki ngganti kanggo dadi Keeper. Keeper biså ngalih undhak-undhakan.",
	["tut_big_9"] = "Kowé saiki dadi Keeper, gunakaké månterå iki mindah undhak-undhakan.",
	["tut_big_10"] = "Lumpat ing panah ke depan kanggo mindah undhak-undhakan.",
	["tut_big_11"] = "Kowé bakal meruhi akèh undhak-undhakan sing mblokir ing game iki.",
	["tut_big_12"] = "Kowé saiki dadi Wicked, use månterå iki kanggo ngremukaké undhak-undhakan sing mblokir blocking.",
	["tut_big_13"] = "Kowé biså ngremukaké undhak-undhakan sing ånå ing dhuwur, by jumping on below ones.",
	["tut_big_14"] = "Sadurungé kita miwiti, daknuduhaké kelas sing prèmium.",
	["tut_big_15"] = "Kowé saiki dadi Spectre, Spectre iku kelas prèmium nodheg kanggo mendaki dhèwèkan.",
	["tut_big_16"] = "Tujuanmu mènèk kanggo mendaki lan njaluk orb ing menårå. Mugå-mugå suksés! :]",

	["tut_select"] = "Pilih månterå iki.",

	["tut_small_init"] = "Lumpat kanggo miwiti latihan!",
	["tut_small_morph"] = "Lumpat ing lèmèr ngganti.",
	["tut_small_arrow"] = "Lumpat ing panah.",
	["tut_small_stairs"] = "Lumpat ing undhak-undhakan.",

}

module.where = {

	["platform"] = "Kudu dilakokaké ing platform. Won't work on bottom nor even levels in pro towers.",
	["arrow"] = "Kudu dilakokaké ing panah platform.",
	["stairs"] = "Kudu dilakokaké ing undhak-undhakan.",
	["above"] = "Kudu dilakokaké ing undhak-undhakan ing ngisor, to affect the above stairs. Works on links too.",
	["dynamic"] = "May affect both below and above stairs.",
	["both"] = "Can be executed on either platform's arrows or stairs.",
	["both2"] = "Can be executed on either platform or stairs.",
	["anywhere"] = "Biså dilakokaké ing ngendi waé.",
	["nowhere"] = "Månterå iki ora merlokaké pilakon.",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "Biså dilakokaké prapatan kosong åpå waé utåwå tembus undhak-undhakan sing ora ngalang-alangi.",
		--["restore"] = "Can be executed next to.",
		["superforced"] = "Biså dilakokaké ing prapatan kosong, utåwå tembus undhak-undhakan ngalang-alangi. Munggah pangkat dadi BANISHED kanggo ngremukaké undhak-undhakan ngalang-alangi sing kawutuk.",
		["flicker"] = "Biså dilakokaké ing prapatan kosong. Munggah pangkat dadi INFIDEL kanggo nglakokaké ing prapatan kawutuk.",
		["any"] = "Biså dilakokaké ing prapatan ora kawutuk åpå waé.",
		["wall"] = "Biså dilakokaké ing prapatan ora kawutuk åpå waé, tanpå témbok utåwå portal ing arahné.",
		--["ghosted"] = "Can be only used on normal, rigged or ghosted stairs",
		--["deltwists"] = "Can be only used on spliced stairs.",
		["forced"] = "Biså dilakokaké ing prapatan kosong, utåwå through undhak-undhakan ngalang-alangi ora kawutuk.",
		["halfsoft"] = "Biså dilakokaké ing prapatan kosong, utåwå tembus undhak-undhakan ora kawutuk ngalang-alangi on higher ranks.",
		["soft"] = "Biså dilakokaké ing prapatan sing kosong mung.",
		["flatten"] = "Biså dilakokaké ing prapatan karo biyasa utåwå rigged ngalang-alangi mung.",
		["hack"] = "Biså dilakokaké ing prapatan karo undhak-undhakan ngalang-alangi ora kawutuk åpå waé mung.",
		["sidepass"] = "Biså dilakokaké ing prapatan ora kawutuk åpå waé, tanpå trabasan.",
	},

	["platform"]= {
		

		--platform
		["middle"] = "Månterå iki ora duwé special requirements.",
		["diag"] = "Can be executed in both inner and outer diagonal directions.",
		["outer"] = "Can be executed in perpendicular outer directions only.",
		["centre"] = "This spell will demolish any small mirrors already on the current level, but not the big one.",
		["inner"] = "Can be executed in inner diagonal directions only, without a link yet.",
		["prevolve"] = "Can be executed in both clockwise and counterclockwise directions.",
		["top"] = "Biså dilakokaké ing platform paling ndhuwur mung.",
	},
	
	["stairs"] ={
		
		["cursed"] = "Biså dilakokaké ing undhak-undhakan biyasa, dimanipulasi utåwå kawutuk.",
		["all"] = "Biså dilakokaké ing undhak-undhakan åpå waé. Munggah pangkat dadi Annihilator kanggo ngremukaké undhak-undhakan kawutuk.",
		["steal"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Hijacker kanggo nyolong undhak-undhakan ora kawutuk åpå waé.",
		["onedirection"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Controller kanggo munggahaké undhak-undhakan ora kawutuk åpå waé.",
		["straight"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Controller kanggo ngalih undhak-undhakan ora kawutuk åpå waé.",
		["rotate"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Controller kanggo muter undhak-undhakan ora kawutuk åpå waé.",
		["flip"]= "Biså dilakokaké ing undhak-undhakan biyasa, diwalik utåwå dimanipulasi.",
		["gate"] = "Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates.",
		["gatestr"] = "Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates",
		["gaterot"] = "Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates",
		["twist"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Transformer kanggo  override splices.",
		["twiststr"] = "Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		["twistrot"] = "Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		["spin"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Nomad kanggo mbalikaké undhak-undhakan sing wis dilelånå.",
		["drift"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Munggah pangkat dadi Nomad kanggo nglelånå undhak-undhakan sing wis dilelånå.",
		["escalator"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi mung.",
		["oneway"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi mung.",
		["revolve"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi mung.",
		["normalrig"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi mung.",

	},
	
	["above"] = {
		
		["cursed"] = "Biså dilakokaké ing undhak-undhakan biyasa, dimanipulasi utåwå kawutuk ing ngisor.",
		["all"] = "Biså dilakokaké ing undhak-undhakan åpå waé ing ngisor. Munggah pangkat dadi Annihilator kanggo ngremukaké undhak-undhakan kawutuk ing dhuwur.",
		["steal"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi ing ngisor. Munggah pangkat dadi Hijacker kanggo nyolong undhak-undhakan åpå waé ing dhuwur.",
		["flip"]= "Biså dilakokaké ing undhak-undhakan biyasa, diwalik utåwå dimanipulasi ing ngisor.",
		["onedirection"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi ing ngisor. Munggah pangkat dadi Controller kanggo alih undhak-undhakan ing dhuwur åpå waé sing ora kawutuk.",
		["slide"] = "This spell lets you bypass any un-cursed blocking stairs.",
		["normalrig"] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi ing ngisor mung.",

	},
	
	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "Can be executed on or below normal, flipped or rigged stairs. If above execution fails for any reason, below stairs will be affected instead.",
		['normalrig'] = "Can be executed on or below any normal or rigged stairs. Spell will be applied to both above and below stairs.",
		['slide'] = "Biså dilakokaké ing undhak-undhakan biyasa utåwå dimanipulasi. Yèn ånå undhak-undhakan ora kawutuk sing ngalang-alangi ing dhuwur, dhèwèké bakal diremukaké.",
	},
	
	["both"] = {
		['restore'] = "Biså dilakokaké on any stairs or on platform's arrow with any adjacent stairs. Munggah pangkat dadi Admiral kanggo mulihaké undhak-undhakan sing kawutuk.",
		['deltwists'] = "Biså dilakokaké ing undhak-undhakan diplintir mung utåwå ing platform panah with adjacent undhak-undhakan diplintir. Munggah pangkat dadi Combiner kanggo njejegaké de-attached stairs from platform.",
		['ghosted'] = "Biså dilakokaké ing undhak-undhakan biyasa, rigged utåwå dimemedèni, utåwå on platfrom panah karo adjacent undhak-undhakan biyasa, rigged utåwå dimemedèni.",

	},
	
	['both2'] = {
		['delsplits'] = "Biså dilakokaké ing undhak-undhakan sing duwé portal mung. Munggah pangkat dadi Disciple kanggo use månterå iki kanggo nutup platform portal."
	},
	
	['anywhere'] = {
		['anywhere'] = "Månterå iki biså dilakokaké ing ngendi waé.",
	},
	
	["nowhere"] = {
		['slide'] = "Månterå iki ora merlokaké pilakon.",
		
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

	["chameleonrigevent"] = "2 Multi Token",
	["unlock"] = "(mbukak karo 3 token)",
}

module.serverfeedback = {
	 
	--failed spell (local)
	["nomana"] = "Ora cukup mana!",
	["notokens"] = "Ora cukup token!",
	["coolwait"] = "Kowé ora biså cast rig lan acårå saiki, njaluk ngentèni!",
	["nomirror"] = "Kowé kudu nggamblokaké memedimu kanggo mlaku ing platform pangilon.",
	["regenused"] = "Kowé wis nggunakaké Réprodhuksi Mana sapisan wektu pendakian iki.",

	--failed spell (server)
	["unknown"] = "Masalah ora dingerteni.", --this should not show for normal players, only exploiters
	["lockedspell"] = "Månterå iki dikunci!",
	["possessed"] = "Kowé ora biså use månteråmu nalikå dikutuk.",
	["spelllock"] = "You cannot cast spells now",
	["nothere"] = "Kowé ora biså use månterå iki jero latihan.",
	["onlyracers"] = "Mung pambalap biså cast månterå.",
	["cancelfirst"] = "Kowé need to cancel current månterå first...",
	["stashfull"] = "Panyimpenan undhak-undhakan kowé kebak.",
	["stashempty"] = "Kowé kudu nyolong undhak-undhakan before casting this spell.",
	["ultwait"] = "Another ultimate spell is in progress. Please wait.",
	["notdefault"] = "Drones need to be back in default mode first. Please wait.",
	["regwait"] = "You cannot cast rigs and events, while the Staircase is regenerating.",
	["cooldownwait"] = "You can't cast rigs and events now, please wait %d seconds.",
	["nospellsnow"] = "You cannot cast spells right now.",
	["noreshuffle"] = "Choose reshuffle mode first!",
	["oneoverload"] = "You can't have multiple Mana Overloads active.",
	["cursed"] = "Undhak-undhakan iki dikutuk!",
	["cursed2"] = "Ånå undhak-undhakan dikutuk iku ing arah!",
	["blocked"] = "Prapatan iki dikutuk.",
	["locked"] = "Undhak-undhakan iki dikunci.",
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
	["noflip"] = "Undhak-undhakan sing biyasa, dibalik utåwå rigged mung biså dibalikaké.",
	["nothingtocopy"] = "No staircases are available to copy for you nor your ghost.",
	["wrongdirection"] = "Kowé ora biså cast månterå iki mring arah iku.",
	["notfound"] = "Undhak-undhakan not found.",
	["nocursedblink"] = "You can't blink around cursed stairs.",
	["nostairs"] = "Ora ånå undhak-undhakan kéné.",
	["noground"] = "Månterå iki ora biså be cast mring tataran ground.",
	["oddonly"] = "Månterå iki ora biså be cast on tataran iki.",
	["noabove"] = "No stairs found directly above.",
	["linklimit"] = "Mung \"månterå dhuwur\" biså dilakokaké ing kreteg énérgi.",
	["lock"] = "You cannot cast spells now",
	["outdrift"] = "Outside drift can only be created on the outer platforms.",
	["cantgate"] = "Arah iki diblokir.",
	["wall"] = "Ånå témbok sing wis kéné.",
	["nocurse"] = "Only normal, cursed or rigged stairs can be cursed/uncursed.",
	["nogate"] = "These stairs are not gated.",
	["noghost"] = "Only ghosted stairs can be de-ghostified.",
	["wrongsplit"] = "Other gate must be in the game area.",
	["blockedplit"] = "Can't create split, target intersection is cursed.",
	["cursedtarget"] = "There are Cursed Stairs in that destination.",
	["lockedsplit"] = "Cannot create split yet, other stairs are locked.",
	["failedgate"] = "Split creation has failed.",
	["notwist"] = "Undhak-undhakan iku ora diplintir.",--*
	["wrongmove"] = "Stairs cannot be moved out of game area.",
	["blockedmove"] = "Can't move stairs, target intersection is cursed.",
	["lockedmove"] = "Cannot move stairs yet, blocking stairs are locked.",
	["normal"] = "Undhak-undhakan iki normal.",
	["lockedinter"] = "Intersection iki dikunci.",
	["toponly"] = "The 'Call the Orb' spell can only be cast on the top level.",
	["duplicatemirror"] = "There is already a mirror on this level.",
	["norestore"] = "bypasses lan spirals Thief ora biså dipulihaké.",

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
	["morph"] = "Lumpat kéné kanggo dadi %s!",
	
	--race
	["raceclosed"] = "Race is now closed.",
	["stay"] = "Stay in the ring to take part in the race!",
	["falsestart"] = "False Start.",
	["charreset"] = "Character reset elimination.",

	--misc
	["secret"] = "Rahasya found!",
	["unlocked"] = "Månterå wis dibukak!",

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
	["nodrones"] = "Small Drones dipatèni!",
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
	["duration"] = "Durasi balap diganti (it will not affect current race)",
	["init"] = "Initial infinite interval time changed",
	["reduction"] = "Infinite reduction time changed",
	["mininf"] = "Minimum infinite interval time changed",
	["cooldown"] = "Pangadheman månterå acårå lan rig diganti",
	["speed"] = "Small drones speed changed",
	["spin"] = "Small drones casting durasi changed",
	["max"] = "Maximum target staircases amount changed",
	["min"] = "Minimum target staircases amount changed",
	["curse"] = "Drone curse stairs chance changed",
	["block"] = "Drone curse intersection chance changed",
	


}

module.serverbroadcast = {
	["pranked"] = "%s pranked %s!",
	["found"] = "%s wis nemokaké undhak-undhakan ora katon %s!",
	["disco"] = "%s is enjoying %s's disco music.",
	["trap"] = "%s has fallen for %s trap.",
	["obby"] = "%s is attempting obby %s.",
	["default"] = "Drones are now back in the default mode.",
	["reg"] = "Staircase is regenerating.",
	["done"] = "Staircase regeneration complete.",
	["union"] = "%s wis merged with their ghost!",
	["eliminated"] = "%s wis kasingkiraké.",
	["won"] = "%s wis menang balap! 🎉",
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
	["GREMLIN"] = "Puter sing cedhak saiki dikunci.",

}

module.switchoff = {

	["JOKER"] = "Kowé saiki bakal ndetèksi undhak-undhakan sing didhelikaké.",
	["WICKED"] = "You will now trigger below Wicked Rigs.",
	["KEEPER"] = "You will now trigger below Keeper Rigs.",
	["SPECTRE"] = "You will now trigger below Spectre Rigs.",
	["HACKER"] = "Escalators and rig immunity off.",
	["ARCHON"] = "All except down splits will teleport you.",
	["DRIFTER"] = "You will now trigger below Drifter Rigs.",
	["SPLICER"] = "You will now trigger below Splicer Rigs.",
	["REAVER"] = "You will now trigger below Reaver Rigs.",
	["GREMLIN"] = "Puter sing cedhak saiki ora dikunci.",
}

local timedSpell = "%s cast månterå %s!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo Pawèwèh Mana!",
	["patronevent"] = "%s has just overloaded the tower with stairs!",
	["patronaltevent"] = "%s has just shrunk all normal stairs!",

	["jokerrigevent"] = "%s wis manipulasi kabèh undhak-undhakan biyasa karo the Flip spell!",
	["jokerevent"] = "%s wis ndhelikaké kabèh undhak-undhakan biyasa!",
	["jokeraltevent"] = "%s wis malikaké kabèh kabèh undhak-undhakan biyasa!",

	["wickedrigevent"] = "%s has just rigged all normal stairs with Destroy spell!",
	["wickedevent"] = "%s wis ngremukaké kabèh undhak-undhakan biyasa!",
	["wickedaltevent"] = "%s wis ngremukaké KABÈH menårå!",

	["keeperrigevent"] = "%s has just rigged all normal stairs with the Random Move spell!",
	["keeperevent"] = "%s has just shuffled all normal stairs!",
	["keeperaltevent"] = "%s wis mulihaké kabèh undhak-undhakan!",

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
	["hereticaltevent"] = "%s wis ngutuk kabèh undhak-undhakan biyasa!",

	["splicerrigevent"] = "%s has just rigged all normal stairs with Splice spell!",
	["splicerevent"] = "%s wis nyambungaké kabèh undhak-undhakan biyasa!",
	["spliceraltevent"] = "%s wis nyigar kabèh undhak-undhakan!",

	["necromancerrigevent"] = "%s has just rigged all normal stairs with Soulless spell!",
	["necromancerevent"] = "%s has just overloaded the tower with Soulless stairs!",
	["necromanceraltevent"] = "%s wis matèni kabèh undhak-undhakan biyasa!",

	["gremlinrigevent"] = "%s has just rigged all normal stairs with Hypnotize spell!",
	["gremlinevent"] = "%s wis mubeng kabèh undhak-undhakan biyasa!",
	["gremlinaltevent"] = "%s has just overloaded the tower with Tram stairs!",

	["reaverrigevent"] = "%s has just rigged all normal stairs with One-Way spell!",
	["reaverevent"] = "%s has just turned all normal stairs into random One-Ways!",
	["reaveraltevent"] = "%s has turned all normal stairs into upward One-Ways!",

	["newmode"] = "%s has just switched drones into mode %s!",

	["chameleonrigevent"] = "%s has just rigged all normal stairs with a Mystery spell!"
}

module.spells.extras = {

	["Prompt"] = "Klik månterå ing ngisor kanggo nyinau carané nggunakakéné.",
	["Title1"] = "Månterå dhasar",
	["Title2"] = "Månterå pokok sing unik",
	["Title3"] = "Månterå pokok sing dibagé",
	["ManaCost"] = "Béaya mana: %s", 
	["TokenCost"] = "Béaya token: %s", 
	["Special"] = "Syarat spésial: %s",
	["Execution"] = "Pilakon: %s",
	["Description"] = "Dèskripsi: %s",
	["basic"] = "Dhasar",
	["ultimate"] = "Pokok",
	["unlock"] = "0 (3 kanggo mbukak)",
	["none"] = "Ora ånå syarat spésial",
}

module.gui.basic.jumpdelay = "tundhå mlumpat"
module.gui.basic.dancetime = "💃 WEKTUNÉ NJOGÈD! 🕺"

module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "MEMEDI",
	["spirit"] = "SPIRIT", --only for spirit spectres
	["welcome"] = "SUGENG RAWUH",
	["drones"] = "DRONE",
	["orb"] = "ORB",
	["refill"] = "NGISI", --for all 2nd rank bonuses
	["overload"] = "OVERLOAD",
	["steal"] = "NYOLONG",
	["gift"] = "PAWÈWÈH",
	["share"] = "DIBAGÉ",
	["prank"] = "NGAPUSI",
	["possession"] = "NYUPATANI",
	["ritual"] = "RITUAL",
	["purge"] = "MBUSAK",
	["blessing"] = "BERKAT",
	["hack"] = "HACK",
	["stash"] = "SIMPENAN",
	["backdoor"] = "WÈB",
	["chamber"] = "KAMAR",
	["base"] = "PANGKALAN",
	["circus"] = "SIRKUS",
	["shelter"] = "PAPAN PANGAYOM",
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
	["optimus"] = "NJEJEGAKÉ",

}

module.gui.hints = {
	["bcancel"] = "Penet B kanggo murungaké", --xbox b
	["acancel"] = "Klik manèh kanggo murungaké.",
	["ocancel"] = "Wurungaké månterå other dhisik", 
}

module.gui.gameover.extras = {

	["noobs"] = "Tutorials are for noobs!",
	["possessed"] = "Those annoying Heretics!",
	["hypnotized"] = "Where am I?",
	["new"] = "Pangkat anyar acquired - %s",
	["none1"] = "ENTÈNI! PIYÉ?",
	["none2"] = "Opo game iki",
	["none3"] = "duwé månterå lah?"

}

module.gui.gameover.raceplacements = {
	"KOWÉ WIS MENANG BALAP!",
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











































