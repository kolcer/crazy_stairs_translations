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
["splitside"] = "यह spell straight gate बनाता है जो same level पर adjacent platform पे ले जाता है। Horizontal movement के लिए best है।",
["splitrotate"] = "यह spell rotated gate बनाता है जो side या angled direction में teleport करता है। Smart positioning के लिए useful है।",
["splitup"] = "यह spell एक Up Gate बनाता है जो तुम्हें ऊपर वाले platform पे teleport करता है। Gate use करते ही instant movement मिलता है और climb fast हो जाता है।",
["splitrandom"] = "यह spell random gate बनाता है जो किसी भी direction में teleport कर सकता है। Risky है लेकिन clutch भी हो सकता है।",
["cancelsplit"] = "यह spell existing gates को destroy करता है। Use करो control लेने के लिए या दूसरों के paths block करने के लिए।",
["splitforward"] = "यह spell platform gate बनाता है जो आगे वाले platform पे direct ले जाता है। Fast progress के लिए useful है।",

["splitter"] = timed .. "यह तुम्हें एक minute के लिए unlimited gates create करने देता है। Rapid movement और control के लिए best है।" .. string.format(timedExtra,RankData.ARCHON[7].name,"Archons",RankData.ARCHON[3].name),
["archonrigevent"] = rig .. "the Archon Rig। Stairs trigger होने पर random gates spawn हो सकते हैं जो players को teleport करते हैं।",
["archonevent"] = event .. "the StairGåte-1 spell। सारे normal stairs gate-based movement में convert हो जाते हैं।",
["archonaltevent"] = event .. "the Division spell। यह event multiple gates create करता है जो paths को split और confuse करते हैं।",
["archonmode"] = string.format(mode,"Archon","Archon Rig","Gate Spell"),
["archonrefill"] = overload,
["archonunion"] = union,

	--DRIFTER
["indrift"] = "यह spell तुम्हें stairs पर smoothly glide करने देता है, जैसे surf कर रहे हो। Movement fast और fluid हो जाता है।",
["outdrift"] = "यह spell random drift movement देता है जिससे तुम unpredictable direction में move करते हो। Escape और confuse करने के लिए useful है।",
["updrift"] = "यह spell तुम्हें ऊपर की तरफ drift करता है, जैसे elevator। Fast vertical movement के लिए best है।",
["diagdrift"] = "यह spell diagonal direction में drift करने देता है। Smart movement और shortcuts के लिए useful है।",
["spin"] = "यह spell stairs को spin कर देता है, जिससे movement tricky और confusing हो जाता है।",
["driftabove"] = "यह spell ऊपर वाले stairs को lift करता है, जिससे नए paths बनते हैं और movement options बढ़ते हैं।",

["riser"] = timed .. "यह तुम्हें एक minute के लिए unlimited drift spells use करने देता है। Smooth और fast climbing के लिए best है।" .. string.format(timedExtra,RankData.DRIFTER[7].name,"Drifters",RankData.DRIFTER[3].name),
["drifterrigevent"] = rig .. "the Drifter Rig। Stairs trigger होने पर drift movement apply हो जाता है।",
["drifterevent"] = event .. "the Driftage spell। सारे stairs drift behavior में आ जाते हैं जिससे movement unstable और fast हो जाता है।",
["drifteraltevent"] = event .. "the Liftage spell। यह event stairs को lift करता है और नई movement possibilities बनाता है।",
["driftermode"] = string.format(mode,"Drifter","Drifter Rig","Drift Spell"),
["drifterrefill"] = overload,
["drifterunion"] = union,

	--HERETIC
["createcursed"] = "यह spell cursed stairs बनाता है chosen direction में। Agar रास्ते में crossing stairs हों तो वो destroy हो जाएंगे।",
["curse"] = "यह spell stairs को curse कर देता है। Cursed stairs unpredictable behavior दिखाते हैं और dangerous होते हैं।",
["curseabove"] = "यह spell ऊपर वाले stairs को curse करता है। High level control और trolling के लिए useful है।",
["curseinter"] = "यह spell intersections को flicker effect देता है जिससे movement unstable हो जाता है।",
["autodown"] = "यह spell schism raise करता है जिससे stairs नीचे की तरफ force होते हैं और paths बदल जाते हैं।",
["autoup"] = "यह spell opposite schism create करता है जिससे stairs ऊपर की तरफ shift होते हैं।",

["malediction"] = timed .. "यह तुम्हें एक minute के लिए curse-based spells freely use करने देता है। Chaos और control के लिए best है।" .. string.format(timedExtra,RankData.HERETIC[7].name,"Heretics",RankData.HERETIC[3].name),
["hereticrigevent"] = rig .. "the Heretic Rig। Stairs trigger होने पर curse effects apply होते हैं।",
["hereticevent"] = event .. "the Disunion spell। सारे stairs aur intersections curse effect में आ जाते हैं।",
["hereticaltevent"] = event .. "the Vengeance spell। यह event strong curse effects apply करता है aur gameplay chaotic बना देता है।",
["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","Curse Spell"),
["hereticrefill"] = overload,
["hereticunion"] = union,

--SPLICER
["twistside"] = "यह spell parallel stairs को splice करके side direction में नया रास्ता बनाता है। अगर बीच में कोई stairs आए तो वो destroy हो सकते हैं। Rank up to TRANSFORMER करने पर तुम special stairs को भी splice कर सकते हो।",
["twistrotate"] = "यह spell adjacent stairs को splice करके उन्हें rotate कर देता है। इससे movement unpredictable हो जाती है और दूसरे players के लिए रास्ता समझना मुश्किल हो जाता है। Rank up to MANIPULATOR करने पर rotation पर ज्यादा control मिलता है।",
["twistup"] = "यह spell stairs को ऊपर की तरफ splice करता है जिससे नया vertical path बनता है। इससे unreachable platforms तक पहुंच सकते हो। Rank up to ASCENDER करने पर Mana cost कम हो जाती है और speed बढ़ जाती है।",
["canceltwist"] = "यह spell twisted stairs को वापस normal बना देता है। अगर तुमने गलत splice कर दिया हो या control वापस लेना हो तो यह बहुत useful है। Rank up to RESTORER करने पर यह spell free हो जाता है।",
["split2"] = "यह spell stairs को split करके multiple paths बनाता है। इससे confusion create होता है और alternate routes मिलते हैं। Rank up to DUPLICATOR करने पर और ज्यादा paths बनते हैं।",
["splitalt"] = "यह spell stairs को आगे की direction में split करता है जिससे fast progress मिलती है। Rank up to PATHFINDER करने पर distance और duration बढ़ जाती है।",

["twister"] = timed .. "यह तुम्हें एक minute के लिए unlimited splice spells use करने देता है। इससे तुम पूरे map को control कर सकते हो और complex paths बना सकते हो।" .. string.format(timedExtra,RankData.SPLICER[7].name,"Splicers",RankData.SPLICER[3].name),
["splicerrigevent"] = rig .. "the Splicer Rig। Stairs trigger होने पर अपने आप splice effects apply होते हैं और paths बदलते रहते हैं। Rank up to OVERSEER करने पर तुम rigs trigger होने से बच सकते हो।",
["splicerevent"] = event .. "the Interweave spell। इसमें सारे normal stairs आपस में mix और overlap हो जाते हैं जिससे पूरा map chaotic हो जाता है।",
["spliceraltevent"] = event .. "the Bisect spell। इसमें stairs split होकर कई अलग-अलग paths बना देते हैं जिससे navigation tricky हो जाती है।",
["splicermode"] = string.format(mode,"Splicer","Splicer Rig","Splice Spell"),
["splicerrefill"] = overload,
["splicerunion"] = union,

--NECROMANCER
["createdual"] = "यह spell dual stairs बनाता है जिससे एक ही जगह पर दो अलग रास्ते मिलते हैं। इससे players अलग-अलग दिशा में जा सकते हैं। Rank up करने पर dual stairs ज्यादा stable हो जाते हैं।",
["copyplatform"] = "यह spell ghost platform को copy करके उसका duplicate बना देता है जिसे तुम इस्तेमाल कर सकते हो। Rank up करने पर copied platform ज्यादा देर तक रहता है।",
["soulbridge"] = "यह spell platforms के बीच soul bridge बनाता है जो थोड़े समय के लिए रास्ता देता है। बाद में यह अपने आप गायब हो जाता है। Rank up करने पर इसकी अवधि बढ़ जाती है।",
["undeadabove"] = "यह spell ऊपर वाले stairs से soul हटाकर उन्हें normal बना देता है। इससे dangerous stairs को safe किया जा सकता है। Rank up करने पर cursed effects भी हट सकते हैं।",
["revival"] = "यह spell एक revival point set करता है जहाँ गिरने पर तुम वापस आ जाते हो। Rank up करने पर इसे कई बार इस्तेमाल किया जा सकता है।",
["regen"] = "यह spell समय के साथ धीरे-धीरे Mana बढ़ाता है। लंबे समय तक खेलने में बहुत काम आता है। Rank up करने पर Mana बढ़ने की गति तेज़ हो जाती है।",

["duality"] = timed .. "यह तुम्हें एक minute के लिए dual और undead spells बिना रुकावट use करने देता है। इससे तुम लगातार रास्ते बना सकते हो और टिके रह सकते हो।" .. string.format(timedExtra,RankData.NECROMANCER[7].name,"Necromancers",RankData.NECROMANCER[3].name),
["necromancerrigevent"] = rig .. "the Necromancer Rig। Stairs trigger होने पर undead effects लगते हैं और कुछ stairs वापस बन सकते हैं। Rank up करने पर तुम rigs trigger होने से बच सकते हो।",
["necromancerevent"] = event .. "the Resurrection spell। टूटे या हटे हुए stairs वापस आ जाते हैं जिससे game का flow बदल जाता है।",
["necromanceraltevent"] = event .. "the Soul Harvest spell। यह event souls इकट्ठा करता है और effects को और strong बना देता है जिससे gameplay intense हो जाता है।",
["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","Undead Spell"),
["necromancerrefill"] = overload,
["necromancerunion"] = union,

	--REAVER
["createmirrored"] = "यह spell mirrored stairs बनाता है जो उल्टी दिशा का reflection होते हैं। इससे अलग-अलग रास्ते बनते हैं और players confuse हो सकते हैं। Rank up करने पर mirrored stairs ज्यादा stable हो जाते हैं।",
["bigmirror"] = "यह spell बड़ा mirror effect बनाता है जो एक साथ कई stairs को reflect करता है। इससे पूरे area के रास्ते बदल जाते हैं। Rank up करने पर इसका दायरा और असर बढ़ता है।",
["smallmirror"] = "यह spell छोटा mirror effect बनाता है जो limited stairs पर काम करता है। सही control और smart movement के लिए useful है। Rank up करने पर control और बेहतर हो जाता है।",
["outermirror"] = "यह spell बाहरी side के stairs को mirror करता है जिससे किनारे के रास्ते बदल जाते हैं। बचने और tricky moves के लिए useful है। Rank up करने पर इसका असर और strong हो जाता है।",
["merge"] = "यह spell mirrored stairs को मिलाकर एक मजबूत रास्ता बनाता है। Stable movement के लिए useful है। Rank up करने पर merge और powerful हो जाता है।",
["oneway"] = "यह spell one-way stairs बनाता है जिनपर movement सिर्फ एक ही दिशा में possible होता है। दूसरे players के लिए trap जैसा काम करता है। Rank up करने पर तुम दिशा control कर सकते हो।",

["reflection"] = timed .. "यह तुम्हें एक minute के लिए mirror spells बिना रुकावट use करने देता है। इससे तुम पूरे map के रास्तों को control और बदल सकते हो।" .. string.format(timedExtra,RankData.REAVER[7].name,"Reavers",RankData.REAVER[3].name),
["reaverrigevent"] = rig .. "the Reaver Rig। Stairs trigger होने पर mirror effects लगते हैं और रास्ते बदल जाते हैं। Rank up करने पर तुम rigs trigger होने से बच सकते हो।",
["reaverevent"] = event .. "the Cross Roads spell। सारे stairs reflect होकर कई उलझे हुए रास्ते बना देते हैं।",
["reaveraltevent"] = event .. "the Vitrification spell। इसमें stairs काँच जैसे बन जाते हैं जिससे movement risky हो जाता है।",
["reavermode"] = string.format(mode,"Reaver","Reaver Rig","Mirror Spell"),
["reaverrefill"] = overload,
["reaverunion"] = union,

	--GREMLIN
["tram"] = "यह spell tram stairs बनाता है जो players को एक platform से दूसरे platform तक अपने आप ले जाते हैं। तेज़ movement के लिए बहुत काम का है। Rank up करने पर tram की गति और control बढ़ता है।",
["screwup"] = "यह spell stairs को ऊपर की तरफ घुमावदार बना देता है जिससे चढ़ना tricky हो जाता है। Rank up करने पर spiral ज्यादा smooth और आसान हो जाता है।",
["revolve"] = "यह spell stairs को लगातार घुमाता रहता है जिससे टिके रहना मुश्किल हो जाता है। दूसरे players आसानी से गिर सकते हैं। Rank up करने पर घुमाव पर control मिलता है।",
["trapstairs"] = "यह spell trapdoor stairs बनाता है जो कदम रखते ही नीचे गिरा देते हैं। यह दूसरों को गिराने के लिए बहुत useful है। Rank up करने पर trap पहचानना और भी मुश्किल हो जाता है।",
["screwdown"] = "यह spell नीचे की तरफ घुमावदार stairs बनाता है जिससे players नीचे जा सकते हैं या गिर सकते हैं। Rank up करने पर इसका control बढ़ता है।",
["spinplatform"] = "यह spell platform को घुमा देता है जिससे उस पर खड़े रहना मुश्किल हो जाता है। Movement अस्थिर हो जाती है। Rank up करने पर spin की अवधि और गति बढ़ती है।",

