--VERSION 4.2--
--HINDI/INDIAN--

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {

	["default"] = "मानक",
	["validate"] = "पुष्टि करना",

}

module.gui.switcher = {

	["join"] = "शामिल",
	["friends"] =  "मित्र ऑनलाइन",
	["refresh"] = "रीफ्रेशीगं...",
	["fail"] = "रीफ्रेश करने में विफल",

	--NEW
	["refreshbutton"] = "रीफ्रेश",
	["failed"] = "टेलीपोर्ट विफल!",
	["classic"] = "क्लासिक टावर",
	["pro"] = "प्रो टावर",
	["custom"] = "कस्टम टावर",
	["noVR"] = "वीआर फ्री टावर",
	--END NEW

}

module.gui.serversettings = {

	["Drones"] = "ड्रोन सेटिंग्स",
	["DronesReadOnly"] = "ड्रोन सेटिंग्स (केवल पढ़ने योग्य)",
	["DroneEnabled"] = "ड्रोन सक्षम",
	["DroneFix"] = "ड्रोन सीढ़ियों की मरम्मत करते हैं",
	["DroneRemove"] = "ड्रोन शापित चौराहों को हटाते हैं",
	["DroneUnCurse"] = "ड्रोन शापित सीढ़ियों को पुनर्स्थापित करते हैं",
	["DroneMove"] = "ड्रोन डिफ़ॉल्ट मोड में सीढ़ियों को हिलाते हैं",
	["DroneSpin"] = "ड्रोन डिफ़ॉल्ट मोड में सीढ़ियों को घुमाते हैं",
	["DroneSpeed"] = "ड्रोन की यात्रा गति (स्तर/सेकंड)",
	["DroneDelay"] = "ड्रोन के घूमने का समय (सेकंड में)",
	-- DRONE SETTINGS
["DroneMax"] = "सीढ़ियों की अधिकतम संख्या (इस सीमा के ऊपर ड्रोन केवल सीढ़ियाँ नष्ट करेंगे)", 
-- Maximum number of stairs allowed.
-- If stairs > this value → drones ONLY destroy stairs.

["DroneMin"] = "सीढ़ियों की न्यूनतम संख्या (इस सीमा के नीचे ड्रोन केवल सीढ़ियाँ बनाएंगे)", 
-- Minimum number of stairs.
-- If stairs < this value → drones ONLY create stairs.

["DroneBlock"] = "हर खाली इंटरसेक्शन मिलने पर श्रापित इंटरसेक्शन बनने की संभावना (प्रतिशत)", 
-- % chance that drones create a CURSED intersection when finding an empty spot.

["DroneCurse"] = "सीढ़ियाँ बनाने या सामान्य सीढ़ियों के मिलने पर उनके श्रापित होने की संभावना (प्रतिशत)", 
-- % chance that created or encountered stairs become CURSED.


-- TOWER SETTINGS
["Tower"] = "टॉवर सेटिंग्स", 
-- Section title (UI label)

["TowerReadOnly"] = "टॉवर सेटिंग्स (केवल पढ़ने के लिए)", 
-- Same as above but locked (cannot edit)

["InfMode"] = "इन्फिनिट मोड (रेस या रीजनरेशन के दौरान बदला नहीं जा सकता)", 
-- Enables infinite tower mode (locked during gameplay events)

["CasualPlayers"] = "कैज़ुअल खिलाड़ी स्पेल्स का उपयोग कर सकते हैं", 
-- Allows non-racer players to cast spells

["Regeneration"] = "Wicked's Purge के बाद सीढ़ियाँ अपने आप बनेंगी (इन्फिनिट मोड में काम नहीं करेगा)", 
-- Automatically rebuilds stairs after a purge event

["EvenLevels"] = "केवल सम (Even) लेवल्स की अनुमति", 
-- Restricts gameplay to even-numbered levels only

["OrbMoves"] = "एंडगेम ऑर्ब अपनी जगह बदलता है", 
-- Orb moves instead of staying fixed at the top

["InfRegeneration"] = "नए सर्वर, लेवल बदलने और इन्फिनिट रेस के बाद सीढ़ियाँ अपने आप बनेंगी", 
-- Auto regeneration when:
-- - new server starts
-- - levels change
-- - infinite race ends


-- deprecated
--["TowerLevels"] = "टॉवर लेवल्स (या इन्फिनिट मोड में सक्रिय लेवल्स)। रेस या रीजनरेशन के दौरान बदला नहीं जा सकता",
-- Old setting (no longer used)


["TowerSize"] = "टॉवर ग्रिड का आकार (प्रयोगात्मक)", 
-- Changes the tower grid size (may be unstable)

["RaceDuration"] = "रेस की अधिकतम अवधि (चल रही रेस पर असर नहीं पड़ेगा) (सेकंड)", 
-- Maximum race duration (does not affect current race)

["InfStart"] = "इन्फिनिट मोड की शुरुआत का इंटरवल (हर राउंड में 2 लेवल बनते हैं) (सेकंड)", 
-- Starting delay between infinite rounds

["InfReduction"] = "इन्फिनिट मोड इंटरवल में कमी (हर राउंड छोटा होगा) (सेकंड)", 
-- Amount of time reduced each round (game speeds up)

["InfMin"] = "इन्फिनिट मोड का न्यूनतम इंटरवल (सेकंड)", 
-- Minimum interval limit (prevents it from becoming too fast)


-- NEW KEY
["CooldownTime"] = "इवेंट और रिग के बीच कूलडाउन समय (सेकंड)", 
-- Cooldown time between events and rigs

-- END NEW

}


module.gui.shop = {

	--NEW
module.gui.shop = {

	["architect"] = "Architect गेम पास आपको VR हेडसेट के बिना Architect बनने की अनुमति देता है।",
	-- Allows player to use Architect role without VR

	["chameleon"] = "Chameleon चढ़ाई के दौरान alignment बदल सकता है।",
	-- Can switch alignment mid-climb

	["spectre"] = "Spectre एक teleport आधारित alignment है, जो solo खेलने के लिए सबसे अच्छा है।",
	-- Teleport-focused class for solo gameplay

	["mana"] = "अपनी Mana स्टोरेज क्षमता को 10 पॉइंट से बढ़ाएँ।",
	-- Increases mana capacity

	["3tokens"] = "एक spell अनलॉक करें या 3 ultimate spells कास्ट करें।",
	-- Small token bundle usage

	["30tokens"] = "दस spells अनलॉक करें या 30 ultimate spells कास्ट करें।",
	-- Medium token bundle usage

	["300tokens"] = "सभी spells अनलॉक करने के लिए पर्याप्त, 93 tokens बचेंगे।",
	-- Large token bundle (full unlock)

	["3TOKENS"] = "3 मलटी टोकेन्स R$%d)",
	-- Purchase label

	["30TOKENS"] = "30 मलटी टोकेन्स (R$%d)",
	-- Purchase label

	["300TOKENS"] = "300 मलटी टोकेन्स (R$%d)",
	-- Purchase label

	["SPECTRE"] = "Spectre गेम पास (R$%d)",
	-- Gamepass purchase

	["MANA"] = "20 Mana Storage गेम पास (R$%d)",
	-- Gamepass purchase

	["CHAMELEON"] = "Chameleon गेम पास (R$%d)",
	-- Gamepass purchase

	["ARCHITECT"] = "Architect गेम पास (R$%d)",
	-- Gamepass purchase

}
--END NEW

}


module.gui.nospellsbar = {

	["nocasual"] = "सिर्फ रेसर ही spells कास्ट कर सकते हैं",
	["possessed"] = "POSSESSED! (आज़ाद होने के लिए Mana ढूँढें)",

	["permanent"] = "POSSESSED! (स्थायी मोड)",
	["cancelled"] = "रद्द किया गया...",

}


