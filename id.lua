--VERSION 1.0--
--INDONESIAN / INDONÈSIA--

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "YA",
	["no"] = "TIDAK",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "NORMAL",
	["validate"] = "SAHKAN",
	["play"] = "MAIN",
	["skip"] = "LEWATI\nLATIHAN",
	["loading"] = "MEMUAT, MOHON MENUNGGU…",
	["mode"] = "%s\nMODE",
	["cd"] = "PENDINGINAN\nPOKOK",
	["complete"] = "COMPLETE",
}

module.gui.switcher = {

	["title"] = "GANTI SERVER",

	["public"] = "SERVER UMUM",
	["private"] = "SERVER PRIBADI",
	["join"] = "MASUK",
	["friends"] = "TEMAN ONLINE",
	["refresh"] = "memperbarui…",
	["fail"] = "GAGAL MEMPERBARUI!",

}

module.gui.serversettings = {

	["title"] = "PENGATURAN OWNER",

	["Moderation"] = "MODERASI",
	["rules"] = "Server punyamu, ya kamu yang buat peraturannya.",
	["temp"] = "Semua mute dan ban hanya bersifat sementara",
	["kick"] = "KICK",
	["ban"] = "BAN",
	["mute"] = "MUTE",

	["Drones"] = "DRONE SETTINGS",
	["DronesReadOnly"] = "DRONE SETTINGS (read only)",
	["DroneEnabled"] = "Drones enabled",
	["DroneFix"] = "Drones restore stairs",
	["DroneRemove"] = "Drones remove cursed intersections",
	["DroneUnCurse"] = "Drones restore cursed stairs",
	["DroneMove"] = "Drones move stairs in default mode",
	["DroneSpin"] = "Drones spin stairs in default mode",
	["DroneSpeed"] = "Drone travel speed (level/second)",
	["DroneDelay"] = "Drone spin duration (seconds)",
	["DroneMax"] = "Max staircases amount (drones will exclusively destroy above this limit)",
	["DroneMin"] = "Min staircases amount (drones will exclusively create below this limit)",
	["DroneBlock"] = "Cursed intersection chance for every empty intersection encounter (percent)",
	["DroneCurse"] = "Cursed stairs chance for creation and normal stairs encounter (percent)",

	["Tower"] = "TOWER SETTINGS",
	["TowerReadOnly"] = "TOWER SETTINGS (read only)",
	["InfMode"] = "Infinite Mode (cannot be changed during a race or a regeneration)",
	["CasualPlayers"] = "Casual players allowed to cast spells",
	["Regeneration"] = "Auto Staircase generation after a Wicked's Purge (will not work in the infinite mode)",
	["EvenLevels"] = "Even Levels Restricted",
	["OrbMoves"] = "Endgame orb changes position",
	["InfRegeneration"] = "Auto Staircase generation on new server, tower levels change and after the infinite race",
	["TowerLevels"] = "Tower levels (or active levels in the infinite mode). Cannot be changed during a race or a regeneration",
	["RaceDuration"] = "Maximum Race Duration. Will not affect current race. (seconds)",
	["InfStart"] = "Initial Infinite mode round interval (2 levels are created each round) (seconds)",
	["InfReduction"] = "Infinite mode interval reduction (each round is shorter by) (seconds)",
	["InfMin"] = "Infinite mode minimum interval duration (seconds)",
	["Cooldown"] = "Event and Rig cool down period (seconds)",

}

module.gui.shop = {

	["title"] = "TOKO TANGGA GILA",

	["chameleon"] = "Chameleon bisa mengganti kelas saat mendaki.",
	["spectre"] = "Spectre adalah sebuah kelas berbasis teleportasi, terbaik buat solo play.",
	["mana"] = "Luaskan kapasitas manamu dengan 10 poin.",

	["3tokens"] = "Buka sebuah mantra atau lakukan hingga 3 mantra pokok.",
	["30tokens"] = "Buka 10 mantra atau lakukan hingga 30 mantra pokok.",
	["300tokens"] = "Cukup untuk membuka semua mantra dengan sisa 153 token.",

	["3TOKENS"] = "3 Multi Token (R$%d)",
	["30TOKENS"] = "30 Multi Token (R$%d)",
	["300TOKENS"] = "300 Multi Token (R$%d)",
	["SPECTRE PASS"] = "Gamepass spectre. (R$%d)",
	["MANA PASS"] = "Gamepass 20 mana. (R$%d)",
	["CHAMELEON PASS"] = "Gamepass chameleon. (R$%d)",

}

module.gui.spellbar = {

	["share"] = "BAGI\nMANA",
	["nocasual"] = "HANYA PEMBALAP YANG BISA MELAKUKAN MANTRA",

} 

module.gui.stats = {

	["total"] = "Jumlah pendakian: %d / Kemenangan: %d",
	["class"] = "Mendaki sebagai %s: %d",
	["best"] = "Waktu %s terbaik: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "TERKUTUK! (cari mana untuk kabur)",
	["released"] = "BEBAS",
	["timesup"] = "waktu habis...",

}


module.gui.activatecham = {

	["title"] = "AKTIFKAN CHAMELEON",
	["body"] = "Apakah kamu mau aktifkan mode chameleon?\nIni akan tetap aktif selama sisa pendakian."

}

module.gui.caceltimed = {

	["title"] = "BATALKAN MANTRA TERBATAS",
	["body"] = "Apakah kamu mau batalkan mantra terbatas ini? Token tidak akan dikembalikan."

}

module.gui.climbtimer = {

	["prompt"] = "Naiklah\ntangganya!",
	["floor"] = "Lantai",
	["last"] = "Terakhir kali",

}

module.gui.codes = {

	["title"] = "MASUKKAN KODENYA",
	["body"] = "Masukkan kodemu di sini:",
	["prompt"] = "(code)",
	["button"] = "TEBUS",

}

module.gui.gauges = {

	["prompt"] = "Lompat untuk lanjut, tekan lagi untuk batal.",

	["found"] = "%d tangga ditemukan (%.1f%% terisi)",
	["special"] = "%d adalah spesial (%.1f%%)",
	["affected"] = "%d tangga akan dipengaruhi (%.1f%%)",
	["cursed"] = "%d simpang terkutuk ditemukan (%.1f%%)",
	["fill"] = "%d tangga akan dibuat (%.1f%%)",
	["purge"] = "%d objek akan dihancurkan (%.1f%%)",
	["normal"] = "%d sudah kembali normal (%.1f%%)",
	["restore"] = "%d tangga akan dipulihkan (%.1f%%)",
	["bypass1"] = "%d kutukan lagi menghalangi (%.1f%%)",
	["bypass2"] = "%d bypass sudah ada (%.1f%%)",
	["bypass3"] = "%d bypass akan dibuat (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "JUKEBOX",

	["master"] = "VOLUME UTAMA",
	["default"] = "(menggunakan volume utama)",
	["climb"] = "MUSIK MENDAKI",
	["endgame"] = "MUSIK ENDGAME",
	["failed"] = "[gagal memuat]",

}