["tramway"] = timed .. "यह तुम्हें एक minute के लिए Gremlin spells बिना रुकावट use करने देता है। इससे तुम पूरे map को उलझा सकते हो और players को confuse कर सकते हो।" .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name),
["gremlinrigevent"] = rig .. "the Gremlin Rig। Stairs trigger होने पर random chaotic effects लगते हैं जैसे spin, trap या घुमाव। Rank up करने पर तुम rigs trigger होने से बच सकते हो।",
["gremlinevent"] = event .. "the Revolvelution spell। सारे stairs घूमने और हिलने लगते हैं जिससे पूरा map अस्थिर हो जाता है।",
["gremlinaltevent"] = event .. "the Gridlock spell। यह event movement को सीमित कर देता है और रास्तों को block या उलझा देता है।",
["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Chaos Spell"),
["gremlinrefill"] = overload,
["gremlinunion"] = union,


	--CHAMELEON
["chamdown"] = "यह पहले Keeper spell था, reject होने से पहले। यह normal या rigged stairs को नीचे की तरफ ले जाता है। अगर तुमने Keeper को Captain rank तक upgrade किया है, तो तुम uncursed stairs को भी नीचे ले जा सकते हो।",
["chamdraw"] = "यह पहले Heretic spell था, reject होने से पहले। यह stairs को drawbridge में बदल देता है, जिससे नीचे उतरना तब तक possible नहीं होता जब तक कोई दूसरा player नीचे से bridge activate न करे।",
["oneways"] = "यह पहले Reaver spell था, reject होने से पहले। यह spell नीचे वाले stairs को one-way रास्ता बना देता है, और सही दिशा में चलने पर player अपने ghost के साथ merge हो जाता है। तुम choose कर सकते हो कि कौनसी दिशा block करनी है। Rank up to Illusion करने पर तुम one-way stairs के effect से immune हो जाते हो। Ghost के साथ merge होने पर तुम floor mirrors use कर सकते हो लेकिन तुम्हारा ghost तुम्हारे लिए Mana collect नहीं करेगा।",
["ditch"] = "यह पहले Thief spell था, reject होने से पहले। यह stairs को crossed staircase में बदल देता है।",
["chamdrawabove"] = "यह पहले Heretic spell था, reject होने से पहले। यह ऊपर वाले stairs को drawbridge में बदल देता है जिससे तुम pass कर सकते हो। ऊपर जाना तब तक possible नहीं होता जब तक कोई player ऊपर से bridge activate न करे। Old Unbeliever rank अब active नहीं है और नीचे से auto draw अब possible नहीं है।",
["warp"] = "यह पहले Wicked spell था, reject होने से पहले। यह stairs को वापस platform पर warp कर देता है।",

["chameleonrigevent"] = rig .. "the Chameleon Rig। Stairs trigger होने पर बाकी सभी rigs में से कोई एक random effect apply होता है।",
["chameleonmode"] = string.format(mode,"Chameleon","Chameleon Rig","बाकी सभी modes में से random spell"),
["chameleonrefill"] = overload,
["chameleonunion"] = union,

--NEW
["share"] = "इस spell से तुम अपना Mana पास के player के साथ share कर सकते हो। एक बार में सिर्फ एक Mana दे सकते हो और इसके लिए तुम्हारे पास कम से कम दो Mana होना जरूरी है।",

--ARCHITECT
["archpatron"] = "यह spell platform के arrows पर use करने पर normal stairs बनाता है। Normal या rigged stairs पर use करने पर उन्हें shrink कर देता है।",
["archarchon"] = "यह spell platform के arrows पर use करने पर platforms के बीच gate बनाता है। Stairs पर use करने पर उन्हें तुम्हारी चुनी हुई दिशा में gate कर देता है।",
["archthief"] = "यह spell platform के arrows पर use करने पर normal stairs place करता है। Normal या rigged stairs पर use करने पर उन्हें steal कर लेता है।",
["archnecro"] = "यह spell platform के arrows पर use करने पर Dual stairs बनाता है। Normal या rigged stairs पर use करने पर उन्हें Undead Stairs में बदल देता है।",
["archhacker"] = "यह spell platform के arrows पर use करने पर crossing stairs को hack-in करता है। Normal या rigged stairs पर use करने पर उन्हें तुम्हारी पसंद का Escalator बना देता है।",
["archkeeper"] = "यह spell platform के arrows पर use करने पर पास वाले stairs को restore करता है। Normal या rigged stairs पर use करने पर उन्हें तुम्हारी चुनी हुई दिशा में move करता है।",
["archsplicer"] = "यह spell platform के arrows पर use करने पर crossing stairs को split करता है। Normal या rigged stairs पर use करने पर उन्हें तुम्हारी चुनी हुई दिशा में twist करता है।",
["archwicked"] = "यह spell platform के arrows पर use करने पर बिना link के wicked wall बनाता है। किसी भी uncursed stairs पर use करने पर उन्हें destroy कर देता है।",
["archgremlin"] = "यह spell platform पर use करने पर platform को तुम्हारी चुनी हुई दिशा में घुमाता है। Normal या rigged stairs पर use करने पर उन्हें भी उसी दिशा में घुमाता है।",
["archjoker"] = "यह spell platform के arrows पर use करने पर fake stairs बनाता है। Normal, flipped या rigged stairs पर use करने पर उन्हें flip या un-flip करता है।",
["archdrifter"] = "यह spell platform पर use करने पर उसे elevator बना देता है। Normal या rigged stairs पर use करने पर उन्हें random intersection में drift करता है।",
["archspectre"] = "यह spell platform के arrows पर use करने पर Phantom stairs बनाता है। Normal, ghosted या rigged stairs पर use करने पर उन्हें ghost या un-ghost करता है।",
["archreaver"] = "यह spell platform के arrows पर use करने पर Mirrored stairs बनाता है। Normal या rigged stairs पर use करने पर उन्हें तुम्हारी पसंद के One-Way stairs में बदल देता है।",
["archheretic"] = "यह spell platform के arrows पर use करने पर empty intersection को बिना flicker के curse करता है। Normal, cursed या rigged stairs पर use करने पर उन्हें curse या un-curse करता है।",

}
local CommonPerksInsertALignment = {
	[1] = "यह तुम्हारा starter %s rank है।",
	[2] = "जब drones %s mode में होते हैं, तब तुम्हें bonus Mana मिलता है।",
}
local CommonPerksInsertTimedSpell = {
	[3] = "अगर कोई %s spell use करता है, तो तुम्हारा Mana refill हो जाएगा।",
	[7] = "तुम्हारा %s spell 50%% ज्यादा समय तक चलेगा (90s)।",
}

module.gui.ranks = {

	["title"] = "तुम्हारा RANK",

	--none

	["none_1"] = "तुमने अभी तक कोई alignment नहीं चुना है!",
	["none_2"] = "Spells use करने के लिए तुम्हें एक class चुननी होगी!",

	--NEW
	["possessed_1"] = "तुम Possessed हो गए हो!",
	["possessed_3"] = "Possessed होने पर तुम spells use नहीं कर सकते, तुम्हारे rank perks काम नहीं करते और तुम jump भी नहीं कर सकते।",

	["hypnotised_1"] = "तुम Hypnotised हो गए हो!",
	["hypnotised_3"] = "Hypnotised होने पर तुम्हारे controls उल्टे हो जाते हैं!",

	["reflected_1"] = "तुम Reflected हो गए हो!",
	["reflected_3"] = "Reflected होने पर तुम खुद को अपने ghost के नजरिए से control करते हो!",

	["findmana"] = "Mana ढूंढो या Patron Rig use करो ताकि free हो सको।",
	["permanent"] = "Permanent mode - climb पूरा करो या sanctuary जाओ de-morph करने के लिए।",

	["architect_1"] = "अब तुम Architect हो!",
	["architect_2"] = "Architects कोई ranks हासिल नहीं कर सकते।",
	["architect_3"] = "Tower में घूमो और chaos फैलाओ!",

	["tutorial_1"] = "तुम tutorial में हो!",
	["tutorial_2"] = "Mana collect करो और spells use करके tower चढ़ो।",
	["tutorial_3"] = "ऊपर White Orb को पकड़ना मत भूलना!",
	--END NEW

	--shared
["higher"] = "उच्च RANK प्राप्त हुआ",
["current"] = "तुम्हारा वर्तमान RANK",
["lower"] = "RANK अभी प्राप्त नहीं हुआ",

["more"] = "इस rank को पाने के लिए तुम्हें %s के रूप में %d और climbs करने होंगे।",
["done"] = "तुम पहले ही इससे उच्च rank ले चुके हो। सभी lower rank effects वर्तमान rank में जुड़ जाते हैं।",
["max"] = "यह maximum rank है। तुमने %s के रूप में %d climbs किए हैं।",
["next"] = "अगले rank की requirements देखने के लिए right arrow पर click करो।",

["PATRON"] = {
	[4] = "तुम्हारे links अब दोगुने समय तक रहेंगे (120s)।",
	[5] = "तुम्हारे portals अब दोगुने समय तक रहेंगे (120s)।",
	[6] = "Call the Orb spell की cost अब 2 Mana हो गई है।",
	[8] = "अगर तुम्हारे पास Mana खत्म हो जाए, तो platform पर कूदने से तुम्हें 1 Mana मिलेगा।",
	[9] = "Called Orb अब दोगुनी तेजी से चलेगा।",
}, 
["JOKER"] = { 
	[4] = "Disco stairs का तुम पर कोई असर नहीं होगा।",
	[5] = "अब तुम सभी invisible stairs देख सकते हो। तुम उन्हें reveal न करने का option भी रख सकते हो।",
	[6] = "अब तुम platform traps और fake stairs पहचान सकते हो।",
	[8] = "अब तुम fake stairs और traps पर चल सकते हो।", 
	[9] = "जब कोई prank trigger होता है तो तुम्हें bonus Mana मिलता है (प्रति player 1 Mana)।",
},
["WICKED"] = {
	[4] = "अब तुम obbies पर ऐसे चल सकते हो जैसे वो normal stairs हों।",
	[5] = "Destroy Below spell अब free हो गया है।",
	[6] = "किसी भी special stairs को destroy करने पर तुम्हें 1 bonus Mana मिलेगा।",
	[8] = "तुम Wicked Rigs trigger होने से बच सकते हो।",
	[9] = "अब तुम cursed stairs को भी destroy कर सकते हो।",
},
["SPECTRE"] = { 
	[4] = "Ghost के साथ crystals collect करने पर तुम्हें 1 extra Mana मिलेगा।", 
	[5] = "GHOSTIFY spell अब free हो गया है।",
	[6] = "अब तुम अपने ghost के साथ ऊपर orb को छूकर climb पूरा कर सकते हो।",
	[8] = "तुम Spectre Rigs trigger होने से बच सकते हो।", 
	[9] = "अब तुम ghosted stairs पर चल सकते हो।",
},
["KEEPER"] = {
	[4] = "Move Random spell और Keeper Rigs stairs को नीचे नहीं ले जाएंगे।",
	[5] = "अब तुम सभी uncursed stairs को move कर सकते हो।",
	[6] = "Restore spell अब free हो गया है।", 
	[8] = "तुम Keeper Rigs trigger होने से बच सकते हो।",
	[9] = "अब तुम cursed stairs और cursed intersections को restore कर सकते हो।",
},
["HACKER"] = { 
	[4] = "तुम Escalators से immune रहने का option चुन सकते हो।",
	[5] = "Dash spell अब 50% तेज़ है।",
	[6] = "Blink spell अब 50% तेज़ है।", 
	[8] = "तुम Hacker Rigs trigger होने से बच सकते हो (Escalator switch के साथ merge होता है)।",
	[9] = "अगर कम से कम एक free intersection है, तो top level पर Glitch use करने से orb तक stairs बनेंगे।", 
},
["THIEF"] = {
	[4] = "Bypass अब दोगुने समय तक रहेगा (120s)।",
	[5] = "Spiral Staircase अब दोगुने समय तक रहेगा (120s)।",
	[6] = "अब तुम सभी uncursed stairs को steal कर सकते हो।",
	[8] = "अगर Mana खत्म हो जाए, तो platform पर कूदने से stash से 1 Mana मिलेगा।", 
	[9] = "अब तुम एक समय में 2 stolen stairs रख सकते हो।",
},
["ARCHON"] = {
	[4] = "अब तुम platforms पर Destroy Gate spell use करके Platform Gates हटा सकते हो।",
	[5] = "Destroy Gate spell अब free है।",
	[6] = "Gates अब तुम्हें नीचे teleport नहीं करेंगे।",
	[8] = "अब तुम Gate spells उन stairs पर भी use कर सकते हो जिन पर पहले से Gates हैं।",
	[9] = "तुम सभी Gates में teleportation avoid कर सकते हो (सिवाय ऊपर जाने वाले Gates के)।",
},
["DRIFTER"] = {
	[4] = "ऊपर जाने वाले platform drifts 50% तेज़ बनेंगे और चलेंगे।",
	[5] = "अब तुम uncursed stairs को spin कर सकते हो और drifted stairs को फिर से drift कर सकते हो।",
	[6] = "अब तुम Elevators को Riser और Elevator दोनों spells से boost कर सकते हो।",
	[8] = "तुम Drifter Rigs trigger होने से बच सकते हो।",
	[9] = "अब तुम Elevators को दो बार boost कर सकते हो।",
},
["HERETIC"] = {
	[4] = "Mana खत्म होने पर तुम cursed stairs को छूकर उन्हें uncurse कर सकते हो और 1 Mana पा सकते हो।",
	[5] = "अब तुम possessed होने से immune हो।",
	[6] = "अब तुम cursed intersection पर Flicker spell use कर सकते हो।",
	[8] = "Create Cursed Stairs और Malediction अब blocking cursed stairs को destroy कर सकते हैं।",
	[9] = "हर बार कोई possessed होता है तो तुम्हें 1 extra Mana मिलता है।",
},
["SPLICER"] = {
	[4] = "अब तुम platform से disconnected stairs को restore कर सकते हो।",
	[5] = "Restore Twist spell अब free है।",
	[6] = "तुम नीचे वाले Splicer Rigs से बच सकते हो।",
	[8] = "अब तुम already spliced stairs को भी splice कर सकते हो।",
	[9] = "हर बार splice restore करने पर तुम्हें 1 Mana मिलता है।",
},
["REAVER"] = {
	[4] = "अब तुम Merge spell से unmerge भी कर सकते हो।",
	[5] = "Floor mirrors अब 50% ज्यादा समय तक रहेंगे (15s big, 9s small)।",
	[6] = "अब तुम Reaver Rigs से immune हो।",
	[8] = "Merge spell पास के players पर भी असर करेगा।",
	[9] = "अब तुम one-way stairs से immune हो।",
},
["NECROMANCER"] = {
	[4] = "Create Dual Stairs अब cursed intersections और ghost platform के stairs को ignore करेगा।",
	[5] = "Top floor पर Revival Point लगाने से orb उसी जगह आ जाएगा।",
	[6] = "Copy Platform spell जरूरत पड़ने पर curses हटा देगा।",
	[8] = "Dual Stairs cast करते समय तुम crossing cursed stairs को हटा सकते हो।",
	[9] = "Regenerate अब 10 Mana देता है और पास के players को 5 Mana देता है।",
},
["GREMLIN"] = {
	[4] = "अब तुम सभी Gremlin Traps देख सकते हो।",
	[5] = "अब platform पर कूदकर सभी पास के Trams बुला सकते हो।",
	[6] = "अब तुम Gremlin Rigs से immune हो।",
	[8] = "अब तुम Gremlin Traps से immune हो।",
	[9] = "अब तुम Corkscrew Stairs को toggle से control कर सकते हो।",
},
["MUGGLE"] = { 
	[2] = "तुम्हारा jump cooldown 0.125s कम हो गया है।",
	[3] = "तुम्हारा jump cooldown 0.25s कम हो गया है।",
	[4] = "तुम्हारा jump cooldown 0.375s कम हो गया है।",
	[5] = "तुम्हारा jump cooldown 0.5s कम हो गया है।",
	[6] = "तुम्हारी चलने की speed 10% बढ़ गई है।",
	[7] = "तुम्हारी चलने की speed 20% बढ़ गई है।",
	[8] = "तुम्हारी चलने की speed 30% बढ़ गई है।",
	[9] = "तुम्हारी jump power 20% बढ़ गई है।",
},
["NONE"] = {
	[1] = "None कोई rank हासिल नहीं कर सकता। Map के बीच में morph पर कूदकर alignment बदलो।",
	[2] = "सच में, NONE के पास कोई rank perks नहीं हैं।",
	[3] = "तुम बस समय बर्बाद कर रहे हो, कम से कम MUGGLE rank कर लेते।",
	[4] = "MUGGLE को speed boost मिलता है, NONE को कुछ नहीं।",
	[5] = "अगर तुम्हें लगता है आखिर में secret perk है, तो तुम मेरी आलस को कम समझ रहे हो।",
	[6] = "शायद तुम्हें खुद को torture करना पसंद है?",
	[7] = "Discord पर लोग झूठ बोल रहे हैं, 50 climbs पर कोई secret perk नहीं है।",
	[8] = "यह आखिरी warning है, रुक जाओ वरना निराशा मिलेगी।",
	[9] = "तुम्हारी मेहनत काबिले तारीफ है। तुम्हें special stairs से immunity और blocking stairs के पार जाने की ability मिलती है।",
},

["CHAMELEON"] = { 
	[1] = "यह तुम्हारा starter CHAMELEON rank है। बाकी alignments के bonuses अभी भी लागू होते हैं।",
	[2] = "EXCEPTION! तुम्हें bonus Mana सिर्फ CHAMELEON mode में मिलेगा।",
	[3] = "Alignment change animation अब तेज़ हो गया है।",
	[4] = "Spell use करते समय तुम्हारे हाथ purple चमकेंगे जिससे तुम्हारे इरादे छिपे रहेंगे।",
	[5] = "Fake Stairs और Create Stairs spells अब purple glow देंगे।",
	[6] = "अब तुम 4 rejected spells use कर सकते हो।",
	[7] = "अब तुम 2 और rejected spells use कर सकते हो।",
	[8] = "अब alignment बदलने पर morph animation नहीं होगा (options में बंद किया जा सकता है)।",
	[9] = "अब तुम Mystery Rig spell multi-tokens के साथ use कर सकते हो।",
},


}