--NEW
module.gui.stats = {

	["badges"] = "आपके बैज",
	["climbs"] = "आपकी चढ़ाइयाँ",
	["total"] = "कुल चढ़ाइयाँ/जीत",
	["best"] = "अब तक का सबसे अच्छा समय",
	["norecord"] = "[कोई रिकॉर्ड नहीं]",

	["2124486274"] = "Creator को प्रैंक करें",
	["1803533030753957"] = "ब्लैक होल",
	["2124480173"] = "Wicked का विश्वासघात",
	["2124480172"] = "Joker की चाल",
	["2124637294"] = "Drifter की यात्रा",
	["2124517579"] = "Thief की चोरी",
	["4464785885277417"] = "Splicer का ट्विस्ट",
	["2124480174"] = "Keeper का आदेश",
	["2124637293"] = "Archon का कनेक्शन",
	["2124517578"] = "Hacker का एक्सप्लॉइट",
	["707445818894757"] = "Gremlin का स्पाइरल",
	["2124480171"] = "Patron का गर्व",
	["1407551481032773"] = "Reaver का प्रतिबिंब",
	["2124637295"] = "Heretic का श्राप",
	["1885715582646280"] = "Necromancer की विधि",
	["2124480175"] = "Muggle का लॉजिक",
	["2124826874"] = "पूर्ण चक्र",
	["2124529966"] = "ट्यूटोरियल स्किप किया",
	["2124826880"] = "Possessed भाग्य",
	["3731010929572663"] = "Hypnotised सपना",
	["840574993122888"] = "परावर्तित दृष्टिकोण",
	["2124913225"] = "Architect का डिज़ाइन",
	["2124702954"] = "Rootkit इंस्टॉल हुआ",
	["2124702945"] = "सब कुछ नष्ट करो",
	["2124702946"] = "व्यवस्था बहाल",
	["128721686760593"] = "तुम मुझे बार-बार घुमाते हो।",
	["2124702952"] = "मैं लिफ्ट लूँगा",
	["3121101516427751"] = "The Entanglement",
	["2124702942"] = "कोई नोब पीछे न छूटे",
	["2124702950"] = "Illuminati की पुष्टि",
	["2124702951"] = "मेरा, सब मेरा!",
	["1165646024608180"] = "हम एक हैं",
	["2303731210592278"] = "उठो, उठो, उठो!",
	["2124702949"] = "बहिष्कार",
	["2124702943"] = "प्रैंक करना ही जीवन है",
	["2124702948"] = "Spells ज़्यादा जरूरी नहीं",
	["2124826876"] = "परफेक्ट सर्कल",
	["2124645341"] = "सीक्रेट बैज",
	["2126893403"] = "सुपर सीक्रेट बैज",
	["2126893411"] = "मेगा सीक्रेट बैज",

}
--END NEW


module.gui.questions = {

	["cancel"] = "क्या आप इस timed spell को रद्द करना चाहते हैं? Tokens वापस नहीं मिलेंगे।",
	["tutorial"]= "क्या आप ट्यूटोरियल खेलना चाहते हैं?",
	["skip"] = "क्या आप ट्यूटोरियल छोड़ना चाहते हैं?",
	["reshuffle"] = "क्या आप चाहते हैं कि stairs चलते समय टकराव से बचें? अगर नहीं, तो रास्ते में आने वाली कोई भी stairs नष्ट हो जाएंगी।",

	["gift"] = "क्या आप %s Game Pass किसी अन्य खिलाड़ी को देना चाहते हैं?",
	["choose"] = "%s Game Pass पाने के लिए एक खिलाड़ी चुनें",
	["confirm"] = "क्या आप %s Game Pass %s को देना चाहते हैं?",
	["received"] = "आपको %s Game Pass मिला है, %s की ओर से!",

	["architect"] = "Architect",
	["mana"] = "+10 Mana Storage",
	["spectre"] = "Spectre",
	["chameleon"] = "Chameleon",

	["race"] = "रेस में शामिल हों?",
	["racein"] = "रेस शुरू होने में:",
	["go"] = "शुरू!",
	["raceoff"] = "रेस रद्द हो गई",

}
--END NEW



module.gui.codes = {

	["title"] = "कोड दर्ज करें",
	["body"] = "अपना कोड यहाँ दर्ज करें:",
	["prompt"] = "(कोड)",
	["button"] = "सत्यापित करें",

}


module.gui.jukebox = {

	["title"] = "ज्यूकबॉक्स",

	["master"] = "मास्टर वॉल्यूम",
	["default"] = "(मास्टर वॉल्यूम का उपयोग हो रहा है)",
	["climb"] = "चढ़ाई का संगीत",
	["endgame"] = "एंडगेम संगीत",
	["failed"] = "[लोड करने में विफल]",

	--NEW
	["off"] = "म्यूट",
	--END NEW

}


module.gui.results = {

	["title"] = "रेस परिणाम",

	["place"] = "स्थान",
	["name"] = "नाम",
	["level"] = "अधिकतम स्तर",
	["time"] = "समय",
	["rank"] = "रैंक",
	["not"] = "N/A",

	[1] = "विजेता",
	[2] = "दूसरा",
	[3] = "तीसरा",
	[4] = "चौथा",
	[5] = "पाँचवाँ",
	[6] = "छठा",
	[7] = "सातवाँ",
	[8] = "आठवाँ",
	[9] = "नौवाँ",
	[10] = "दसवाँ",
	[11] = "ग्यारहवाँ",
	[12] = "बारहवाँ",

}


--NEW
module.gui.menu = {
	
	["Codes"] = "कोड दर्ज करें",
	["Feedback"] = "गेम फीडबैक भेजें",
	["Language"] = "गेम भाषा बदलें",
	["Music"] = "म्यूजिक ज्यूकबॉक्स",
	["RaceResults"] = "पिछली रेस के परिणाम",
	["ServerSettings"] = "टॉवर सेटिंग्स (कस्टम टॉवर)",
	["Settings"] = "गेम सेटिंग्स",
	["Shop"] = "गेम पास और टोकन खरीदें",
	["Spectate"] = "अन्य खिलाड़ियों को देखें",
	["Stats"] = "आपके बैज और उपलब्धियाँ",
	["SwitchServer"] = "टॉवर बदलें",
	["Tokens"] = "आपके टोकन",
	["Tutorial"] = "ट्यूटोरियल खेलें",

}

--NEW
--end screen tutorial
module.gui.tutorial = {
	
	["complete"] = "चढ़ाई पूरी हुई!",
	["choose"] = "कृपया अपना पहला alignment चुनें!",
	["difficulty"] = "कठिनाई:",

}
--END NEW

module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "Drones %s Mode",
	["refill"] = "Mana Overload (%s)",
	["union"] = "Ghost Union (%s)",
}

