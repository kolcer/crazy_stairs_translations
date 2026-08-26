local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "EVET",
	["no"] = "HAYIR",
	["ok"] = "TAMAM",
	["menu"] = "MENÜ",
	["default"] = "VARSAYILAN",
	["validate"] = "DOĞRULA",
	["play"] = "OYNA",
	["skip"] = "ÖĞRETİCİYİ \n ATLA",
	["loading"] = "YÜKLENİYOR, LÜTFEN BEKLE...",
	["mode"] = "%s\nMODU",
	["cd"] = "NİHAİ\nBEKLEME SÜRESİ",
	["complete"] = "TAMAMLANDI",
}

module.gui.switcher = {

	["title"] = "SUNUCU DEĞİŞTİR",

	["public"] = "GENEL SUNUCU",
	["private"] = "ÖZEL SUNUCU",
	["join"] = "KATIL",
	["friends"] = "ÇEVRİMİÇİ ARKADAŞLAR",
	["refresh"] = "yenileniyor...",
	["fail"] = "YENİLENİRKEN HATA OLUŞTU!",

}

module.gui.serversettings = {

	["title"] = "SAHİP AYARLARI",

	["Moderation"] = "MODERASYON",
	["rules"] = "Senin sunucun, senin kuralların.",
	["temp"] = "Tüm susturmalar ve yasaklamalar geçicidir",
	["kick"] = "AT",
	["ban"] = "YASAKLA",
	["mute"] = "SUSTUR",

	["Drones"] = "DRONE AYARLARI",
	["DronesReadOnly"] = "DRONE AYARLARI (sadece okuma)",
	["DroneEnabled"] = "Dronelar, etkinleştirilmiş",
	["DroneFix"] = "Dronelar, merdivenleri onarır",
	["DroneRemove"] = "Dronelar, lanetli kavşakları kaldırır",
	["DroneUnCurse"] = "Dronelar, lanetli merdivenleri onarır",
	["DroneMove"] = "Dronelar, varsayılan modda merdivenleri hareket ettirir",
	["DroneSpin"] = "Dronelar, varsayılan modda merdivenleri döndürür",
	["DroneSpeed"] = "Droneların seyahat hızı (seviye/saniye)",
	["DroneDelay"] = "Droneların dönüş süresi (saniye)",
	["DroneMax"] = "Maksimum merdiven miktarı (dronelar yalnızca bu sınırın üstündekileri yok edecek)",
	["DroneMin"] = "Minimum merdiven sayısı (dronelar yalnızca bu sınırın altında yaratacak)",
	["DroneBlock"] = "Her boş kavşak karşılaşmasında lanetli kavşak şansı (yüzde)",
	["DroneCurse"] = "Lanetli merdivenlerin yaratılma şansı ve normal merdivenlerle karşılaşma oranı (yüzde)",

	["Tower"] = "KULE AYARLARI",
	["TowerReadOnly"] = "KULE AYARLARI (sadece okuma)",
	["InfMode"] = "Sonsuz Mod (yarış veya rejenerasyon sırasında değiştirilemez)",
	["CasualPlayers"] = "Sıradan oyuncuların büyü yapmasına izin verildi",
	["Regeneration"] = "Wicked'ın Tahribat'ından sonra Otomatik Merdiven rejenerasyonu (sonsuz modda çalışmayacaktır)",
	["EvenLevels"] = "Çift seviyeler kısıtlandı",
	["OrbMoves"] = "Oyunsonu küresi, konum değiştirir",
	["InfRegeneration"] = "Yeni sunucuda otomatik rejenerasyon, kule seviyeleri, sonsuz yarıştn sonra değişiyor",
	["TowerLevels"] = "Tower Seviyeleri (veya sonsuz modda aktif seviyeler). Bir yarış veya rejenerasyon sırasında değiştirilemez",
	["RaceDuration"] = "Maksimum Yarış Süresi. Mevcut yarışı etkilemeyecektir. (saniye)",
	["InfStart"] = "Başlangıç ??Sonsuz modu tur aralığı (her turda 2 seviye oluşturulur) (saniye)",
	["InfReduction"] = "Sonsuz mod aralık azaltma (her tur şu kadar daha kısadır) (saniye)",
	["InfMin"] = "Sonsuz mod minimum aralık süresi (saniye)",
	["Cooldown"] = "Etkinlik ve Teçhizat bekleme süresi (saniye))",

}

module.gui.shop = {

	["title"] = "CRAZY STAIRS DÜKKANI",

	["chameleon"] = "Chameleon'lar, tırmanma sırasında birleşim değiştirebilir.",
	["spectre"] = "Spectre, tek kişilik oyun için en iyi olan ışınlanma tabanlı bir birleşimdir.",
	["mana"] = "Mana depolama kapasitenizi 10 puan artırın.",

	["3tokens"] = "Bir büyünün kilidini açın veya 3'e kadar nihai büyü yapın.",
	["30tokens"] = "On büyünün kilidini açın veya 30'e kadar nihai büyü yapın.",
	["300tokens"] = "Tüm büyülerin kilidini açmaya yeter ve 93 jeton kaldır.",

	["3TOKENS"] = "3 Jeton (R$%d)",
	["30TOKENS"] = "30 Jeton (R$%d)",
	["300TOKENS"] = "300 Jeton (R$%d)",
	["SPECTRE PASS"] = "Spectre Gamepass (R$%d)",
	["MANA PASS"] = "20 Mana Kapasitesi Gamepass (R$%d)",
	["CHAMELEON PASS"] = "Chameleon Gamepass (R$%d)",

}

module.gui.spellbar = {

	["share"] = "MANA\nPAYLAŞ",
	["nocasual"] = "SADECE YARIŞÇILAR BÜYÜ YAPABİLİR",

} 

module.gui.stats = {

	["total"] = "Toplam tırmanma: %d / Kazanmalar: %d",
	["class"] = "%s tırmanmaları: %d",
	["best"] = "En iyi %s zamanı: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "ELE GEÇİRİLDİN! (Mana bularak kurtul)",
	["released"] = "KURTULDUN",
	["timesup"] = "zaman doldu...",

}


module.gui.activatecham = {

	["title"] = "CHAMELEON'U ETKİNLEŞTİR",
	["body"] = "Chameleon modunu etkinleştirmek istermisin?\nTüm tırmanış sırasında açık kalacak."

}

module.gui.caceltimed = {

	["title"] = "ZAMANLI BÜYÜYÜ İPTAL ET",
	["body"] = "Zamanlı büyüyü iptal etmek için eminmisin? Jetonlar iade edilmeyecektir."

}

module.gui.climbtimer = {

	["prompt"] = "Merdivenlere\nÇık!",
	["floor"] = "Kat",
	["last"] = "Son zaman",

}

module.gui.codes = {

	["title"] = "KODU GİR",
	["body"] = "Kodunu buraya gir:",
	["prompt"] = "(kod)",
	["button"] = "DOĞRULA",

}

module.gui.gauges = {

	["prompt"] = "Devam etmek için zıpla, iptal etmek için tekrar tıkla.",

	["found"] = "%d merdiven bulundu (%.1f%% fill)",
	["special"] = "%d tanesi özel (%.1f%%)",
	["affected"] = "%d merdiven etkilenecek (%.1f%%)",
	["cursed"] = "%d lanetli kavşak bulundu (%.1f%%)",
	["fill"] = "%d tane merdiven oluşacak (%.1f%%)",
	["purge"] = "%d obje yok olacak (%.1f%%)",
	["normal"] = "%d zaten normal (%.1f%%)",
	["restore"] = "%d merdiven onarılacak (%.1f%%)",
	["bypass1"] = "%d yolda lanet var (%.1f%%)",
	["bypass2"] = "%d baypass zaten var (%.1f%%)",
	["bypass3"] = "%d baypass oluşacak (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "MÜZİK KUTUSU",

	["master"] = "ANA SES DÜZEYİ",
	["default"] = "(ana ses düzeyi kullanılıyor)",
	["climb"] = "TIRMANMA MÜZİĞİ",
	["endgame"] = "OYUNSONU MÜZİĞİ",
	["failed"] = "[yüklenirken hata oluştu]",

}