module.gui.multitokens = {

	["info"] = "एक spell unlock करने के लिए तुम्हें 3 tokens चाहिए।",

}

module.gui.feedback = {
	
	["title"] = "FEEDBACK भेजो",
	["prompt"] = "Developers को message भेजने के लिए यहाँ click करो! (कम से कम 20 characters होने चाहिए। हमें पता है तुम कौन हो, इसलिए spam मत करो।)",
	["send"] = "भेजो",
	["locked"] = "LOCKED",

}

module.gui.settings = {

	--NEW

	["Gameplay"] = "GAMEPLAY SETTINGS",
	["Interface"] = "INTERFACE SETTINGS",

	["Billboard"] = "अपना avatar billboard दिखाओ",
	["Rank"] = "Avatar billboard में अपना Overall Rank दिखाओ",
	["Morph"] = "Chameleon (Deceiver या उससे ऊपर rank) use करते समय morph animation दिखाओ",
	["ManaLimit"] = "Extra challenge के लिए अपनी Mana capacity कम करो",

	["KChoices"] = "Keeper spells use करते समय direction selection दिखाओ",
	["HChoices"] = "Hacker escalator spell use करते समय direction selection दिखाओ",
	["AChoices"] = "Archon gate spells use करते समय direction selection दिखाओ",
	["SChoices"] = "Splicer splice spells use करते समय direction selection दिखाओ",
	["GChoices"] = "Gremlin revolve platform spell use करते समय direction selection दिखाओ",
	--new
	["CChoices"] = "Chameleon One-Way Stairs spell use करते समय direction selection दिखाओ",
	--endnew


	["List"] = "Standard Roblox Leaderboard की जगह animated playerlist दिखाओ",
	["SwitchBack"] = "Ultimate spell use करने के बाद अपने आप basic spells पर switch हो जाओ",
	["SafeCancel"] = "Timed ultimate spell cancel करते समय confirmation window दिखाओ",
	["Multi"] = "Climb के बाद अगर MultiTokens बचे हों तो Multi Token selection window दिखाओ",
	["UISize"] = "User Interface की maximum width adjust करो (%)"
	--END NEW

}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "तुम्हारा ALIGNMENT",
	["time"] = "तुम्हारा CLIMB TIME",
	["climbs"] = "CLIMBS मिले",
	["tokens"] = "TOKENS मिले",
	["rank"] = "तुम्हारा वर्तमान RANK",

	--NEW
	["role"] = "तुम्हारा OVERALL RANK",
	["classic"] = "CLASSIC TOWER RECORD",	
	["pro"] = "PRO TOWER RECORD",	
	["infinite"] = "INFINITE TOWER RECORD",
	["custom"] = "CUSTOM TOWER RECORD", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	["noVR"] = "CLASSIC TOWER RECORD", --this will show in noVR tower, as they share the same record

	["cTime"] = "%s RECORD", --%s will be replaced by the used class
	["levels"] = "LEVELS REACHED",
	["cClimbs"] = "%s CLIMBS", --%s will be replaced by the used class
	["tClimbs"] = "TOTAL CLIMBS",
	["tTokens"] = "%s TOKENS",	--%s will be replaced by the used class	(or multi)
	["spells"] = "SPELLS USED",	--amount
	["rRank"] = "RACE PLACEMENT",--if any
	--END NEW

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"मदद करो, बचाओ और बनाओ",
		"उन noobs को हमारी मदद चाहिए",
		"हम Patrons के बिना कोई उम्मीद नहीं होती",
		"10 में 11, अच्छाई के scale पर",
		"Sharing ही caring है",
		"Stairs कभी ज्यादा नहीं होते",
		"Team में I नहीं होता, पर Patron जरूर होता है",
		"Staircase बिना stairs के नहीं बनता",
		"एक और काम पूरा हुआ",
	},
	["JOKER"] = {
		"धोखा दो, उलझाओ और हंसो",
		"यह staircase एक मज़ाक है",
		"इतना serious क्यों?",
		"हा! हा! हा!",
		"Relax करो और उन्हें गिरते देखो",
		"गुस्सा आ गया?",
		"तुम rules जानते हो, मैं भी",
		"मेरे बिना सब boring हो जाएगा",
		"Fake stairs भी असली हैं",
	},
	["WICKED"] = {
		"रोको, block करो और destroy करो",
		"मैं बुरा नहीं हूँ, बस stairs ज्यादा हैं",
		"इन stairs को जाना होगा",
		"दुनिया को जलते देखो",
		"यह staircase बिना stairs के बेहतर लगता है",
		"मैं तुम्हारा दिमाग, आत्मा और body (और stairs) destroy कर दूँगा",
		"1) obby बनाओ 2) noobs को struggle करते देखो 3) मज़ा लो",
		"सब कुछ एक दिन खत्म होता है",
		"दिमाग साफ करो - पर पहले staircase साफ करो",
	},
	["SPECTRE"] = {
		"गायब हो जाओ, छिपो और teleport करो",
		"Teleport करना बिलकुल safe है",
		"तुम मुझे पकड़ नहीं सकते",
		"Ghosted stairs की खूबसूरती अलग ही है",
		"लोग गिर रहे हैं? मुझे क्या",
		"Teleport से हर problem solve हो जाती है",
		"एक बार teleport शुरू किया तो रुक नहीं पाओगे",
		"कम से कम मैं stairs teleport नहीं कर रहा",
		"पकड़ सको तो पकड़ो!",
	},
	["MUGGLE"] = {
		"चलो, कूदो और गिरो",
		"Alpha में हमारे पास ये fancy spells नहीं थे",
		"ये Drones definitely rigged हैं",
		"हमेशा एक रास्ता होता है",
		"Stairjumping एक talent है",
		"मेरा secret? रुको और सोचो",
		"मुझे magic पर विश्वास नहीं है",
		"कभी-कभी drone का इंतजार करना पड़ता है - जैसे असल जिंदगी में",
		"Spells use करते हो? Noobs!",
	},
	["CHAMELEON"] = {
		"कॉपी करो, imitate करो और surprise दो",
		"अपने spells बनाने में आलस आता है",
		"जितनी variety, उतना मज़ा",
		"Teaming slow है - Morphing fast है",
		"Adapt करना ही survival है",
		"मैं decisive हूँ, बस अपना mind बदलना पसंद है",
		"तुमने एक class सीखी? मैंने सब सीखी",
		"एक ही alignment? boring!",
		"मुझे chaos पसंद है",
	},
	["KEEPER"] = {
		"move करो, rotate करो और control रखो",
		"मेरी staircase मत बिगाड़ो!",
		"Keepers की एक और बड़ी जीत",
		"Mission complete!",
		"मुझे order पसंद है",
		"Chaos control में है",
		"मैं ही असली alignment हूँ",
		"एक दिन मैं इस tower को ठीक कर दूँगा",
		"Fixed stairs = happy stairs",
	},
	["THIEF"] = {
		"\"उधार लो\", use करो और वापस करो",
		"इसे borrowing कहते हैं",
		"Flat land कितना सुंदर है",
		"कम से कम मैं platforms नहीं चुराता",
		"Steal rigs पर मत चलो, समझे?",
		"तुमने मुझे कुछ चुराते देखा?",
		"मैं Robin Hood जैसा हूँ - अमीरों से चुराता हूँ और खुद को देता हूँ",
		"एक staircase कम हो जाए तो किसी को पता नहीं चलेगा",
		"Stairs redistribution anarchy रोकता है",
	},
	["HACKER"] = {
		"exploit करो, glitch करो और तोड़ो",
		"Fair play? यहाँ ऐसा कुछ नहीं होता",
		"रुको! ये staircase असली नहीं है... क्या हम simulation में हैं?",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"कहीं rules लिखे हुए दिखे तुम्हें?",
		"मैं cheat कर रहा हूँ? सब कर रहे हैं",
		"थोड़े tweaks ही तो हैं - बड़ा exploit नहीं",
		"Speed ही सब कुछ है",
		"Escalators ही life है",
	},
	["HERETIC"] = {
		"तुम यहाँ से नहीं गुजरोगे",
		"Black magic ban करना मतलब fun ban करना",
		"लोगों को possess करो. Overmind को खुश रखो",
		"मौत और सड़न",
		"Dark ritual complete",
		"हमें खुद को limit नहीं करना चाहिए",
		"Possessed हो जाओ",
		"Dark side चुनो - आसान है",
		"लोग फंस जाएं तो मुझे क्या",
	},
	["ARCHON"] = {
		"portal खोलो, ???, profit",
		"मैं पहले इस staircase पर राज करता था",
		"Plan बनाओ और जीत जाओ",
		"पढ़ाई करो और सफल हो जाओ",
		"Gate बनाना एक कला है",
		"मैं अपना Archon portal use नहीं कर पा रहा",
		"Cake एक झूठ है",
		"हर problem के लिए एक gate है",
		"सबको confuse कर दिया!",
	},
	["DRIFTER"] = {
		"surf करो, ride करो और glide करो",
		"Stairs की क्या जरूरत? हम space में हैं!",
		"उड़ो बेवकूफों!",
		"Solar Wind पर surf करो",
		"Space में नीचे कुछ नहीं - बेफिक्र कूदो",
		"सब drift करो - जीत जाओ",
		"रुको मत - drift करते रहो",
		"मुझे platforms ride करना पसंद है",
		"Surf करते रहो",
	},
	["SPLICER"] = {
		"twist करो, splice करो और connect करो",
		"सीधी लाइन में ज्यादा देर मत जाओ",
		"अपनी life splice करो",
		"दूसरों की गड़बड़ी Splicer का order है",
		"मैं इन stairs को connect कर सकता हूँ",
		"लोगों से नहीं, STAIRS से connect करो!",
		"मेरा दिमाग भी ऐसा ही twisted है",
		"Split या splice - यही सवाल है",
		"Thanks Markerquest, तुमने बचाया",
		"यह staircase बहुत सीधा है",
	},
	["REAVER"] = {
		"reflect करो, replace करो और merge करो",
		"Mirrors दरवाजे होते हैं",
		"यह staircase एक illusion है",
		"तुम अपनी आत्मा mirror में देख सकते हो",
		"हम उन्हें देख रहे हैं या वो हमें?",
		"7 साल की bad luck - मेरे लिए या उसके लिए?",
		"Ghosts mirror के पीछे फंसे हैं या हम?",
		"अब मैं खुद को नहीं, future देखता हूँ",
		"MOM! ये phase नहीं है!!!",
		"ऐसे चुपके मत आओ!",
	},
	["NECROMANCER"] = {
		"follow करो, revive करो और फायदा लो",
		"हम तुम्हें haunt नहीं कर रहे, दोस्त बनना चाहते हैं",
		"तुम्हारी आत्मा मेरी है!",
		"मेरे ghost के पीछे आओ, भरोसा करो!",
		"मेरे ghost के पास safe है, झूठ क्यों बोलूँगा?",
		"Souls इकट्ठा करने का समय",
		"हमारी PR खराब है, Hollywood की गलती है",
		"अगर death बुरा है, तो Necromancy अच्छा होना चाहिए",
		"मुझे sou- मतलब Mana चाहिए",
		"मैं गिरने से नहीं डरता, ये strategy है!",
	},
	["GREMLIN"] = {
		"घुमाओ, घुमाओ और hypnotise करो",
		"आओ खेलो मेरे साथ!",
		"तुम मुझे घुमाते रहो baby",
		"यह staircase बहुत boring है",
		"मैं इसे ठीक करता हूँ, heheh",
		"मेरा masterpiece पसंद आया? नहीं? तो भी शुरू ही किया है",
		"Doctor ने relax करने को कहा, मैं ऐसे relax करता हूँ",
		"Joker notes ले, मजाक है वापस circus में ले लो!",
		"यह staircase कहाँ गया?",
		"Wheeeeeeeeeeeeeeeeeeee!!!!!!!",
	},
	["NONE"] = {
		"मत करो, रुक जाओ और छोड़ दो",
		"Muggle ने हमें धोखा दिया",
		"[यहाँ message डालो]",
		"कुछ नहीं करोगे तो fail नहीं होगे",
		"ऊपर कुछ नहीं है",
		"NONE बस bug fix था, पता है?",
		"Morph पर कूदकर alignment बदलो… या मत बदलो",
		"यही सही तरीका है stairs चढ़ने का",
		"मेरे पैर टूट रहे हैं",
		"Walkspeed और Jump power overrated हैं",
		"Technically मैं पहला class हूँ",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "कोई Noob पीछे नहीं छूटेगा",
	["IT"] = "Pranking ही जीवन है",
	["ANNIHILATOR"] = "सब कुछ खत्म करो!",
	["AETHER"] = "Nether Realm में प्रवेश करो",
	["DABSFORLIF"] = "Spells overrated हैं",
	["USURPER"] = "मुझे सभी Spells पसंद हैं",
	["ADMIRAL"] = "Order वापस आ गया",
	["OUTLAW"] = "मेरा, सब मेरा!",
	["ZERO"] = "Rootkit Install हो गया",
	["EXILED"] = "Excommunication",
	["ILLUMINATI"] = "Illuminati Confirmed",
	["STRIDER"] = "मैं Elevator लूँगा",
	["DEATHBRINGER"] = "उठो, उठो, उठो!",
	["OPTIMUS"] = "The Entanglement",
	["ILLUSION"] = "हम एक हैं",
	["DAEMON"] = "तुम मुझे घुमाते रहो round and round.",
	["BLACK HOLE"] = "शून्यता",

}