module.spells.names = {

	--PATRON
	["summon"] = "सीढ़ियाँ बनाओ",
	["restore"] = "ऑर्ब बुलाओ",
	["split"] = "उल्टा बनाओ",
	["shrinkabove"] = "ऊपर की सीढ़ियाँ छोटी करो",
	["link"] = "लिंक बनाओ",
	["portal"] = "पोर्टल बनाओ",

	["summoner"] = "समनर",
	["patronevent"] = "सीढ़ी ओवरलोड",
	["patronaltevent"] = "सिकुड़न",

	--JOKER
	["flip"] = "उल्टा करो",
	["flipabove"] = "ऊपर उल्टा करो",
	["fake"] = "नकली सीढ़ियाँ",
	["invisible"] = "अदृश्य सीढ़ियाँ",
	["disco"] = "डिस्को सीढ़ियाँ",
	["trap"] = "जाल लगाओ",

	["flipper"] = "फ्लिपर",
	["jokerevent"] = "चोगा",
	["jokeraltevent"] = "सब उल्टा कर दो",

	--WICKED
	["destroy"] = "नष्ट करो",
	["destroyabove"] = "ऊपर नष्ट करो",
	["bend"] = "ऊपर मोड़ो",
	["damage"] = "तोड़ दो",
	["flatten"] = "नीचे दबाओ",
	["wall"] = "दीवार बनाओ",

	["bender"] = "मोड़ने वाला",
	["wickedevent"] = "विनाश",
	["wickedaltevent"] = "संहार",

	--KEEPER
	["move"] = "हिलाओ",
	["rotate"] = "घुमाओ",
	["moveup"] = "ऊपर ले जाओ",
	["movedown"] = "ठीक करो",
	["moverandom"] = "रैंडम हिलाओ",
	["rig"] = "रैंडम",

	["ascension"] = "उत्थान",
	["keeperevent"] = "रीशफल",
	["keeperaltevent"] = "पुनर्स्थापन",

	--SPECTRE
	["phantom"] = "फैंटम सीढ़ियाँ",
	["ghost"] = "ऊपर घोस्ट बनाओ",
	["shadow"] = "घोस्ट बनाओ",
	["horizontal"] = "साइड TP",
	["random"] = "रैंडम TP",
	["vertical"] = "ऊपर TP",

	["traveller"] = "यात्री",
	["spectreevent"] = "प्रेत फेरबदल",
	["spectrealtevent"] = "एथर लोक",

	--HACKER
	["dash"] = "डैश",
	["blink"] = "ब्लिंक",
	["swap"] = "बदल दो",
	["slide"] = "स्लाइड",
	["slideup"] = "अंदर घुसो",
	["glitch"] = "ग्लिच करो",

	["hack"] = "स्पीड हैक",
	["hackerevent"] = "वृद्धि",
	["hackeraltevent"] = "भेदन",

	--THIEF
	["steal"] = "चुरा लो",
	["stealabove"] = "ऊपर से चुरा लो",
	["place"] = "रख दो",
	["uppass"] = "घुमाव सीढ़ी",
	["sidepass"] = "बायपास बनाओ",
	["drop"] = "गिरा दो",

	["heist"] = "डकैती",
	["thiefevent"] = "समतल भूमि",
	["thiefaltevent"] = "मेगा बायपास",

	--ARCHON
	["splitup"] = "ऊपर गेट",
	["splitrotate"] = "घुमाव गेट",
	["splitside"] = "सीधा गेट",
	["splitrandom"] = "रैंडम गेट",
	["cancelsplit"] = "गेट हटाओ",
	["splitforward"] = "आगे गेट",

	["splitter"] = "गेट मास्टर",
	["archonevent"] = "सीढ़ी द्वार-1",
	["archonaltevent"] = "विभाजन",

	--DRIFTER
	["indrift"] = "सर्फ",
	["outdrift"] = "रैंडम बहाव",
	["updrift"] = "लिफ्ट",
	["diagdrift"] = "तिरछा बहाव",
	["spin"] = "घुमा दो",
	["driftabove"] = "ऊपर उठाओ",

	["riser"] = "उठाने वाला",
	["drifterevent"] = "बहाव",
	["drifteraltevent"] = "उठान",

	--HERETIC
	["createcursed"] = "श्रापित सीढ़ियाँ",
	["curse"] = "श्राप दो",
	["curseabove"] = "ऊपर श्राप",
	["curseinter"] = "झिलमिल",
	["autodown"] = "नीचे उठाओ",
	["autoup"] = "ऊपर गिराओ",

	["malediction"] = "महाश्राप",
	["hereticevent"] = "विभाजन",
	["hereticaltevent"] = "प्रतिशोध",

	--SPLICER
	["twistup"] = "ऊपर मोड़ो",
	["twistside"] = "साइड मोड़ो",
	["twistrotate"] = "घुमा मोड़ो",
	["canceltwist"] = "मोड़ हटाओ",
	["split2"] = "दो हिस्से करो",
	["splitalt"] = "आगे बाँटो",

	["twister"] = "मोड़ने वाला",
	["splicerevent"] = "अंतर्गुंथन",
	["spliceraltevent"] = "द्विभाजन",

	--NECROMANCER
	["createdual"] = "डबल सीढ़ियाँ",
	["copyplatform"] = "कॉपी प्लेटफॉर्म",
	["soulbridge"] = "आत्मा पुल",
	["undeadabove"] = "आत्मा हटाओ",
	["revival"] = "जीवन बिंदु",
	["regen"] = "माना भरें",

	["duality"] = "द्वैत",
	["necromancerevent"] = "पुनर्जन्म",
	["necromanceraltevent"] = "आत्मा संग्रह",

	--REAVER
	["createmirrored"] = "दर्पण सीढ़ियाँ",
	["bigmirror"] = "बड़ा दर्पण",
	["smallmirror"] = "छोटा दर्पण",
	["outermirror"] = "बाहरी दर्पण",
	["merge"] = "मिला दो",
	["oneway"] = "एकतरफा सीढ़ियाँ",

	["reflection"] = "प्रतिबिंब",
	["reaverevent"] = "चौराहा",
	["reaveraltevent"] = "कांचकरण",

	--GREMLIN
	["tram"] = "ट्राम सीढ़ियाँ",
	["screwup"] = "ऊपर घुमाव",
	["revolve"] = "घुमाओ",
	["trapstairs"] = "जाल सीढ़ियाँ",
	["screwdown"] = "नीचे घुमाव",
	["spinplatform"] = "घूमता प्लेटफॉर्म",

	["tramway"] = "ट्राम मार्ग",
	["gremlinevent"] = "घूमाव क्रांति",
	["gremlinaltevent"] = "जाम स्थिति",

}
	
	--TUTORIAL
	["tcreate"] = "सीढ़ियाँ बनाओ",
	["tflip"] = "उल्टा करो",
	["tdestroy"] = "ऊपर नष्ट करो",
	["tmove"] = "हिलाओ",
	["tdash"] = "डैश",
	["trestore"] = "ठीक करो",

	--CHAMELEON
	["ditch"] = "पार करो",
	["warp"] = "वार्प करो",
	["chamdown"] = "नीचे ले जाओ",
	["chamdraw"] = "नीचे पुल बनाओ",
	["chamdrawabove"] = "ऊपर पुल बनाओ",
	["oneways"] = "एकतरफा सीढ़ियाँ",

	--NEW
	["mugglereg"] = "सीढ़ियाँ फिर बन रही हैं",
	["mugglecd"] = "इवेंट और रिग कूलडाउन",
	["share"] = "माना शेयर करो",

	--ARCHITECT
	["archpatron"] = "सीढ़ी बना या छोटा कर",
["archarchon"] = "गेट सीढ़ी या प्लेटफॉर्म बना",
["archthief"] = "चुरा या सीढ़ी रख",
["archnecro"] = "ड्यूल या अनडेड सीढ़ी बना",
["archhacker"] = "एस्केलेटर या हैक-इन कर",
["archkeeper"] = "सीढ़ी मूव कर या रिस्टोर कर",
["archsplicer"] = "स्प्लाइस या स्प्लिट कर",
["archwicked"] = "दीवार बना या सीढ़ी तोड़",
["archgremlin"] = "सीढ़ी घुमा या प्लेटफॉर्म घुमा",
["archjoker"] = "फेक या फ्लिप सीढ़ी बना",
["archdrifter"] = "ड्रिफ्ट कर या एलिवेटर यूज़ कर",
["archspectre"] = "फैंटम या घोस्ट सीढ़ी बना",
["archreaver"] = "मिरर सीढ़ी या वन-वे बना",
["archheretic"] = "कर्स्ड इंटरसेक्शन या सीढ़ी बना",

	--END NEW

}