module.gui.results = {

	["title"] = "YARIŞ SONUÇLARI",

	["place"] = "YERLEŞTİR",
	["name"] = "İSİM",
	["level"] = "MAKSİMUM SEVİYE",
	["time"] = "ZAMAN",
	["rank"] = "RÜTBE",
	["not"] = "N/A",
	[1] = "KAZANAN",
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

	["gather"] = "Sen yarışta\ndeğilsin",
	["race"] = "YARIŞ\nBİTTİ",
	["inf"] = "Elenildi",
	["off"] = "YARIŞ\nZAMANLAYICISI",
	["wait"] = "yarış ... içinde",
	["on"] = "Rütbe",

}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Dronelar %s Modunda",
	["refill"] = "Mana fazla yükleme (%s)",
	["union"] = "Hayalet kavuşması (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "Merdiven Oluştur",
	["restore"] = "Küreyi Çağır", 
	["split"] = "Zıt Tarafına Tekrar Yap",
	["shrinkabove"] = "Üstteki Merdiveni İncelt",
	["link"] = "Bağ Oluştur",
	["portal"] = "Portal Oluştur",

	["summoner"] = "Çıkarıcı",
	["patronevent"] = "Merdivenler Fazla Yükleme",
	["patronaltevent"] = "İnceltme",

	--JOKER 
	["flip"] = "Merdivenleri Çevir",
	["flipabove"] = "Üstteki Merdiveni Çevir",
	["fake"] = "Sahte Merdiven Oluştur",
	["invisible"] = "Görünmez Merdiven Oluştur",
	["disco"] = "Disko Merdivenler",
	["trap"] = "Tuzak Oluştur",

	["flipper"] = "Çevirici",
	["jokerevent"] = "Pelerin",
	["jokeraltevent"] = "Hepsini Çevir",

	--WICKED
	["destroy"] = "Merdivenleri Yok Et",
	["destroyabove"] = "Üstteki Merdiveni Yok Et",
	["bend"] = "Merdivenleri Yukarı Eğ",
	["damage"] = "Üstteki Merdivene Hasar Ver",
	["flatten"] = "Zıt Merdiveni Aşağıya Doğru Eğ",
	["wall"] = "Duvar Oluştur" ,

	["bender"] = "Eğici",
	["wickedevent"] = "Yıkım",
	["wickedaltevent"] = "Tahribat",

	--KEEPER
	["move"] = "Merdivenleri Hareket Ettir",
	["rotate"] = "Merdivenleri Döndür",
	["moveup"] = "Merdivenleri Yukarı Doğru Hareket Ettir",
	["movedown"] = "Merdivenleri Onar",
	["moverandom"] = "Üsttekini Rastgele Hareket Ettir",
	["rig"] = "Rastgele Haraket Ettir",

	["ascension"] = "Yukarı hareket",
	["keeperevent"] = "Karışım",
	["keeperaltevent"] = "Onarım",

	--SPECTRE
	["phantom"] = "Hayali Merdiven Oluştur",
	["ghost"] = "Üstteki Merdiveni Hayaletleştir",
	["shadow"] = "Merdivenleri Hayaletsizleştir",
	["horizontal"] = "Yatay Işınlanma",
	["random"] = "Rastgele Işınlanma",
	["vertical"] = "Dikey Işınlanma",

	["traveller"] = "Seyehat",
	["spectreevent"] = "Hayaletli Karışım",
	["spectrealtevent"] = "Hayalet Alemi",

	--HACKER
	["dash"] = "Atıl",
	["blink"] = "Pırılda",
	["swap"] = "Değiş",
	["slide"] = "Yürüyen Merdiven",
	["slideup"] = "Merdivenin İçine Hackle",
	["glitch"] = "Merdivenleri Arızalandır",

	["hack"] = "Hız Hilesi",
	["hackerevent"] = "Yürüyen Merdiven Etkinliği",
	["hackeraltevent"] = "İhlal",

	--THIEF
	["steal"] = "Merdiven Çal",
	["stealabove"] = "Üstteki Merdiveni Çal",
	["place"] = "Merdiven Yerleştir",
	["uppass"] = "Spiral Merdiven",
	["sidepass"] = "Baypass Oluştur",
	["drop"] = "Hendek Merdivenleri",

	["heist"] = "Soygun",
	["thiefevent"] = "Düz Kat",
	["thiefaltevent"] = "Mega Baypass",

	--ARCHON
	["splitup"] = "Yukarı Doğru Geçit Oluştur",
	["splitrotate"] = "Döndürülmüş Geçit Oluştur",
	["splitside"] = "Düz Geçit Oluştur",
	["splitrandom"] = "Rastgele Geçit Oluştur",
	["cancelsplit"] = "Geçidi Yok Et",
	["splitforward"] = "Platform Geçidi Oluştur",

	["splitter"] = "Portalmanya",
	["archonevent"] = "MerdivenGeçit-1",
	["archonaltevent"] = "Bölüm",

	--DRIFTER
	["indrift"] = "Sörf",
	["outdrift"] = "Rastgele Kayış",
	["updrift"] = "Asansör",
	["diagdrift"] = "Çapraz Sörf",
	["spin"] = "Merdiveni Çevir",
	["driftabove"] = "Üstteki Merdiveni Kaldır",

	["riser"] = "Yükseliş",
	["drifterevent"] = "Kaydırma",
	["drifteraltevent"] = "Kaldırma",

	--HERETIC
	["createcursed"] = "Lanetli Merdiven Oluştur",
	["curse"] = "Merdiveni Lanetle",
	["curseabove"] = "Üstteki Merdiveni Lanetle",
	["curseinter"] = "Kırpışma",
	["autodown"] = "Bölünme Kaldır",
	["autoup"] = "Bölünme İndir",

	["malediction"] = "Lanetleme",
	["hereticevent"] = "Bölünme Etkinliği",
	["hereticaltevent"] = "Lanetleşme",

	--SPLICER
	["twistup"] = "Merdiveni Yukarı Doğru Birleştir",
	["twistside"] = "Paralel Merdivenleri Birleştir",
	["twistrotate"] = "Çapraz Merdivenleri Birleştir",
	["canceltwist"] = "Birleştirilmiş Merdivenleri Onar",
	["split2"] = "Meriveni kes",
	["splitalt"] = "Merdiveni İleri Doğru kes",

	["twister"] = "Bükücü",
	["splicerevent"] = "Birleşim",
	["spliceraltevent"] = "Ayrım",
	
	--necro
	["createdual"] = "Çift Merdiven Oluştur",
	["copyplatform"] = "Hayaletin Platformunu Kopyala",
	["soulbridge"] = "Ruh Köprüsü Oluştur",
	["undeadabove"] = "Üstteki Merdivenin Ruhunu Yok Et",
	["revival"] = "Yeniden Canlanma Noktası",
	["regen"] = "Mana Yenile",

	["duality"] = "İkilik",
	["necromancerevent"] = "Diriliş",
	["necromanceraltevent"] = "Ruh Hasadı",
	
	--reaver
	["createmirrored"] = "Aynalı Merdiven Oluştur",
	["bigmirror"] = "Dev Ayna",
	["smallmirror"] = "küçük Ayna",
	["outermirror"] = "Dış Ayna",
	["merge"] = "Reaver Birleşimi",
	["oneway"] = "Tek-Yön Merdivenler",

	["reflection"] = "Refleks",
	["reaverevent"] = "Çakışan Yollar",
	["reaveraltevent"] = "Konjonktür",
	
	
	--gremlin
	["tram"] = "Tram Merdiven Oluştur",
	["screwup"] = "Yukarı Tirbuşon",
	["revolve"] = "Döner Merdivenler",
	["trapstairs"] = "Tuzak Kapısı Merdiven",
	["screwdown"] = "Aşağı Tirbuşon",
	["spinplatform"] = "Döner Platform",

	["tramway"] = "Tramvay",
	["gremlinevent"] = "Dönme",
	["gremlinaltevent"] = "Kilitlenme",

	--CHAMELEON
	["ditch"] = "Çakışan Merdivenler",
	["warp"] = "Çözgü Merdiveni",
	["chamdown"] = "Merdiveni Aşağı Döğru Haraket ettir",
	["chamdraw"] = "Aşağı Çekme Köprü",
	["chamswap"] = "Copy Ghost (visual)",
	["chamdrawabove"] = "Üsttekini Çekme Köprü Yap",

	--MISC (compatibility)
	["reg"] = "Merdivenler Rejenerasyonda",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff
local union = "Bu zamanlı hayalet kavuşması büyüsü. Hayalet Kavuşmasında, engelleyen merdivenlerden geçebilir ve hayaletli Merdivenlerin üzerinde yürüyebilirsiniz, parkur, ve sahte merdivenler. Özel merdivenler seni etkilemeyecek, ve rigler tetiklenmeyecek. Bu arada, bu modda büyü yapamazsın."
local overload = "Bu fazla yükleme büyüsü. Bir dakika boyunca her 6 saniyede bir Mana alırsın (toplam 10 Mana). Aynı anda yalnızca bir fazla yükleme etkin olabilir."
local timed = "Bu bir zamanlı büyü. "  -- do not remove space
local rig = "Bu bir Rig büyüsü. Bütün normal merdivenleri Rig'li yapacak, teker teker, Bununla birlikte " -- do not remove space
local event = "Bu bir etkinlik büyüsü. Bütün normal merdivenleri etkileyecek ve " -- do not remove space
local fill = "Bu bir doldurma büyüsü. Her boş lanetlenmemiş kavşağa rastgele bir yönde merdiven oluşturacak. " -- do not remove spaces
local mode = "Bu bir drone büyüsü. Drone modunu %s yapacak. Bu modda dronelar rastgele %s büyüsü yapacak yada %s normal merdivenlere. Bunun yerine özel merdivenler onarılacak. Limitler dışında, Dronelar sırasıyla yaratacak ve yok edecek."
local timedExtra = "  %s Rütbesine ulaş ve büyünün süresini 90s yap. Bu büyüyü yapmak ayrıca en az %s Rütbeli tüm %s'lerin Manasını yeniden dolduracaktır." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "Bu büyü, seçilen yönde merdiven oluşturmanıza olanak tanır. Eğer yolda çakışan merdivener varsa, o merdiven yok olacaktır.",
	["restore"] = "Bu büyü, en üst seviyede iken küreyi çağırır. Maliyeti 2 Manaya düşürmek için DEFENDER rütbesine ulaşın. Kürenin size ulaşma hızını iki katına çıkarmak için SAVIOUR rütbesine ulaşın.",
	["split"] = "Bu büyü, merdivenlerin altında ters yönde yeniden yaratır. Yeniden yaratılan merdivenler, orijinal merdiven türünden bağımsız olarak normal olacak.",
	["shrinkabove"] = "Bu büyü, üsttünüzde bulunan merdiveni inceltir ve etrafından yürümenize olanak tanır.",
	["link"] = "Bu büyü, platformlar arasında 60 saniye boyunca bir enerji köprüsü oluşturur. Eğer çakışan merdivenler varsa, bağ oluşturulamayacaktır. Süreyi 120 saniyeye uzatmak için CREATOR rütbesine ulaşın.",
	["portal"] = "Bu büyü, 60 saniye boyunca tüm oyuncuları bir platform yukarı ışınlayacak bir portal yaratır. Süreyi 120 saniyeye uzatmak için PROTECTOR rütbesine ulaşın.",

	["summoner"] = timed ..  "Bir dakika boyunca istediğiniz kadar merdiven oluşturmanıza olanak tanır. Merdiven oluşturmak için oklara zıplamaya devam edin." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."Patron Rig'i, Tetiklendiğinde, oyuncu 1 Mana kazanır. Eğer oyuncunun maksimum sayıda Mana'sı varsa Rig tetiklenmeyecek. Tetiklendikten sonra merdiven normal olacak.",
	["patronevent"] = fill ..  "oluşacak merdivenler normal olacak.",
	["patronaltevent"] = event .. "incelticek.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Shrink Spell"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Bu büyü, merdivenleri ters çevirir, yani üst alt olacak ve tam tersi. Bu tür merdivenleri ters çevirebilirsiniz.",
	["flipabove"] = "Bu büyü, üsttündeki merdivenleri ters çevirir.",
	["fake"] = "Bu büyü, seçilen yönde sahte merdiven oluşturmanızı sağlar. Eğer yönde çakışan merdivenler varsa, çakışan merdiven yok olacaktır. Merdivenlerden çıkmaya çalışan herhangi bir oyuncu (sen dahil) düşecektir, ama Hayalet birleşmesinde olanlar, TRICKSTER ve IT rütbesine ulaşanlar düşmeyecektir.",
	["invisible"] =  "Bu büyü, görünmez merdivenler yaratır. Bu çakışan merdivenleri yok etmeyecektir. JESTER rütbesine ulaşanlar bu merdivenleri görebilecek ve merdivenleri göstermek için opsiyonu olacaktır.",
	["disco"] = "Bu büyü, normal merdivenleri disco moduna çevirecektir. Herhangi oyuncu (sen dahil) durup 5 saniye boyunca dans etmeye başlayacaktır (genellikle 2 kere). COMIC ve üzeri rütbeler disko merdivenlerine karşı etkilenmeyecektir.",
	["trap"] = "Bu büyü, platformu 60 saniyeliğine tuzak kapısına çevirir. Herhangi oyuncu (sen dahil) tuzakta yürüyen aşağıdaki platforma düşecek. JOKESTER rütbesine ulaş ve tuzakları fark et. TRICKSTER rankına ulaş ve tuzaklardan etkilenme.",

	["flipper"] = timed ..  "Bir dakika boyunca istediğiniz kadar merdiven çevirme büyüsü yapmanıza olanak tanır. Her zaman merdivenlerin üstünde bulunanlar ters çevrilecektir, eğer bulunursa. Aksi takdirde, alt merdivenler bunun yerine ters çevrilecektir."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "Joker Rig'i. Merdivenler, bir kez tetiklendiğinde otomatik olarak döner.",
	["jokerevent"] = event .. "saklanacak yani, görünmez olacak.",
	["jokeraltevent"] = event .. "çevirecek.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Invisible Spell"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Bu büyü merdivenleri yok edecektir. Diğer büyülere benzemez, bütün merdivenlerde yapılabilir. VILE rütbesine ulaş ve bu büyüyü bedava yap. VICIOUS rütbesine ulaş ve her özel merdiven yok ettiğinde 1 Mana kazan. ANNIHILATOR Rütbesine ulaş ve lanetli merdivenleri yok et.",
	["destroyabove"] = "Bu büyü üsttündeki merdivenleri yok edecektir. Diğer büyülere benzemez, bütün merdivenlerde yapılabilir. VILE rütbesine ulaş ve bu büyüyü bedava yap. VICIOUS rütbesine ulaş ve her özel merdiven yok ettiğinde 1 Mana kazan. ANNIHILATOR Rütbesine ulaş ve lanetli merdivenleri yok et",
	["bend"] = "Bu büyü merdivenleri yukarı doğru büker. Bunu yukarıdaki platforma erişmek için kullanın.",
	["damage"] = "Bu büyü, basamakların çoğunu kaldırarak üstteki merdivenleri bir parkura dönüştürür. Denemeden önce, zıplama sürenizin olduğunu hatırlayın. DESTROYER rütbesine ulaş ve bu merdivenlerin üzerinden sanki normal merdivenmiş gibi çık.",
	["flatten"] = "Bu büyü zıt merdivenleri aşağı doğru büküyor. Bunu zıt taraftaki platforma ulaşmak için kullan.",
	["wall"] = "Bu büyü platformda enerji duvarı oluşturur ve 60 saniye boyunca karşı platforma bir bağlantı sağlar. Sadece Wicked'lar ve Hayalet kavuşmasındakiler duvarın içinden geçebilir ve bağın üsttünden yürüyebilir.",

	["bender"] = timed .. "Bu size bir dakika boyunca merdivenleri yukarı doğru eğmeyi sağlar. Gereksinimler karşılanırsa hem alt hem de üst merdivenler aynı anda bükülecektir."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "Wicked Rig'i. Bu Rig tetiklendiğinde merdiven yok olacaktır. Devil rütbesine ulaş ve bu Rig'leri tetiklememek için opsiyon kazan.",
	["wickedevent"] = event .. "normal merdivenleri yok edecektir. Rejenerasyon tetiklenmeyecek.",
	["wickedaltevent"] = "Bu etkinlik büyüsüdür. Oyundaki bütün merdivenleri ve lanetli kavşakları yok edecektir. Hiçbir istisna yok. Rejenerasyon tetiklenecektir.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","Bend Spell"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Bu büyü merdivenleri yatay şekilde haraket ettirir, yolda bulunan merdivenleri yok eder. Büyüyü yaptıktan sonra merdivende oklar ortaya çıkar, hareket yönünü seçmene olanak tanır. Merdivenler oyun dışına çıkarılamaz. CONTROLLER rütbesine ulaş ve lanetli merdivenler dışındaki tüm merdivenleri haraket ettir.",
	["rotate"] = "Bu büyü merdivenleri yatay bir şekilde döndürecek, yolda bulunan merdivenleri yok eder. Büyüyü yaptıktan sonra merdivende oklar ortaya çıkar, hareket yönünü seçmene olanak tanır. Merdivenler oyun dışına çıkarılamaz. CONTROLLER rütbesine ulaş ve lanetli merdivenler dışındaki tüm merdivenleri haraket ettir.",
	["moveup"] = "Bu büyü merdivenleri yukarı doğru haraket ettirir, yolda bulunan merdivenleri yok eder. Büyüyü yaptıktan sonra merdivende oklar ortaya çıkar, hareket yönünü seçmene olanak tanır. Merdivenler en üst katta iken hareket ettiremez. CONTROLLER rütbesine ulaş ve lanetli merdivenler dışındaki tüm merdivenleri haraket ettir.",
	["movedown"] = "Bu büyü özel merdivenleri onarır. Eğer merdivenler normal ise, büyü yapılamaz. CAPTAIN rütbesine ulaş ve bu büyüyü bedava yap. ADMIRAL rütbesine ulaş ve lanetli kavşakları ve lanetli merdivenleri onar.",
	["rig"] = "Bu büyü merdivenleri rastgele bir yönde hareket ettirir, yolda bulunan merdivenleri yok eder. OPERATOR rütbesine ulaş ve merdivenlerin aşağı gitmesini engelle. CONTROLLER rütbesine ulaş ve lanetli merdivenler dışındaki tüm merdivenleri haraket ettir.",
	["moverandom"] = "Bu büyü üsttündeki merdivenleri rastgele bir yönde hareket ettirir, yolda bulunan merdivenleri yok eder. OPERATOR rütbesine ulaş ve merdivenlerin aşağı gitmesini engelle. CONTROLLER rütbesine ulaş ve lanetli merdivenler dışındaki tüm merdivenleri haraket ettir.",

	["ascension"] = timed .. "Bir dakika boyunca istediğiniz kadar yukarıya hareket ettir büyüsü yapmanıza olanak tanır."  .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "Keeper Rig'i. Merdivenler tetiklendiğinde rastgele hareket ettirir. OPERATOR rütbesine ulaş ve tetiklediğin Rig'ler aslağa aşağı gitmez. SENTINEL rütbesine ulaş ve bu Rig'lere tetiklenmemek için bir opsiyon kazan.",
	["keeperevent"] = event .. "rastgele hareket ettirecek. Çalıştırmadan önce yumuşak veya zorunlu modu seçebilirsiniz. Yumuşak modda hareket eden merdivenler, merdiven olmayan kavşaklara doğru hareket eder yani hiçbir merdiven yok olmaz. Zorunlu modda merdivenler yolunda bulunan merdivenler yok olucaktır.",
	["keeperaltevent"] = "Bu bir etkinlik büyüsüdür. Bütün merdivenleri onarır, lanetli olanlar dahil.",
	["keepermode"] =  string.format(mode,"Keeper","Keeper Rig","Random Move Spell"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Bu büyü seçilen yönde hayali merdiven oluşmasını sağlar. Çakışan merdiven yok edilir. Hayali merdiven hızlıca solar, tamamen ortadan kaybolur.",
	["ghost"] = "Bu büyü üstteki merdivenleri hayaletleştirir. Bu merdiven içinden geçebilirsin, ama yürüyemezsin. AETHER rütbesine ulaş ve bu tür merdivenlerin üzerinden yürü. ",
	["shadow"] = "Bu büyü merdivenleri hayaletleştirir yada hayalet olmaktan çıkarır. AETHER rütbesine ulaş ve bu tür merdivenlerin üzerinden yürü. PHANTOM rütbesine ulaş ve bu büyüyü bedava yap.",
	["horizontal"] = "Bu büyü seçilen yönde yatay ışınlanmanı sağlar. lanetli merdivenler dışındaki merdivenlerin içinden ışınlanabilirsin.",
	["random"] = "Bu büyü bulunduğun kattaki rastgele bir platforma ışınlar.",
	["vertical"] = "Bu büyü senin bulıunduğun platformun üstündeki platforma ışınlar.",

	["traveller"] = timed ..  "Bu seni yatay ışınlanma büyüsünü yapmanı sağlar, bir dakika boyunca istediğin kadar."  .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "Spectre Rig'i. tetiklendiğinde, %50 ihtimalle hayaletleşir. Vision rütbesine ulaş ve bu merdivenlere tetiklenmeden yürü.",
	["spectreevent"] = event .. "merdivenleri Hayaletli Hareketler yaptırır. Karıştır büyüsü ile aynı, fakat bu büyüde hareket eden merdivenler hayaletlidir.",
	["spectrealtevent"] = "Bu bir etkinlik büyüsü. Bütün normal merdivenleri hayaletleştirir.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Soft Ghosted Random Move Spell"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Bu büyü seçilen yönde ışınlanmanızı sağlar. Bloklayan merdivenlerden geçemezsiniz. CRACKER rütbesine ulaş ve bu büyüyü %50 daha hızlı yap.",
	["blink"] = "Bu büyü üstteki lanetli olmayan herhangi merdivenin etrafından ışınlanmanızı sağlar. Eğer üstteki merdiven seni bloklamayacak şekilde ise, bu büyü çalışmaz. EXPLOITER rütbesine ulaş ve bu büyüyü %50 daha hızlı yap.",
	["swap"] = "Bu büyü senin hayaletinle yer değiştirmeni sağlar. Diğer büyülere benzemez, heryerde yapılabilir.",
	["slide"] = "Bu büyü merdivenleri yürüyen merdiven yapar. Yürüyen merdivenin yönünü seçebilirsin. SCRIPTER rütbesine ulaş ve yürüyen merdivenlerden etkilenmemek için bir opsiyonun olsun.",
	["slideup"] = "Bu büyü seçilen yöndeki merdivenin içine hackler. Bu büyünün çalışması için seçilen yönde, yönü karşiya doğru olan bir berdiven olması lazım. İçine hacklenecek merdivenim lanetsiz olmaı lazım.",
	["glitch"] = "Bu büyü merdiveni arızalandırır, merdiveni ve seni bulunduğunuz kattaki rastgele bir yere ışınlar. ZERO rütbesine ulaş ve bu büyüyü en üst katta kullandığında merdiveni direkt kürenin olduğu yere ışınlan.",

	["hack"] = timed .. "bir dakika boyunca yürüyen merdiven büyüsü yapmanı sağlar. Eğer üsttünde lanetsiz merdiven varsa yıkılır." .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "Hacker Rig'i. Merdivenler tetiklendiğinde merdivenler arızalanır. REAPER rütbesine ulaş ve bu Rig'lere tetiklenmemek için bir opsiyon kazan.",
	["hackerevent"] = event .. "yürüyen merdiven yapacak.",
	["hackeraltevent"] = event ..  " Yönü yukarıya olan yürüyen merdiven yapacak.",
	["hackermode"] =  string.format(mode,"Hacker","Hacker Rig","Random Escalator spell"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Bu büyü merdivenleri çalmanızı sağlar. Diğer Thief büyülerini yapmak için merdiven çalmanız lazım. HIJACKER rütbesine ulaş ve lanetsiz tüm merdivenleri çalabil. OUTLAW rütbesine ulaş ve 2 merdiven çalma kapasiten olsun.",
	["stealabove"] = "Bu büyü üstteki merdiveni çalmanızı sağlar. Diğer Thief büyülerini yapmak için merdiven çalmanız lazım. HIJACKER rütbesine ulaş ve lanetsiz tüm merdivenleri çalabil. OUTLAW rütbesine ulaş ve 2 merdiven çalma kapasiten olsun.",
	["place"] = "Bu büyü seçilen yönde çaldığınız merivenleri geri yerleştirmemnizi sağlar. Bu arada, bu büyü merdivenleri yok edemez, yani sadece boş kavşaklara merdiven koyabilirsiniz.",
	["uppass"] = "Bu büyü sarmal merdivenler koymanızı sağlar. Sadece dışa doğru olan platformlarda kullanılabilir ve bir dakika durur. BANDIT rütbesine ulaş ve bu büyünün iki dakika kalmasını sağla.",
	["sidepass"] = "Bu büyü çalınan merdivenleri baypass şeklinde koyar. bir dakika boyunca seçilen yönde durur. ROBBER rütbesine ulaş ve koyduğun baypassların iki dakika kalmasını sağlar.",
	["drop"] = "Bu büyü hendek merdivenler koyar. Bu büyüyü yapmak için. Hendek merdivenler yatay merdivenlerdir.",

	["heist"] = timed .. "Bu büyü bir dakika boyunca merdiven yerleştirmenizi sağlar. Normal merdiven yerleştirme büyüsüne benzemez, Çakışan merdivenleri yıkar ve istediğin gibi merdiven koyabilirsin. Koyduğun merdivenler bir süre sonra otomatik çalınacaktır." .. string.format(timedExtra,RankData.THIEF[7].name,"Thieves",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "Thief Rig'i. Merdivenler tetiklendiğinde, merdiveni tetikleyen kişiden bir Mana çalarsın ve sen çaldığın Mana'yı kullanabilirsin. Aligment değiştirdiğinde Mana kazanamazsın.",
	["thiefevent"] = event .. "merdivenleri Hendek hale getirir.",
	["thiefaltevent"] = "Bu bir etkinlik büyüsü. Tüm kuzey ve güney yönlerde baypasslar oluşturur. Kavşak lanetli ise baypass oluşmayacak.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Steal or Place spell"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitside"] = "Bu büyü doğrusal merdivenlere geçit oluşturur. Eğer merdiven yoksa, merdiven oluşturulur. PRODIGY rütbesine ulaş ve zaten geçit bulunan merdivenlere yeni geçit oluştur. ILLUMINATI rütbesine ulaş ve düz geçitlerden etkilenme.",
	["splitrotate"] = "Bu büyü çaprazınde bulunan merdivenlere geçit oluşturur. Eğer merdiven yoksa, merdiven oluşturulur. PRODIGY rütbesine ulaş ve zaten geçit bulunan merdivenlere yeni geçit oluştur. ILLUMINATI rütbesine ulaş ve düz geçitlerden etkilenme.",
	["splitup"] = "Bu büyü üstteki merdivene geçit oluşturur. Eğer merdiven yoksa, merdiven oluşturulur. PRODIGY rütbesine ulaş ve zaten geçit bulunan merdivenlere yeni geçit oluştur. ILLUMINATI rütbesine ulaş ve düz geçitlerden etkilenme.",
	["cancelsplit"] = "Bu büyü geçitleri yok eder. DISCIPLE platform Geçitlerini yok edebil. SCHOLAR rütbesine ulaş ve bu büyüyü ücretsiz yap.",
	["splitrandom"] = "Bu büyü bulunduğun kattaki bir merdivene geçit oluşturur. Eğer merdiven yoksa, merdiven oluşturulur. PRODIGY rütbesine ulaş ve zaten geçit bulunan merdivenlere yeni geçit oluştur. ILLUMINATI rütbesine ulaş ve düz geçitlerden etkilenme.",
	["splitforward"] = "Bu büyü seçilen yöndeki platforma geçit oluşturur. DISCIPLE rütbesine ulaş ve bu geçitler yok et. Merdivenler bu bağı engelleyemez. ILLUMINATI rütbesine ulaş ve düz geçitlerden etkilenme.",

	["splitter"] = timed .. "bir dakika boyunca istediğiniz gibi platform geçitleri oluşturmanızı sağlar." .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name), 
	["archonrigevent"] = rig .. "Archon Rig'i. Merdivenler tetiklendiğinde oyuncuları yürüdükleri yöne doğru ışınlar, crossing any blocking un-cursed stairs. After triggering, stairs will become normal again.",
	["archonevent"] = event .. "rastgele geçitler oluşturacak.",
	["archonaltevent"] = event .. "merdivenlere yukarı doğru geçitler oluşturur.",
	["archonmode"] = string.format(mode,"Archon","Archon Rig","Random Gate spell"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["indrift"] = "Bu büyü sörf tahtası oluşturur, seçilen yöndeki platforma kayar. Çakışan merdivenler varsa sörf yapılamaz.",
	["updrift"] = "Bu büyü platformu bir asansöre çevirir ve asansör üstteki platforma çıkar. Platformlar bir zaman çizelgesinden sonra onarılır. VAGABOND rütbesine ulaş ve hızı arttır. TRAVELLER rütbesine ulaş ve asansörün bir kat daha yukarı çıkamsını sağla (3 kat). STRIDER rütbesine ulaş ve asansörün bir kat daha çıkmasını sağla (4 kat).",
	["diagdrift"] = "Bu büyünün iki özelliği var. 1: Kulenin içinde çapraz bir şekilde yapıldığında seçilen yönde gidip gelen bir platform oluşturur. Asansördede olduğu gibi 7 turdan sonra onarılır. 2: Büyü kulenin dışına doğru yapıldığında, Kulenin çevresini bir tam tur dolanır.",
	["spin"] = "Bu büyü merdivenleri 180 derece çevirir. NOMAD rütbesine ulaş ve kaymış merdivenleri çevirebil.",
	["outdrift"] = "Bu büyü merdivenleri bulunduğun kattaki rastgele bir boş kavşağa kaydırır. NOMAD rütbesine ulaş ve kaymış merdivenleri tekrar kaydırabil.",
	["driftabove"] = "Bu büyü üsttindeki merdivenin alt kısmını hafif kaldırır, yani altından geçebilir ve üstünden çıkabilirsin.",

	["riser"] = timed .. "bir dakika boyunca asansör büyüsü yapmanı sağlar. Bazı rütbeler ile asansör büyülerini yükselt." .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name), 
	["drifterrigevent"] = rig .. "Drifter Rig'i. merdivenler tetiklendiğinde merdivenler rastgele bir yönde 180 derece döner. VOYAGER rütbesine ulaş ve bu Rig'lere bağışıklık kazan.",
	["drifterevent"] = event .. "merdivenleri rastgele kaydırır.",
	["drifteraltevent"] = event .. "merdivenlerin alt kısmını kaldırır.",
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Random Drift spell"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Bu büyü seçilen yönde lanetli merdiven oluşturur. Herhangi bir çakışan normal merdiven yok edilir. BANISHED rütbesine ulaş ve çakışan lanetli merdivenleri yok et.",
	["curse"] = "Bu büyü merdivenleri lanetlemenizi yada lanetini kaldırmanızı sağlar. Bu büyüyü lanetleri kaldırmak için kullanın.",
	["curseabove"] = "Bu büyü üstteki merdivenleri lanetler yada lanetini alır. Merdivenler Hafif yukarı kaldırılır ve altından geçmenizi sağlar.",
	["curseinter"] = "Bu büyü seçilen yönde kırpışmanızı sağlar ve kırpışdığınız kavşak lanetlenir. Eğer INFIDEL rütbesine ulaştıysan lanetli kavşaklarda kırpışabilirsin ve bu sefer lanetini kaldırırsın.",
	["autodown"] = "Bu büyü merdivenin alt kısmına özel aynalı bölüm oluşturur ve bunu kaldırır. Sadece Heretic'ler ve hayalet birleşiminde olanlar bunların üzerinden yürüyebilir.",
	["autoup"] = "Bu büyü merdivenin üst kısmına özel aynalı bölüm oluşturur ve normal merdivenin üst kısmını indirir. Sadece Heretic'ler ve hayalet birleşiminde olanlar bunların üzerinden yürüyebilir.",

	["malediction"] = timed .. "bir dakika boyunca lanetli merdiven oluşturmanızı sağlar." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "Heretic Rig'i. Merdivenler tetiklendiğinde, tetikleyen kişi ele geçirilir. Kurtulmak için Mana toplamaları lazım. Ele geçirilen oyuncular büyü yapamaz. UNBELIEVER rütbesine ulaş ve buna bağışıklık kazan. EXILED rütbesine ulaş ve her ele geçirilen oyuncu için 1 Mana kazan.",
	["hereticevent"] = event .. "merdivenlere rastgele bölünmeler açar.",
	["hereticaltevent"] = event .. "bütün normal merdivenleri lanetler.",
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Random Schism spell"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	["twistside"] = "Bu büyü merdivenleri sağdaki yada soldaki merdivenle birleştirir. Eğer birleştirmek istediğiniz yönde merdiven yoksa meriven oluşturulur. TRANSFORMER rütbesine ulaş ve zaten birleştirilmiz merdivenleri tekrar birleştir.",
	["twistrotate"] = "Bu büyü merdivenleri çaprazındaki merdivenle birleştirir. Eğer birleştirmek istediğiniz yönde merdiven yoksa meriven oluşturulur. TRANSFORMER rütbesine ulaş ve zaten birleştirilmiz merdivenleri tekrar birleştir.",
	["twistup"] = "Bu büyü üstteki merdiven ile bulunduğunuz merdiveni birleştirir. Yani 2 katlı sarmal merdiven yapar. Eğer birleştirmek istediğiniz yönde merdiven yoksa meriven oluşturulur. TRANSFORMER rütbesine ulaş ve zaten birleştirilmiz merdivenleri tekrar birleştir.",
	["canceltwist"] = "Bu büyü birleştirimiş merdivenleri onarır. COMBINER rütbesine ulaş ve platformdan kopmuş merdivenleri onar. MIXER rütbesine ulaş ve bu büyüyü ücretsiz yap. OPTIMUS rütbesine ulaş ve her onardığın birleştirilmiş merdiven için 1 Mana kazan.",
	["split2"] = "Bu büyü merdiveni dik bir şekilde ortadan keser ve bir parçasını çevirir. Kısaca bu büyü 4 platfomu birleştirir.",
	["splitalt"] = "Bu büyü merdiveni dik bir şekilde ortadan keser ve merdivenin üst kısmını açar yani üstteki merdivene geçebilirsin.",

	["twister"] = timed .. "bir dakika boyuncu ikiye ayırma büyülerini yapmanızı sağlar. Eğer üstteki merdiven geçmenizi engelliyorsa ileriye doğru keser." .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name), 
	["splicerrigevent"] = rig .. "Splicer Rig'i. Merdivenler tetiklendiğinde rastgele yöndeki bir merdivenle birleşir. ASSEMBLER rütbesine ulaş ve bu Rig'e tetiklenmemek için bir opsiyon kazan.",
	["splicerevent"] = event .. "merdivenleri rastgele yönde birleştirir.",
	["spliceraltevent"] = event .. "merdivenleri keser.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Random Splice spell"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	--NECROMANCER
	["createdual"] = "Bu büyü senin olduğun ve hayaletinin olduğu yönde merdiven oluşturur, yani hayaletinin yanındaki kişiler kullanabilir. SKELETON rütbesine ulaş ve hayaletinin oluşturacağı yerdeki lanetli merdivenleri ve kavşaklerı yok say. LICH rütbesine ulaş ve çakışan merdivenleri yok et.",
	["copyplatform"] = "Bu büyü hayaletinin olduğu platformdaki merdivenleri senin platformuna kopyalar. Kopyalanan merdivenler normal olur. REVENANT rütbesine ulaş ve lanetli kavşakları yok et.",
	["soulbridge"] = "Bu büyü çaprazında bulunan bir yöne dönen bağ oluşturur. Hayaletinde aynı şeyi yapar. Necromancer bağları otomatik döner. Eğer haritanın ortasına bağ oluşturursanız, 'X' Şeklinde 2 bağ oluşur.",
	["undeadabove"] = "Bu büyü senin ve hayaletinin üsttündeki merdivenlerin ruhunu alır. Eğer hayaletinin üstünde merdiven yoksa oluşur. Bu merdivenlerin atından geçebilir ve üstünden yürüyebiirsin, ama bir dakika sonra yavaş yavaş yok olur.",
	["revival"] = "Bu büyü hayaletinin olduğu platforma yeniden canlanma noktası koyar. Eğer bu noktanın altına düşersen, o noktaya ışınlanırsın. Yeniden canlanma noktası tek kullanımlıktır ve kuleyi tırmandıktan sonra yok olur. Chameleon dönüşümü de bu noktayı yok eder. Acolyte rütbesine ulaş ve yeniden canlanma noktasına küreyi çağır.",
	["regen"] = "Bu büyü sana 6 Mana verir ve tek kullanımlıktır (kuleyi tırmanana kadar). Hyaletine yakın olan oyuncular 3 kazanır. DEATHBRINGER rütbesine ulaşınca sen 10 Mana kazanırsın ve hayaletinin yakınındakiler 5 Mana kazanır.", 
	
	["duality"] = timed .. "bir dakika boyunca çift merdivenler oluşturmanı sağlar. Rütbe gerekmesiz çakışan merdivenler yok olur." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "Necromancer Rig'i. Merdivenler tetiklendiğinde ruhu alınır ve yavaşça yok olur.",
	["necromancerevent"] = fill ..  "Oluşacak merdivenler ruhsuz olur ve zaman içinde yok olur.",
	["necromanceraltevent"] = event .. "merdivenlerin ruhunu alır ve yok olurlar zamanla.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Remove Soul spell"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "Bu büyü ortasında ayna olan merdiven oluşturur. Aynanın içinden geçtiğinde, hayaletinle birleşirsin. Tekrar aynadan geçersen hayaletinden ayrılırsın. POLTERGEIST rütbesine ulaş ve bu büyüyü yaparken çakışan merdivenleri yok et. Hayaletin ile birleşikken, zemin aynalarını kullanabilirsin ama hayaletin senin için Mana toplamaz.",
	["bigmirror"] = "Bu büyü 10 saniye süren ve tüm katı içinde bulunduran devasa bir zemin aynası oluşturur. Sadece hayaleti ile birleşmiş kişiler bu aynanın üzerinden yürüyebilir ve hayaletinden ayrılır. Bu büyü yapıldığında kattaki bütün küçük aynaları yok eder. PRESENCE rütbesine ulaş ve bu büyünün süresini 15 yap.",
	["smallmirror"] = "Bu büyü seçilen yönde bir ayna oluşturur. Ayna 6 saniye sonra yok olur ve 4 platformu birbirine bağlar. Sadece hayaleti ile birleşmiş kişiler bu aynanın üzerinden yürüyebilir ve hayaletinden ayrılır.PRESENCE rütbesine ulaş ve bu büyünün süresini 10 yap.",
	["outermirror"] = "Bu büyü dışarıya doğru bir ayna oluşturur ve aynanın tam karşısınada mayna oluşturur. Sadece dışa doğru yapılabilir. Bu aynadan geçince hayaletinle birleşirsin ve diğer aynadan çıkarsın. 60 saniye sonra aynalar yok olur.",
	["merge"] = "Bu büyü hayaletinle birleşmeni sağlar ve REPLICA rütbesine ulaşınca bu büyü ile hayaletinden ayrılabilirsin.",
	["oneway"] = "Bu büyü merdivenleri tek yönlü geçiş yapar. Geçebilinen yöndeki geçitten geçen oyuncuları hayaletiyle birleştirir. Hangi yönü bloklamasını istiyorsan seçebilirsin. ALIEN rütbesine ulaş ve tek yön merdivenlerden istediğin gibi geç.",

	["reflection"] = timed .. "Bir dakika boyunca istediğiniz gibi devasa ayna yapmanızı sağlar. Otomatik bir şekilde hayaletinle birleşirsinde." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "Reaver Rig'i. Merdivenler tetiklendiğinde onları tek yönlü yapar. WIGHT rütbesine ulaş ve bu Rig'lere tetiklenmemek için bir opsiyon kazan.",
	["reaverevent"] = event .. "merdivenleri rastgele tek yönlü yapar.",
	["reaveraltevent"] = event .. "merdivenleri yukarıya doğru tek yönlü meriven yapar.",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Random One-Way Stairs spell."),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	["tram"] = "Bu büyü seçilen yönde Tram merdiven oluşturur. Tram merdivenler, normal merdivenlerin yarısı uzunluğundadır. Tram merdivenler yeni oluştuğunda yukarı haraket eder ve tekrar hareket ettirmek için üzerinde zıplamanız gerekir. FIEND rütbesine ulaş ve yukarıdaki Tram merdivenleri yanına çağır.",
	["screwdown"] = "Bu büyü merdivenleri aşağı doğru tirbuşon yapar. Bu merdivenlerin üzerinden çıkmak çok zordur. DAEMON rütbesine ulaş ve bu merdivenleri kontrol et. (Eğer yakınlarda başka bir Daemon varsa çalışmayabilir).",
	["screwup"] = "Bu büyü merdivenleri yukarı doğru tirbuşon yapar ve dönme şekli kolayca geçmenizi sağlar. DAEMON rütbesine ulaş ve bu merdivenleri kontrol et. (Eğer yakınlarda başka bir Daemon varsa çalışmayabilir).",
	["revolve"] = "Bu büyü merdivenleri Z ekseninde dönen pervaneye dönüştürecek. Hangi yönden döneceğini seçebilirsin. Merdivenler tetiklendiğinde iki tur döner ve her tur 180 derece döner, yani toplam 360 derece döner.",
	["trapstairs"] = "Bu büyü merdivenleri tuzak kapısı yapar. Merdivenler tetiklendiğinde X ekseninde iki kere 180 derece döner ve üsttündeki oyuncuyu aşağı düşürür. GOBLIN rütbesine ulaş ve bu tuzakları gör. DIABLO rütbesine ulaş ve bu tuzak kapılarına bağışıklık kazan.",
	["spinplatform"] = "Bu büyü platforma bağlı olan tüm merdivenleri platform etrafında döndürür (Lanetli merdivenler dahil), yönünü yine seçebilirsin. Platform her 90 derecede biraz duracak ve dönmeye devam edecek. 360 derece döndüğünde platform normal olacak.",
	
	["tramway"] = timed .. "bir dakika boyunca Tram merdivenler oluşturmanızı sağlar." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "Gremlin Rig'i. Merdivenler tetiklendiğinde tetikleyen kişiyi hipnotize eder. Kurtulmak için Mana toplamaları lazım. Hipnotize olan oyuncuların kontrolleri ters olacak. HOBGOBLIN rütbesine ulaş ve bu Rig'lere tetiklenme.",
	["gremlinevent"] = event .. "merdivenleri döner merdiven yapar.", 
	["gremlinaltevent"] = fill .. "Oluşacak merdivenler Tram merdiven olacak.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Random Revolve Stairs spell."),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "Bu büyü Keeper büyüsüydü ve reddedildi. Merdivenleri aşağı haraket ettirir. Keeper'ınızı CAPTAIN rütbesine ulaştırdıysanız tüm merdivenler aşağı hareket ettirebilirsiniz.",
	["chamswap"] = "Bu büyü Necromancer büyüsüydü ve reddedildi. Hayaletini kopyalar ama Reaver birleşmesine benzemez hayaletn hala ordadır. Bu büyü tamamlanmamışıt ve şuan sadece görüntü olarak çalışıyor.",
	["chamdraw"] = "Bu büyü Heretic büyüsüydü ve reddedildi. Merdivenleri aşağı doğru çekme köprü yapar.",
	["ditch"] = "Bu büyü Thief büyüsüydü ve reddedildi. Merdivenlerin içine bir merdiven koyar yani merdivenler çakışmış olur.",
	["chamdrawabove"] = "Bu büyü Heretic büyüsüydü ve reddedildi. Üstteki merdivenlerin alt kısmını çekme köprü yapar ve altından geçmenizi sağlar. Eski Unbeliever rütbesi otomatik oalrak çekme köprüyü açardı.",
	["warp"] = "Bu büyü Wicked büyüsüydü. Merdivenlerin üstündeki kısmı üssteki playforma doğtu bükülür.",

	["chameleonrigevent"] = rig .. "Gizemli Rig. Merdivenler tetiklendiğinde oyunda bulunan herhangi bir Rig'i tetikler",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","random spell from all other modes"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}