module.gui.results = {

	["title"] = "HASIL BALAP",

	["place"] = "PERINGKAT",
	["name"] = "NAMA",
	["level"] = "LEVEL MAKSIMAL",
	["time"] = "WAKTU",
	["rank"] = "PANGKAT",
	["not"] = "N/A",
	[1] = "PEMENANG",
	[2] = "ke-2",
	[3] = "ke-3",
	[4] = "ke-4",
	[5] = "ke-5",
	[6] = "ke-6",
	[7] = "ke-7",
	[8] = "ke-8",
	[9] = "ke-9",
	[10] = "ke-10",
	[11] = "ke-11",
	[12] = "ke-12",

}

module.gui.racetimer = {

	["gather"] = "Kamu tidak\nmengikuti balap ini.",
	["race"] = "BALAP\nSELESAI!",
	["inf"] = "Disingkirkan!",
	["off"] = "TIMER\nBALAP.",
	["wait"] = "Mulai dalam",
	["on"] = "Peringkat",

}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Drone Mode %s",
	["refill"] = "Overload Mana (%s)",
	["union"] = "Gabung dengan Hantu (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Buat Tangga",
	["restore"] = "Panggil Orb", 
	["split"] = "Buat Ulang Tangga",
	["shrinkabove"] = "Ciut Tangga di Atas",
	["link"] = "Buat Penyambung",
	["portal"] = "Buat Portal",

	["summoner"] = "Pembuat",
	["patronevent"] = "Overload Tangga",
	["patronaltevent"] = "Ciut Semua Tangga",

	--JOKER 
	["flip"] = "Balik Tangga",
	["flipabove"] = "Balik Tangga di Atas",
	["fake"] = "Buat Tangga Tipuan",
	["invisible"] = "Buat Tangga Tidak Terlihat",
	["disco"] = "Tangga Berdisko",
	["trap"] = "Buat Platform Jebakan",

	["flipper"] = "Pembalik",
	["jokerevent"] = "Selubung Semua Tangga",
	["jokeraltevent"] = "Balik Semua Tangga",

	--WICKED
	["destroy"] = "Hancurkan Tangga",
	["destroyabove"] = "Hancurkan Tangga di Atas",
	["bend"] = "Bengkok Tangga ke Atas",
	["damage"] = "Cacatkan Tangga di Atas",
	["flatten"] = "Bend Opposite Stairs Down",
	["wall"] = "Buat Dinding Pemblokir" ,

	["bender"] = "Pembengkok",
	["wickedevent"] = "Hancurkan Semua Tangga Normal",
	["wickedaltevent"] = "Hancurkan Semua Tangga",

	--KEEPER
	["move"] = "Pindah Tangga",
	["rotate"] = "Putar Tangga",
	["moveup"] = "Pindah Tangga ke Atas",
	["movedown"] = "Pulih Tangga",
	["moverandom"] = "Gerak Tangga di Atas secara Acak",
	["rig"] = "Gerak secara Acak",

	["ascension"] = "Kenaikan",
	["keeperevent"] = "Rombak Kembali",
	["keeperaltevent"] = "Pulih Semua Tangga",

	--SPECTRE
	["phantom"] = "Buat Tangga Berhantu",
	["ghost"] = "Hantui Tangga di Atas",
	["shadow"] = "Materialisasi Tangga",
	["horizontal"] = "Teleport secara Horizontal",
	["random"] = "Teleport secara Acak",
	["vertical"] = "Teleport secara Vertikal",

	["traveller"] = "Penjelajah",
	["spectreevent"] = "Imaginasi Tangga",
	["spectrealtevent"] = "Penghantuan Semua Tangga",

	--HACKER
	["dash"] = "Lari",
	["blink"] = "Sulap",
	["swap"] = "Swap",
	["slide"] = "Eskalator",
	["slideup"] = "Hack Tangga",
	["glitch"] = "Glitch Tangga",

	["hack"] = "Pembuat Eskalasi",
	["hackerevent"] = "Eskalasi Tangga",
	["hackeraltevent"] = "Eskalasi Menaik Semua Tangga",

	--THIEF
	["steal"] = "Curi Tangga",
	["stealabove"] = "Curi Tangga di Atas",
	["place"] = "Kembalikan Tangga",
	["uppass"] = "Tangga Spiral",
	["sidepass"] = "Buat Jalan Pintas",
	["drop"] = "Enyahkan Tangga",

	["heist"] = "Buffet Tangga",
	["thiefevent"] = "Bumi Datar",
	["thiefaltevent"] = "Buat Semua Tangga menjadi Jalan Pintas",

	--ARCHON
	["splitup"] = "Buat Portal ke Atas",
	["splitrotate"] = "Buat Portal ke Sebelah",
	["splitside"] = "Buat Portal ke Samping",
	["splitrandom"] = "Buat Portal secara Acak",
	["cancelsplit"] = "Hancurkan Portal",
	["splitforward"] = "Buat Portal Platform",

	["splitter"] = "Buffet Portal",
	["archonevent"] = "Buat Portal pada Semua Tangga",
	["archonaltevent"] = "Buat Portal ke Atas pada Semua Tangga",

	--DRIFTER
	["indrift"] = "Selancar",
	["outdrift"] = "Hanyutkan Tangga secara Acak",
	["updrift"] = "Lift ke Atas",
	["diagdrift"] = "Platform Selancar",
	["spin"] = "Putar Tangga",
	["driftabove"] = "Angkat Tangga di Atas",

	["riser"] = "Peliftkan",
	["drifterevent"] = "Hanyutkan Semua Tangga",
	["drifteraltevent"] = "Angkat Semua Tangga",

	--HERETIC
	["createcursed"] = "Buat Tangga Terkutuk",
	["curse"] = "Kutuk/Pulih Tangga",
	["curseabove"] = "Kutuk/Pulih Tangga di Atas",
	["curseinter"] = "Kutuk Simpang",
	["autodown"] = "Blokade Atas",
	["autoup"] = "Blokade Bawah",

	["malediction"] = "Kutukan",
	["hereticevent"] = "Refraksi Tangga",
	["hereticaltevent"] = "Kutuk Semua Tangga",

	--SPLICER
	["twistup"] = "Sambung Tangga ke Atas",
	["twistside"] = "Sambung Tangga Paralel",
	["twistrotate"] = "Sambung Tangga Adjasen",
	["canceltwist"] = "Pulih Tangga Terpelintir",
	["split2"] = "Belah Tangga",
	["splitalt"] = "Pisahkan Tangga",

	["twister"] = "Pembelah",
	["splicerevent"] = "Sambung Semua Tangga",
	["spliceraltevent"] = "Belah Semua Tangga",
	
	--necro
	["createdual"] = "Buat Tangga Ganda",
	["copyplatform"] = "Salin Platform Hantumu",
	["soulbridge"] = "Buat Penyambung Jiwa",
	["undeadabove"] = "Panen Jiwa Tangga di Atas",
	["revival"] = "Titik Kebangkitan",
	["regen"] = "Regenerasi Mana",

	["duality"] = "Pembuat Ganda",
	["necromancerevent"] = "Bangkit Tangga Jiwa",
	["necromanceraltevent"] = "Panen Jiwa Semua Tangga",
	
	--reaver
	["createmirrored"] = "Buat Tangga Cermin",
	["bigmirror"] = "Platform Cermin Besar",
	["smallmirror"] = "Platform Cermin Kecil",
	["outermirror"] = "Portal Cermin Luar",
	["merge"] = "Gabung Reaver",
	["oneway"] = "Tangga Satu Arah",

	["reflection"] = "Pencerminan",
	["reaverevent"] = "Satu Arah Semua Tangga",
	["reaveraltevent"] = "Satu Arah Menaik Semua Tangga",
	
	
	--gremlin
	["tram"] = "Buat Tangga Funikular",
	["screwup"] = "Pilin Naik",
	["revolve"] = "Kisar Tangga",
	["trapstairs"] = "Tangga Jebakan",
	["screwdown"] = "Pilin Turun",
	["spinplatform"] = "Kisar Platform",

	["tramway"] = "Masinis",
	["gremlinevent"] = "Kisar Semua Tangga",
	["gremlinaltevent"] = "Overload Funikular",

	--CHAMELEON
	["ditch"] = "Tangga Menyilang",
	["warp"] = "Tangga Fleksibel",
	["chamdown"] = "Pindah Tangga ke Bawah",
	["chamdraw"] = "Sulap Tangga",
	["chamswap"] = "Salin Hantu (visual)",
	["chamdrawabove"] = "Sulap Tangga di Atas",

	--MISC (compatibility)
	["reg"] = "Tangga sedang dalam regenerasi",

}-- " .. RankData.PATRON[7].name .. " 

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
	["summon"] = "This spell allows you to create stairs in the chosen direction. If there are any crossing stairs in the way, they will be destroyed.",
	["restore"] = "This spell calls the orb on the top level to the chosen platform. Rank up to DEFENDER to reduce the cost to 2 Mana. Rank up to SAVIOUR to double the speed at which the orb will travel to You.",
	["split"] = "This spell recreates below stairs in the opposite direction. Recreated stairs will be normal regardeless of original stairs type.",
	["shrinkabove"] = "This spell shrinks above stairs, allowing you to walk around them.",
	["link"] = "This spell creates an energy bridge between platforms for 60 seconds. Links are intangilbe from below. Rank up to the CREATOR rank to extend the time to 120 seconds.",
	["portal"] = "This spell creates portal that will teleport all players one platform up. Portal lasts 60 seconds. Rank up to PROTECTOR to extend the time to 120 seconds.",

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
	["fake"] = "This spell allows you to create fake stairs in the choosen direction. If there are any crossing stairs in the way, they will be destroyed. Any player (including you) that will attempt to climb them will fall through, with the exception of TRICKSTERS, ITS and players in the Ghost Union Mode.",
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
	["horizontal"] = "This spell lets you teleport horizontally in the choosen direction. You can teleport through any un-cursed stairs in the way.",
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
	["stealabove"] = "This spell allows you to steal an above normal or rigged stairs. Either this or steal below is required to cast other basic thief spells. Rank up to HIJACKER able to steal any un-cursed stairs. Rank up to OUTLAW to be able to steal 2 staircases at a time.",
	["place"] = "This spell allows you to place the stolen stairs back in the choosen direction. However, this will not demolish crossing stairs, so you can only place stairs in an empty intersection.",
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
	["diagdrift"] = "This spell will either: Create a horizontal elevator using below and any platform in a diagonal fashion. Such elevator will disappear after 7 return journeys. OR: If casted in outside direction, this spell will create an elevator would circle around the Tower once.",
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
	["autoup"] = "Use this spell to create special mirrored section of upper part of the staircase. Regular steps will be lowered down. Only ghost unions and Heretics can walk on that section.",

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
	["regen"] = "Use this spell to regenrate Mana once per climb. You will get 6 Mana points upon use. Players near Your ghost will get 3 Mana too. Rank up to DEATHBRINGER to regenerate 10 Mana and 5 Mana for players near Your ghost.", 
	
	["duality"] = timed .. "It allows you to cast at many Dual Stairs as you like for one minute. Crossing stairs will be demolished regradless of rank." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "the Necromancer Rig. Stairs, once triggered, will have their soul removed and will fade away.",
	["necromancerevent"] = fill ..  "Created stairs will be soul-less and will fade away after a minute.",
	["necromanceraltevent"] = event .. "the Remove Soul spell. Such stairs will fade away after a minute.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Remove Soul spell"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,


	["createmirrored"] = "This spell will Create Stairs with a mirror in the middle. Once you walk through the mirror, you will merge with Your ghost. Walk through the mirror again and you will separate from Your ghost. Rank up to Poltergeist to demolish crossing stairs with this spell. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["bigmirror"] = "This spell will create a giant mirror on the whole level for 10 seconds. Only players merged with their ghost can walk on the mirror. When you step away from mirror, you will become unmerged. Giant mirrors will remove any small mirrors on the level. Rank up to Presence to extend mirror lifetime to 15 seconds.",
	["smallmirror"] = "This spell will create a small mirror in the chosen direction for 6 seconds. Only players merged with their ghost can walk on the mirror. When you step away from mirror, you will become unmerged. Rank up to Presence to extend mirror lifetime to 10 seconds.",
	["outermirror"] = "This spell will create a mirror in the outer direction and twin mirror on the other side of the map. It can only be used in outer platforms. Players who walk through such mirror will merge with their ghost and teleport to the connected mirror on the other side of the tower. Mirror will fade away after 60 seconds. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["merge"] = "Use this spell to manually merge with Your ghost. Rank up to REPLICA to use this spell to unmerge from Your ghost. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["oneway"] = "This spell will turn below stairs into one-way passage, while merging players with their ghost, if they walk in proper direction. You can choose which direction to block. Rank up to Alien to be immune to one-way stairs effect. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",

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
	["gremlinrigevent"] = rig .. "the Gremlin Rig. Stairs, once triggered, will hypnotize the triggering player. They will have to find Mana to be released. Hypnotized players have their controls reversed. Rank up to HOBGOBLIN to be immune to Gremlin Rigs.",
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

	["title"] = "PERINGKAT",

	--none
	["none_1"] = "Kamu belum memilih sebuah kelas!",
	["none_2"] = "Kamu tidak punya akses buat mantra apapun!",
	["none_3"] = "Lompat pada morph (di tengah map) - untuk mengganti kelas.",

	--shared
	["higher"] = "PERINGKAT LEBIH TINGGI DIPEROLEH",
	["current"] = "PERINGKATMU SAAT INI",
	["lower"] = "PERINGKAT BELUM DIPEROLEH",

	["more"] = "Kamu harus mendaki sebanyak %d kali sebagai %s untuk memperoleh peringkat ini.",
	["done"] = "Kamu telah memperoleh peringkat yang lebih tinggi. Semua efek peringkat lebih rendah ditambahkan ke dalam peringkat saat ini.",
	["max"] = "Kamu telah memperoleh peringkat maksimal. Kamu telah mendaki sebanyak %d kali sebagai %s.",
	["next"] = "Click on the right arrow to check requirements for the next rank.",

	["PATRON"] = {
		[4] = "Penyambungmu akan berlangsung 2 kali lebih lama (120d).",
		[5] = "Portalmu akan berlangsung 2 kali lebih lama (120d).",
		[6] = "Biaya mantra memanggil orb dikurangi menjadi 2 mana.",
		[8] = "Jika kamu kehabisan mana, lompat pada sebuah platform untuk mendapatkan 1 mana.",
		[9] = "Orb yang dipanggil akan bergerak 2 kali lebih cepat.",
	}, 
	["JOKER"] = { 
		[4] = "Tangga berdisko tidak akan mempengaruhimu.",
		[5] = "Kamu bisa melihat semua tangga tidak terlihat. Kamu punya pilihan untuk tidak menunjukkannya.",
		[6] = "Kamu bisa mendeteksi jebakan platform dan tangga tipuan.",
		[8] = "Kamu bisa berjalan pada tangga tipuan.", 
		[9] = "Kamu akan mendapatkan bonus mana ketika seseorang menemukan prank apapun. (hanya sekali per prank per pemain)",
	},
	["WICKED"] = {
		[4] = "Kamu bisa berjalan pada obby, seperti pada tangga yang normal.",
		[5] = "Mantra HANCURKAN BAWAHMU sekarang menjadi gratis.",
		[6] = "Kamu akan mendapatkan bonus mana untuk menghancurkan tangga spesial apapun.",
		[8] = "Kamu punya pilihan untuk menghindar memicu di bawah Wicked Rig.",
		[9] = "Kamu bisa menghancur tangga terkutuk.",
	},
	["SPECTRE"] = { 
		[4] = "Kamu akan mendapatkan 1 mana tambahan ketika kamu mengumpulkan kristal dengan hantumu.", 
		[5] = "Mantra MATERIALISASI sekarang menjadi gratis.",
		[6] = "Kamu bisa selesai mendaki dengan meraih orb endgame dengan hantumu.",
		[8] = "Kamu punya pilihan untuk menghindar memicu di bawah Spectre Rig.", 
		[9] = "Kamu bisa berjalan pada tangga berhantu.",
	},
	["KEEPER"] = {
		[4] = "Mantra GERAK SECARA ACAK dan Keeper Rig yang kamu picukan tidak akan membuat tangga untuk turun.",
		[5] = "Kamu bisa memindahkan tangga apapun, kecuali yang dikutuk.",
		[6] = "Mantra PULIH TANGGA kamu sekarang menjadi gratis.", 
		[8] = "Kamu punya pilihan untuk menghindar memicu di bawah Keeper Rig.",
		[9] = "Kamu bisa memulihkan tangga dan simpang yang terkutuk.",
	},
	["HACKER"] = { 
		[4] = "Kamu punya pilihan untuk mematikan Eskalator.",
		[5] = "Mantra LARI horizontal kamu telah menjadi 50% lebih cepat.",
		[6] = "Mantra SULAP melalui tangga di atas kamu telah menjadi 50% lebih cepat.", 
		[8] = "Kamu punya pilihan untuk menghindar memicu di bawah Hacker Rig. (merges with Eskalator pilihan)",
		[9] = "Jika ada paling sedikit satu simpang normal, melakukan glitch pada level tertinggi akan mewujud ulang tangga yang berada di dekat orb.", 
	},
	["THIEF"] = {
		[4] = "JALAN PINTAS kamu akan berlangsung 2 kali lebih lama (120d).",
		[5] = "TANGGA SPIRAL kamu akan berlangsung 2 kali lebih lama (120d).",
		[6] = "Kamu bisa mencuri tangga apapun, kecuali yang dikutuk.",
		[8] = "Jika kamu kehabisan, lompat pada sebuah platform untuk mendapatkan 1 mana dari penyimpanan kamu.", 
		[9] = "Kamu bisa menyimpan 2 tangga yang dicuri secara bersamaan.",
	},
	["ARCHON"] = {
		[4] = "Kamu bisa melakukan mantra HANCURKAN PORTAL pada platform manapun.",
		[5] = "Mantra HANCURKAN PORTAL kamu sekarang menjadi gratis.",
		[6] = "Portal tidak akan teleport kamu ke bawah.",
		[8] = "Kamu bisa melakukan mantra belah pada tangga yang sudah dibelah.",
		[9] = "Kamu punya pilihan untuk menghindari teleportasi pada semua portal, kecuali portal ke atas.",
	},
	["DRIFTER"] = {
		[4] = "Penyimpangan platform vertikal kamu akan muncul dan bergerak 50% lebih cepat.",
		[5] = "Kamu bisa memutar tangga yang diselancar.",
		[6] = "Kamu bisa mendorong mantra ANGKAT KE ATAS dengan mantra PEMBANGKIT dan LIFT KE ATAS.",
		[8] = "Kamu punya pilihan untuk menghindar memicu di bawah Drifter Rig.",
		[9] = "You can now boost Elevators twice, with both Riser and Elevator spells. Vagabond perk does not apply to boosted Elevators.",
	},
	["HERETIC"] = {
		[4] = "When out of Mana, you can touch cursed stairs to uncurse them and get one Mana.",
		[5] = "You are now immune to being possessed.",
		[6] = "You can now cast the Flicker spell on a cursed intersection.",
		[8] = "Your Create Cursed Stairs and Malediction spells can now destroy blocking cursed stairs.",
		[9] = "You will get 1 extra Mana everytime someone is possessed.",
	},
	["SPLICER"] = {
		[4] = "Kamu bisa memulihkan tangga terputus dari sebuah platform.",
		[5] = "Mantra PULIH TANGGA TERSAMBUNG kamu sekarang menjadi gratis.",
		[6] = "Kamu punya pilihan untuk menghindar memicu di bawah Splicer Rig.",
		[8] = "Kamu bisa menyambung tangga yang sudah tersambung.",
		[9] = "Kamu akan dapat bonus mana setiap kali kamu memulihkan tangga yang tersambung.",
	},
	["REAVER"] = {
		[4] = "Kamu bisa dapat menggunakan mantra gabung untuk memisah",
		[5] = "Platform cermin kamu akan berlangsung 50% lebih lama. (15d besar, 9d kecil)",
		[6] = "You have the option to avoid below Reaver Rigs.",
		[8] = "Kamu bisa menghancurkan tangga bersilangan, ketika menggunakan mantra Buat Tangga Cermin.",
		[9] = "Kamu bisa dapat berjalan melalui Cermin Satu Arah (yang memblokirmu).",
	},
	["NECROMANCER"] = {
		[4] = "Mantra BUAT TANGGA GANDA akan mengabaikan tangga terkutuk dan tangga lain pada platform hantu kamu.",
		[5] = "Jika kamu memakai Titik Kebangkitan pada lantai teratas, Orb akan berpindah ke lokasi Titik Kebangkitan tersebut.",
		[6] = "Mantra SALIN PLATFORM HANTUMU akan menghapus kutukan jika dibutuhkan.",
		[8] = "Kamu bisa menghancurkan tangga bersilangan, ketika memakai mantra Buat Tangga Ganda.",
		[9] = "Mantra REGENERASI memberikan 10 mana dibandingkan 6, dan akan memberi 5 mana kepada pemain di sekitar hantu kamu.",
	},
	["GREMLIN"] = {
		[4] = "Kamu bisa mendeteksi Jebakan Gremlin.",
		[5] = "Kamu bisa melompat pada platform ke memanggil Funikular adjasen.",
		[6] = "Kamu telah menjadi kebal terhadap Gremlin Rig.",
		[8] = "Kamu telah menjadi kebal terhadap Jebakan Gremlin.",
		[9] = "Kamu bisa mengendalikan Tangga Pilin menggunakan sebuah tombol. Namun, ini mungkin tidak dapat berfungsi jika ada Daemon lain di sekitar.",
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

	["title"] = "MODE ROMBAK ULANG",

	["body"] = "Apakah kamu mau semua tangga untuk menghindari tabrakan saat bergerak? Jika tidak, semua tangga yang menghalangi akan dihancurkan.",

}