module.gui.gameover.credits = {

	["common"] = {
		"CRAZY STAIRS",
		"Game conceptualized, designed and scripted by Sleazel",
		"Design में मदद - cakegirlserina",
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

	["cla_1"] = "मैं कैसे खेलूं?",
	["cla_2"] = "सबसे पहले tutorial पूरा करना highly recommended है। अगर नहीं किया है तो game rejoin करो, वरना सब बहुत confusing हो सकता है।",
	["cla_3"] = "Game का goal है top तक पहुंचना और floating Energy Orb collect करना। पहले glowing pads पर कूदकर अपना alignment (class) चुनो।",
	["cla_4"] = "Choice select करने के बाद, floating shapes collect करो Mana refill के लिए और stairs चढ़ो। अपने class का spell use करके climb आसान बनाओ।",
	["cla_5"] = "Spells कैसे cast करें?",
	["cla_6"] = "हर spell की Mana cost होती है। जब enough Mana हो, spell पर click करो। तुम्हारे हाथ glow करेंगे, इसका मतलब cast सफल है।",
	["cla_7"] = "Cast के बाद spell execute करना पड़ता है। सभी spells jump से execute होते हैं। कुछ platform पर और कुछ stairs पर jump चाहिए। Guide arrows help करेंगे।",
	["cla_8"] = "Climb पूरा करने पर तुम्हें 3 spell tokens मिलेंगे, जिससे एक spell unlock होगा। दुबारा climb करके और spells unlock करो। अलग class के लिए tokens use नहीं कर सकते।",
	["cla_9"] = "Ultimate spells कैसे cast करें?",
	["cla_10"] = "Ultimate spells use करने के लिए पहले सभी basic spells unlock करने होंगे। Ultimate spells unlock नहीं होते, पर Mana की जगह Tokens use करते हैं।",
	["cla_11"] = "Climb बार-बार complete करो ताकि basic spells unlock हों। Race जीतकर extra Tokens भी मिल सकते हैं। Tokens खरीदने का option भी है। Unlock होने पर leftmost button click करो या 'C' दबाओ।",
	["cla_12"] = "कुछ ultimate spells timed होते हैं और execute नहीं करने पड़ते। Cast करने से पहले Alignment Guilds में details पढ़ो। Cancel करने पर tokens वापस नहीं मिलेंगे।",

	["pro_1"] = "PRO TOWER",
	["pro_2"] = "Even levels restrictions",
	["pro_3"] = "Pro Tower में कुछ platform spells even levels पर use नहीं कर सकते। Trap, Create Portal, Vertical Teleport, Spiral Staircase और Random Teleport सिर्फ odd levels पर काम करेंगे।",
	["pro_4"] = "Drifters भी इन platforms को drift नहीं कर सकते। Affected platforms red circle से mark होते हैं।",
	["pro_5"] = "Cursed Stairs",
	["pro_6"] = "Pro Tower में Drones randomly Cursed Stairs बनाएंगे या normal stairs को curse करेंगे (20% chance)। Guide arrows यहाँ नहीं दिखेंगे।",
	["pro_7"] = "Cursed Stairs ज़्यादातर spells से immune होते हैं। इनके through teleport नहीं कर सकते और Hacker Blink भी काम नहीं करेगा। Destroy spells भी fail होंगे।",
	["pro_8"] = "सिर्फ Heretics और Admirals Cursed Stairs restore कर सकते हैं। Purge Event और Restoration भी काम करते हैं, लेकिन Drones नए cursed stairs बनाते रहेंगे।",
	["pro_9"] = "Cursed Intersections",
	["pro_10"] = "Pro Tower में Drones Cursed Intersections भी बनाते हैं (20% chance)। Guide arrows crosses बन जाते हैं।",
	["pro_11"] = "Cursed Intersections platform spells को block करते हैं। यहाँ stairs, links या teleport नहीं बना सकते।",
	["pro_12"] = "सिर्फ Heretics, Admirals और Drones इन्हें restore कर सकते हैं। Purge Event से हटते हैं, पर फिर बनते रहते हैं।",

	["inf_1"] = "INFINITE TOWER",
	["inf_2"] = "RACE MANDATORY",
	["inf_3"] = "Infinite tower में race join करना जरूरी है। Casual players spells use नहीं कर सकते और rewards नहीं मिलते। Orb छूने पर सिर्फ 10 Mana मिलता है।",
	["inf_4"] = "Infinite tower 'complete' करने के लिए race में रहो और जितना हो सके survive करो। Elimination पर rewards मिलते हैं।",
	["inf_5"] = "Fallen Drone",
	["inf_6"] = "Infinite tower में Fallen Drone का special role होता है।",
	["inf_7"] = "हर interval पर Fallen Drone 2 नए levels बनाता है। Even levels restricted होते हैं और कुछ stairs/intersections cursed हो सकते हैं।",
	["inf_8"] = "पहला interval 20s का होता है और हर बार 0.5s कम होता जाता है।",
	["inf_9"] = "Eraser",
	["inf_10"] = "Eraser एक force field है जो tower के साथ ऊपर उठता है और नीचे के levels हटा देता है। पीछे रहना मतलब eliminate होना।",
	["inf_11"] = "Eraser धीरे-धीरे तेज़ होता है और लगातार ऊपर आता रहता है।",
	["inf_12"] = "Eraser touch करते ही stairs/platforms vanish हो जाते हैं। इससे बचो जितना हो सके।",

	["cus_1"] = "CUSTOM TOWER",
	["cus_2"] = "तुम तय करो!",
	["cus_3"] = "Custom tower में तुम सभी settings खुद change कर सकते हो।",
	["cus_4"] = "Rewards half मिलते हैं। हर 12 levels पर 1 token और 30 levels पर climb count होगा।",
	["cus_5"] = "Tower Settings",
	["cus_6"] = "Levels, restrictions या infinite mode सब customize कर सकते हो।",
	["cus_7"] = "सिर्फ server owner settings बदल सकता है।",
	["cus_8"] = "Drone Settings",
	["cus_9"] = "Drone count adjust करो या disable भी कर सकते हो।",

	["vr_1"] = "VR mode में Crazy Stairs शुरू करते ही तुम Architect बन जाते हो।",
	["vr_2"] = "Architects को climb नहीं करना होता। तुम्हारा काम है दूसरों की मदद या trolling करना।",
	["vr_3"] = "Choice तुम्हारी है — saviour बनोगे या menace?",
	["vr_4"] = "Movement कैसे करें?",
	["vr_5"] = "Left thumbstick से आगे-पीछे move करो, side tilt से left-right जाओ।",
	["vr_6"] = "Right thumbstick से ऊपर-नीचे जाओ, sideways tilt से camera snap turn होगा।",
	["vr_7"] = "Better view के लिए staircase से बाहर रहो।",
	["vr_8"] = "Spells कैसे cast करें?",
	["vr_9"] = "Grip button से magic orb पकड़ो, laser pointer target करने में help करेगा।",
	["vr_10"] = "Trigger button से spell execute करो। हर alignment के 2 spells होते हैं (platform + stairs)।",
	["vr_11"] = "Trigger hold करके alignment change कर सकते हो।",

	["oasis_1"] = "CHAMELEON'S OASIS",
["oasis_2"] = "हमारा मंत्र:\nकॉपी\nनकल करें\nऔर\nचौंकाएँ",
["oasis_3"] = "फायदे:\nकहीं भी, कभी भी अलाइनमेंट बदल सकते हैं\nनुकसान:\nरोबक्स की आवश्यकता\nसभी क्लास का रैंक बढ़ाने में समय लगता है",
["oasis_4"] = "'मैं अपने खुद के स्पेल बनाने में बहुत आलसी हूँ।'\nहमारे संस्थापक का कथन",

["nexus_1"] = "HERETIC'S NEXUS",
["nexus_2"] = "हमारा मंत्र:\nतुम\nयहाँ से\nनहीं\nगुज़रोगे",
["nexus_3"] = "फायदे:\nप्रो टॉवर में सबसे बेहतर\nरोका नहीं जा सकता\nनुकसान:\nटीम बनाना कठिन\nमाना की अधिक आवश्यकता",
["nexus_4"] = "'ब्लैक मैजिक पर रोक लगाना मज़े पर रोक लगाने जैसा है।'\nहमारे संस्थापक का कथन",

["guild_1"] = "THIEF'S GUILD",
["guild_2"] = "हमारा मंत्र:\nउधार लो\nउपयोग करो\nऔर\nवापस करो",
["guild_3"] = "फायदे:\nमाना की बचत\nबहुउपयोगी\nनुकसान:\nसीढ़ियाँ चुरानी पड़ती हैं\nक्रॉसिंग सीढ़ियाँ नष्ट नहीं कर सकते",
["guild_4"] = "'इसे उधार लेना कहते हैं।'\nहमारे संस्थापक का कथन",

["nether_1"] = "SPECTRE'S NETHER",
["nether_2"] = "हमारा मंत्र:\nगायब हो जाओ\nछिपो\nऔर\nटेलीपोर्ट करो",
["nether_3"] = "फायदे:\nतेज़ स्पेल\nसोलो खेलने के लिए परफेक्ट\nनुकसान:\nरोबक्स की आवश्यकता\nटीम के लिए उपयुक्त नहीं",
["nether_4"] = "'बिल्कुल, टेलीपोर्ट करना सुरक्षित है।'\nहमारे संस्थापक का कथन (लापता)",

["study_1"] = "ARCHON'S STUDY",
["study_2"] = "हमारा मंत्र:\nखोलो\nपोर्टल\n???\nफायदा",
["study_3"] = "फायदे:\nउपयोगी रिग\nदुश्मनों को भ्रमित करता है\nनुकसान:\nसबसे कठिन सीखना\nयोजना की आवश्यकता",
["study_4"] = "'मैं कभी इस सीढ़ी पर राज करता था।'\nहमारे संस्थापक का कथन",

["haven_1"] = "PATRON'S HAVEN",
["haven_2"] = "हमारा मंत्र:\nमदद करो\nसुरक्षा करो\nऔर\nबनाओ",
["haven_3"] = "फायदे:\nसीखने में आसान\nटीम खिलाड़ी\nनुकसान:\nबहुत माना खर्च होता है\nफ्रीलोडर आकर्षित कर सकता है",
["haven_4"] = "'उन नए खिलाड़ियों को हमारी मदद चाहिए!'\nहमारे संस्थापक का कथन",

["shelter_1"] = "DRIFTER'S SHELTER",
["shelter_2"] = "हमारा मंत्र:\nसर्फ करो\nराइड करो\nऔर\nग्लाइड करो",
["shelter_3"] = "फायदे:\nबहुउपयोगी\nटीम खिलाड़ी\nनुकसान:\nकुछ पार्कौर स्किल चाहिए\nप्रो टॉवर में मुश्किल",
["shelter_4"] = "'किसे सीढ़ियों की ज़रूरत है? हम तो अंतरिक्ष में हैं!'\nहमारे संस्थापक का कथन",

["circus_1"] = "JOKER'S CIRCUS",
["circus_2"] = "हमारा मंत्र:\nधोखा दो\nभ्रमित करो\nऔर\nहँसो",
["circus_3"] = "फायदे:\nट्रोलिंग के लिए बना\nफ्लिप्स बहुत उपयोगी हैं\nनुकसान:\nमहंगे स्पेल\nदोस्तियाँ टूट सकती हैं",
["circus_4"] = "'यह सीढ़ी एक मज़ाक है।'\nहमारे संस्थापक का कथन", 

["base_1"] = "KEEPER'S BASE",
["base_2"] = "हमारा मंत्र:\nचलाओ\nघुमाओ\nऔर\nनियंत्रित करो",
["base_3"] = "फायदे:\nसीढ़ियाँ पुनर्स्थापित कर सकते हैं\nसीढ़ियों को फिर से उपयोग कर सकते हैं\nनुकसान:\nसही उपयोग के लिए पार्कौर चाहिए\nसीढ़ियों के बिना बेकार",
["base_4"] = "'मेरी सीढ़ियों को बिगाड़ना बंद करो!'\nहमारे संस्थापक का कथन",

["chamber_1"] = "WICKED'S CHAMBER",
["chamber_2"] = "हमारा मंत्र:\nरोकें\nब्लॉक करें\nऔर\nनष्ट करें",
["chamber_3"] = "फायदे:\nकिसी भी सीढ़ी को नष्ट कर सकते हैं\nपूरी सीढ़ी को साफ कर सकते हैं\nनुकसान:\nसीढ़ियों पर बहुत निर्भर",
["chamber_4"] = "'मैं बुरा नहीं हूँ, बस बहुत ज़्यादा सीढ़ियाँ हैं।'\nहमारे संस्थापक का कथन",

["backdoor_1"] = "HACKER'S BACKDOOR",
["backdoor_2"] = "हमारा मंत्र:\nएक्सप्लॉइट करो\nग्लिच करो\nऔर\nतोड़ो",
["backdoor_3"] = "फायदे:\nसबसे तेज़ अलाइनमेंट\nपकड़ना मुश्किल\nनुकसान:\nसीढ़ियों पर बहुत निर्भर\nटीम में बेकार",
["backdoor_4"] = "'फेयर प्ले? ऐसा कुछ नहीं होता।'\nहमारे संस्थापक का कथन",

["hub_1"] = "SPLICER'S HUB",
["hub_2"] = "हमारा मंत्र:\nमोड़ो\nस्प्लाइस करो\nऔर\nजोड़ो",
["hub_3"] = "फायदे:\nबहुउपयोगी\nटीम के लिए अच्छा\nनुकसान:\nथोड़ा भ्रमित करने वाला\nसीखने में समय लगता है",
["hub_4"] = "'कभी भी बहुत देर तक सीधी लाइन में मत जाओ।'\nहमारे संस्थापक का कथन",

["shack_1"] = "GREMLIN'S SHACK",
["shack_2"] = "हमारा मंत्र:\nघुमाओ\nघुमाओ\nऔर\nहिप्नोटाइज़ करो",
["shack_3"] = "फायदे:\nकोई फायदे नहीं\nसच में, इस्तेमाल मत करो\nनुकसान:\nसब तुमसे नफरत करेंगे\nहर कोई",
["shack_4"] = "'आओ मेरे साथ खेलो।'\nहमारे संस्थापक का कथन",

["mirror_1"] = "REAVER'S MIRROR",
["mirror_2"] = "हमारा मंत्र:\nप्रतिबिंबित करो\nबदलो\nऔर\nमिलाओ",
["mirror_3"] = "फायदे:\nमिरर का उपयोग दूसरे खिलाड़ी भी कर सकते हैं\nनुकसान:\nमर्ज और अनमर्ज समझना कठिन हो सकता है",
["mirror_4"] = "'मिरर बस दरवाज़े होते हैं।'\nहमारे संस्थापक का कथन",

["grave_1"] = "NECROMANCER'S GRAVE",
["grave_2"] = "हमारा मंत्र:\nफॉलो करो\nपुनर्जीवित करो\nऔर\nलाभ उठाओ",
["grave_3"] = "फायदे:\nअगर खिलाड़ी आपके घोस्ट को फॉलो करें तो बहुत अच्छा काम करता है\nस्पेल आपको और दूसरों को मदद करते हैं\nनुकसान:\nसबसे ज़्यादा माना खर्च\nघोस्ट को देखना मुश्किल हो सकता है",
["grave_4"] = "'हम तुम्हें डराने नहीं आए, हम दोस्त बनना चाहते हैं।'\nहमारे संस्थापक का कथन",

--NEW (architect)
["studio_1"] = "ARCHITECT'S STUDIO",
["studio_2"] = "हमारा मंत्र:\nडिज़ाइन करो\nइम्प्लीमेंट करो\nऔर\nटेस्ट करो",
["studio_3"] = "फायदे:\nउड़ने की क्षमता\nमाना का उपयोग नहीं\nनुकसान:\nरोबक्स की आवश्यकता\nक्लाइम्ब प्राप्त नहीं कर सकते",
["studio_4"] = "'अब मैं इस सीढ़ी पर राज करता हूँ!'\nहमारे संस्थापक का कथन",
--END NEW

	--SHARED
	["leader_pro"] = "Pro Tower 2 climbs के बराबर गिना जाता है",	
	["leader_update"] = "Update in: ",	
	["leader_updating"] = "Updating...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "CLIMBS REQ",
	["leader_off"] = "Custom tower leaderboards support नहीं करता।",

	--OVERALL
	["over_title"] = "OVERALL RANKS",
	["over_desc"] = "हर acquired rank 1 point देता है",
	["over_rank"] = "RANK",
	["over_req"] = "POINTS REQ",
	["emperor_req"] = "* Chameleon या Spectre चाहिए",
	["overmind_req"] = "** Chameleon AND Spectre दोनों चाहिए",
	["over_prefix"] = "PREFIX",
	["over_passes"] = "GAME PASSES\nREQUIRED",
	["over_notgroup"] = "OLIVE COLOR - group में नहीं है",
	["over_group"] = "TEAL COLOR - group में है",
	["over_mod"] = "MODERATOR - player moderator है",
	["over_admin"] = "ADMIN - player admin है", -- pwease sleazel uwu
	["over_owner"] = "PRANK ME - Game creator (sleazel)",

	--OTHER
	["muggle_lead"] = "तेज़ MUGGLES",
	["muggle_ranks"] = "MUGGLE RANKS",

	["hacker_lead"] = "ENCRYPTED HACKERS",
	["hacker_ranks"] = "HACKER RANKS",

	["wicked_lead"] = "खतरनाक WICKEDS",
	["wicked_ranks"] = "WICKED RANKS",

	["keeper_lead"] = "तैयार KEEPERS",
	["keeper_ranks"] = "KEEPER RANKS",

	["joker_lead"] = "पागल JOKERS",
	["joker_ranks"] = "JOKER RANKS",

	["drifter_lead"] = "तेज़ DRIFTERS",
	["drifter_ranks"] = "DRIFTER RANKS",

	["patron_lead"] = "शानदार PATRONS",
	["patron_ranks"] = "PATRON RANKS",

	["archon_lead"] = "फुर्तीले ARCHONS",
	["archon_ranks"] = "ARCHON RANKS",

	["spectre_lead"] = "उड़ते SPECTRES",
	["spectre_ranks"] = "SPECTRE RANKS",

	["thief_lead"] = "चालाक THIEVES",
	["thief_ranks"] = "THIEF RANKS",

	["heretic_lead"] = "निर्दयी HERETICS",
	["heretic_ranks"] = "HERETIC RANKS",

	["necromancer_lead"] = "UNDEAD NECROMANCERS",
	["necromancer_ranks"] = "NECROMANCER RANKS",

	["splicer_lead"] = "twisted SPLICERS",
	["splicer_ranks"] = "SPLICER RANKS",

	["reaver_lead"] = "REFLECTED REAVERS",
	["reaver_ranks"] = "REAVER RANKS",

	["gremlin_lead"] = "LUCKY GREMLINS",
	["gremlin_ranks"] = "GREMLIN RANKS",

	["chameleon_lead"] = "तेज़ CHAMELEONS",
	["chameleon_ranks"] = "CHAMELEON RANKS",

	["dailies"] = "आज के रिकॉर्ड",
	["most_climbs"] = "सबसे ज़्यादा CLIMBS",
	["most_wins"] = "सबसे ज़्यादा RACE WINS", 

}

--TUTORIAL (new)
module.tutorial = {


	["tut_big_1"] = "Crazy Stairs में स्वागत है!",
	["tut_big_2"] = "पहले थोड़ा Mana collect करो।",
	["tut_big_3"] = "इस spell से तुम stairs बना सकते हो।",
	["tut_big_4"] = "सभी spells jump से execute होते हैं।",
	["tut_big_5"] = "यह Mana collect करो:",
	["tut_big_6"] = "इस spell से stairs flip कर सकते हो।",
	["tut_big_7"] = "कुछ spells stairs पर execute होते हैं।",
	["tut_big_8"] = "यह Mana collect करो:",
	["tut_big_9"] = "इस spell से stairs move कर सकते हो।",
	["tut_big_10"] = "Stairs move करने के लिए forward arrow पर jump करो।",
	["tut_big_11"] = "इस game में तुम्हें बहुत blocking stairs मिलेंगे।",
	["tut_big_12"] = "इनको destroy करने के लिए यह spell use करो।",
	["tut_big_13"] = "नीचे वाले stairs पर jump करके ऊपर वाले destroy कर सकते हो।",
	["tut_big_14"] = "यह Mana collect करो:",
	["tut_big_15"] = "इस spell से platforms के बीच teleport करो।",
	["tut_big_16"] = "Teleport करने के लिए arrow पर jump करो।",
	["tut_big_17"] = "कुछ stairs चढ़ना impossible लग सकता है।",
	["tut_big_18"] = "उन्हें fix करने के लिए यह spell use करो।",
	["tut_big_19"] = "Restore stairs या adjacent arrow दोनों पर cast हो सकता है।",
	["tut_big_20"] = "जीतने के लिए ऊपर वाले orb तक पहुंचो। Good luck!",

	["tut_select"] = "इस spell को select करो।",

	["tut_small_init"] = "Tutorial शुरू करने के लिए jump करो",
	["tut_small_collect"] = "Mana collect करो",
	["tut_small_arrow"] = "Arrow पर jump करो",
	["tut_small_stairs"] = "Stairs पर jump करो",
	["tut_small_pellet"] = "Orb collect करो",
	--end new

}

module.where = {

	["platform"] = "इसे platform पर execute करना जरूरी है। Pro tower के bottom या even levels पर काम नहीं करेगा।",
	["arrow"] = "इसे platform के arrows पर execute करना होगा।",
	["stairs"] = "इसे stairs पर execute करना होगा।",
	["above"] = "इसे नीचे वाले stairs पर execute करना होगा ताकि ऊपर वाले stairs affect हों। Links पर भी काम करता है।",
	["dynamic"] = "यह नीचे और ऊपर दोनों stairs को affect कर सकता है।",
	["both"] = "इसे platform के arrows या stairs दोनों पर execute किया जा सकता है।",
	["both2"] = "इसे platform या stairs दोनों पर execute किया जा सकता है।",
	["anywhere"] = "इसे कहीं भी execute किया जा सकता है।",
	["nowhere"] = "इस spell को execute करने की जरूरत नहीं है।",

}

module.guide = {

	--arrows
	["arrow"] = {
		["through"] = "खाली intersection पर या non-blocking stairs के through execute किया जा सकता है।",
		["superforced"] = "खाली intersection या crossing stairs के through execute किया जा सकता है। Banished rank पर cursed crossing stairs destroy कर सकते हो।",
		--new
		["superforcednecro"] = "खाली intersection या crossing stairs के through execute किया जा सकता है। Lich rank पर cursed crossing stairs destroy कर सकते हो।",
		--end new
		["flicker"] = "खाली intersection पर execute किया जा सकता है। Infidel rank पर cursed intersection पर भी execute कर सकते हो।",
		["any"] = "किसी भी un-cursed intersection पर execute किया जा सकता है।",
		["wall"] = "किसी भी un-cursed intersection पर execute किया जा सकता है, लेकिन बीच में Wall या Gate नहीं होना चाहिए।",
		["forced"] = "खाली intersection या un-cursed crossing stairs के through execute किया जा सकता है।",
		["halfsoft"] = "खाली intersection या higher ranks पर un-cursed crossing stairs के through execute किया जा सकता है।",
		["soft"] = "सिर्फ खाली intersection पर execute किया जा सकता है।",
		["hack"] = "सिर्फ ऐसे intersection पर execute किया जा सकता है जहाँ un-cursed crossing stairs हों।",
		["sidepass"] = "किसी भी un-cursed intersection पर execute किया जा सकता है जहाँ पहले से Bypass ना हो।",
	},

	["platform"]= {

		--platform
		["middle"] = "इस spell की कोई special requirement नहीं है।",
		["diag"] = "इसे inner और outer diagonal directions दोनों में execute कर सकते हो।",
		["outer"] = "इसे सिर्फ outer perpendicular directions में execute कर सकते हो।",
		["centre"] = "यह spell current level के छोटे mirrors destroy करेगा, लेकिन बड़ा mirror नहीं।",
		["inner"] = "इसे inner diagonal directions में execute कर सकते हो, अगर पहले से link नहीं है।",
		["prevolve"] = "इसे clockwise और counterclockwise दोनों directions में execute कर सकते हो।",
		["top"] = "इसे सिर्फ top platforms पर execute किया जा सकता है।",
	},

	["stairs"] ={

		["cursed"] = "इसे normal, rigged या cursed stairs पर execute किया जा सकता है।",
		["all"] = "इसे किसी भी stairs पर execute किया जा सकता है। Annihilator rank पर cursed stairs destroy कर सकते हो।",
		["steal"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Hijacker rank पर किसी भी un-cursed stairs steal कर सकते हो।",
		["onedirection"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Controller rank पर un-cursed stairs move कर सकते हो।",
		["straight"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Controller rank पर un-cursed stairs move कर सकते हो।",
		["rotate"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Controller rank पर un-cursed stairs move कर सकते हो।",
		["flip"]= "इसे normal, flipped या rigged stairs पर execute किया जा सकता है।",
		["gate"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Prodigy rank पर gates override कर सकते हो।",
		["gatestr"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Prodigy rank पर gates override कर सकते हो",
		["gaterot"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Prodigy rank पर gates override कर सकते हो",
		["twist"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Transformer rank पर splices override कर सकते हो।",
		["twiststr"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Transformer rank पर splices override कर सकते हो।",
		["twistrot"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Transformer rank पर splices override कर सकते हो।",
		["spin"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Nomad rank पर already drifted stairs spin कर सकते हो।",
		["drift"] = "इसे normal या rigged stairs पर execute किया जा सकता है। Nomad rank पर already drifted stairs drift कर सकते हो।",
		["escalator"] = "इसे सिर्फ normal या rigged stairs पर execute किया जा सकता है।",
		["oneway"] = "इसे सिर्फ normal या rigged stairs पर execute किया जा सकता है।",
		["revolve"] = "इसे सिर्फ normal या rigged stairs पर execute किया जा सकता है।",
		["normalrig"] = "इसे सिर्फ normal या rigged stairs पर execute किया जा सकता है।",

	},

	["above"] = {

		["cursed"] = "इसे नीचे से normal, rigged या cursed stairs पर execute किया जा सकता है।",
		["all"] = "इसे नीचे से किसी भी stairs पर execute किया जा सकता है। Annihilator rank पर ऊपर वाले cursed stairs destroy कर सकते हो।",
		["steal"] = "इसे नीचे से normal या rigged stairs पर execute किया जा सकता है। Hijacker rank पर ऊपर वाले un-cursed stairs steal कर सकते हो।",
		["flip"]= "इसे नीचे से normal, flipped या rigged stairs पर execute किया जा सकता है।",
		["onedirection"] = "इसे नीचे से normal या rigged stairs पर execute किया जा सकता है। Controller rank पर ऊपर वाले un-cursed stairs move कर सकते हो।",
		["slide"] = "यह spell आपको un-cursed blocking stairs bypass करने देता है।",
		["normalrig"] = "इसे नीचे से normal या rigged stairs पर execute किया जा सकता है।",

	},

	["dynamic"] = {
		--hack, twister, bender and flipper
		['flip'] = "इसे ऊपर या नीचे normal, flipped या rigged stairs पर execute किया जा सकता है। अगर ऊपर fail हो जाए तो नीचे वाले stairs affect होंगे।",
		['normalrig'] = "इसे ऊपर या नीचे normal या rigged stairs पर execute किया जा सकता है। Spell दोनों को affect करेगा।",
		['slide'] = "इसे normal या rigged stairs पर execute किया जा सकता है। अगर ऊपर blocking un-cursed stairs हैं तो वो हट जाएंगे।",
	},

	["both"] = {
		['restore'] = "इसे stairs या platform के arrow पर adjacent stairs के साथ execute किया जा सकता है। Admiral rank पर cursed stairs restore कर सकते हो।",
		['deltwists'] = "इसे twisted stairs या platform के arrow पर adjacent twisted stairs के साथ execute किया जा सकता है। Combiner rank पर detached stairs restore कर सकते हो।",
		['ghosted'] = "इसे normal, rigged या ghosted stairs या platform के arrow पर adjacent stairs के साथ execute किया जा सकता है।",

		["flatten"] = "इसे intersection पर opposite stairs के साथ execute किया जा सकता है। Stairs पर भी execute हो सकता है।",
		--NEW
		["archpatron"] = "Patron का Create Stairs (arrows पर) या Shrink Stairs (stairs पर)",
		["archarchon"] = "Archon का Platform Gate (arrows पर) या Gate Stairs (stairs पर)",
		["archthief"] = "Thief का Place Stairs (arrows पर) या Steal Stairs (stairs पर)",
		["archnecro"] = "Necromancer का Create Dual Stairs (arrows पर) या Undead Stairs (stairs पर)",
		["archhacker"] = "Hacker का Hack-In Stairs (arrows पर) या Escalator (stairs पर)",
		["archkeeper"] = "Keeper का Restore Stairs (arrows पर) या Move/Rotate Stairs (stairs पर)",
		["archsplicer"] = "Splicer का Split Opposite Stairs (arrows पर) या Twist Stairs (stairs पर)",
		["archwicked"] = "Wicked का Wall बिना Link (arrows पर) या Destroy Stairs (stairs पर)",
		["archjoker"] = "Joker का Fake Stairs (arrows पर) या Flip/Unflip Stairs (stairs पर)",
		["archspectre"] = "Spectre का Phantom Stairs (arrows पर) या Ghost/UnGhost Stairs (stairs पर)",
		["archreaver"] = "Reaver का Mirrored Stairs (arrows पर) या One-Way Stairs (stairs पर)",
		["archheretic"] = "Heretic का Curse Intersection (arrows पर) या Curse/Uncurse Stairs (stairs पर)",

	},

	['both2'] = {
		['delsplits'] = "इसे gated stairs पर execute किया जा सकता है। Disciple rank पर platform gates भी remove कर सकते हो।",

		["archgremlin"] = "Gremlin का Revolve Platform (platform पर) या Revolve Stairs (stairs पर)",
		["archdrifter"] = "Drifter का Elevator (platform पर) या Random Drift Stairs (stairs पर)",
	},

	['anywhere'] = {
		['anywhere'] = "यह spell कहीं भी execute किया जा सकता है।",
	},

	["nowhere"] = {
		['slide'] = "इस spell को execute करने की जरूरत नहीं है।",

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
	["unlock"] = "(unlock के लिए 3 tokens)",
}

module.serverfeedback = {

	--failed spell (local)
	["nomana"] = "Mana कम है!",
	["notokens"] = "Tokens कम हैं!",
	["coolwait"] = "अभी rigs और events cast नहीं कर सकते, थोड़ा wait करो।",
	["nomirror"] = "Mirrors पर चलने के लिए ghost के साथ merge होना ज़रूरी है।",
	--new
	["noreflected"] = "Reflected state में यह spell use नहीं कर सकते।",
	["noflyarch"] = "Architect होने पर Possessed, Hypnotized या Reflected state में fly नहीं कर सकते।",
	["noblackhole"] = "Black Hole perk Possessed, Hypnotized या Reflected state में use नहीं कर सकते।",
	--end new
	["regenused"] = "Regen इस climb में पहले ही use हो चुका है।",

	--failed spell (server)
	["unknown"] = "Unknown issue.", --यह normally show नहीं होना चाहिए, सिर्फ exploiters के लिए
	["lockedspell"] = "यह spell locked है!",
	["possessed"] = "Possessed होने पर spells use नहीं कर सकते।",
	["spelllock"] = "अभी spells cast नहीं कर सकते",
	["nothere"] = "Tutorial में यह spell use नहीं कर सकते।",
	["onlyracers"] = "सिर्फ racing players ही spells cast कर सकते हैं।",
	["cancelfirst"] = "पहले current spell cancel करो...",
	["stashfull"] = "तुम्हारा stairs stash full है।",
	["stashempty"] = "इस spell के लिए पहले stairs steal करने पड़ेंगे।",
	["ultwait"] = "कोई और ultimate spell चल रहा है। थोड़ा wait करो।",
	["notdefault"] = "Drones को पहले default mode में आना होगा। wait करो।",
	["noreshuffle"] = "पहले reshuffle mode select करो!",
}
	["oneoverload"] = "एक समय पर एक से ज़्यादा Mana Overload active नहीं हो सकता।",
	["cursed"] = "ये stairs cursed हैं!",
	["cursed2"] = "रास्ते में cursed stairs हैं!",
	["blocked"] = "यह intersection cursed है।",
	["locked"] = "ये stairs locked हैं।",
	["platformlocked"] = "Target platform locked है।",
	["normalrig"] = "यह spell सिर्फ normal या rigged stairs पर काम करता है।",
	["noway"] = "रास्ते में stairs हैं। (शायद invisible हों)",
	["noway2"] = "रास्ते में crossing stairs हैं। (शायद invisible हों)",
	["noplatform"] = "उस direction में कोई platform नहीं मिला।",
	--NEW
	["nopass"] = "यह spell सिर्फ staircase के edge पर ही cast किया जा सकता है।",
	--END NEW
	["pass"] = "Pass पहले से यहाँ मौजूद है।",
	["link"] = "Link पहले से यहाँ मौजूद है।",
	["noblink"] = "Blink सिर्फ blocking stairs के through ही कर सकते हो।",
	["noblink2"] = "Disconnected stairs पर blink नहीं कर सकते।",
	["noflip"] = "सिर्फ normal, flipped या rigged stairs को ही flip किया जा सकता है।",
	["nothingtocopy"] = "Copy करने के लिए कोई staircase उपलब्ध नहीं है (तुम्हारे या ghost के लिए)।",
	["wrongdirection"] = "इस direction में यह spell cast नहीं कर सकते।",
	["notfound"] = "Stairs नहीं मिले।",
	["nocursedblink"] = "Cursed stairs के आसपास blink नहीं कर सकते।",
	["nostairs"] = "यहाँ कोई stairs नहीं हैं।",
	["noground"] = "यह spell ground level पर cast नहीं किया जा सकता।",
	["oddonly"] = "यह spell इस level पर cast नहीं किया जा सकता।",
	["noabove"] = "सीधे ऊपर कोई stairs नहीं मिले।",
	["lock"] = "अभी spells cast नहीं कर सकते",
	--["outdrift"] = "Outside drift सिर्फ outer platforms पर ही create किया जा सकता है।", --removed
	["cantgate"] = "यह direction blocked है।",
	["wall"] = "Wall पहले से यहाँ मौजूद है।",
	["nocurse"] = "सिर्फ normal, cursed या rigged stairs को ही curse/uncurse किया जा सकता है।",
	["nogate"] = "इन stairs पर gate नहीं है।",
	--NEW
	["noghost"] = "यह spell सिर्फ normal, rigged और ghosted stairs पर काम करता है।",
	["wrongplace"] = "दूसरे stairs game area के अंदर होने चाहिए।",
	["archrace"] = "Architects race नहीं कर सकते!",
	["noobrace"] = "Tutorial में race नहीं कर सकते!",
	["toolate"] = "Race पहले से चल रही है, बाद में try करो।",
	["blockedplit"] = "Target intersection cursed है।",
	--END NEW
	["cursedtarget"] = "उस destination में Cursed Stairs हैं।",
	["lockedother"] = "अभी stairs create नहीं कर सकते, दूसरे stairs locked हैं।",
	["failedgate"] = "Split creation fail हो गया।",
	["notwist"] = "ये stairs twisted नहीं हैं।",
	["wrongmove"] = "Stairs को game area के बाहर move नहीं कर सकते।",
	["blockedmove"] = "Stairs move नहीं कर सकते, target intersection cursed है।",
	["lockedmove"] = "अभी stairs move नहीं कर सकते, blocking stairs locked हैं।",
	["normal"] = "ये stairs normal हैं।",
	["lockedinter"] = "यह intersection locked है।",
	["toponly"] = "'Call the Orb' spell सिर्फ top level पर ही cast किया जा सकता है।",
	["duplicatemirror"] = "इस level पर पहले से एक mirror मौजूद है।",
	["norestore"] = "Thief bypasses और spirals restore नहीं किए जा सकते।",

	--higher rank required
	["admiral2"] = "Admiral rank तक पहुँचो ताकि Stairs को uncurse कर सको।",
	["admiral"] = "Admiral rank तक पहुँचो ताकि intersections को uncurse कर सको।",
	["infidel"] = "Infidel rank तक पहुँचो ताकि cursed intersection पर flicker कर सको।",
	["banished"] = "Banished rank तक पहुँचो ताकि crossing Cursed Stairs को destroy कर सको।",
	["annihilator"] = "Annihilator rank तक पहुँचो ताकि Cursed Stairs को destroy कर सको।",
	["disciple"] = "Disciple rank तक पहुँचो ताकि Platform Splits को destroy कर सको।",
	--NEW
	["nomad1"] = "Nomad rank तक पहुँचो ताकि किसी भी uncursed stairs को spin कर सको।",
	["nomad2"] = "Nomad rank तक पहुँचो ताकि already drifted stairs को drift कर सको।",
	--END NEW
	["prodigy"] = "Prodigy rank तक पहुँचो ताकि Gates को override कर सको।",
	["traveller"] = "Traveller rank तक पहुँचो ताकि Elevators को boost कर सको।",
	["controller"] = "Controller rank तक पहुँचो ताकि किसी भी uncursed stairs को move कर सको।",--*
	["replica"] = "Replica rank तक पहुँचो ताकि इस spell से unmerge कर सको।",--*
	--NEW
	["skeleton"] = "Skeleton rank तक पहुँचो ताकि इस spell का उपयोग करते समय curses remove कर सको।",
	--END NEW
	["hijacker"] = "Hijacker rank तक पहुँचो ताकि किसी भी uncursed stairs को steal कर सको।",
	["transformer"] = "Transformer rank तक पहुँचो ताकि already spliced stairs को splice कर सको।",
	["strider"] = "Strider rank तक पहुँचो ताकि UP DRIFTS को double boost कर सको।",
	["lich"] = "Lich rank तक पहुँचो ताकि crossing cursed stairs को demolish कर सको।",

	--rig activation
	["keeperrig"] = "Stairs move हो रहे हैं!",
	["hackerrig"] = "Stairs glitch हो गए हैं!",
	["jokerrig"] = "Stairs flip हो गए हैं!",
	["wickedrig"] = "Stairs collapse हो रहे हैं!",
	["spectrerig"] = "Stairs ghost हो गए हैं!",
	["notspectrerig"] = "Stairs ghost नहीं हुए!",
	["patronrig"] = "तुम्हें 1 Mana मिला है, courtesy of %s!",
	["thiefrig"] = "%s ने 1 Mana चुरा लिया!",
	["mythiefrig"] = "तुमने %s से 1 mana चुरा लिया है",
	["notthiefrig"] = "%s अब thief नहीं है - कोई mana नहीं चुराया गया।",
	["leftthiefrig"] = "Thief game छोड़ गया - कोई mana नहीं चुराया गया।",
	["hereticrig"] = "तुम possessed हो गए हो!",
	["archonrig"] = "Phase teleport!",
	["drifterrig"] = "Stairs spin हो रहे हैं!",
	["splicerrig"] = "Stairs twist हो रहे हैं!",
	["necrorig"] = "Stairs fade हो रहे हैं!",
	["reaverrig"] = "तुम reflected हो गए हो!",
	["gremlinrig"] = "तुम hypnotised हो गए हो!",
	["reveal"] = "तुमने invisible stairs reveal कर दिए!",

	--drifer lifts
	["boosted"] = "Drift boost हो गया!",
	["noboost"] = "Boost नहीं कर सकते, ऊपर कोई platform नहीं है।",
	["noupplatform"] = "Boost नहीं कर सकते, ऊपर कोई platform नहीं है।",

	--mana overload
	["overstarted"] = "तुमने Mana Overload activate कर दिया!",
	["overended"] = "Mana Overload खत्म हो गया।",

	--mana share
	["2minshare"] = "कम से कम 2 mana चाहिए...",
	["noshare"] = "पास में कोई player नहीं है जिसे mana दे सको...",
	["noinf"] = "तुम infinite mana share नहीं कर सकते!",
	["toomuch"] = "%s के पास already maximum Mana है!",
	["shared"] = "%s के साथ Mana share किया गया!",
	["received"] = "%s ने तुम्हारे साथ कुछ Mana share किया है!",

	--prompts
	--["scancel"] = "Cancel your spell to change alignments.", --removed
	["morph"] = "यहाँ jump करके %s बनो!",
	["race"] = "यहाँ jump करके नई race शुरू करो।",
	["norace"] = "Infinite mode में race automatic होती है।",

	--misc
	["secret"] = "Secret मिल गया!",
	["unlocked"] = "Spell unlock हो गया!",

	--chameleon exceptions	
	["chamtutorial"] = "Tutorial में CHAMELEON use नहीं कर सकते!",
	["champossessed"] = "Possessed होने पर chameleon use नहीं कर सकते।",
	["chamhypnotised"] = "Hypnotised होने पर chameleon use नहीं कर सकते।",
	["chamreflected"] = "Reflected होने पर chameleon use नहीं कर सकते।",
	--["chamspell"] = "Please execute or cancel current spell first.", --removed
	["morphpossessed"] = "Possessed होने पर alignment change नहीं कर सकते।",
	["morphhypnotised"] = "Hypnotised होने पर alignment change नहीं कर सकते।",
	["morphreflected"] = "Reflected होने पर alignment change नहीं कर सकते।",

	["nocode"] = "पहले code enter करो।",
	["invalid"] = "यह code invalid है।",
	["old"] = "यह code अब active नहीं है।",
	["accepted"] = "Code चलता हें।",

	--free demos
	["tryspectre"] = "Spectre 10 मिनट के लिए unlock हो गया है! Server मत छोड़ना।",
	["endspectre"] = "Spectre demo 1 मिनट में खत्म हो जाएगा!",
	["trycham"] = "Chameleon 10 मिनट के लिए unlock हो गया है! Server मत छोड़ना।",
	["new20pass"] = "Mana limit बढ़ गई है!",
	["newchampass"] = "अब तुम climb के दौरान alignment change कर सकते हो!",
	--NEW
	["newarchpass"] = "अब तुम ARCHITECT बन सकते हो!",
	["tryarch"] = "Non-VR Architect 10 मिनट के लिए unlock हो गया है! Server मत छोड़ना।",
	["endarch"] = "Non-VR Architect demo 1 मिनट में खत्म हो जाएगा!",
	--END NEW
	["newspectrepass"] = "अब तुम SPECTRE बन सकते हो!",
	["endcham"] = "Chameleon demo 1 मिनट में खत्म हो जाएगा!",
	["trymana"] = "Bigger storage 10 मिनट के लिए unlock हो गया है! Server मत छोड़ना।",
	["endmana"] = "Bigger storage demo 1 मिनट में खत्म हो जाएगा!",


	["used"] = "Code पहले ही use किया जा चुका है।",
	["tooshort"] = "तुम्हारा message बहुत छोटा था, इसलिए भेजा नहीं गया।",
	["sent"] = "तुम्हारा message successfully भेज दिया गया है, धन्यवाद।",
	
	--NEW
	['noobteleport'] = "Tutorial में towers switch नहीं कर सकते!",
	['noobmorph'] = "Morph करने के लिए tutorial पूरा करो!",
	['noobnocode'] = "Codes use करने के लिए tutorial पूरा करो!",
	['noobchameleon'] = "Chameleon use करने के लिए tutorial पूरा करो!",
	
	--GIFTING
	['notingame'] = "Player game छोड़ चुका है, तुम game pass नहीं दे सकते!",
	['alreadyowns'] = "Player के पास यह game pass पहले से है।",
	['gotit'] = "तुम्हें %s game pass मिला है, courtesy of %s",
	['given'] = "%s को %s game pass मिल गया है!",
	--END NEW

	--custom tower feedbacks
	["notinrace"] = "Race के दौरान infinite mode में switch नहीं कर सकते!",
	["notinreg"] = "Regeneration के दौरान infinite mode में switch नहीं कर सकते!",
	["infinite"] = "Server अब infinite mode में है!",
	["classic"] = "Server अब classic mode में है",
	["casual"] = "Casual players अब spells cast कर सकते हैं!",
	["nocasual"] = "Casual players अब spells cast नहीं कर सकते",
	["purge"] = "अब Purge classic mode में regeneration करेगा!",
	["nopurge"] = "अब Purge classic mode में regeneration नहीं करेगा!",
	["noevens"] = "Even levels अब restricted हैं",
	["evens"] = "Even levels अब पूरी तरह enabled हैं",
	["orbmoves"] = "Endgame Orb अब अपने आप randomly move करेगा!",
	["orbstopped"] = "Endgame Orb अब अपने आप move नहीं करेगा!",
	["infreg"] = "Infinite round के बाद staircase regenerate होगा!",
	["noinfreg"] = "Infinite round के बाद staircase regenerate नहीं होगा!",
	["drones"] = "Small Drones enabled!",
	["nodrones"] = "Small Drones disabled!",
	["dronefix"] = "Drones अब stairs restore करेंगे!",
	["nodronefix"] = "Drones अब stairs restore नहीं करेंगे!",
	["droneunlock"] = "Drones अब cursed intersections remove करेंगे!",
	["nodroneunlock"] = "Drones अब cursed intersections remove नहीं करेंगे!",
	["droneuncurse"] = "Drones अब cursed stairs restore करेंगे!",
	["nodroneuncurse"] = "Drones अब cursed stairs restore नहीं करेंगे",
	["dronemove"] = "Drones अब default mode में stairs move करेंगे!",
	["nodronemove"] = "Drones अब default mode में stairs move नहीं करेंगे!",
	["dronespin"] = "Drones अब default mode में stairs spin करेंगे!",
	["nodronespin"] = "Drones अब default mode में stairs spin नहीं करेंगे!",
	["noinput"] = "कृपया कोई value डालो!",
	["nonumber"] = "कृपया एक number डालो!",
	["notrace"] = "Race के दौरान tower levels change नहीं कर सकते!",
	["notultimate"] = "Ultimate spell के दौरान tower levels change नहीं कर सकते!",
	["notregen"] = "Regeneration के दौरान tower levels change नहीं कर सकते!",
	["wait"] = "Tower levels बदले जा रहे हैं, कृपया wait करो...",
	["duration"] = "Race duration change हो गई है (current race पर असर नहीं पड़ेगा)",
	["init"] = "Initial infinite interval time change हो गया है",
	["reduction"] = "Infinite reduction time change हो गया है",
	["mininf"] = "Minimum infinite interval time change हो गया है",
	["cooldown"] = "Rig और event spell cooldown change हो गया है",
	["speed"] = "Small drones की speed change हो गई है",
	["spin"] = "Small drones का casting duration change हो गया है",
	["max"] = "Maximum target staircases amount change हो गया है",
	["min"] = "Minimum target staircases amount change हो गया है",
	["curse"] = "Drone curse stairs chance change हो गया है",
	["block"] = "Drone curse intersection chance change हो गया है",



}

module.serverbroadcast = {
	["pranked"] = "%s ने %s को प्रैंक किया!",
	["found"] = "%s ने %s की अदृश्य सीढ़ियाँ ढूंढ लीं!",
	["disco"] = "%s, %s के डिस्को म्यूज़िक का आनंद ले रहा है।",
	["trap"] = "%s, %s के जाल में फँस गया।",
	["obby"] = "%s, %s का ओबी ट्राय कर रहा है।",
	["default"] = "ड्रोन्स अब डिफ़ॉल्ट मोड में वापस आ गए हैं।",
	["reg"] = "सीढ़ियाँ फिर से बन रही हैं।",
	["done"] = "सीढ़ियों का पुनर्निर्माण पूरा हुआ।",
	["union"] = "%s अपने घोस्ट के साथ मिल गया है!",
	["eliminated"] = "%s को बाहर कर दिया गया है।",
	["won"] = "%s ने रेस जीत ली!",
	["nojoin"] = "रेस अब बंद है - नए खिलाड़ी शामिल नहीं हो सकते।",
	["safety"] = "टॉवर के लेवल बदल गए हैं, यह रेस शुरू नहीं होगी।",
	["leader"] = "%s आगे निकल गया है!",
	["toolate"] = "कोई भी समय पर टॉप तक नहीं पहुँच पाया!",
	["over"] = "रेस खत्म!",

	["newrace"] = "%s ने रेस शुरू की - शामिल हो जाओ!",
	["joined"] = "%s रेस में शामिल हो गया!",
	["2min"] = "किसी ने %s को चुनौती नहीं दी!",
	["infstart"] = "इन्फिनिट रेस शुरू हो गई!",
}

module.localfeedback = {
	["nomana"] = "पर्याप्त मना नहीं है!",
	["notokens"] = "पर्याप्त टोकन नहीं हैं!",
	["unlocked"] = "स्पेल अनलॉक हो गया!",
	["maxmana"] = "आपका मना पहले से ही अधिकतम है!",
	["nopurchase"] = "ट्यूटोरियल में मना खरीदने की ज़रूरत नहीं है!",

	["limitset"] = "आपके पास मना लिमिटर सक्रिय है - खरीद रोकी गई।",
	["hasarchitect"] = "आपके पास पहले से आर्किटेक्ट पास है!",

	["haschameleon"] = "आपके पास पहले से कैमिलियन पास है!",
	["hasspectre"] = "आपके पास पहले से स्पेक्ट्रे पास है!",
	["hasmana"] = "आपके पास पहले से बड़ा स्टोरेज पास है!",
	["nomuggle"] = "आपको लगा मगल के लिए सीक्रेट अल्टीमेट स्पेल हैं, लेकिन नहीं हैं।",
	["nonone"] = "आपको लगा 'None' के लिए सीक्रेट अल्टीमेट स्पेल हैं, लेकिन नहीं हैं।",
	["nounlocks"] = "अल्टीमेट स्पेल पाने के लिए सभी बेसिक स्पेल अनलॉक करें!",
	["onetoken"] = "आपको एक %s स्पेल टोकन मिला है!",
	["moretokens"] = "आपको कुछ %s स्पेल टोकन मिले हैं!",
	["music"] = "म्यूज़िक सफलतापूर्वक बदल गया।",
	["nomusic"] = "म्यूज़िक लोड नहीं हुआ।",
	["noteleport"] = "टेलीपोर्ट असफल रहा!",
	["norefresh"] = "आप अभी रिफ्रेश नहीं कर सकते।",
	["nounion"] = "आप अभी घोस्ट यूनियन का उपयोग नहीं कर सकते।",

	["failedjoin"] = "रेस में शामिल होना असफल रहा।",
}

module.switchon = {
	["JOKER1"] = "अब आप अदृश्य सीढ़ियाँ नहीं दिखाएँगे।",
	["WICKED1"] = "अब आप नीचे वाले Wicked Rigs ट्रिगर नहीं करेंगे।",
	["KEEPER1"] = "अब आप नीचे वाले Keeper Rigs ट्रिगर नहीं करेंगे।",
	["SPECTRE1"] = "अब आप नीचे वाले Spectre Rigs ट्रिगर नहीं करेंगे।",
	["HACKER1"] = "एस्केलेटर इम्युनिटी चालू।",
	["HACKER2"] = "एस्केलेटर और रिग इम्युनिटी चालू।",
	["ARCHON1"] = "अब केवल ऊपर की स्प्लिट्स आपको टेलीपोर्ट करेंगी।",
	["DRIFTER1"] = "अब आप नीचे वाले Drifter Rigs ट्रिगर नहीं करेंगे।",
	["SPLICER1"] = "अब आप नीचे वाले Splicer Rigs ट्रिगर नहीं करेंगे।",
	["GREMLIN1"] = "पास के कॉर्कस्क्रू लॉक हो गए हैं।",
	["NONE"] = "सभी विशेष प्रभावों की इम्युनिटी चालू।",
}

module.switchoff = {
	["JOKER1"] = "अब आप अदृश्य सीढ़ियाँ दिखाएँगे।",
	["WICKED1"] = "अब आप नीचे वाले Wicked Rigs ट्रिगर करेंगे।",
	["KEEPER1"] = "अब आप नीचे वाले Keeper Rigs ट्रिगर करेंगे।",
	["SPECTRE1"] = "अब आप नीचे वाले Spectre Rigs ट्रिगर करेंगे।",
	["HACKER1"] = "एस्केलेटर इम्युनिटी बंद।",
	["HACKER2"] = "एस्केलेटर और रिग इम्युनिटी बंद।",
	["ARCHON1"] = "अब नीचे वाली स्प्लिट्स को छोड़कर बाकी सब टेलीपोर्ट करेंगी।",
	["DRIFTER1"] = "अब आप नीचे वाले Drifter Rigs ट्रिगर करेंगे।",
	["SPLICER1"] = "अब आप नीचे वाले Splicer Rigs ट्रिगर करेंगे।",
	["GREMLIN1"] = "पास के कॉर्कस्क्रू अनलॉक हो गए हैं।",
	["NONE"] = "सभी विशेष प्रभावों की इम्युनिटी बंद।",
}

local timedSpell = "%s ने अभी %s स्पेल कास्ट किया!"

module.eventspells = {
	["patronrigevent"] = "%s ने सभी सामान्य सीढ़ियों पर Mana Gift रिग किया!",
	["patronevent"] = "%s ने टॉवर को सीढ़ियों से भर दिया!",
	["patronaltevent"] = "%s ने सभी सामान्य सीढ़ियाँ छोटी कर दीं!",

	["jokerrigevent"] = "%s ने Flip स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["jokerevent"] = "%s ने सभी सामान्य सीढ़ियाँ छुपा दीं!",
	["jokeraltevent"] = "%s ने सभी सामान्य सीढ़ियाँ पलट दीं!",

	["wickedrigevent"] = "%s ने Destroy स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["wickedevent"] = "%s ने सभी सामान्य सीढ़ियाँ नष्ट कर दीं!",
	["wickedaltevent"] = "%s ने सभी सीढ़ियाँ नष्ट कर दीं!",

	["keeperrigevent"] = "%s ने Random Move स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["keeperevent"] = "%s ने सभी सामान्य सीढ़ियाँ शफल कर दीं!",
	["keeperaltevent"] = "%s ने सभी सीढ़ियाँ पुनर्स्थापित कर दीं!",

	["spectrerigevent"] = "%s ने 50%% घोस्ट चांस के साथ सभी सामान्य सीढ़ियों को रिग किया!",
	["spectreevent"] = "%s ने सभी सामान्य सीढ़ियाँ फैंटम शफल कर दीं!",
	["spectrealtevent"] = "%s ने सभी सामान्य सीढ़ियाँ घोस्ट बना दीं!",

	["hackerrigevent"] = "%s ने Glitch स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["hackerevent"] = "%s ने सभी सामान्य सीढ़ियों को एस्केलेटर बना दिया!",
	["hackeraltevent"] = "%s ने सभी सामान्य सीढ़ियों को ऊपर जाने वाले एस्केलेटर बना दिया!",

	["thiefrigevent"] = "%s ने Mana Steal सभी सामान्य सीढ़ियों पर रिग किया!",
	["thiefevent"] = "%s ने सभी सामान्य सीढ़ियाँ फ्लैट कर दीं!",
	["thiefaltevent"] = "%s ने सभी लेवल पर बायपास बना दिए!",

	["archonrigevent"] = "%s ने Phase स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["archonevent"] = "%s ने सभी सामान्य सीढ़ियों पर रैंडम गेट लगा दिए!",
	["archonaltevent"] = "%s ने सभी सामान्य सीढ़ियों पर वर्टिकल गेट लगा दिए!",

	["drifterrigevent"] = "%s ने Spin स्पेल सभी सीढ़ियों पर रिग किया!",
	["drifterevent"] = "%s ने सभी सामान्य सीढ़ियाँ रैंडम ड्रिफ्ट कर दीं!",
	["drifteraltevent"] = "%s ने सभी सामान्य सीढ़ियाँ ऊपर उठा दीं!",

	["hereticrigevent"] = "%s ने Possess स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["hereticevent"] = "%s ने सभी सामान्य सीढ़ियों को विभाजित कर दिया!",
	["hereticaltevent"] = "%s ने सभी सामान्य सीढ़ियों को श्रापित कर दिया!",

	["splicerrigevent"] = "%s ने Splice स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["splicerevent"] = "%s ने सभी सामान्य सीढ़ियाँ स्प्लाइस कर दीं!",
	["spliceraltevent"] = "%s ने सभी सामान्य सीढ़ियाँ विभाजित कर दीं!",

	["necromancerrigevent"] = "%s ने Soulless स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["necromancerevent"] = "%s ने टॉवर को Soulless सीढ़ियों से भर दिया!",
	["necromanceraltevent"] = "%s ने सभी सामान्य सीढ़ियों को Soulless बना दिया!",

	["gremlinrigevent"] = "%s ने Hypnotise स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["gremlinevent"] = "%s ने सभी सामान्य सीढ़ियाँ घुमा दीं!",
	["gremlinaltevent"] = "%s ने टॉवर को Tram सीढ़ियों से भर दिया!",

	["reaverrigevent"] = "%s ने Reflect स्पेल सभी सामान्य सीढ़ियों पर रिग किया!",
	["reaverevent"] = "%s ने सभी सामान्य सीढ़ियों को रैंडम One-Way बना दिया!",
	["reaveraltevent"] = "%s ने सभी सामान्य सीढ़ियों को ग्लास सीढ़ियाँ बना दिया!",

	["newmode"] = "%s ने ड्रोन को %s मोड में बदल दिया!",

	["chameleonrigevent"] = "%s ने सभी सामान्य सीढ़ियों पर Mystery स्पेल रिग किया!"
}

module.spells.extras = {

	["Prompt"] = "नीचे दिए गए स्पेल पर क्लिक करें, इसे कैसे उपयोग करना है सीखने के लिए",
	["Title1"] = "मूल स्पेल",
	["Title2"] = "विशिष्ट अल्टिमेट स्पेल",
	["Title3"] = "साझा अल्टिमेट और मूल स्पेल",
	["ManaCost"] = "माना लागत: %s", 
	["TokenCost"] = "टोकन लागत: %s", 
	["Special"] = "विशेष आवश्यकताएँ: %s",
	["Execution"] = "निष्पादन: %s",
	["Description"] = "विवरण: %s",
	["basic"] = "मूल",
	["ultimate"] = "अल्टिमेट",
	["unlock"] = "0 (अनलॉक करने के लिए 3)",
	["none"] = "कोई विशेष आवश्यकता नहीं",

	--NEW
	["LeftHand"] = "बायाँ हाथ",
	["RightHand"] = "दायाँ हाथ",

}

module.gui.mana = {

	["mana"] = "माना",
	["ghost"] = "भूत",
	["spirit"] = "आत्मा",
	["welcome"] = "स्वागत",
	["drones"] = "ड्रोन",
	["orb"] = "ऑर्ब",
	["refill"] = "रीफिल",
	["overload"] = "ओवरलोड",
	["steal"] = "चोरी",
	["gift"] = "उपहार",
	["share"] = "साझा करें",
	["prank"] = "मज़ाक",
	["possession"] = "कब्ज़ा",
	["ritual"] = "अनुष्ठान",
	["purge"] = "शुद्धिकरण",
	["blessing"] = "आशीर्वाद",
	["stash"] = "भंडार",
	["backdoor"] = "बैकडोर",
	["chamber"] = "कक्ष",
	["base"] = "आधार",
	["circus"] = "सर्कस",
	["shelter"] = "आश्रय",
	["haven"] = "शरण",
	["study"] = "अध्ययन",
	["nether"] = "नेदर",
	["guild"] = "गिल्ड",
	["nexus"] = "नेक्सस",
	["oasis"] = "ओएसिस",
	["hub"] = "हब",
	["mirror"] = "दर्पण",
	["grave"] = "कब्र",
	["shack"] = "झोपड़ी",
	["regen"] = "पुनर्जनन",
	["optimus"] = "ऑप्टिमस",
	["tutorial"] = "ट्यूटोरियल",

}

module.gui.gameover.extras = {

	["possessed"] = "वे परेशान करने वाले हेरिटिक्स!",
	["hypnotised"] = "मैं कहाँ हूँ?",
	["reflected"] = "मुझे बाहर निकालो!",
	["new"] = "नया रैंक प्राप्त हुआ - %s",

}

module.gui.gameover.raceplacements = {
	"आपने रेस जीत ली!",
	"२रा स्थान!",
	"३रा स्थान!",
	"आप ४थे स्थान पर रहे।",
	"आप ५वें स्थान पर रहे।",
	"आप ६ठे स्थान पर रहे।",
	"आप ७वें स्थान पर रहे।",
	"आप ८वें स्थान पर रहे।",
	"आप ९वें स्थान पर रहे।",
	"आप १०वें स्थान पर रहे।",
	"आप ११वें स्थान पर रहे।",
	"आप १२वें स्थान पर रहे।",
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