local CommonPerksInsertALignment = {
	[1] = "Bu senin başlangıç %s rankın.",
	[2] = "Dronelar %s modundayken ekstra Mana kazanırsın.",
}
local CommonPerksInsertTimedSpell = {
	[3] = "Eğer biri %s büyüsü yaparsa, Senin Manan doldurulcak.",
	[7] = "Senin %s büyün artık %50 daha uzun sürcek (90s).",
}



module.gui.ranks = {

	["title"] = "SENİN RÜTBEN",

	--none
	["none_1"] = "Sen bir Birleşim seçmedin!",
	["none_2"] = "Büyü yapma hakkın yok!",
	["none_3"] = "Haritanın ortasındaki dönüşme yerlerinden Birleşim seç.",

	--shared
	["higher"] = "RÜTBEYE ULAŞILDI",
	["current"] = "SENİN ŞUANKİ RÜTBEN",
	["lower"] = "RÜTBEYE ULAŞILMADI",

	["more"] = "Bu rütbeye ulaşmak için %s olarak %d kere daha çıkman gerek.",
	["done"] = "Bu rütbeye ulaşıldı. Bu rütbenin altındaki rütbeler sana avantaj verecek.",
	["max"] = "Bu senin ulaştığın max rütbe. %s olarak %d tırmanma elde ettin.",
	["next"] = "Sağ oka tıklarak sonraki rütbeleri incele.",

	["PATRON"] = {
		[4] = "Bağ büyün iki kat daha uzun süre kalır (120sn).",
		[5] = "Portal büyün iki kat daha uzun süre kalır (120sn).",
		[6] = "Küreyi çağırma büyün 3 Mana yerine 2 Mana gerektirir.",
		[8] = "Mana'n tükendiğinde platform üzernide zıplayarak kutsanırsın ve bir Mana kazanırsın.",
		[9] = "Çağırılan küre iki kat daha hızlı hareket eder.",
	}, 
	["JOKER"] = { 
		[4] = "Disko merdivenler sana etki etmez.",
		[5] = "Tüm görünmez merdivenleri görebilirsin ve onları ortaya çıkarmamak için bir opsiyon kazanırsın.",
		[6] = "Tüm Tuzak platformlarını ve sahte merdivenleri görebilirsin.",
		[8] = "Tuzak platformları ve sahte merdivenler üzerinden yürüyebilir ve tuzak platformlarında büyü yapabilirsin.", 
		[9] = "Kandırılan her oyuncu için bir Mana kazanırsın",
	},
	["WICKED"] = {
		[4] = "Hasarlı merdivenlerin üzerinden normal bir merdivenmiş gibi yürüyebilirsin",
		[5] = "Yok etme büyün bedava olur.",
		[6] = "Her özel merdiven yok ettiğinde 1 Mana kazanırsın.",
		[8] = "Wicked Rig'lerine tetiklenmemek için bir opsiyonun olur.",
		[9] = "Lanetli merdivenleri yok edebilirsin.",
	},
	["SPECTRE"] = { 
		[4] = "Hayaletinin topladığı kristaller için ekstra bir Mana kazanırsın.", 
		[5] = "Merdivenleri Hayaletsizleştirme büyün artık bedava olur.",
		[6] = "Hayaletinle küreyi alabilirsin.",
		[8] = "Spectre Rig'lerine tetiklenmemek için bir opsiyonun olur.", 
		[9] = "Hayaletli merdivenlerin üzerinden yürüyebilirsin.",
	},
	["KEEPER"] = {
		[4] = "Rastgele hareket büyüsü ile Keeper Rig'leri seni aşağı doğru hareket ettirmez.",
		[5] = "Bütün lanetli merdivenler dışındaki merdivenleri hareket ettirebilirsin.",
		[6] = "Onarma büyün bedava olur", 
		[8] = "Keeper Rig'lerine tetiklenmemek için bir opsiyonun olur.",
		[9] = "Lanetli kavşakları ve lanetli merdivenleri onarabilirsin.",
	},
	["HACKER"] = { 
		[4] = "Yürüyen merdivenlerden etkilenmemek için bir opsiyonun olur.",
		[5] = "Atılma büyün iki kat hızlı olur.",
		[6] = "Kırpışma büyün iki kat hızlı olur.", 
		[8] = "Hacker Rig'lerine tetiklenmemek için bir opsiyonun olur. (Yürüyen merdiven opsiyonuyla birleşir)",
		[9] = "Son katta merdiven arızalandırırsanız, kürenin olduğu platforma ışınlanırsın. (boş kavşak yoksa çalışmaz).", 
	},
	["THIEF"] = {
		[4] = "Baypassların iki kat uzun süreli kalır (120sn).",
		[5] = "Spiral merdivenlerin iki kat daha uzun süre kalır (120sn).",
		[6] = "Lanetsiz tüm merdivenleri çalabilirsin.",
		[8] = "Mana'n tükendiğinde platform üzernide zıplayarak bir Mana kazanırsın.", 
		[9] = "Aynı anda iki çalınmış merdiven saklayabilirsin.",
	},
	["ARCHON"] = {
		[4] = "Geçit yok etme büyüsü ile platform geçitlerini yok eddebilirsin.",
		[5] = "Geçit yok etme büyüsü bedava olur.",
		[6] = "Geçitler seni asla aşağı ışınlatmaz.",
		[8] = "Geçit olan merdivenlere yeni geçit açabilirsin.",
		[9] = "Hiçbir geçitten geçmemek için bir opsiyonun olur.",
	},
	["DRIFTER"] = {
		[4] = "Asansörletin iki kat daha hızlı ortaya çıkar ve hareket eder.",
		[5] = "Kaydırılmış merdivenleri döndürebilirsin ve tekrar kaydırabilirsin.",
		[6] = "Asansörleri hem yükseliş hem de asansör büyüsü ile geliştirebilirsin. Vagabond rütbesi avantajı etki etmez.",
		[8] = "Drifter Rig'lerine tetiklenmemek için bir opsiyonun olur.",
		[9] = "Asansörleri hem yükseliş hem de asansör büyüsü ile iki kere geliştirebilirsin. Vagabond rütbesi avantajı etki etmez.",
	},
	["HERETIC"] = {
		[4] = "Mana'n tükendiğinde lanetli merdivenlerin lanetini alarak kendine Mana kazandırırsın.",
		[5] = "Artık ele geçirilemezsin.",
		[6] = "Lanetli kavşaklarda kırpışma büyüsü kullanarak kırpışabilir ve lanetini onarırsın.",
		[8] = "Lanetli merdiven oluşturarak lanetli merdivenleri yok edebilirsin.",
		[9] = "Her biri ele geçirildiğinde bir Mana kazanırsın.",
	},
	["SPLICER"] = {
		[4] = "Platformdan kopmuş merdivenleri platformdan onarabilirsin.",
		[5] = "Onarma büyün bedava olur.",
		[6] = "Splicer Rig'lerine tetiklenmemek için bir opsiyonun olur.",
		[8] = "Birleşmiş merdivenleri tekrar birleştirebilirsin.",
		[9] = "Her merdiven onardığında bir Mana alırsın.",
	},
	["REAVER"] = {
		[4] = "Birleşme büyün ile hayaletinden ayrılabilirsin.",
		[5] = "Zemin aynaların iki kat daha uzun süre kalır. (15s büyük, 9s küçük)",
		[6] = "Reaver Rig'lerine tetiklenmemek için bir opsiyonun olur.",
		[8] = "Aynalı merdiven oluştururken çakışan merdivenleri yok edebilirsin.",
		[9] = "Tek yön merdivenler artık seni etkilemez.",
	},
	["NECROMANCER"] = {
		[4] = "Çift merdiven oluşturma büyün hayaletinin olduğu yerdeki lanetli merdiven ve kavşaklarını yok sayar.",
		[5] = "Yeniden doğma noktasını son kata koyarsan küreyi oraya çağırır.",
		[6] = "Platform kopyalama büyün lanetli kavşakları yok eder.",
		[8] = "Çift merdiven oluştururken çakışan merdivenleri yok edersin.",
		[9] = "Mana yenileme büyün 6 Mana yerine 10 Mana yeniler ve hayaletinin yanındakiler 5 Man kazanır.",
	},
	["GREMLIN"] = {
		[4] = "Tüm Gremlin tuzaklarını görebilirsin.",
		[5] = "Tram merdivenleri platformdan çağırabilirsin.",
		[6] = "Gremlin Rig'leri artık sana etki etmez.",
		[8] = "Gremlin tuzakları sana etki etmez.",
		[9] = "Tirbuşon merdivenleri bir butan ile kontrol edebilirsin. Yakınlarda Daemon varsa çalışmayabilir.",
	},
	["MUGGLE"] = { 
		[2] = "Zıplama bekleme süresi 0.125sn azalır.",
		[3] = "Zıplama bekleme süresi 0.25sn azalır.",
		[4] = "Zıplama bekleme süresi 0.375sn azalır.",
		[5] = "Zıplama bekleme süresi 0.5sn azalır.",
		[6] = "10% daha hızlı yürürsün.",
		[7] = "20% daha hızlı yürürsün.",
		[8] = "30% daha hızlı yürürsün.",
		[9] = "Zıplama gücün 20% artar.",
	},

	["CHAMELEON"] = { 
		[1] = "Bu senin başlangıç CHAMELEON rütben. Diğer birleşimlerin avantajları Chameleon'u etkiler.",
		[2] = "İSTİSNA! Drone modu SADECE CHAMELEON modundayken Mana kazanırsın.",
		[3] = "Birleşim animasyonu daha hızlı olur.",
		[4] = "Ellerin büyü yaparken pempe parlar, bu sayede hangi birleşimin büyüsünü yapacağın belli olmaz.",
		[5] = "Sahte merdiven ve normal merdiven oluştururken merdivenler pembe parlar.",
		[6] = "Geliştirilme aşamasındayken reddedilen 4 büyü yapabilirsin.",
		[7] = "Geliştirilme aşamasındayken reddedilen 2 büyü daha yapabilirsin.",
		[8] = "Birleşme değiştirme animasyonun anında olur, birleşme değiştirmek görünmez ve özel olur. Ayarlardan kapatılabilir.",
		[9] = "2 Multi-Jeton ile gizemli Rig büyüsü yapabilirsin.",
	},


}