module.gui.multitokens = {

	["title"] = "CHOOSE YOUR TOKENS",

	["info"] = "You need 3 tokens to unlock a spell.",
	["notokens"] = "You have no multi tokens left",
	["nopass"] = "NO GAME PASS",

}

module.gui.feedback = {

	["title"] = "SEND FEEDBACK",

	["prompt"] = "Click here to send a message to the developers! (minimum of 20 characters. We know who you are so please no spam.)",
	["send"] = "SEND",
	["locked"] = "LOCKED",

}

module.gui.settings = {

	["title"] = "GAME SETTINGS",

	["ANIM"] = "ANIMATION\nSETTINGS",	
	["MISC"] = "MISCELLANEOUS\nSETTINGS",
	["INTER"] = "INTERFACE\nSETTINGS",	
	["INTER2"] = "EXTRA INTERFACE\nSETTINGS",	

	["list"] = "Show animated playerlist",
	["morph"] = "Show morph animation when using Deceiver or Usurper",
	["billboard"] = "Show Your own avatar billboard",
	["rank"] = "Show Your Overall Rank in avatar billboard",
	["switchback"] = "Auto switch back to basic spells after executed ultimate spell",
	["safecancel"] = "Show confirmation window when cancelling a timed ultimate spell",
	["multi"] = "Show Multi Token window selection after the climb",
	["kchoices"] = "Show direction selection window for Keeper (won't work on consoles)",
	["hchoices"] = "Show direction selection window for Hacker (won't work on consoles)",
	["achoices"] = "Show direction selection window for Archon (won't work on consoles)",
	["rchoices"] = "Show direction selection window for Reaver (won't work on consoles)",
	["schoices"] = "Show direction selection window for Splicer (won't work on consoles)",
	["gchoices"] = "Show direction selection window for Gremlin (won't work on consoles)",
	["stats"] = "Show extra stats when casting Rig & Event spells",

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "YOUR ALIGNMENT",
	["time"] = "YOUR CLIMB TIME",
	["climbs"] = "CLIMBS AWARDED",
	["tokens"] = "TOKENS AWARDED",
	["rank"] = "YOUR CURRENT RANK",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"BANTU, LINDUNG, dan BUAT",
		"Anak-anak baru itu butuh bantuan kita",
		"Bakal tidak ada harapan tanpa adanya Patron",
		"11/10 buat kebaikannya",
		"Berbagi itu peduli",
		"Tidak ada yang namanya terlalu banyak tangga",
		"Tidak ada tam dalam tim, tapi pasti ada seorang Patron",
		"Kamu tidak bisa punya tangga tanpa tangga",
		"Selesai dengan baik, seperti biasa",
	},
	["JOKER"] = {
		"TIPU, BINGUNGKAN, dan KETAWA",
		"Ini tangga bercanda kayaknya",
		"Kok serius banget?",
		"HA! HA! HA!",
		"Santai dan lihat mereka jatuh",
		"Bro, kamu marah ya?",
		"You know the rules and so do I (do I~)",
		"Tanpa aku, ini bakal membosankan",
		"Tangga tipuan itu beneran ada",
	},
	["WICKED"] = {
		"CEGAH, BLOKIR, dan HANCUR",
		"Aku ga jahat, cuma ada terlalu banyak tangga",
		"Tangga-tangga itu harus pergi",
		"Ga peduli maunya apa, yang penting ada kekacauan",
		"Tangga ini kelihatannya bagus kalau ga ada tangga",
		"Aku akan hancurkan pikiran, jiwa, dan badanmu (dan juga tangga)",
		"1)Buat sebuah obby 2)Lihat pemula kesusahan 3)Selamat menikmati",
		"Semuanya akan mati dalam akhirat",
		"Bersihkan pikiranmu - tapi pertama-tama bersihkan tangga itu",
	},
	["SPECTRE"] = {
		"MENGHILANG, SEMBUNYI, dan TELEPORT",
		"Teleport itu aman dong",
		"Kamu tak bakal bisa menangkap aku",
		"Kecantikan dari tangga berhantu itu tidak tertandingi",
		"Orang jatuh? Terus kenapa?",
		"Kamu bisa menyelesaikan semua masalahmu dengan teleport",
		"Saat kamu mulai teleport, kamu tak akan berhenti",
		"Yang penting aku enggak teleport tangga",
		"Pertahankan, kamu pemula!",
	},
	["MUGGLE"] = {
		"JALAN, LOMPAT, dan JATUH",
		"Kami belum punya mantra kayak gitu waktu gamenya masih dalam alpha",
		"Sumpah, drone-dronenya pada ga adil semua",
		"Pasti selalu ada jalannya",
		"Lompat tangga merupakan sebuah bakat",
		"Rahasiaku? Berhenti dan pikir",
		"Aku ga percaya sama yang namanya sulap",
		"Kadang kamu harus tunggu untuk sebuah drone - Kayak di dunia nyata",
		"Orang-orang pada pake mantra? Dasar pemula!",
	},
	["CHAMELEON"] = {
		"SALIN, TIRU, dan KEJUT",
		"Aku terlalu malas untuk membuat mantra yang baru",
		"Lebih banyak variasi - lebih seru",
		"Kerja sama itu lemot - Berubah itu cepat",
		"Kemampuan untuk mengatur adalah sebuah asas untuk bertahan hidup",
		"AKU emang tegas, cuma aku suka berubah pikiran",
		"Kamu menguasai satu kelas? Aku mah menguasai semuanya",
		"Satu kelas aja? Bosenin!",
		"Aku suka kekacauan",
	},
	["KEEPER"] = {
		"GERAK, PUTAR, dan ATUR",
		"Berhenti mengacaukan tanggaku!",
		"Keberhasilan yang perkasa untuk semua Keeper, seperti biasa",
		"Misi selesai!",
		"Aku tuh orangnya diktator",
		"Kekacauan diatasi",
		"Akulah cuma satu-satunya kelas yang sejati",
		"Suatu hari aku akan bereskan menara ini",
		"Tangga telah diperbaiki - tangga menjadi senang",
	},
	["THIEF"] = {
		"PINJAM, GUNA, dan KEMBALIKAN",
		"Itu sebenarnya meminjam",
		"Bumi datar itu indah sekali",
		"Yang penting aku enggak curi platform",
		"Cuma jangan jalan pada thief rig, geleng kepala",
		"Kamu ada lihat aku curi sesuatu enggak?",
		"Aku tuh kayak Robin Hood - Curi dari yang kaya dan kasih ke diri sendiri",
		"Tak ada yang bakal tahu ada satu tangga hilang",
		"Redistribusi tangga mencegah anarkisme",
	},
	["HACKER"] = {
		"RETAS, GLITCH, dan RUSAKKAN",
		"Permainan adil? Tidak ada hal seperti itu",
		"Tunggu! Tangga ini hanya fiktif belaka... Sebenarnya kita hidup dalam sebuah simulasi Roblox apa enggak sih?",
		"01010100 01000001 01001110 01000111 01000111 01000001 00100000 01000111 01001001 01001100 01000001",
		"Pernahkan kamu lihat peraturan tertulis dimanapun di sini?",
		"Aku ngecheat? Semua orang di sini ngecheat",
		"Maksudku beberapa perubahan di sini dan di sana - Hampir bukan retasan itu",
		"Kecepatan itu segalanya",
		"Eskalator untuk seumur hidup",
	},
	["HERETIC"] = {
		"KAMU TAK DAPAT LEWAT",
		"Melarang ilmu gelap itu seperti melarang keseruan",
		"Rasuki orang. Pertahankan dalam melayani Overmind.",
		"Kematian dan membusuk",
		"Ritual gelap selesai",
		"Kita tidak harus membatasi kita",
		"Mampus kerasukan",
		"Pilihlah sisi yang gelap - Ini lebih gampang dari Illuminasi",
		"Kenapa aku harus peduli ketika orang lagi tersesat?",
	},
	["ARCHON"] = {
		"BUKA PORTAL, ???, UNTUNG",
		"Tangga ini punya kakek aku",
		"Siapkan payung sebelum ujian untuk berhasil",
		"Belajar giat dan kamu akan berhasil",
		"Kemampuan untuk membelah tangga adalah sebuah bentuk seni",
		"Saya tidak bisa pakai potar Archon saya",
		"Kuenya itu hoaks",
		"There is a gate for every problem",
		"Semua orang jadi pusing!",
	},
	["DRIFTER"] = {
		"LAYANG, KENDARA, dan LUNCUR",
		"Omong-omong, siapa yang butuh tangga ya? Kita kan lagi di angkasa!",
		"Terbang, dasar bodoh!",
		"Luncurlah ke angin surya",
		"Enggak ada yang namanya jatuh di angkasa - Lompat tanpa khawatir",
		"Selancar semuanya - Lompat ke kemenangan",
		"Jangan berhenti - Tetap selancar",
		"Aku suka mengendarai platform",
		"Tetap selancar",
	},
	["SPLICER"] = {
		"PELINTIR, SAMBUNG, dan BELAH",
		"Jangan pernah jalan lurus untuk terlalu lama",
		"Campurkan hidupmu!",
		"Kekacauan orang lain adalah urusan Splicer",
		"Aku *bisa banget* nyambungin tangga itu",
		"Terkoneksi sama orang? Nggak lah, mending terkoneksi sama tangga!",
		"Pikiranku emang udah bengkok dari sananya",
		"Pisah atau Splice – itu dia pertanyaannya",
		"Makasih Markerquest, kamu nyelamatin aku",
		"Tangga ini terlalu lurus",
	},
	["REAVER"] = {
		"PANTUL, GANTI, dan GABUNG",
		"Cermin hanyalah pintu keluar masuk.",
		"Tangga ini cuma ilusi",
		"Kamu bisa melihat jiwamu di dalam cermin",
		"Kita yang mengawasi mereka, atau mereka yang mengawasi kita?",
		"Tujuh tahun sial. Buatku, atau buat yang satunya?",
		"Hantunya yang terjebak di balik cermin — atau kita?",
		"Aku tak lagi melihat diriku, aku melihat masa depan",
		"MAMA! Ini bukan cuma fase!!!",
		"Jangan muncul diam-diam gitu dong!",
	},
	["NECROMANCER"] = {
		"FOLLOW, REVIVE and BENEFIT",
		"Kita sebenarnya bukan menghantuimu, Kita hanya ingin bersahabat saja.",
		"Jiwamu MILIKKU!",
		"Ikuti hantuku. Percaya deh!",
		"Aman kok dekat hantuku. Emangnya aku bakal bohong?",
		"Waktunya panen jiwa-jiwa!",
		"Kita cuma punya citra buruk. Salahkan aja Hollywood",
		"Kalau kematian itu buruk, berarti Nekromansi itu baik dong",
		"Aku harus ngumpulin jiwa— eh maksudku Mana, aku butuh Mana",
 		"Aku nggak takut jatuh, ini mantra strategi, serius!",
	},
	["GREMLIN"] = {
		"PUTAR, KISAR, dan HIPNOTIS",
		"Mari bermain denganku!",
		"Kamu muter-muter terus, sayang, muter terus!",
		"Tangga ini ngebosenin banget",
		"Biar aku benerin tangganya ya, hehehe",
		"Kamu suka mahakaryaku? Nggak? Sayang banget, ini baru permulaan.",
		"Dokter nyuruh aku rileks, dan beginilah caraku rileks.",
		"Joker, belajar dulu gih. Bercanda, tolong terima aku lagi di Sirkus!",
		"Tangga itu ke mana tadi?",
		"Wheeeeeeeeeeeeeeeeeeee!!!!!!!",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Jangan biarkan anak baru ketinggalan",
	["IT"] = "Ga prank ga hidup",
	["ANNIHILATOR"] = "Robohkan semua!",
	["AETHER"] = "Masuk ke alam gaib",
	["DABSFORLIF"] = "Mantra sekarang udah ga zaman",
	["USURPER"] = "Ya aku emang suka semua mantra",
	["ADMIRAL"] = "Perintah dipulihkan",
	["OUTLAW"] = "Punyaku, punyaku, SEMUA PUNYAKU!",
	["ZERO"] = "Rootkit telah terpasang",
	["EXILED"] = "Pengucilan",
	["ILLUMINATI"] = "Illuminati, fix",
	["STRIDER"] = "Aku naik lift aja deh",
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

	["cla_1"] = "How do I play?",
	["cla_2"] = "First, it is highly recommended to complete the tutorial. If you haven't done so, please rejoin the game, as the experience could get really confusing otherwise.",
	["cla_3"] = "The goal of the game is to reach the top and collect the floating Energy Orb. First choose your alignment (class) by jumping on the glowing pads in the middle of the map.",
	["cla_4"] = "Once happy with the choice, collect floating shapes to refill Mana and climb the stairs. Use your class spell to help you with the climb.",
	["cla_5"] = "How do I cast spells?",
	["cla_6"] = "Every spell has a mana cost that will be required to cast the spell. When you collect enough Mana click on the spell. Your hands will start to glow, indicating a successful cast.",
	["cla_7"] = "After casting, the spell still needs to be executed. All spells are executed by jumping. Depending on the spell, you will need to jump either on platform or stairs. Guide arrows will appear, to help you with the execution.",
	["cla_8"] = "Once you complete the climb, you will receive 3 spell tokens, that will let you unlock one spell. Complete the climb again to unlock more spells. You can't use tokens from one class to unlock a spell from another.",
	["cla_9"] = "How do I cast ultimate spells?",
	["cla_10"] = "First you will need to unlock all basic spells to access the ultimate spells. Ultimate spells do not require unlocking themself, but they use Tokens instead of Mana when cast.",
	["cla_11"] = "Complete the climb enough times to unlock all basic spells. You may want to try to win the race to get extra Tokens. There is also option to purchase tokens. Once unlocked, click leftmost button or press 'C'",
	["cla_12"] = "Some ultimate spells are timed, and do not require execution. Please read more info in the Alignment Guilds to learn more about an ultimate spell, before casting. Cancelling a timed spell will not refund tokens",

	["pro_1"] = "PRO TOWER",
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

	["inf_1"] = "INFINITE TOWER",
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

	["cus_1"] = "CUSTOM TOWER",
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

	["home_1"] = "RUMAH MUGGLE",
	["home_2"] = "MOTTO KAMI:\nJALAN\nLOMPAT\nDAN\nJATUH",
	["home_3"] = "PRO:\nBonus kecepatan dan kekuatan lompat pada peringkat tinggi\nHak untuk pamer\nKONTRA:\nTidak ada mantra\nBisa nyangkut dengan gampang",
	["home_4"] = "“Kami belum punya mantra kayak gitu waktu gamenya masih dalam alpha!”\nkata pendiri kami",

	["oasis_1"] = "OASIS CHAMELEON",
	["oasis_2"] = "MOTTO KAMI:\nSALIN\nTIRU\nDAN\nKEJUT",
	["oasis_3"] = "PRO:\nBisa ganti kelas kapan saja, dimana saja\nKONTRA:\nMemerlukan robux\nRank up semua kelas bisa memakan waktu yang banyak",
	["oasis_4"] = "“Aku terlalu malas untuk membuat mantra yang baru.”\nkata pendiri kami",

	["nexus_1"] = "PERHUBUNGAN HERETIC",
	["nexus_2"] = "MOTTO KAMI:\nKAMU\nTAK\nDAPAT\nLEWAT",
	["nexus_3"] = "PRO:\nTerbaik dalam menara pro\nTidak dapat dihentikan\nKONTRA:\nKerja sama menjadi sulit\nHaus mana",
	["nexus_4"] = "“Melarang ilmu gelap itu seperti melarang keseruan.”\nkata pendiri kami",

	["guild_1"] = "PERSERIKATAN THIEF",
	["guild_2"] = "MOTTO KAMI:\nPINJAM\nGUNA\nDAN\nKEMBALIKAN",
	["guild_3"] = "PRO:\nEfisien mana\nVersatil\nKONTRA:\nHarus curi tangga\nTidak bisa menghancurkan tangga menyilang",
	["guild_4"] = "“Itu sebenarnya meminjam.”\nkata pendiri kami",

	["nether_1"] = "BAWAH TANAH SPECTRE",
	["nether_2"] = "MOTTO KAMI:\nMENGHILANG\nSEMBUNYI\nDAN\nTELEPORT",
	["nether_3"] = "PRO:\nMantra cepat\nCocok buat main solo\nKONTRA:\nMembutuhkan robux\nTidak cocok ketika bekerja sama",
	["nether_4"] = "“Teleport itu aman dong.”\nkata pendiri kami (MIA)",

	["study_1"] = "TELAAH ARCHON",
	["study_2"] = "MOTTO KAMI:\nBUKA\nPORTAL\n???\nUNTUNG",
	["study_3"] = "PRO:\nRig bermanfaat\nMembuat lawan bingung\nKONTRA:\nPaling sulit untuk dipelajari\nMembutuhkan perencanaan",
	["study_4"] = "“Tangga ini punya kakek aku.”\nkata pendiri kami",

	["haven_1"] = "SURGA PATRON",
	["haven_2"] = "MOTTO KAMI:\nBANTU\nLINDUNG\nDAN\nBUAT",
	["haven_3"] = "PRO:\nPaling mudah untuk dipelajari\nCocok untuk kerja sama\nKONTRA:\nMenggunakan banyak mana\nDapat mengikat orang yang tak mau rugi",
	["haven_4"] = "“Anak-anak baru itu butuh bantuan kita!”\nkata pendiri kami",

	["shelter_1"] = "PERLINDUNGAN DRIFTER",
	["shelter_2"] = "MOTTO KAMI:\nLAYANG\nKENDARA\nDAN\nLUNCUR",
	["shelter_3"] = "PRO:\nVersatil\nCocok untuk kerja sama\nKOMTRA:\nMembutuhkan skill parkour\nTidak cocok untuk menara pro",
	["shelter_4"] = "“Omong-omong, siapa yang butuh tangga ya? Kita kan lagi di angkasa!”\nkata pendiri kami",

	["circus_1"] = "SIRKUS JOKER",
	["circus_2"] = "MOTTO KAMI:\nTIPU\nBINGUNGKAN\nDAN\nKETAWA",
	["circus_3"] = "PRO:\nDibuat untuk ngerjain\nMantra balik dapat menjadi bermanfaat\nKONTRA:\nMantra mahal\nDapat merusak pertemanan",
	["circus_4"] = "“Ini tangga bercanda kayaknya.”\nkata pendiri kami",

	["base_1"] = "PANGKALAN KEEPER",
	["base_2"] = "MOTTO KAMI:\nGERAK\nPUTAR\nDAN\nATUR",
	["base_3"] = "PRO:\nDapat memulihkan tangga\nDapat menggunakan tangga ulang\nKONTRA:\nMemerlukan skill parkour\nTidak berguna tanpa tangga",
	["base_4"] = "“Berhenti mengacaukan tanggaku!”\nkata pendiri kami",

	["chamber_1"] = "RUANG WICKED",
	["chamber_2"] = "MOTTO KAMI:\nCEGAH\nBLOKIR\nDAN\nHANCUR",
	["chamber_3"] = "PRO:\nDapat menghancurkan tangga\nDapat menghancurkan tangga yang utuh\nKONTRA:\nTerlalu bergantung pada tangga",
	["chamber_4"] = "“Aku ga jahat, cuma ada terlalu banyak tangga.”\nkata pendiri kami",

	["backdoor_1"] = "PINTU BELAKANG HACKER",
	["backdoor_2"] = "MOTTO KAMI:\nRETAS\nGLITCH\nDAN\nRUSAKKAN",
	["backdoor_3"] = "PRO:\nKelas tercepat\nSusah untuk diikuti\nKONTRA:\nTerlalu bergantung pada tangga\nTidak cocok untuk kerja sama",
	["backdoor_4"] = "“Permainan adil? Tidak ada hal seperti itu.”\nkata pendiri kami",

	["hub_1"] = "HUB SPLICER",
	["hub_2"] = "MOTTO KAMI:\nPELINTIR\nSAMBUNG\nDAN\nBELAH",
	["hub_3"] = "PRO:\Versatil\nCocok untuk berkelompok\nKONTRA:\nAgak membingungkan.\nMembutuhkan waktu untuk dipelajari",
	["hub_4"] = "“Jangan pernah jalan lurus untuk terlalu lama.”\nkata pendiri kami",

	["shack_1"] = "GUBUK GREMLIN",
	["shack_2"] = "MOTTO KAMI:\nPUTAR\nKISAR\nDAN\nHIPNOTIS",
	["shack_3"] = "PRO:\nTidak ada\nSerius, Jangan dipakai\nKONTRA:\nSemuanya akan membencimu.\nSEMUANYA.",
	["shack_4"] = "“Mari bermain denganku!”\nkata pendiri kami",

	["mirror_1"] = "CERMIN REAVER",
	["mirror_2"] = "MOTTO KAMI:\nPANTUL\nGANTI\nDAN\nGABUNG",
	["mirror_3"] = "PRO:\nCermin dapat digunakan pemain lain\nKONTRA:\nMekanik gabung dan pisah mungkin membingungkan.",
	["mirror_4"] = "“Cermin hanyalah pintu keluar masuk.”\nkata pendiri kami",

	["grave_1"] = "KUBUR NECROMANCER",
	["grave_2"] = "MOTTO KAMI:\nFOLLOW\nREVIVE\nAND\nBENEFIT",
	["grave_3"] = "PRO:\nBerfungsi dengan baik jika pemain lain mengikuti hantumu.\nMantra membantumu dan pemain lain juga.\nKONTRA:\nKelas paling boros mana.\nRumit dalam mengamati dan mengikuti hantumu.",
	["grave_4"] = "“Kita sebenarnya bukan menghantuimu, Kita hanya ingin bersahabat saja.”\nkata pendiri kami",

	--SHARED
	["leader_pro"] = "Mendaki menara pro dihitung 2 kali lipat",	
	["leader_update"] = "Pembaruan dalam: ",	
	["leader_updating"] = "Memperbarui...",	
	["leader_rank"] = "PERINGKAT",
	["leader_req"] = "PENDAKIAN DIBUTUHKAN",
	["leader_off"] = "Papan peringkat tidak tersedia dalam menara custom.",

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
	["muggle_lead"] = "MUGGLE TERCEPAT",
	["muggle_ranks"] = "PERINGKAT MUGGLE",

	["hacker_lead"] = "HACKER TERAMAN",
	["hacker_ranks"] = "PERINGKAT HACKER",

	["wicked_lead"] = "WICKED TERKASAR",
	["wicked_ranks"] = "PERINGKAT WICKED",

	["keeper_lead"] = "KEEPER TERSIAGA",
	["keeper_ranks"] = "PERINGKT KEEPER",

	["joker_lead"] = "JOKER TERGILA",
	["joker_ranks"] = "PERINGKAT JOKER",

	["drifter_lead"] = "DRIFTER TERPESAT",
	["drifter_ranks"] = "PERINGKAT DRIFTER",

	["patron_lead"] = "PATRON TERHORMAT",
	["patron_ranks"] = "PERINGKAT PATRON",

	["archon_lead"] = "ARCHON TERLINCAH",
	["archon_ranks"] = "PERINGKAT ARCHON",

	["spectre_lead"] = "SPECTRE PALING BERHANTU",
	["spectre_ranks"] = "PERINGKAT SPECTRE",

	["thief_lead"] = "THIEF PALING TERSEMBUNYI",
	["thief_ranks"] = "PERINGKAT THIEF",

	["heretic_lead"] = "HERETIC TERKEJAM",
	["heretic_ranks"] = "PERINGKAT HERETIC",

	["necromancer_lead"] = "NECROMANCER TERBANGKIT",
	["necromancer_ranks"] = "PERINGKAT NECROMANCER",

	["splicer_lead"] = "SPLICER TERPELINTIR",
	["splicer_ranks"] = "PERINGKAT SPLICER",

	["reaver_lead"] = "REAVER TERUBAH",
	["reaver_ranks"] = "PERINGKAT REAVER",

	["gremlin_lead"] = "GREMLIN PALING BERUNTUNG",
	["gremlin_ranks"] = "PERINGKAT GREMLIN",

	["chameleon_lead"] = "CHAMELEON PALING LAJU",
	["chameleon_ranks"] = "PERINGKAT CHAMELEON",

	["dailies"] = "REKOR HARI INI",
	["most_climbs"] = "PENDAKIAN TERBANYAK",
	["most_wins"] = "KEMENANGAN BALAP TERBANYAK", 

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Selamat datang ke Tangga Gila!",
	["tut_big_2"] = "Pertama, belajar bagaimana cara berubah.",
	["tut_big_3"] = "Kamu sekarang adalah seorang patron, patron dapat membuat tangga.",
	["tut_big_4"] = "Semua mantra harus dilakukan dengan cara melompat.",
	["tut_big_5"] = "Keren kan? Sekarang ubahlah menjadi joker. Joker dapat membalik tangga.",
	["tut_big_6"] = "Kamu sekarang adalah seorang joker, gunakan mantra ini untuk membalik tangga.",
	["tut_big_7"] = "Sebagian mantra harus dilakukan pada tangga.",
	["tut_big_8"] = "Sekarang, ubahlah menjadi keeper. Keeper dapat memindah tangga.",
	["tut_big_9"] = "Kamu sekarang adalah seorang keeper, gunakan mantra ini untuk memindah tangga.",
	["tut_big_10"] = "Lompat pada panah yang ditunjukkan untuk memindahkan tangga.",
	["tut_big_11"] = "Kamu akan melihat banyak tangga yang mengganggu dalam permainan ini.",
	["tut_big_12"] = "Kamu sekarang adalah seorang Wicked, gunakan mantra ini untuk menghancurkan tangga tersebut.",
	["tut_big_13"] = "Kamu bisa menghancurkan tangga di atas dengan cara melompat pada bawahnya.",
	["tut_big_14"] = "Sebelum kita mulai, biarkan aku tunjukkan kelas yang premium.",
	["tut_big_15"] = "Kamu sekarang adalah seorang Spectre, Spectre adalah sebuah kelas premium cocok untuk main solo.",
	["tut_big_16"] = "Tujuan kamu - naik ke atas dan ambilkan orbnya. Selamat bermain!",

	["tut_select"] = "Pilih mantra ini.",

	["tut_small_init"] = "Lompat untuk memulai latihan",
	["tut_small_morph"] = "Lompat pada morph.",
	["tut_small_arrow"] = "Lompat pada panah.",
	["tut_small_stairs"] = "Lompat pada tangga.",

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

	["Prompt"] = "Pilih sebuah mantra di bawah untuk belajar cara menggunakannya.",
	["Title1"] = "Mantra dasar",
	["Title2"] = "Mantra pokok yang unik",
	["Title3"] = "Mantra pokok yang dibagi",
	["ManaCost"] = "Biaya mana: %s", 
	["TokenCost"] = "Biaya token: %s", 
	["Special"] = "Syarat khusus: %s",
	["Execution"] = "Perwujudan: %s",
	["Description"] = "Deskripsi: %s",
	["basic"] = "Dasar",
	["ultimate"] = "Pokok",
	["unlock"] = "0 (3 untuk membuka)",
	["none"] = "Tidak ada syarat khusus.",
}

module.gui.basic.jumpdelay = "delay lompat"
module.gui.basic.dancetime = "SAATNYA BERJOGET!"

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

	["noobs"] = "Tutorial hanya buat pemain cupu!",
	["possessed"] = "Heretic yang menyebalkan itu!",
	["hypnotized"] = "Where am I?",
	["new"] = "Peringkat baru dicapai - %s",
	["none1"] = "TUNGGU, APA?!",
	["none2"] = "Apakah permainan ini,",
	["none3"] = "punya mantra?"

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