-- common description stuff
local union = "यह एक timed Ghost Union spell है। Ghost Union mode में तुम blocking सीढ़ियों के अंदर से निकल सकते हो और ghost, obby, और fake सीढ़ियों पर चल सकते हो। Special सीढ़ियों का तुम पर कोई effect नहीं होगा, और तुम rigs trigger नहीं करोगे। लेकिन इस mode में तुम spells cast नहीं कर सकते।"
local overload = "यह एक Overload spell है। यह तुम्हें अगले 1 minute तक हर 6 seconds में 1 mana देगा (total 10)। एक समय में सिर्फ एक overload active हो सकता है।"
local timed = "यह spell timed है। "
local rig = "यह एक Rig spell है। यह सभी normal सीढ़ियों को एक-एक करके "
local event = "यह एक Event spell है। यह सभी normal सीढ़ियों को "
local fill = "यह एक Fill spell है। यह हर खाली और uncursed intersection में random direction में सीढ़ियाँ बनाएगा। "
local mode = "यह एक Drone spell है। यह drone mode को %s में बदल देगा। इस mode में drones randomly %s या %s use करेंगे normal सीढ़ियों पर। Special सीढ़ियाँ restore होंगी। Limits के बाहर drones create या destroy करेंगे।"
local timedExtra = " Rank %s तक बढ़ाओ ताकि limit 90s हो जाए। यह spell cast करने पर सभी %s जिनका rank कम से कम %s है उनका mana भी refill होगा।" -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "यह spell तुम्हें chosen direction में सीढ़ी बनाने देता है। अगर बीच में कोई crossing सीढ़ी होगी तो वो destroy हो जाएगी।",
	["restore"] = "यह spell top level वाले orb को तुम्हारे platform पर बुलाता है। DEFENDER rank पर mana cost 2 हो जाती है। SAVIOUR rank पर orb की speed double हो जाती है।",
	["split"] = "यह spell नीचे की सीढ़ियों को opposite direction में recreate करता है। Recreated सीढ़ियाँ हमेशा normal होंगी, original type matter नहीं करेगा।",
	["shrinkabove"] = "यह spell ऊपर की सीढ़ियों को छोटा कर देता है ताकि तुम उनके आसपास चल सको।",
	["link"] = "यह spell platforms के बीच 60 seconds के लिए energy bridge बनाता है। Links नीचे से intangible होते हैं। CREATOR rank पर time 120 seconds हो जाता है।",
	["portal"] = "यह spell portal बनाता है जो सभी players को एक platform ऊपर teleport करता है। Portal 60 seconds तक रहता है। PROTECTOR rank पर time 120 seconds हो जाता है।",

	["summoner"] = timed .. "यह तुम्हें 1 minute तक unlimited stairs create करने देता है। Arrows पर jump करते रहो और stairs बनाते रहो।" .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .. "Patron Rig। Trigger होने पर player को 1 mana मिलता है। अगर mana full है तो trigger नहीं होगा। Trigger के बाद stairs normal हो जाती हैं।",
	["patronevent"] = fill .. "बनी हुई सीढ़ियाँ normal होंगी।",
	["patronaltevent"] = event .. "Shrink spell।",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","Shrink Spell"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER 
	["flip"] = "यह spell सीढ़ियों को flip करता है, ऊपर नीचे और नीचे ऊपर हो जाता है। तुम इसे फिर से use करके वापस भी कर सकते हो।",
	["flipabove"] = "यह spell ऊपर की सीढ़ियों को flip करता है, ऊपर नीचे और नीचे ऊपर हो जाता है। तुम इसे फिर से use करके वापस भी कर सकते हो।",
	["fake"] = "यह spell chosen direction में fake सीढ़ियाँ बनाता है। अगर बीच में crossing सीढ़ी होगी तो वो destroy हो जाएगी। जो भी player (तुम भी) इन पर चढ़ेगा वो गिर जाएगा, TRICKSTERS, ITS और Ghost Union mode वाले players को छोड़कर।",
	["invisible"] = "यह spell invisible सीढ़ियाँ बनाता है। यह crossing सीढ़ियाँ destroy नहीं करता, इसलिए सिर्फ empty intersection में ही रख सकते हो। JESTER rank पर सभी invisible सीढ़ियाँ दिखेंगी और उन्हें hide करने का option मिलेगा।",
	["disco"] = "यह spell सीढ़ियों को disco mode में डाल देता है। जो भी player (तुम भी) इन पर जाएगा वो 5 seconds तक नाचेगा। COMIC rank और ऊपर वाले immune होते हैं।",
	["trap"] = "यह spell platform को 60 seconds के लिए trap door बना देता है। जो भी player (तुम भी) इस पर चलेगा वो नीचे गिर जाएगा। JOKESTER rank पर traps detect कर सकते हो, TRICKSTER rank पर immune हो जाते हो।",

	["flipper"] = timed .. "यह तुम्हें 1 minute तक unlimited flip spells cast करने देता है। हमेशा ऊपर की सीढ़ियाँ flip होंगी, अगर नहीं मिली तो नीचे वाली होंगी।" .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "Joker Rig। Trigger होने पर stairs automatically flip हो जाती हैं।",
	["jokerevent"] = event .. "Invisibility spell।",
	["jokeraltevent"] = event .. "Flip spell।",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","Invisible Spell"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "यह spell सीढ़ियों को destroy करता है। यह किसी भी type की सीढ़ी पर काम करता है। VILE rank पर यह free हो जाता है। VICIOUS rank पर special सीढ़ी destroy करने पर 1 mana मिलता है। ANNIHILATOR rank पर cursed सीढ़ियाँ भी destroy कर सकते हो।",
	["destroyabove"] = "यह spell ऊपर की सीढ़ियों को destroy करता है। यह किसी भी type की सीढ़ी पर काम करता है। VICIOUS rank पर special सीढ़ी destroy करने पर 1 mana मिलता है। ANNIHILATOR rank पर cursed सीढ़ियाँ भी destroy कर सकते हो।",
	["bend"] = "यह spell सीढ़ियों को ऊपर bend करता है। इससे तुम ऊपर वाले platform तक पहुँच सकते हो।",
	["damage"] = "यह spell ऊपर की सीढ़ियों को obby बना देता है, ज्यादातर steps हटा देता है। Use करने से पहले jump cooldown याद रखना। DESTROYER rank पर obby पर भी normal सीढ़ियों की तरह चल सकते हो।",
	["flatten"] = "यह spell opposite सीढ़ियों को नीचे bend करता है। इससे opposite platform तक जा सकते हो। नीचे वाली सीढ़ियों पर troll करने के लिए भी use कर सकते हो।",
	["wall"] = "यह spell platform पर energy wall बनाता है और opposite platform तक link देता है 60 seconds के लिए। सिर्फ Wickeds और Ghost Union वाले इस wall के अंदर जा सकते हैं।",

	["bender"] = timed .. "यह तुम्हें 1 minute तक unlimited bend spells cast करने देता है। अगर possible हुआ तो नीचे और ऊपर दोनों सीढ़ियाँ एक साथ bend होंगी।" .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "Wicked Rig। Trigger होने पर stairs automatically destroy हो जाती हैं। DEVIL rank पर तुम इन पर चल सकते हो बिना trigger किए।",
	["wickedevent"] = event .. "Destroy spell। Regeneration trigger नहीं होगा।",
	["wickedaltevent"] = "यह एक Event spell है। यह game की सभी सीढ़ियाँ और curses destroy कर देता है। कोई exception नहीं। Regeneration trigger होगा।",
	["wickedmode"] = string.format(mode,"Wicked","Wicked Rig","Bend Spell"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "यह spell सीढ़ियों को horizontal direction में move करता है और रास्ते में आने वाली सीढ़ियों को destroy कर देता है। Cast करने के बाद arrows दिखेंगे direction choose करने के लिए। सीढ़ियाँ game area के बाहर नहीं जा सकतीं। CONTROLLER rank पर uncursed सीढ़ियाँ भी move कर सकते हो।",
	["rotate"] = "यह spell सीढ़ियों को rotate करता है और रास्ते में आने वाली सीढ़ियों को destroy कर देता है। Cast के बाद arrows आएंगे direction choose करने के लिए। सीढ़ियाँ game area के बाहर rotate नहीं होंगी। CONTROLLER rank पर uncursed सीढ़ियाँ move कर सकते हो।",
	["moveup"] = "यह spell सीढ़ियों को ऊपर move करता है और रास्ते में आने वाली सीढ़ियों को destroy करता है। सीढ़ियाँ top level के ऊपर नहीं जा सकतीं। CONTROLLER rank पर uncursed सीढ़ियाँ move कर सकते हो।",
	["movedown"] = "यह spell special सीढ़ियों को fix करता है। अगर सीढ़ी पहले से normal है तो spell काम नहीं करेगा। CAPTAIN rank पर यह free हो जाता है। ADMIRAL rank पर cursed सीढ़ियाँ और intersections भी fix कर सकते हो।",
	["rig"] = "यह spell सीढ़ियों को random direction में move या rotate करता है और रास्ते में आने वाली सीढ़ियों को destroy करता है। OPERATOR rank पर stairs नीचे नहीं जाएँगी। CONTROLLER rank पर uncursed सीढ़ियाँ move कर सकते हो।",
	["moverandom"] = "यह spell ऊपर की सीढ़ियों को random direction में move या rotate करता है और रास्ते में आने वाली सीढ़ियों को destroy करता है। OPERATOR rank पर stairs नीचे नहीं जाएँगी। CONTROLLER rank पर uncursed सीढ़ियाँ move कर सकते हो।",

	["ascension"] = timed .. "यह तुम्हें 1 minute तक unlimited move up spells cast करने देता है।" .. string.format(timedExtra,RankData.KEEPER[7].name,"Keepers",RankData.KEEPER[3].name),
	["keeperrigevent"] = rig .. "Keeper Rig। Trigger होने पर stairs random direction में move या rotate होंगी। OPERATOR rank पर तुम्हारे trigger किए rigs कभी नीचे नहीं जाएँगे। SENTINEL rank पर trigger न करने का option मिलता है।",
	["keeperevent"] = event .. "Random Move spell। Execute करने से पहले soft या forced mode चुन सकते हो। Soft में कुछ destroy नहीं होगा, forced में रास्ते की सभी सीढ़ियाँ destroy होंगी।",
	["keeperaltevent"] = "यह एक Event spell है। यह game की सभी सीढ़ियाँ restore कर देता है, cursed वाली भी। लेकिन cursed intersections नहीं हटते।",
	["keepermode"] = string.format(mode,"Keeper","Keeper Rig","Random Move Spell"),
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "यह spell chosen direction में Phantom सीढ़ियाँ बनाता है। अगर बीच में crossing सीढ़ी होगी तो वो destroy हो जाएगी। Phantom सीढ़ियाँ जल्दी fade होकर गायब हो जाती हैं।",
	["ghost"] = "यह spell ऊपर की सीढ़ियों को ghost बना देता है। तुम इनके अंदर से जा सकते हो लेकिन उन पर चल नहीं सकते जब तक AETHER rank न हो। दुबारा use करके normal कर सकते हो।",
	["shadow"] = "यह spell सीढ़ियों को ghost बना देता है। तुम इनके अंदर से जा सकते हो लेकिन उन पर चल नहीं सकते जब तक AETHER rank न हो। PHANTOM rank पर यह free हो जाता है। दुबारा use करके normal कर सकते हो।",
	["horizontal"] = "यह spell तुम्हें chosen direction में teleport करता है। तुम रास्ते की uncursed सीढ़ियों के अंदर से जा सकते हो।",
	["random"] = "यह spell तुम्हें same level के किसी random platform पर teleport करता है।",
	["vertical"] = "यह spell तुम्हें ऊपर वाले platform पर teleport करता है।",

	["traveller"] = timed .. "यह तुम्हें 1 minute तक unlimited horizontal teleport spells cast करने देता है।" .. string.format(timedExtra,RankData.SPECTRE[7].name,"Spectres",RankData.SPECTRE[3].name),
	["spectrerigevent"] = rig .. "Spectre Rig। Trigger होने पर 50% chance है कि stairs ghost हो जाएँ। VISION rank पर तुम इन पर चल सकते हो बिना trigger किए।",
	["spectreevent"] = event .. "Phantom Shuffle।",
	["spectrealtevent"] = event .. "Æther Realm।",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","Ghost Spell"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "यह spell तुम्हें तेजी से आगे dash करने देता है, जिससे तुम जल्दी distance cover कर सकते हो और obstacles avoid कर सकते हो।",
	["blink"] = "यह spell तुम्हें instantly छोटी दूरी तक teleport करता है। यह quick movement और tight situations से निकलने के लिए useful है।",
	["swap"] = "यह spell तुम्हें किसी दूसरे player के साथ position swap करने देता है। सही timing पर use करके opponents को confuse या नीचे गिरा सकते हो।",
	["slide"] = "यह spell stairs को escalator में बदल देता है, जो players को automatically ऊपर ले जाती हैं। इससे fast climbing possible होता है।",
	["slideup"] = "यह spell stairs के अंदर hack करके ऊपर जाने का रास्ता बनाता है, जिससे hidden movement मिलता है और तुम दूसरों को surprise कर सकते हो।",
	["glitch"] = "यह spell stairs को glitch कर देता है जिससे उनका behavior unstable हो जाता है और players के लिए climb करना मुश्किल हो सकता है।",

	["hack"] = timed .. "यह तुम्हें 1 minute के लिए speed boost देता है जिससे तुम्हारी movement काफी fast हो जाती है और तुम जल्दी climb कर सकते हो।" .. string.format(timedExtra,RankData.HACKER[7].name,"Hackers",RankData.HACKER[3].name),
	["hackerrigevent"] = rig .. "Hacker Rig। Trigger होने पर stairs escalator की तरह behave करती हैं और players को ऊपर ले जाती हैं।",
	["hackerevent"] = event .. "Escalation effect, जिससे stairs movement-based हो जाती हैं और gameplay fast हो जाता है।",
	["hackeraltevent"] = event .. "Breach effect, जिससे movement mechanics ज्यादा chaotic और unpredictable हो जाते हैं।",
	["hackermode"] = string.format(mode,"Hacker","Hacker Rig","Escalator Spell"),
	["hackerrefill"] = overload,
	["hackerunion"] = union,


	--THIEF
	["steal"] = "यह spell stairs को चुरा लेता है और उन्हें तुम्हारे storage में रखता है ताकि तुम बाद में उन्हें use कर सको।",
	["stealabove"] = "यह spell ऊपर की stairs को चुरा लेता है, जिससे ऊपर का रास्ता हट जाता है और तुम उन्हें store कर सकते हो।",
	["place"] = "यह spell तुम्हें stored stairs को chosen direction में place करने देता है। अगर रास्ते में crossing stairs होंगी तो वो destroy हो जाएँगी।",
	["uppass"] = "यह spell stolen stairs से spiral staircase बनाता है। इसे outer platforms पर cast किया जा सकता है और यह 60 seconds तक रहता है। BANDIT rank पर duration 120 seconds हो जाता है।",
	["sidepass"] = "यह spell stolen stairs से side में bypass बनाता है जिससे तुम obstacles avoid कर सकते हो। यह temporary path create करता है।",
	["drop"] = "यह spell stored stairs को गिरा देता है, जिससे नीचे रास्ता बन सकता है या दूसरे players गिर सकते हैं।",

	["heist"] = timed .. "यह तुम्हें 1 minute तक unlimited steal spells cast करने देता है, जिससे तुम लगातार stairs चुरा सकते हो।" .. string.format(timedExtra,RankData.THIEF[7].name,"Thiefs",RankData.THIEF[3].name),
	["thiefrigevent"] = rig .. "Thief Rig। Trigger होने पर stairs automatically चुरा ली जाती हैं और remove हो जाती हैं।",
	["thiefevent"] = event .. "Flat Land effect, जिससे stairs हटकर flat layout बन जाता है।",
	["thiefaltevent"] = event .. "Mega Bypass effect, जिससे बड़े bypass paths बनते हैं।",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","Steal Spell"),
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
	["spin"] = "This spell will rotate below stairs 180 degrees. Rank up to NOMAD to be able to spin any uncursed stairs.",
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
	["autoup"] = "Use this spell to create special mirrored section of upper part of the crossing staircase, allowing you to access them. Regular steps will be lowered down. Only ghost unions and Heretics can walk on that section.  It can also be used on below stairs for trolling purposes.",

	["malediction"] = timed .. "It allows you to create as many cursed stairs as you want for one minute. Rank up to BANISHED to destroy crossing cursed stairs." .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name), 
	["hereticrigevent"] = rig .. "the Heretic Rig. Stairs, once triggered, will possess the triggering player. They will have to find Mana to be released. Possessed players cannot cast spells and they cannot jump. Rank up to UNBELIEVER to gain immunity to this rig. Rank up to EXILED to get 1 mana each time a player is possessed.",
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
	["spliceraltevent"] = event .. "the Split Stairs Forward spell.",
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Random Splice spell"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	--NECROMANCER
	["createdual"] = "This spell will Create Stairs for both you and Your ghost, so that players near the ghost can use them. Rank up to SKELETON for ghost to ignore cursed stairs and intersections. Rank up to LICH to demolish crossing cursed stairs with this spell.",
	["copyplatform"] = "This spell will copy any stairs from ghost platform to yours and vice-versa. Stairs will be copied in mirrored fashion. Copied stairs will always be normal. Rank up to REVENANT for this spell to remove curses if it needs to.",
	["soulbridge"] = "This spell will create a rotating link between Yours and any diagonal platform of Your choice. Your ghost will also create a link in the opposite direction. Necromancer links will spin when a player jumps on them.",
	["undeadabove"] = "This spell will remove soul from above stairs and stairs above your ghost. If there are no stairs above your ghost, they will be created. Such stairs can be walked through and walked on, but will fade away after two minutes.",
	["revival"] = "Use this spell to create a 'revival' point where your ghost is. If you ever fall below such point, you will be teleported there. Revival point will be removed after use, completed climb or when you cast another one. Chameleon morph will also remove the point. Rank up to ACOLYTE to bring the Orb to this point, if you cast it on the top level.",
	["regen"] = "Use this spell to regenerate Mana once per climb. You will get 6 Mana points upon use. Players near Your ghost will get 3 Mana too. Rank up to DEATHBRINGER to regenerate 10 Mana and 5 Mana for players near Your ghost.", 

	["duality"] = timed .. "It allows you to cast at many Dual Stairs as you like for one minute. Rank up to LICH to demolish crossing cursed stairs with this spell." .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name), 
	["necromancerrigevent"] = rig .. "the Necromancer Rig. Stairs, once triggered, will have their soul removed and will fade away.",
	["necromancerevent"] = fill ..  "Created stairs will be soulless and will fade away after two minutes.",
	["necromanceraltevent"] = event .. "the Remove Soul spell. Such stairs will fade away after two minutes.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Remove Soul spell"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	["createmirrored"] = "This spell will Create Stairs with a mirror in the middle. Once you walk through the mirror, you will merge with Your ghost. Walk through the mirror again and you will separate from Your ghost. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["bigmirror"] = "This spell will create a giant mirror on the whole level for 10 seconds. Only players merged with their ghost can walk on the mirror. Giant mirrors will remove any small mirrors on the level. Rank up to PRESENCE to extend mirror lifetime to 15 seconds.",
	["smallmirror"] = "This spell will create a small mirror in the chosen direction for 6 seconds. Only players merged with their ghost can walk on the mirror. Rank up to PRESENCE to extend mirror lifetime to 9 seconds.",
	["outermirror"] = "This spell will create a mirror in the outer direction and twin mirror on the other side of the map. It can only be used in outer platforms. Players who walk through such mirror will merge with their ghost and teleport to the connected mirror on the other side of the tower. Mirror will disappear after 60 seconds. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["merge"] = "Use this spell to manually merge with Your ghost. Rank up to REPLICA to use this spell to unmerge from Your ghost. Rank up to POLTERGEIST to merge/unmerge nearby players. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["oneway"] = "This spell will turn above stairs into Glass Stairs, allowing you to walk through them. Only players merged with ghost can walk on Glass Stairs.",

	["reflection"] = timed .. "It allows you to cast as many Giant Mirrors as you like for one minute. You will be merged with your ghost automatically." .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name), 
	["reaverrigevent"] = rig .. "the Reaver Rig. Stairs, once triggered, will Reflect the triggering player. They would have to find Mana to break free. Reflected players must control their characters from their ghost perspective. Reflected players are unaffected by Reaver mirrors. Rank up to WIGHT to get Reaver Rig immunity.",
	["reaverevent"] = event .. "the Random One-Way Stairs spell. One-Way stairs work like Mirrored Stairs, but can be only used in one direction. Rank up to ILLUSION, to circumvent this effect.",
	["reaveraltevent"] = event .. "the Glass Stairs spell.",
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Random One-Way Stairs spell."),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
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
	["chamdraw"] = "This used to be a Heretic spell, before it got rejected. It will turn stairs into drawbridge, making descent impossible unless other player activates bridge from below.",
	["oneways"] = "This used to be a Reaver spell, before it got rejected. This spell will turn below stairs into one-way passage, while merging players with their ghost, if they walk in proper direction. You can choose which direction to block. Rank up to Illusion to be immune to one-way stairs effect. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.",
	["ditch"] = "This used to be a thief spell, before it got rejected. It will turn stairs into a crossed staircase.",
	["chamdrawabove"] = "This used to be a Heretic spell, before it got rejected. It will turn above stairs into drawbridge, allowing you to pass. Ascend is impossible unless other player activates bridge from above. Old Unbeliever rank is no longer active and auto draw from below is no longer possible.",
	["warp"] = "This used to be a wicked spell, before it got rejected. It will warp stairs back to the platform.",

	["chameleonrigevent"] = rig .. "the Chameleon Rig. Stairs once triggered, will execute random effect from all other rigs.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","random spell from all other modes"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

	--NEW
	["share"] = "With this spell you can share Your own Mana with a nearby player. You can only share one Mana at a time, and you must have two Mana minimum to do this.",

	--ARCHITECT
	["archpatron"] = "This spell used on platform's arrows, will create normal stairs. When used on normal or rigged stairs, it will shrink them.",
	["archarchon"] = "This spell when used on platform's arrows, will create a gate between platforms. When used on stairs, it will gate them in the direction of Your choice.",
	["archthief"] = "This spell when used on platform's arrows, will place normal stairs. When used on normal or rigged stairs it will steal them.",
	["archnecro"] = "This spell when used on platform's arrows, will create Dual stairs. When used on normal or rigged stairs, it will turn them into Undead Stairs.",
	["archhacker"] = "This spell when used on platform's arrows, will hack-in any crossing stairs. When used on normal or rigged stairs, it will turn them into an Escalator of your choice.",
	["archkeeper"] = "This spell when used on platform's arrows, will restore adjacent stairs. When used on normal or rigged stairs, it will move them in the direction of Your choice.",
	["archsplicer"] = "This spell when used on platform's arrows, will split crossing stairs. When used on normal or rigged stairs, it will twist them in the direction of Your choice.",
	["archwicked"] = "This spell when used on platform's arrows, will create a wicked's wall without the link. When used on any uncursed stairs, it will destroy them.",
	["archgremlin"] = "This spell when used on platform, will revolve the platform in the direction of Your choice. When used on normal or rigged stairs, it will revolve them in the direction of Your choice.",
	["archjoker"] = "This spell when used on platform's arrows, will create fake stairs. When used on normal, flipped or rigged stairs, it flip or un-flip them.",
	["archdrifter"] = "This spell when used on platform, will turn it into an elevator. When used on normal or rigged stairs, it will drift them into a random intersection.",
	["archspectre"] = "This spell when used on platform's arrows, will create Phantom stairs. When used on normal, ghosted or rigged stairs, it will Ghost or un-Ghost them.",
	["archreaver"] = "This spell when used on platform's arrows, will create Mirrored stairs. When used on normal or rigged stairs, it turn them into One-Way stairs of Your choice.",
	["archheretic"] = "This spell when used on platform's arrows, will curse an empty intersection without flickering anyone. When used on normal, cursed or rigged stairs, it curse or un-curse them.",

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

	["title"] = "YOUR RANK",

	--none

	["none_1"] = "You have not chosen an alignment!",
	["none_2"] = "To cast spells, you MUST pick a class!",

	--NEW
	["possessed_1"] = "You have been Possessed!",
	["possessed_3"] = "As Possessed, you cannot use spells, your rank perks are inactive and you cannot jump.",

	["hypnotised_1"] = "You have been Hypnotised!",
	["hypnotised_3"] = "As Hypnotised, your controls are reversed!",
	
	["reflected_1"] = "You have been Reflected!",
	["reflected_3"] = "As Reflected, you control yourself from your ghost perspective!",
	
	["findmana"] = "Find Mana or Patron Rig to break free.",
	["permanent"] = "Permanent mode - Complete climb or visit sanctuary to de-morph.",

	["architect_1"] = "You are now an Architect!",
	["architect_2"] = "Architects cannot acquire any ranks.",
	["architect_3"] = "Roam the tower to wreak havoc!",
	
	["tutorial_1"] = "You are in the tutorial!",
	["tutorial_2"] = "Collect Mana and use spells to climb the tower.",
	["tutorial_3"] = "Make sure to catch the White Orb at the top!",
	--END NEW

	--shared
	["higher"] = "HIGHER RANK ACQUIRED",
	["current"] = "YOUR CURRENT RANK",
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
		[4] = "Disco stairs have no effect on you.",
		[5] = "You can now see all invisible stairs. You have the option to not reveal them.",
		[6] = "You can now detect platform traps and fake stairs.",
		[8] = "You can now walk on fake stairs and traps.", 
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
		[5] = "You can now spin any uncursed stairs and drift already drifted stairs.",
		[6] = "You can now boost Elevators with both Riser and Elevator spells. Vagabond perk does not apply to boosted Elevators.",
		[8] = "You have the option to avoid triggering any Drifter Rigs.",
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
		[4] = "You can now restore disconnected stairs from platform.",
		[5] = "Your Restore Twist spell is now free.",
		[6] = "You have the option to avoid below Splicer Rigs.",
		[8] = "You can now splice already spliced stairs.",
		[9] = "You will get 1 Mana everytime you restore a Splice.",
	},
	["REAVER"] = {
		[4] = "You can now use your Merge spell to unmerge.",
		[5] = "Your floor mirrors will last 50% longer. (15s big, 9s small)",
		[6] = "You are now immune to Reaver Rigs.",
		[8] = "Using merge spell will also affect nearby players.",
		[9] = "You are now immune to one-way stairs.",
	},
	["NECROMANCER"] = {
		[4] = "Create Dual Stairs will ignore cursed intersections and stairs on ghost's platform.",
		[5] = "If you use a Revival Point on the top floor, it will bring the orb to where the point is placed.",
		[6] = "Copy Platform spell will remove curses if it needs to.",
		[8] = "You can demolish crossing cursed stairs, while casting Dual Stairs.",
		[9] = "Regenerate restores 10 mana instead of 6, and will restore 5 mana to those nearby your ghost.",
	},
	["GREMLIN"] = {
		[4] = "You can now see all Gremlin Traps.",
		[5] = "You can now jump on platform to call all adjacent Trams.",
		[6] = "You are now immune to Gremlin Rigs.",
		[8] = "You are now immune to Gremlin Traps.",
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
		[1] = "None cannot acquire any ranks. Jump on a morph in the middle of the map to change your alignment.",
		[2] = "I am serious, NONE does not have any rank perks.",
		[3] = "You are just wasting your time, you could at least rank up MUGGLE instead.",
		[4] = "MUGGLE gets walkspeed boosts, you know? None does not get anything.",
		[5] = "If you think there is a secret rank perk at the end, you must really underestimate my laziness.",
		[6] = "Maybe you just like to torture yourself?",
		[7] = "People at discord are lying, there is no secret perk at 50 climbs.",
		[8] = "This is your final warning, stop before a total disappointment.",
		[9] = "Your persistence is admirable. You get a total toggleable immunity to special stairs and an ability to pass through blocking stairs.",
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

	["info"] = "You need 3 tokens to unlock a spell.",

}