module.gui.reshuffle = {

	["title"] = "MERDİVENLERİ KARIŞTIRMA MODU",

	["body"] = "Merdivenlerin hareket ederken çarpışmaları önlemesini ister misiniz? Değilse, yoldaki herhangi bir merdiven yıkılacak.",

}

module.gui.multitokens = {

	["title"] = "JETONLARI SEÇ",

	["info"] = "Yeni büyü açmak için 3 jetona ihtiyacın var.",
	["notokens"] = "Multi jeton'ların tükendi",
	["nopass"] = "GAMEPASS YOK",

}

module.gui.feedback = {

	["title"] = "GERİ BİLDİRİM GÖNDER",

	["prompt"] = "Buraya tıklayarak yöneticilere bildirim gönder! (en az 20 karakter. Kim olduğunuzu biliyoruz, lütfen spam göndermeyin.)",
	["send"] = "GÖNDER",
	["locked"] = "KİLİTLENDİ",

}

module.gui.settings = {

	["title"] = "OYUN AYARLARI",

	["ANIM"] = "ANİMASYON\nAYARLARI",	
	["MISC"] = "ÇEŞİTLİ\nAYARLAR",
	["INTER"] = "ARAYÜZ\nAYARLARI",	
	["INTER2"] = "EKSTRA ARAYÜZ\nAYARLARI",	

	["list"] = "Animasyonlu oyuncu listesini göster",
	["morph"] = "Dönüşme animasyonunu Deceiver yada Usurper kullanırken göster",
	["billboard"] = "Kendi avatar panonuzu gösterin",
	["rank"] = "Avatar billboard'da Genel Sıralamanızı Gösterin",
	["switchback"] = "Nihai büyu yaptıktan sonra otomatik normal büyülere geç",
	["safecancel"] = "Zamanlı bir nihai büyüyü iptal ederken onay penceresini göster",
	["multi"] = "Tırmanıştan sonra Multi Jeton penceresini göster",
	["kchoices"] = "Keeper için yön seçimi penceresini göster (Xbox'ta çalışmaz)",
	["hchoices"] = "Hacker için yön seçimi penceresini göster (Xbox'ta çalışmaz)",
	["achoices"] = "Keeper için yön seçimi penceresini göster (Xbox'ta çalışmaz)",
	["rchoices"] = "Reaver için yön seçimi penceresini göster (Xbox'ta çalışmaz)",
	["schoices"] = "Splicer için yön seçimi penceresini göster (Xbox'ta çalışmaz)",
	["gchoices"] = "Gremlin için yön seçimi penceresini göster (Xbox'ta çalışmaz)",
	["stats"] = "Rig ve Etkinlik büyülerini kullanırken ekstra istatistikleri göster",

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "SENİN BİRLEŞİMİN",
	["time"] = "TIRMANMA ZAMANIN",
	["climbs"] = "TIRMANIŞ KAZANLIDI",
	["tokens"] = "JETON KAZANILDI",
	["rank"] = "ŞUANKİ RÜTBEN",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"YARDIM ET, KORU ve OLUŞTUR",
		"Bu eziklerin bizim yardımımıza ihtiyacı var",
		"Biz Patron'lar olmasaydık hiç ümit olmayacaktı",
		"iyiliğin büyüklüğü 10 üzerinden 11",
		"Paylaşmak taşımaktır",
		"Asla çok fazla merdivene sahip olamazsın",
		"Takımda ben diye bişey yoktur, ama burada kesinlilkle Patron vardır",
		"Merdiven olmadan merdiven kulesine sahip olamazsın",
		"Başka bir iş tamamlandı",
	},
	["JOKER"] = {
		"KANDIR, KARIŞTIR ve GÜL",
		"Bu merdivenler şaka",
		"Neden bu kadar ciddisin?",
		"HA! HA! HA!",
		"Rahatla ve onların düşüşünü izle",
		"Alındınmı kanka?",
		"Sen kuralları biliyorsun ve bende biliyorum",
		"Bensiz sıkıcı olurdu",
		"Sahte merdivenler gerçek",
	},
	["WICKED"] = {
		"ÖNLE, ENGELLE ve YOK ET",
		"Ben kötü değilim, sadece çok merdiven var",
		"Bu merdivenlerin gitmesi gerek",
		"Dünyanın yanışını izle",
		"Bu merdiven kulesi merdivensiz daha güzel",
		"Senin aklını, ruhunu ve vücudunu yok edeceğim (ve merdivenleri)",
		"1)Parkur yap 2)Eziklerin çabalamasını izle 3)Eğlen",
		"Herşey elinin sonunda ölür",
		"Aklını temizle - ama önce merdivenleri",
	},
	["SPECTRE"] = {
		"KAYBOL, SAKLAN ve IŞINLAN",
		"tabiki ışınlanmak güvenli",
		"Beni yakalayamazsın",
		"Hayalet merdivenlerin güzelliği eşsizdir",
		"İnsanlar düşüyor? Neden umursamalıyım?",
		"Tüm sorunlarını ışınlanma ile çözebilirsin",
		"Bir kere ışınlanınca asla duramazsın",
		"En azından merdivenleri ışınlandırmıyorum",
		"Devam edin ezikler!",
	},
	["MUGGLE"] = {
		"YÜRÜ, ZIPLA ve DÜŞ",
		"Alpha sürümünde bu gösterişli büyülere sahip değildik",
		"Yemin ederimki Drone'lar hileli",
		"Her zaman bir yol vardır",
		"MerdivenZıplama bir yetenek",
		"Sırımmı? Dur ve düşün",
		"Ben büyüye inanmıyorum",
		"Bazen durup Drone beklemelisin - gerçek hayattaki gibi",
		"İnsanlar büyü kullanıyor? Ezikler!",
	},
	["CHAMELEON"] = {
		"KOPYALA, TAKLİT ET ve ŞAŞIRT",
		"Kendi büyülerime sahip olmak için çok üşengeçim",
		"Çok çeşitlilik = çok eğlence",
		"Takımlaşmak yavaş - Dönüşmek hızlı",
		"Uyum sağlama yeteneği hayatta kalmanın temelidir",
		"Ben kararlıyım, sadece fikrimi değiştirmeyi seviyorum",
		"Bir sınıfta ustalaştın mı? Ben tüm sınıflarda ustalaştım",
		"Sadece bir birleşme? Sıkıcı!",
		"Kaos severim",
	},
	["KEEPER"] = {
		"HARAKET ET, DÖNDÜR ve KONTROL",
		"Merdivenlerimle uğraşmayı bırak!",
		"Keeper'lar için bir başka büyük başarı",
		"Görev tamamlandı!",
		"Sıralı olmayı severim",
		"Kaos sakinleştirildi",
		"Tek doğru birleşim benim",
		"Bir gün bu kuleyi çözeceğim",
		"Tamir edilmiş merdivenler = mutlu merdivenler",
	},
	["THIEF"] = {
		"\"ÖDÜNÇ AL\", KULLAN ve TEKRARLA",
		"Aslında buna borçlanma deniyor",
		"Düz yerler güzel",
		"En azından platformları çalmıyorum",
		"Sadece çalma RigRlerinden yürüme, kafamı sallıyorum",
		"Hiçbir şey çaldığımı gördünmü?",
		"Robin Hood gibiyim - Zenginden çalıp kendime veriyorum",
		"Bir merdivenin eksik olmasını kimse fark etmez",
		"Merdivenlerin yeniden dağıtılması anarşiyi önler",
	},
	["HACKER"] = {
		"HİLE YAP, ARIZALAN ve KIR",
		"Adil oynayış? Burada çok şey yok",
		"Bekle! Bu merdivenler gerçek değil... Simüle edilmiş bir Roblox deneyiminde mi yaşıyoruz??",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"Burada herhangi bir yerde yayınlanan herhangi bir kural gördünüz mü??",
		"Hile mi yapıyorum? Buradaki herkes",
		"Burada ve orada birkaç değişiklik demek istiyorum - Kesinlikle bir istismar değil",
		"Önemli olan hızdır",
		"Yaşam için yürüyen merdivenler",
	},
	["HERETIC"] = {
		"GEÇEMEZSİNİZ",
		"Kara büyüyü yasaklamak eğlenceyi yasaklamak gibidir",
		"İnsanları ele geçirin. Üstzihni doyurun",
		"Ölüm ve çürüme",
		"Kara ritüel tamamlandı",
		"Kendimizi kısıtlamamalıyız",
		"Ele geçiril",
		"Karanlık tarafı seç - Aydınlatmadan daha kolay",
		"İnsanların mahsur kalması beni neden ilgilendirsin ki?",
	},
	["ARCHON"] = {
		"PORTAL AÇ, ???, KANITLA",
		"Eskiden bu merdivenleri ben yönetirdim.",
		"Başarılı olmak için önceden plan yapın",
		"Sıkı çalışırsan başarılı olursun",
        	Merdivenleri geçme yeteneği bir sanat formudur,
		Archon potarımı kullanamıyorum,
		Kek bir yalan,
		Her sorunun bir çözümü vardır,
		"Herkesi şaşırttım!",
	},
	[DRIFTER] = {
		Sörf yap, sür ve süzül,
		"Merdivenlere ne gerek var ki? Biz uzaydayız!",
		Uçun aptallar!,
		Güneş Rüzgârında Sörf Yapın,
		Uzayda aşağı diye bir şey yoktur - Endişelenmeden atlayın,
		Her şeyi sürüklayın - Zafere atlayın,
		Durmayın - Sürüklenmeye devam edin,
		Platformlara binmeyi seviyorum,
		Sörf yapmaya devam edin,
	},
	["SPLICER"] = {
		"BÜKÜM, EKLEŞTİRME ve BAĞLANTI",
		"Asla düz bir yoldan gitme",
		"Hayatınızı birleştirin",
		"Başkalarının karışıklığı Splicer'ın emridir.",
		"O merdivenleri tamamen birbirine bağlayabilirim.",
		"İnsanlarla bağlantı kurun - hayır, MERDİVENLERLE BAĞLANTI KURUN!",
		"Aklım öyle çarpık işte.",
		"Bölmek mi, birleştirmek mi? İşte bütün mesele bu.",
		"Teşekkürler Markerquest, beni kurtardın.",
		"Bu merdivenler çok düz.",
	},
	["REAVER"] = {
		"YANSIT, DEĞİŞTİR ve BİRLEŞTİR",
		"Aynalar sadece kapılardır.",
		"Bu merdivenler bir illüzyon.",
		"Ruhunu aynada görebilirsin",
		"Bizmi onları izliyoruz, yoksa onlarmı bizi izliyor?",
		"Yedi yıllık kötü şans. Benim için mi, yoksa diğeri için mi?",
		"Hayaletler aynanın arkasında mı sıkışmışlar, yoksa biz mi?",
		"Artık kendimi göremiyorum, geleceği görüyorum",
		"ANNE! Bu geçici bir şey değil.!!!",
		"Bana öyle gizlice yaklaşma.!",
	},
	["NECROMANCER"] = {
		"TAKİP ET, CANLANDIR ve FAYDA SAĞLA",
		"Aslında sizi rahatsız etmek istemiyoruz, sadece arkadaş olmak istiyoruz.",
		"Ruhun BENİM!",
		"Hayaletimi takip et, güven bana!",
		"Hayaletim yanı güvenli. Neden yalan söyleyeyim ki?",
		"Ruhları hasat etme zamanı",
		"Sadece kötü bir halkla ilişkilerimiz var. Suçu Hollywood'a atıyorum.",
		"Eğer ölüm kötüyse, o zaman Necromancy iyi olmalıdır.",
		"Toplamam lazım senin ruh- Yani Mana, Mana'ya ihtiyacım var",
 		"Düşmekten korkmuyorum, bu stratejik bir büyü!",
	},
	["GREMLIN"] = {
		"DÖNDÜR, DÖN ve HİPNOTİZE ET",
		"Gel benimle oyna!",
		"Beni döndürüyorsun, bebeğim, döndürüyorsun",
		"Bu merdivenler çok sıkıcı",
		"O merdiveni senin için tamir edeyim, heheh",
		"Benim şaheserimi beğendin mi? Hayır mı? Çok yazık, daha yeni başlıyorum.",
		"Doktor bana rahatlamamı söyledi, ve bu benim rahatlama şeklim.",
		"Joker not al. İroni yapıyorum, Lütfen beni tekrar sirke geri al!",
		"O merdiven nereye gitti?",
		"Wheeeeeeeeeeeeeeeee!!!!!!",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Arkada Noob kalmayacak!",
	["IT"] = "Şaka yapmak yaşamaktır.",
	["ANNIHILATOR"] = "Herşeyi yok et!",
	["AETHER"] = "Ölüler diyarını gir",
	["DABSFORLIF"] = "Büyüler abartılıyor.",
	["USURPER"] = "Ben sadece tüm büyülerden hoşlanıyorum.",
	["ADMIRAL"] = "Düzen yeniden sağlandı",
	["OUTLAW"] = "Benim, benim, hepsi BENİM!",
	["ZERO"] = "Rootkit yüklendi",
	["EXILED"] = "Aforoz",
	["ILLUMINATI"] = "Illuminati onaylandı",
	["STRIDER"] = "Asansörü kullanacağım.",
	["DEATHBRINGER"] = "Yüksel, yüksel, YÜKSEL!",
	["OPTIMUS"] = "Dolaşıklık",
	["ALIEN"] = "Biz Tekiz!",
	["DAEMON"] = "Beni döndürüyorsun, döndürüyorsun.",

}

module.gui.gameover.credits = {

	"CRAZY STAIRS",
	"Oyun, Sleazel tarafından konsepti oluşturulmuş, tasarlanmış ve senaryolaştırılmıştır.",
	"Tasarım konusunda yardım - cakegirlserina",
	"Modeller ZielonyLeszek tarafından yapılmış",
	"@wwwtyro'nun jeneratörü tarafından oluşturulan Skybox'lar",
	"Kampfkarren tarafından geliştirilen veri kaydetme modülü, DataStore2",
	"Orijinal liderlik tablosu komut dosyası ThatTimothy tarafından yazılmıştır.",
	"DENEYİCİLER:",
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
	"ÇEVİRİCİLER:",
	"İngilizce - Sleazel",
	"Polonyaca - Sleazel",
	"Fransızca - Alexnumbers",	
	"İtalyanca - Roloversion",	
	"Hollandaca - Sanderk35_2",
	"Romanca - NoobMaster38271",
	"= ??? - ambronium",
	"Portekizce - Cosmo",
	"???? - OZEPJAH",
	"??????? - NoobMaster38271",
	"Ce tina - killerproXxgood",
	"Endonezya dili - echocentrical",
	"İspanyolca - TDtheTV",
	"Almanca - 05_hallo",
	"Slovakça  - Ondrik132",
	"Boşnakça - xootynator",
	"ÖZEL TEŞEKKÜRLER:",
	"kolcer",
	"ThatTimothy",
	"SerpentineKing",
	"WhereDidTheSunGo",
	"b3ntheplay3r2",
	"TehEpix2",
	"Narvog1",
	"shark66655",
	"MÜZİK (APM katalog):",
	"Giriş müziği - Allure by Martin Albert Sponticcia",
	"\"None\" bitiriş müziği - Deceived by Martin Albert Sponticcia",
	"Muggle müziği - Hyperdrive by Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Muggle bitiriş müziği - Reflections by Milan Pilar",
	"Patron müziği - Tranquilize by Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Patron bitiriş müziği - Dreamers by Joseph Alexander",
	"Joker müziği - Crosswind by Martin Albert Sponticcia",
	"Joker bitiriş müziği - Fender Stab by Steven Raymond Bush",
	"Wicked müziği - Wicked by Daniel Jay Nielsen, Nathan Duvall",
	"Wicked bitiriş müziği - Something Wicked by Cris Velasco",
	"Spectre müziği - Reflections by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Spectre bitiriş müziği - Cosmic Dust by Milan Pilar",
	"Keeper music - Automotion by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Keeper bitiriş müziği - Synth On The Highway by Richard Adrian Maxwell Preston",
	"Hacker music - Network by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Hacker bitiriş müziği - Descending Into Oblivion by Richard Adrian Maxwell Preston",
	"Thief music - Reaching Out by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Thief bitiriş müziği - Soaring by Richard Adrian Maxwell Preston",
	"Archon music - Aperture by Paul Emons, Richard Goodliff, Ian Robson",
	"Archon bitiriş müziği - Rendezvous by Paul Emons, Richard Goodliff, Ian Robson",
	"Drifter music - Communique by Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Drifter bitiriş müziği - Fragile by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic müziği - Mother by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Heretic bitiriş müziği - Being Me by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon müziği - Rah by Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon bitiriş müziği - Midnight Runner by Richard Adrian Maxwell Preston",
	"Hayalet birleşmesi müziği - Amber Garden by Paul Emons, Richard Goodliff, Ian Robso",
	"Ele geçirilme müziği - Dark Souls by David Arkenstone",
	"Joker'in disko merdiven müziği - To The Disco by Gordon Zola",
	"Drifter'ın platform müziği - Radioactivity by Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Oynadığınız için Teşekkürler!",	
}