module.gui.feedback = {
	
	["title"] = "SEND FEEDBACK",
	["prompt"] = "Click here to send a message to the developers! (minimum of 20 characters. We know who you are so please - no spam.)",
	["send"] = "SEND",
	["locked"] = "LOCKED",

}

module.gui.settings = {

	--NEW

	["Gameplay"] = "GAMEPLAY SETTINGS",
	["Interface"] = "INTERFACE SETTINGS",

	["Billboard"] = "Show Your own avatar billboard",
	["Rank"] = "Show Your Overall Rank in the avatar billboard",
	["Morph"] = "Show the morph animation when using Chameleon ranked up to Deceiver or higher",
	["ManaLimit"] = "Reduce Your own Mana capacity for an extra challenge",

	["KChoices"] = "Show direction selection for Keeper, when using move spells",
	["HChoices"] = "Show direction selection for Hacker, when using the escalator spell",
	["AChoices"] = "Show direction selection for Archon, when using gate spells",
	["SChoices"] = "Show direction selection for Splicer, when using splice spells",
	["GChoices"] = "Show direction selection for Gremlin, when using the revolve platform spell",
	--new
	["CChoices"] = "Show direction selection for Chameleon, when using the One-Way Stairs spell",
	--endnew


	["List"] = "Show animated playerlist rather than standard Roblox Leaderboard",
	["SwitchBack"] = "Auto switch back to basic spells after an executed ultimate spell",
	["SafeCancel"] = "Show confirmation window when cancelling a timed ultimate spell",
	["Multi"] = "Show Multi Token window selection after the climb, when you still have unspent MultiTokens",
	["UISize"] = "Adjust the maximum width of the User Interface (%)"
	--END NEW

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "YOUR ALIGNMENT",
	["time"] = "YOUR CLIMB TIME",
	["climbs"] = "CLIMBS AWARDED",
	["tokens"] = "TOKENS AWARDED",
	["rank"] = "YOUR CURRENT RANK",

	--NEW
	["role"] = "YOUR OVERALL RANK",
	["classic"] = "CLASSIC TOWER RECORD",	
	["pro"] = "PRO TOWER RECORD",	
	["infinite"] = "INFINITE TOWER RECORD",
	["custom"] = "CUSTOM TOWER RECORD", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	["noVR"] = "CLASSIC TOWER RECORD", --this will show in noVR tower, as they share the same record

	["cTime"] = "%s RECORD", --%s will be replaced by the used class
	["levels"] = "LEVELS REACHED",
	["cClimbs"]	= "%s CLIMBS", --%s will be replaced by the used class
	["tClimbs"] = "TOTAL CLIMBS",
	["tTokens"] = "%s TOKENS",	--%s will be replaced by the used class	(or multi)
	["spells"] = "SPELLS USED",	--amount
	["rRank"] = "RACE PLACEMENT",--if any
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
		"HA! HA! HA!",
		"Relax and watch them fall",
		"You mad bro?",
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
		"One alignment only? Boring!",
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
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
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
		"We aren't actually haunting you, we just wanna be friends",
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
		"Wheeeeeeeeeeeeeeeeeeee!!!!!!!",
	},
	["NONE"] = {
		"DON'T, CEASE and REFRAIN",
		"Muggle betrayed us, nothing means nothing.",
		"[insert a message here]",
		"If you don't do anything, you cannot fail.",
		"There is nothing on top of the staircase.",
		"You do realise NONE was just meant to be a bug fix, right?",
		"Jump on a morph to change your alignment. Or not - I'm just a message, not a cop.",
		"This is the proper way to climb stairs.",
		"My legs are killing me.",
		"Walkspeed and Jumppower are overrated.",
		"Technically, I am the first class created in the game.",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Leave no Noob Behind",
	["IT"] = "Pranking is Living",
	["ANNIHILATOR"] = "Destroy Everything!",
	["AETHER"] = "Enter the Nether Realm",
	["DABSFORLIF"] = "Spells are Overrated",
	["USURPER"] = "I just like all the Spells",
	["ADMIRAL"] = "Order Restored",
	["OUTLAW"] = "Mine, mine all MINE!",
	["ZERO"] = "Rootkit Installed",
	["EXILED"] = "Excommunication",
	["ILLUMINATI"] = "Illuminati Confirmed",
	["STRIDER"] = "I'll take the Elevator",
	["DEATHBRINGER"] = "Rise, Rise, RISE!",
	["OPTIMUS"] = "The Entanglement",
	["ILLUSION"] = "We are ONE",
	["DAEMON"] = "You spin me Round and Round.",
	["BLACK HOLE"] = "The Nothingness", 

}