module.static = {

	["cla_1"] = "Nasıl oynuyorum?",
	["cla_2"] = "İlk olarak, Öğreticiyi tamamlamanız şiddetle tavsiye edilir. Henüz yapmadıysanız, lütfen oyuna yeniden katılın, aksi takdirde deneyim gerçekten kafa karıştırıcı hale gelebilir..",
	["cla_3"] = "Oyunun amacı zirveye ulaşmak ve yüzen Enerji Küresini toplamaktır. Önce haritanın ortasındaki parlayan pedlerin üzerine atlayarak birleşiminizi(sınıfınızı) seçin.",
	["cla_4"] = "Seçimden memnun kaldıktan sonra, Mana'yı yeniden doldurmak için yüzen şekilleri topla ve merdivenleri tırman. Tırmanışta sana yardımcı olması için sınıf büyünü kullan.",
	["cla_5"] = "Nasıl büyü yapılıyor?",
	["cla_6"] = "Her büyünün, büyüyü yapmak için gerekli olan bir mana maliyeti vardır. Yeterli mana topladığınızda büyüye tıklayın. Elleriniz parlamaya başlayacak ve bu, büyünün başarılı bir şekilde yapıldığını gösterir.",
	["cla_7"] = "Büyü yapıldıktan sonra, büyü hala uygulanmalıdır. Tüm büyüler zıplayarak uygulanır. Büyüye bağlı olarak, platformda veya merdivenlerde zıplamanız gerekecektir. Uygulamaya yardımcı olmak için kılavuz oklar görünecektir.",
	["cla_8"] = "Tırmanışı tamamladığınızda, bir büyüyü açmanızı sağlayacak 3 büyü jetonu alacaksınız. Daha fazla büyü açmak için tırmanışı tekrar tamamlayın. Bir sınıftan aldığınız jetonları başka bir sınıftaki büyüyü açmak için kullanamazsınız.",
	["cla_9"] = "Nasıl Nihai büyü yapılıyor?",
	["cla_10"] = "Öncelikle, en güçlü büyülere erişmek için tüm temel büyülerinin kilidini açmanız gerekir. En güçlü büyüler kendileri için kilit açma gerektirmez, ancak kullanıldıklarında Mana yerine Jeton kullanırlar.",
	["cla_11"] = "Tüm temel büyülerini açmak için tırmanışı yeterince kez tamamla. Ekstra Jetonlar kazanmak için yarışı kazanmaya çalışabilirsin. Jetonları satın alma seçeneği de vardır. Açıldıktan sonra, en soldaki düğmeye tıkla veya C tuşuna bas.",
	["cla_12"] = "Bazı nihai büyüler zamanlıdır ve yürütme gerektirmez. Nihai büyü hakkında daha fazla bilgi edinmek için, büyü yapmadan önce Alignment Guilds'da daha fazla bilgiyi okuyun. Zamanlı bir büyüyü iptal etmek, jetonları iade etmez.",

	["pro_1"] = "PRO KULE",
	["pro_2"] = "Çift sayılı platform kısıtlamaları",
	["pro_3"] = "Pro Tower'da bazı platform büyülerinin çift sayılı seviyelerde kullanılması mümkün değildir. Tuzak, Portal Oluşturma, Dik ışınlanma, Spiral Merdiven gibi büyüler sadece tek sayılı seviyelerde yapılabilir.",
	["pro_4"] = "Drifter'lar bu platformları da sürükleyemaz. Etkilenen platformlar ortada kırmızı çarpı ile işaretlenmiştir.",
	["pro_5"] = "Lanetli Merdivenler",
	["pro_6"] = "Pro Tower'da Dronlar rastgele Lanetli Merdivenler oluşturacak veya normal merdivenleri Lanetli merdivenlere dönüştürecektir. Lanetli Merdivenlerin ortaya çıkma olasılığı %20'dir. Lanetli Merdivenlerin yakınında yön okları görünmeyecektir.",
	["pro_7"] = "Lanetli Merdivenler çoğu büyüye karşı bağışıktır. Bunların içinden ışınlanamazsınız ve Hacker'ın Blink büyüsünü kullanamazsınız. Ayrıca, Lanetli Merdivenleri yok edecek tüm büyüler (Keeper'ın hareket ettirmesi gibi) işe yaramayacaktır.",
	["pro_8"] = "Sadece Heretic'ler ve Admiral'ler Lanetli Merdivenleri onarabilir ve getirebilir. Tahribat ve Restorasyon, tüm lanetli merdivenleri ortadan kaldıracaktır. Her neyse Drone'lar, Pro Tower'da her zaman yenilerini oluşturacaktır.",
	["pro_9"] = "Lanetli Kavşakler",
	["pro_10"] = "Pro Kule'de Drone'lar lanetli kavşaklarda oluşturur. Drone'lar boş bir kavşak bulunca orayı 20% ihtimalle laneti yapar. Kılavuz oklar, kesişme noktasını belirtmek için çarpı işaretine dönüşecektir.",
	["pro_11"] = "Lanetli Kavşaklar, oklar üzerinde gerçekleştirilen tüm platform büyülerini engeller. Lanetli Kavşak üzerinden ışınlanma, bağlantı ve merdiven oluşturamazsınız.",
	["pro_12"] = "Sadece Heretic'ler, Admiral'ler ve Drone'lar bunları onarabilir. Lanetli merdivenlerde de olduğu gibi, Wicked'ın Tahribat'ı lanetli kavşakları yok eder, fakat Rejenerasyon sırasında yenileri oluşacak.",

	["inf_1"] = "SONSUZ KULE",
	["inf_2"] = "YARIŞ ZORUNLU",
	["inf_3"] = "Sonsuz Kule'de, Yarışa katılmak zorunludur. Normal oyuncular büyü yapamaz ve küreyi yakalayınca bir şey kazanmazlar. Küreye dokunmak sadece 10 Mana kazandırır.",
	["inf_4"] = "Sonsuz kuleyi tamamlamak için yarışa katılmanız ve mümkün olduğunca uzun süre yarışta kalmaya çalışmanız gerekir. Elenenler için ödüller alacaksınız.",
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
	["cus_7"] = "Only server owner can adjust the settings, therefore public servers are not supported in the Custom Tower.",
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

	["home_1"] = "MUGGLE'S HOME",
	["home_2"] = "OUR MOTTO:\nWALK\nJUMP\nAND\nFALL",
	["home_3"] = "PROS:\nWalkspeed and jump power bonus at higher ranks\nBragging rights\nCONS:\nNo spells\nGets stuck easily",
	["home_4"] = "'We did not have those fancy spells in alpha stage!'\nour founder's quote",

	["oasis_1"] = "CHAMELEON'S OASIS",
	["oasis_2"] = "OUR MOTTO:\nCOPY\nIMITATE\nAND\nSURPRISE",
	["oasis_3"] = "PROS:\nCan change alignments anywhere, anytime\nCONS:\nCosts Robux\nRanking up all classes takes time",
	["oasis_4"] = "'I am too lazy to come up with my own spells.'\nour founder's quote",

	["nexus_1"] = "HERETIC'S NEXUS",
	["nexus_2"] = "OUR MOTTO:\nYOU\nSHALL\nNOT\nPASS",
	["nexus_3"] = "PROS:\nBest in pro tower\nCannot be stopped\nCONS:\nTeaming is tricky\nMana hungry",
	["nexus_4"] = "'Banning black magic is like banning fun.'\nour founder's quote",

	["guild_1"] = "THIEF'S GUILD",
	["guild_2"] = "OUR MOTTO:\nBORROW\nUSE\nAND\nRETURN",
	["guild_3"] = "PROS:\nMana efficient\nVersatile\nCONS:\nNeeds to steal stairs\nCannot destroy crossing stairs",
	["guild_4"] = "'It's called borrowing actually.'\nour founder's quote",

	["nether_1"] = "SPECTRE'S NETHER",
	["nether_2"] = "OUR MOTTO:\nDISAPPEAR\nHIDE\nAND\nTELEPORT",
	["nether_3"] = "PROS:\nFast spells\nPerfect for solo play\nCONS:\nCosts Robux\nNot recommended for teams",
	["nether_4"] = "'Of course teleporting is safe.'\nour founder's quote (MIA)",

	["study_1"] = "ARCHON'S STUDY",
	["study_2"] = "OUR MOTTO:\nOPEN\nPORTAL\n???\nPROFIT",
	["study_3"] = "PROS:\nUseful Rig\nConfuses opponents\nCONS:\nHardest to learn\nRequires planning",
	["study_4"] = "'I used to rule this staircase.'\nour founder's quote",

	["haven_1"] = "PATRON'S HAVEN",
	["haven_2"] = "OUR MOTTO:\nHELP\nPROTECT\nAND\nCREATE",
	["haven_3"] = "PROS:\nEasiest to learn\nTeam player\nCONS:\nUses a lot of Mana\nMay attract leechers",
	["haven_4"] = "'Those noobs need our help!'\nour founder's quote",

	["shelter_1"] = "DRIFTER'S SHELTER",
	["shelter_2"] = "OUR MOTTO:\nSURF\nRIDE\nAND\nGLIDE",
	["shelter_3"] = "PROS:\nVersatile\nTeam player\nCONS:\nRequires some parkour skills\nTricky in pro towers",
	["shelter_4"] = "'Who needs stairs anyway? We're in space!'\nour founder's quote",

	["circus_1"] = "JOKER'S CIRCUS",
	["circus_2"] = "OUR MOTTO:\nDECEIVE\nCONFUSE\nAND\nLAUGH",
	["circus_3"] = "PROS:\nMade for trolling\nFlips are very useful\nCONS:\nExpensive spells\nYou may ruin friendships",
	["circus_4"] = "'This staircase is a joke.'\nour founder's quote",

	["base_1"] = "KEEPER'S BASE",
	["base_2"] = "OUR MOTTO:\nMOVE\nROTATE\nAND\nCONTROL",
	["base_3"] = "PROS:\nCan restore stairs\nCan reuse stairs\nCONS:\nRequires parkour to use correctly\nUseless without stairs",
	["base_4"] = "'Stop messing up my staircase!'\nour founder's quote",

	["chamber_1"] = "WICKED'S CHAMBER",
	["chamber_2"] = "OUR MOTTO:\nPREVENT\nBLOCK\nAND\nDESTROY",
	["chamber_3"] = "PROS:\nCan destroy any stairs\nCan purge whole staircase\nCONS:\nOver-reliant on stairs",
	["chamber_4"] = "'I'm not evil, there are just too many stairs.'\nour founder's quote",

	["backdoor_1"] = "HACKER'S BACKDOOR",
	["backdoor_2"] = "OUR MOTTO:\nEXPLOIT\nGLITCH\nAND\nBREAK",
	["backdoor_3"] = "PROS:\nFastest alignment\nHard to follow\nCONS:\nOver-reliant on stairs\nUseless in teams",
	["backdoor_4"] = "'Fair play? There's no such thing.'\nour founder's quote",

	["hub_1"] = "SPLICER'S HUB",
	["hub_2"] = "OUR MOTTO:\nTWIST\nSPLICE\nAND\nCONNECT",
	["hub_3"] = "PROS:\nVersatile\nGood in teams\nCONS:\nBit confusing.\nTakes time to learn",
	["hub_4"] = "'Never go in a straight line for too long.'\nour founder's quote",

	["shack_1"] = "GREMLIN'S SHACK",
	["shack_2"] = "OUR MOTTO:\nROTATE\nREVOLVE\nAND\nHYPNOTIZE",
	["shack_3"] = "PROS:\nNo pros\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE",
	["shack_4"] = "'Come play with me.'\nour founder's quote",

	["mirror_1"] = "REAVER'S MIRROR",
	["mirror_2"] = "OUR MOTTO:\nREFLECT\nREPLACE\nAND\nMERGE",
	["mirror_3"] = "PROS:\nMirrors can be used by other players\nCONS:\nMerge and unmerge mechanic may be confusing.",
	["mirror_4"] = "'Mirrors are just doorways.'\nour founder's quote",

	["grave_1"] = "NECROMANCER'S GRAVE",
	["grave_2"] = "OUR MOTTO:\nFOLLOW\nREVIVE\nAND\nBENEFIT",
	["grave_3"] = "PROS:\nWorks well if other players follow your ghost.\nSpells help you and others as well.\nCONS:\nHeaviest alignment on mana.\nDifficult to get used to watching your ghost.",
	["grave_4"] = "'We arent actually haunting you, we just wanna be friends.'\nour founder's quote",

	--SHARED
	["leader_pro"] = "Pro Tower counts as 2 climbs",	
	["leader_update"] = "Update in: ",	
	["leader_updating"] = "Updating...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "CLIMBS REQ",
	["leader_off"] = "Custom tower does not support leaderboards.",

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
	["muggle_lead"] = "HASTY MUGGLES",
	["muggle_ranks"] = "MUGGLE RANKS",

	["hacker_lead"] = "ENCRYPTED HACKERS",
	["hacker_ranks"] = "HACKER RANKS",

	["wicked_lead"] = "VIOLENT WICKEDS",
	["wicked_ranks"] = "WICKED RANKS",

	["keeper_lead"] = "PREPARED KEEPERS",
	["keeper_ranks"] = "KEEPER RANKS",

	["joker_lead"] = "CRAZY JOKERS",
	["joker_ranks"] = "JOKER RANKS",

	["drifter_lead"] = "RAPID DRIFTERS",
	["drifter_ranks"] = "DRIFTER RANKS",

	["patron_lead"] = "NOBLE PATRONS",
	["patron_ranks"] = "PATRON RANKS",

	["archon_lead"] = "AGILE ARCHONS",
	["archon_ranks"] = "ARCHON RANKS",

	["spectre_lead"] = "FLYING SPECTRES",
	["spectre_ranks"] = "SPECTRE RANKS",

	["thief_lead"] = "STEALTHY THIEVES",
	["thief_ranks"] = "THIEF RANKS",

	["heretic_lead"] = "RUTHLESS HERETICS",
	["heretic_ranks"] = "HERETIC RANKS",

	["necromancer_lead"] = "UNDEAD NECROMANCERS",
	["necromancer_ranks"] = "NECROMANCER RANKS",

	["splicer_lead"] = "TWISTED SPLICERS",
	["splicer_ranks"] = "SPLICER RANKS",

	["reaver_lead"] = "REFLECTED REAVERS",
	["reaver_ranks"] = "REAVER RANKS",

	["gremlin_lead"] = "LUCKY GREMLINS",
	["gremlin_ranks"] = "GREMLIN RANKS",

	["chameleon_lead"] = "SWIFT CHAMELEONS",
	["chameleon_ranks"] = "CHAMELEON RANKS",

	["dailies"] = "TODAY'S RECORDS",
	["most_climbs"] = "MOST CLIMBS",
	["most_wins"] = "MOST RACE WINS", 

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
		--["restore"] = "Can be executed next to.",
		["superforced"] = "Can be executed on an empty intersection, or through crossing stairs. Rank up to Exiled to demolish crossing cursed stairs.",
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
		["all"] = "Can be executed on any stairs. Rank up to Annihilator to destroy cursed staris.",
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
		["all"] = "Can be executed below any stairs. Rank up to Annihilator to destroy above cursed staris.",
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
	["lich"] = "Rank up to Lich to demolish crossing stairs",
	["hijacker"] = "Rank up to Hijacker to steal any uncursed stairs.",
	["transformer"] = "Rank up to Transformer to splice already spliced stairs.",
	["strider"] = "Rank up to Strider to double boost UP DRIFTS.",

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

	["Prompt"] = "Click a spell below, to learn how to use it",
	["Title1"] = "Basic spells",
	["Title2"] = "Unique ultimate spells",
	["Title3"] = "Shared ultimate spells",
	["ManaCost"] = "Mana Cost: %s", 
	["TokenCost"] = "Token Cost: %s", 
	["Special"] = "Special requirements: %s",
	["Execution"] = "Execution: %s",
	["Description"] = "Description: %s",
	["basic"] = "Basic",
	["ultimate"] = "Ultimate",
	["unlock"] = "0 (3 to unlock)",
	["none"] = "No special requirements",
}

module.gui.basic.jumpdelay = "jump delay"
module.gui.basic.dancetime = "DANCE TIME!"

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

	["noobs"] = "Tutorials are for noobs!",
	["possessed"] = "Those annoying Heretics!",
	["hypnotized"] = "Where am I?",
	["new"] = "New rank acquired - %s",
	["none1"] = "WAIT! WHAT?",
	["none2"] = "Does this game",
	["none3"] = "have spells?"

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