module.gui.gameover.credits = {

	["common"] = {
		"CRAZY STAIRS",
		"Game conceptualized, designed and scripted by Sleazel",
		"Help with design - cakegirlserina",
		"Models by ZielonyLeszek",
		"Skyboxes by @wwwtyro's generator",
		"Datastore module, ProfileStore, by loleris",
		"Thanks for playing!",	
	},
	["climb"] = "%s Climb Music - % by %",
	["endgame"] = "%s Endgame Music - % by %",
	["disco"] = "Disco stairs music - % by %",
	["elevator"] = "Elevator music - % by %", --drifter platforms
	["testers"] = "TESTERS:",
	["thanks"] = "SPECIAL THANKS:",

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
	["shack_2"] = "OUR MOTTO:\nROTATE\nREVOLVE\nAND\nHYPNOTISE",
	["shack_3"] = "PROS:\nNo pros\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE",
	["shack_4"] = "'Come play with me.'\nour founder's quote",

	["mirror_1"] = "REAVER'S MIRROR",
	["mirror_2"] = "OUR MOTTO:\nREFLECT\nREPLACE\nAND\nMERGE",
	["mirror_3"] = "PROS:\nMirrors can be used by other players\nCONS:\nMerge and unmerge mechanic may be confusing.",
	["mirror_4"] = "'Mirrors are just doorways.'\nour founder's quote",

	["grave_1"] = "NECROMANCER'S GRAVE",
	["grave_2"] = "OUR MOTTO:\nFOLLOW\nREVIVE\nAND\nBENEFIT",
	["grave_3"] = "PROS:\nWorks well if other players follow your ghost.\nSpells help you and others as well.\nCONS:\nHeaviest alignment on mana.\nDifficult to get used to watching your ghost.",
	["grave_4"] = "'We aren't actually haunting you, we just wanna be friends.'\nour founder's quote",

	--NEW (architect)
	["studio_1"] = "ARCHITECT'S STUDIO",
	["studio_2"] = "OUR MOTTO:\nDESIGN\nIMPLEMENT\nAND\nTEST",
	["studio_3"] = "PROS:\nAbility to Fly\nDoes not use Mana\nCONS:\nCost Robux\nCannot acquire climbs",
	["studio_4"] = "'Now I rule this staircase!'\nour founder's quote",
	--END NEW

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
	["emperor_req"] = "* Requires Chameleon OR Spectre",
	["overmind_req"] = "** Requires Chameleon AND Spectre",
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

--TUTORIAL (new)
module.tutorial = {


	["tut_big_1"] = "Welcome to Crazy Stairs!",
	["tut_big_2"] = "First, collect some Mana.",
	["tut_big_3"] = "You can create stairs with this spell.",
	["tut_big_4"] = "All spells need to be executed by jumping.",
	["tut_big_5"] = "Collect this Mana:",
	["tut_big_6"] = "You can flip stairs with this spell.",
	["tut_big_7"] = "Some spells need to be executed on stairs.",
	["tut_big_8"] = "Collect this Mana:",
	["tut_big_9"] = "You can move stairs with this spell.",
	["tut_big_10"] = "Jump on the forward arrow to move stairs.",
	["tut_big_11"] = "You will encounter many blocking stairs in this game.",
	["tut_big_12"] = "Use this spell to destroy blocking stairs.",
	["tut_big_13"] = "You can destroy above stairs, by jumping on below ones.",
	["tut_big_14"] = "Collect this Mana:",
	["tut_big_15"] = "Use this spell to teleport across platforms.",
	["tut_big_16"] = "Jump on arrow to teleport.",
	["tut_big_17"] = "You may find that some stairs are impossible to ascend.",
	["tut_big_18"] = "Use this spell to fix them.",
	["tut_big_19"] = "Restore can be cast either on stairs or on adjacent arrow.",
	["tut_big_20"] = "You need to get to this orb at the top of the staircase to win. Good luck!",

	["tut_select"] = "Select this spell.",

	["tut_small_init"] = "Jump to spawn tutorial",
	["tut_small_collect"] = "Collect Mana",
	["tut_small_arrow"] = "Jump on arrow",
	["tut_small_stairs"] = "Jump on stairs",
	["tut_small_pellet"] = "Collect the Orb",
	--end new

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
		["through"] = "Can be executed on an empty intersection or through non-blocking stairs",
		["superforced"] = "Can be executed on an empty intersection, or through crossing stairs. Rank up to Banished to demolish crossing cursed stairs.",
		--new
		["superforcednecro"] = "Can be executed on an empty intersection, or through crossing stairs. Rank up to Lich to demolish crossing cursed stairs.",
		--end new
		["flicker"] = "Can be executed on an empty intersection. Rank up to Infidel to execute on a cursed intersection.",
		["any"] = "Can be executed on any un-cursed intersection.",
		["wall"] = "Can be executed on any un-cursed intersection, without a Wall or Gate in the way.",
		["forced"] = "Can be executed on an empty intersection, or through un-cursed crossing stairs.",
		["halfsoft"] = "Can be executed on an empty intersection, or through un-cursed crossing stairs on higher ranks.",
		["soft"] = "Can be executed on an empty intersection only.",
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

		["flatten"] = "Can be executed on an intersection with normal or rigged opposite stairs. Can be executed on stairs too.",
		--NEW
		["archpatron"] = "Patron's Create Stairs (when used on arrows) or Shrink Stairs (when used on stairs)",
		["archarchon"] = "Archon's Platform Gate (when used on arrows) or Gate Stairs (when used on stairs)",
		["archthief"] = "Thief's Place Stairs (when used on arrows) or Steal Stairs (when used on stairs)",
		["archnecro"] = "Necromancer's Create Dual Stairs (when used on arrows) or Undead Stairs (when used on stairs)",
		["archhacker"] = "Hacker's Hack-In Stairs (when used on arrows) or Escalator (when used on stairs)",
		["archkeeper"] = "Keeper's Restore Stairs (when used on arrows) or Move/Rotate Stairs (when used on stairs)",
		["archsplicer"] = "Splicer's Split Opposite Stairs (when used on arrows) or Twist Stairs (when used on stairs)",
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
	["coolwait"] = "You can't cast rigs and events now, please wait.",
	["nomirror"] = "You need to be joined with ghost to walk on mirrors.",
	--new
	["noreflected"] = "This spell cannot be used when you are Reflected.",
	["noflyarch"] = "You cannot fly as Architect when Possessed, Hypnotized or Reflected.",
	["noblackhole"] = "You cannot use Black Hole perk when Possessed, Hypnotized or Reflected.",
	--end new
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
	--["outdrift"] = "Outside drift can only be created on the outer platforms.", --removed
	["cantgate"] = "This direction is blocked.",
	["wall"] = "Wall is already here.",
	["nocurse"] = "Only normal, cursed or rigged stairs can be cursed/uncursed.",
	["nogate"] = "These stairs are not gated.",
	--NEW
	["noghost"] = "This spell only works on normal, rigged and ghosted stairs.",
	["wrongplace"] = "Other stairs must be in the game area.",
	["archrace"] = "Architects cannot race!",
	["noobrace"] = "You cannot race in the tutorial!",
	["toolate"] = "A race is already in progress, try again later.",
	["blockedplit"] = "Target intersection is cursed.",
	--END NEW
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
	--NEW
	["nomad1"] = "Rank up to Nomad to spin any uncursed stairs.",
	["nomad2"] = "Rank up to Nomad to drift already drifted stairs.",
	--END NEW
	["prodigy"] = "Rank up to Prodigy, to override Gates.",
	["traveller"] = "Rank up to Traveller to boost Elevators.",
	["controller"] = "Rank up to Controller, to move any uncursed stairs.",--*
	["replica"] = "Rank up to Replica, to use this spell to unmerge.",--*
	--NEW
	["skeleton"] = "Rank up to Skeleton to remove curses while using this spell.",
	--END NEW
	["hijacker"] = "Rank up to Hijacker to steal any uncursed stairs.",
	["transformer"] = "Rank up to Transformer to splice already spliced stairs.",
	["strider"] = "Rank up to Strider to double boost UP DRIFTS.",
	["lich"] = "Rank up to Lich to demolish crossing cursed stairs.",

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
	["reaverrig"] = "You have been reflected!",
	["gremlinrig"] = "You have been hypnotised!",
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
	--["scancel"] = "Cancel your spell to change alignments.", --removed
	["morph"] = "Jump here to become %s!",
	["race"] = "Jump here to intiate a new race.",
	["norace"] = "Race is automatic in the infinite mode.",

	--misc
	["secret"] = "Secret found!",
	["unlocked"] = "Spell unlocked!",

	--chameleon exceptions	
	["chamtutorial"] = "You can't use CHAMELEON in the tutorial!",
	["champossessed"] = "You can't use chameleon while possessed.",
	["chamhypnotised"] = "You can't use chameleon while hypnotised.",
	["chamreflected"] = "You can't use chameleon while reflected.",
	--["chamspell"] = "Please execute or cancel current spell first.", --removed
	["morphpossessed"] = "You can't change alignment while possessed.",
	["morphhypnotised"] = "You can't change alignment while hypnotised.",
	["morphreflected"] = "You can't change alignment while reflected.",

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
	
	--NEW
	['noobteleport'] = "You cannot switch towers in the tutorial!",
	['noobmorph'] = "Complete the tutorial to be able to morph!",
	['noobnocode'] = "Complete the tutorial to be able to use codes!",
	['noobchameleon'] = "Complete the tutorial to be able to use Chameleon!",
	
	--GIFTING
	['notingame'] = "Player has left the game, you cannot give the game pass!",
	['alreadyowns'] = "Player already owns this game pass.",
	['gotit'] = "You have received %s game pass, courtesy of %s",
	['given'] = "%s has received %s game pass!",
	--END NEW

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
	--["falsestart"] = "False Start", --removed
	--["countdown"] = "Race in %d seconds!", --removed
	--["noplayers"] = "No racing players, infinite mode will not start!", --removed
	["nojoin"] = "Race is now closed - no new players can join.",
	--["allfalse"] = "All players have False Started!", --removed
	["safety"] = "Tower levels have changed, this race will not start.",
	["leader"] = "%s has taken the lead!",
	["toolate"] = "Nobody has reached the top in time!",
	--["go"] = "GO!", --removed
	["over"] = "Race over!",

	--NEW
	["newrace"] = "%s initiated a race - join them!",
	["joined"] = "%s has joined the	race!",
	["2min"] = "Nobody has challenged %s!",
	["infstart"] = "Infinite race started!",
	
	--END NEW

}

module.localfeedback = {

	--["cancel"] = "Cancel other spell first!", --removed
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
	["nounion"] = "You can't use Ghost Union right now.",
	
	--NEW
	["failedjoin"] = "Failed to join the race.",
	--END NEW

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
	--["REAVER1"] = "You will no longer trigger below Reaver Rigs.", --removed
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
	--["REAVER1"] = "You will now trigger below Reaver Rigs.", --removed
	["GREMLIN1"] = "Nearby Corkscrews unlocked.",
	["NONE"] = "All special effects immunity off.",
}
--END NEW

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

	["spectrerigevent"] = "%s has just rigged all normal stairs with a 50%% chance of ghosting!",
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

	["gremlinrigevent"] = "%s has just rigged all normal stairs with Hypnotise spell!",
	["gremlinevent"] = "%s has just revolved all normal stairs!",
	["gremlinaltevent"] = "%s has just overloaded the tower with Tram stairs!",

	["reaverrigevent"] = "%s has just rigged all normal stairs with Reflect spell!",
	["reaverevent"] = "%s has just turned all normal stairs into random One-Ways!",
	["reaveraltevent"] = "%s has turned all normal stairs into Glass Stairs!",

	["newmode"] = "%s has just switched drones into %s mode!",

	["chameleonrigevent"] = "%s has just rigged all normal stairs with a Mystery spell!"
}

module.spells.extras = {

	["Prompt"] = "Click a spell below, to learn how to use it",
	["Title1"] = "Basic spells",
	["Title2"] = "Unique ultimate spells",
	["Title3"] = "Shared ultimate and basic spells",
	["ManaCost"] = "Mana Cost: %s", 
	["TokenCost"] = "Token Cost: %s", 
	["Special"] = "Special requirements: %s",
	["Execution"] = "Execution: %s",
	["Description"] = "Description: %s",
	["basic"] = "Basic",
	["ultimate"] = "Ultimate",
	["unlock"] = "0 (3 to unlock)",
	["none"] = "No special requirements",

	--NEW
	["LeftHand"] = "Left Hand",
	["RightHand"] = "Right Hand",

}

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
	--["hack"] = "HACK", --removed
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
	["tutorial"] = "TUTORIAL",--player mana is drained upon starting tutorial

}


module.gui.gameover.extras = {

	--["noobs"] = "Tutorials are for noobs!", --removed
	["possessed"] = "Those annoying Heretics!",
	["hypnotised"] = "Where am I?",
	--NEW
	["reflected"] = "Let me out!",
	--END NEW
	["new"] = "New rank acquired - %s",

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



