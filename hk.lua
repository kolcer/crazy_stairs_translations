--VERSION 4.4--
--HONG KONG CANTONESE 香港粵語--
--I honestly did this bc minecraft did it and i probably wont even be using it
--Note: Due to different grammar structure, description code is modified

local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {

	--Default
	["default"] = "預設",
	--Validate
	["validate"] = "驗證",

}

module.gui.switcher = {

	--Join
	["join"] = "加入",

	--Friends Online
	["friends"] = "上線朋友",

	--refreshing
	["refresh"] = "刷新緊...",

	--failed to refresh
	["fail"] = "刷新失敗咗!",

	--NEW
	--Refresh
	["refreshbutton"] = "刷新",

	--Teleport Failed
	["failed"] = "傳送唔到!",

	--Normal Tower
	["classic"] = "普通塔",

	--Pro Tower
	["pro"] = "高級塔",

	--Custom Tower
	["custom"] = "自訂塔",

	--Basic Tower
	["basic"] = "初級塔",

	--Infinite Tower
	["infinite"] = "無限塔",
	--END NEW

}

module.gui.serversettings = {

	--Drone Settings
	["Drones"] = "無人機設定",

	--Drones Settings (Read only)
	["DronesReadOnly"] = "無人機設定 (只限讀取)",

	--Drones enabled
	["DroneEnabled"] = "開啟無人機",

	--Drones restore stairs
	["DroneFix"] = "無人機可以恢復樓梯",

	--Drones remove cursed intersections
	["DroneRemove"] = "無人機可以整走詛咒交叉點",

	--Drones restore cursed stairs
	["DroneUnCurse"] = "無人機可以恢復詛咒樓梯",

	--Drones move stairs in default mode
	["DroneMove"] = "普通模式無人機可以喐樓梯",

	--drones spin stairs in default mode
	["DroneSpin"] = "普通模式無人機可以轉樓梯",

	--Drones travel speed (level/second)
	["DroneSpeed"] = "無人機移動速度(每秒經幾層)",

	--Drones spin duration (seconds)
	["DroneDelay"] = "無人機自轉(秒數)",

	--Max staircases amount (drones will exclusively destroy above this limit)
	["DroneMax"] = "樓梯最大數量 (無人機一超過依個數就會破壞樓梯)",

	--Min staircases amount (drones will exclusively create below this limit)
	["DroneMin"] = "樓梯最細數量 (無人機一低過依個數就會整新樓梯)",

	--Cursed intersection chance for every empty intersection encounter (percent)
	["DroneBlock"] = "喺吉嘅交叉點整詛咒交叉點嘅機會率 (百分比 [Percent])",

	--Cursed stairs chance for creation and normal stairs encounter (percent)
	["DroneCurse"] = "普通樓梯變成詛咒樓梯及新整詛咒樓梯嘅機會率 (百分比 [Percent])",

	--Tower Settings
	["Tower"] = "樓梯塔設定",

	--Tower Settings (Read only)
	["TowerReadOnly"] = "樓梯塔設定 (只限讀取)",

	--Infinite mode (Cannot be change during races or regeneration)
	["InfMode"] = "無限模式 (唔可以喺比賽緊或者再生樓梯緊更改)",

	--Casual players allowed to cast spells
	["CasualPlayers"] = "唔係比賽嘅玩家可以用咒語",

	--Auto Staircase generation after a Wicked's Purge (will not work in the infinite mode)
	["Regeneration"] = "喺 Wicked 完全清除後會自動再生樓梯 (無限模式會冇反應)",

	--Even Levels Restricted
	["EvenLevels"] = "雙數層唔可以用咒語",

	--Endgame orb changes position
	["OrbMoves"] = "終點球會改變位置",

	--Auto Staircase generation on new server, tower levels change and after the infinite race
	["InfRegeneration"] = "改變數層數量 / 無限模式賽後 / 新Server會自動再生樓梯 ",

	--deprecated
	--["TowerLevels"] = "Tower levels (or active levels in the infinite mode). Cannot be changed during a race or a regeneration",

	--Tower grid size (Testing)
	["TowerSize"] = "樓梯塔格數 (測試中)",

	--Maximum Race Duration. Will not affect current race. (seconds)
	["RaceDuration"] = "比賽時限. 唔會影響開始咗嘅比賽. (秒數)",

	--Initial Infinite mode round interval (2 levels are created each round) (seconds)
	["InfStart"] = "無限模式一開始每幾秒生成兩層 (秒數)",

	--Infinite mode interval reduction (each round is shorter by) (seconds)"
	["InfReduction"] = "無限模式每一次生成減幾秒 (秒數)",

	--Infinite mode minimum interval duration (seconds)
	["InfMin"] = "無限模式最少每幾秒生成兩層 (秒數)",

	--NEW KEY
	--Event and Rig cool down period (seconds)
	["CooldownTime"] = "突發事件及壟斷事件冷卻時間 (秒數)",
	--END NEW

}


module.gui.shop = {

	--NEW
	--The Architect game pass allows you to become an Architect without a VR headset.
	["architect"] = "Architect 特權證可以令你唔使用VR去做 Architect",
	--END NEW

	--Chameleons can change alignment during climb.
	["chameleon"] = "Chameleon 可以喺爬緊咗塔果陣轉其他 Alignments.",

	--Spectre is a teleport based alignment best for solo play.
	["spectre"] = "Spectre 主要係玩傳送, 適合比個人玩家.",

	--Expand your Mana storage capacity by 10 points.
	["mana"] = "多10個法力點容量.",

	--Unlock one/ten spell or cast up to 3/30 ultimate spells.
	["3tokens"] = "解開1個咒語或用最多3個超級咒語.",
	["30tokens"] = "解開10個咒語或用最多30個超級咒語.",

	--Enough to unlock all spells with 93 tokens left.
	["300tokens"] = "足夠開曬全部咒語, 有剩返93個代幣.",

	--3/30/300 Multi tokens
	["3TOKENS"] = "3個多用途代幣 (R$%d)",
	["30TOKENS"] = "30個多用途代幣 (R$%d)",
	["300TOKENS"] = "300個多用途代幣 (R$%d)",

	--NEW
	--Gamepasses
	["SPECTRE"] = "Spectre 特權證 (R$%d)",
	["MANA"] = "20個法力點數容量特權證 (R$%d)",
	["CHAMELEON"] = "Chameleon 特權證 (R$%d)",
	["ARCHITECT"] = "Architect 特權證 (R$%d)",

	--END NEW

}


module.gui.nospellsbar = {

	--ONLY RACERS CAN CAST SPELLS
	["nocasual"] = "只有比賽玩家可以用咒語",

	--POSSESSED! (Find Mana to break free)
	["possessed"] = "你被人詛咒! (搵法力球去移除詛咒)",
	--NEW
	--POSSESSED! (permanent mode)
	["permanent"] = "你被人詛咒! (永久性)",
	["cancelled"] = "取消咗...", --timed spell cancelled
	--END NEW

}

--NEW
module.gui.stats = {

	["badges"] = "你嘅徽章",
	["climbs"] = "你嘅攀爬次數",
	["total"] = "總攀爬次數/勝利",
	["best"] = "最好攀爬時間",
	["norecord"] = "[冇記錄]",

	--Prank the Creator
	["2124486274"] = "整蠱作者",
	--Black Hole
	["1803533030753957"] = "黑 洞",
	--Wicked's Treason
	["2124480173"] = "Wicked 背叛",
	--Joker's Trick
	["2124480172"] = "Joker 惡作劇",
	--Drifter's Voyage
	["2124637294"] = "Drifter 航空",
	--Thief's Heist
	["2124517579"] = "Thief 搶劫",
	--Splicer's Twist
	["4464785885277417"] = "Splicer 扭曲",
	--Keeper's Order
	["2124480174"] = "Keeper 秩序",
	--Archon's Connection
	["2124637293"] = "Archon 連接",
	--Hacker's Exploit
	["2124517578"] = "Hacker 外掛",
	--Gremlin's Spiral
	["707445818894757"] = "Gremlin 螺旋",
	--Patron's Pride
	["2124480171"] = "Patron 榮耀",
	--Reaver's Reflection
	["1407551481032773"] = "Reaver 倒影",
	--Heretic's Curse
	["2124637295"] = "Heretic 詛咒",
	--Necromancer's Rite
	["1885715582646280"] = "Necromancer 儀式",
	--Mugge's Logic
	["2124480175"] = "Muggle 邏輯",
	--Full Circle
	["2124826874"] = "完整圓圈",
	--None's Nothing
	["2124529966"] = "None 冇用性",
	--Possessed Fate
	["2124826880"] = "被詛咒嘅命運",
	--Hypnotized Dream
	["3731010929572663"] = "被催眠嘅夢",
	--Perspective Reflected
	["840574993122888"] = "對應反射",
	--Architect's Design
	["2124913225"] = "Architect 設計",
	--Rootkit Installed
	["2124702954"] = "安裝破解器",
	--Destroy Everything
	["2124702945"] = "摧毀所有嘢",
	--Order Restored
	["2124702946"] = "恢復秩序",
	--You spin me round and round
	["128721686760593"] = "氹氹轉 菊花園",
	--I'll take the elevator
	["2124702952"] = "我漂移得架啦",
	--The Entanglement
	["3121101516427751"] = "糾纏樓梯",
	--Leave No Noobs Behind
	["2124702942"] = "唔好留低任何新手",
	--Illuminati Confirmed
	["2124702950"] = "秘密學會係存在",
	--Mine, mine, mine
	["2124702951"] = "全部都屬於我",
	--We are one
	["1165646024608180"] = "我哋係一體",
	--Rise, rise, rise
	["2303731210592278"] = "復活, 起身, 升起!",
	--Excommunication
	["2124702949"] = "被逐出之人",
	--Pranking is Living
	["2124702943"] = "永恆嘅惡作劇",
	--Spells are overrated
	["2124702948"] = "咒語唔好玩",
	--Perfect Circle
	["2124826876"] = "「圓」整「圓」美",
	--Secret Badge
	["2124645341"] = "隱藏徽章",
	--Super Secret Badge
	["2126893403"] = "超級隱藏徽章",
	--Mega Secret Badge
	["2126893411"] = "超超級隱藏徽章",

}


module.gui.questions = {
	--Do you want to cancel this timed spell? Tokens will not be refunded.
	["cancel"] = "你係咪想暫停依嗰計時咒語? 你唔會攞返代幣.",
	--Would you like to play the tutorial?
	["tutorial"]= "你想唔想玩教學?",
	--Would you like to skip the tutorial?
	["skip"] = "你想唔想跳咗個教學?",
	--Do you want the stairs to avoid collisions while moving? If not, any stairs in the way will be destroyed.
	["reshuffle"] = "你想唔想啲樓梯唔會互相相撞? 如果唔想, 任何阻住嘅樓梯都會被摧毀.",
	--"%s alignment is not available in the Basic Tower. Would you like to teleport to the Normal Tower?"
	["tonormal"] = "%s 唔可以喺初級塔到用. 你想唔想傳送到去普通塔?",
	--"Are you sure you want to join the race? You will be teleported to the bottom of the tower."
	["raceconfirm"] = "你係咪想加入比賽? 你會被傳送到去座塔嘅最底.",

	--new
	--Do you want to gift %s Game Pass to another player?
	["gift"] = "你想唔想送依個 %s 特權證比其他人?",
	--Choose a player to receive %s Game Pass
	["choose"] = "揀一個人去收 %s 特權證", 
	--Do you want to gift %s Game Pass to %s?
	["confirm"] = "你肯定要送依個 %s 特權證比 %s?", --second %s is the chosen player
	--You have received %s Game Pass, courtesy of %s!
	["received"] = "你得到 %s 特權證, 由 %s 送出!",

	--You need to complete at least %d climbs to be able to teleport to other towers.
	["notenough"] = "你致少要有 %d 攀爬次數先可以傳送去其他樓梯塔.",
	
	--Gamepasses
	["architect"] = "Architect",
	["mana"] = "+10 法力點容量",
	["spectre"] = "Spectre",
	["chameleon"] = "Chameleon",

	--end new
	--new
	--Join race?
	["race"] = "加入比賽?",
	--Race in
	["racein"] = "準備開始:",
	["go"] = "GO!",
	--Race cancelled
	["raceoff"] = "比賽取消咗",
	--end new
}
--END NEW



module.gui.codes = {

	--Enter the code
	["title"] = "輸入代碼",
	--Input your code here
	["body"] = "輸入代碼:",
	--(code)
	["prompt"] = "(代碼)",
	--Validate
	["button"] = "驗證",

}

module.gui.jukebox = {

	--Jukebox
	["title"] = "遊戲音樂",

	--Master Volume
	["master"] = "主聲量",
	--Using master volume
	["default"] = "(用緊主聲量)",
	--Climb music
	["climb"] = "攀爬音樂",
	--Endgame music
	["endgame"] = "遊戲結束音樂",
	--Failed to load
	["failed"] = "[載入唔到]",
	--NEW
	--Muted
	["off"] = "靜音",
	--END NEW
}

module.gui.results = {

	--Race Results
	["title"] = "比賽結果",

	--Place
	["place"] = "排名",
	--Name
	["name"] = "用戶名稱",
	--Max Level
	["level"] = "最高樓層",
	--Time
	["time"] = "時間",
	--Rank
	["rank"] = "等級",
	["not"] = "N/A",
	--Winner
	[1] = "贏家",
	--Other placings
	[2] = "2nd",
	[3] = "3rd",
	[4] = "4th",
	[5] = "5th",
	[6] = "6th",
	[7] = "7th",
	[8] = "8th",
	[9] = "9th",
	[10] = "10th",
	[11] = "11th",
	[12] = "12th",

}


--NEW 

module.gui.menu = {

	--Code Entry
	["Codes"] = "輸入代碼",
	--Send game feedback
	["Feedback"] = "傳送遊戲意見",
	--Change game language
	["Language"] = "轉遊戲語言",
	--Music Jukebox
	["Music"] = "遊戲音樂",
	--Last Race Results
	["RaceResults"] = "上一個比賽結果",
	--Tower Settings (Custom Tower)
	["ServerSettings"] = "樓梯塔設定 (自訂塔)",
	--Game Settings
	["Settings"] = "遊戲設定",
	--Buy gamepasses and tokens
	["Shop"] = "購買特權證同代幣",
	--Spectate other players
	["Spectate"] = "觀看其他玩家",
	--Your badges and achievements
	["Stats"] = "你嘅徽章同成就",
	--Switch Tower
	["SwitchServer"] = "轉其他塔",
	--Your Tokens
	["Tokens"] = "你嘅代幣",
	--Play the tutorial
	["Tutorial"] = "進入教學",

}

--NEW
--end screen tutorial
module.gui.tutorial = {

	--Climb Completed
	["complete"] = "你爬完!",
	--Please choose your first alignment
	["choose"] = "揀你第一個 Alignment!",
	--Difficulty
	["difficulty"] = "困難度:",

}

--END NEW

module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	-- %s Rig
	["rigevent"] = "%s Rig",
	--Drones %s mode
	["mode"] = "%s 模式無人機",
	--Mana overload
	["refill"] = "法力過載 (%s)",
	--Ghost union
	["union"] = "鬼聯盟 (%s)",
}

module.spells.names = {

	--PATRON
	["summon"] = "建立樓梯", --Create Stairs
	["restore"] = "叫終點球", --Call the Orb
	["split"] = "返方向重建", --Rebuild Opposite
	["shrinkabove"] = "縮細上面樓梯", --Shrink Above Stairs
	["link"] = "建立能量橋", --Create Link
	["portal"] = "建立傳送門", --Create Portal

	["summoner"] = "建立者", --Summoner
	["patronevent"] = "樓梯過載", --Stairs Overload
	["patronaltevent"] = "完全縮細", --Shrinkage

	--JOKER 
	["flip"] = "反轉樓梯", --Flip Stairs
	["flipabove"] = "反轉上面樓梯", --Flip Above Stairs
	["fake"] = "建立假樓梯", --Create Fake Stairs
	["invisible"] = "建立隱形樓梯", --Create Invisible Stairs
	["disco"] = "Disco 化樓梯", --Disco Stairs
	["trap"] = "建立陷阱", --Create Trap

	["flipper"] = "反轉者", --Flipper
	["jokerevent"] = "隱藏事件", --The Cloak
	["jokeraltevent"] = "全面反轉", --Flip Them All

	--WICKED
	["destroy"] = "摧毀樓梯", --Destroy Stairs
	["destroyabove"] = "摧毀上面樓梯", --Destroy Above Stairs
	["bend"] = "向上彎曲樓梯", --Bend Stairs Up
	["damage"] = "整爛上面樓梯", --Damage Above Stairs
	["flatten"] = "向下彎曲對面樓梯", --Bend Opposite Stairs Down
	["wall"] = "建立能量牆" , --Create Wall

	["bender"] = "彎曲者", --Bender
	["wickedevent"] = "損壞事件", --Destruction
	["wickedaltevent"] = "完全清除", --Purge

	--KEEPER
	["move"] = "移動樓梯", --Move Stairs
	["rotate"] = "轉動樓梯", --Rotate Stairs
	["moveup"] = "向上喐樓梯", --Move Stairs Up
	["movedown"] = "恢復樓梯", --Restore Stairs
	["moverandom"] = "隨機喐上面樓梯", --Random Above Move
	["rig"] = "隨機喐下面樓梯", --Random Move

	["ascension"] = "向上升", --Ascension
	["keeperevent"] = "重新排整", --Reshuffle
	["keeperaltevent"] = "完全恢復", --Restoration

	--SPECTRE
	["phantom"] = "建立幻影樓梯", --Create Phantom Stairs
	["ghost"] = "鬼化上面樓梯", --Ghostify Above Stairs
	["shadow"] = "鬼化下面樓梯", --Ghostify Stairs
	["horizontal"] = "平面傳送", --Horizontal Teleport
	["random"] = "隨機傳送", --Random Teleport
	["vertical"] = "向上傳送", --Vertical Teleport

	["traveller"] = "快閃傳送", --Shimmering
	["spectreevent"] = "幻影重新排整", --Phantom Shuffle
	["spectrealtevent"] = "異世界", --Aether Realm

	--HACKER
	["dash"] = "衝刺", --Dash
	["blink"] = "眨梯", --Blink
	["swap"] = "交換", --Swap
	["slide"] = "電梯", --Escalator
	["slideup"] = "入侵樓梯", --Hack In Stairs
	["glitch"] = "故障樓梯", --Glitch Stairs

	["hack"] = "加速外掛", --Speed Exploit
	["hackerevent"] = "上下電梯", --Escalation
	["hackeraltevent"] = "沖破", --Breach

	--THIEF
	["steal"] = "偷走樓梯", --Steal Stairs
	["stealabove"] = "偷走上面樓梯", --Steal Above Stairs
	["place"] = "放走樓梯", --Place Stairs
	["uppass"] = "螺旋形樓梯", --Spiral Staircase
	["sidepass"] = "建立繞道", --Create Bypass
	["drop"] = "丟走樓梯", --Ditch Stairs

	["heist"] = "搶劫", --Heist
	["thiefevent"] = "夷為平地", --Flatland
	["thiefaltevent"] = "超級繞道", --Mega Bypass

	--ARCHON
	["splitup"] = "建立向上傳送門", --Create Up Gate
	["splitrotate"] = "建立旋轉傳送門", --Create Rotated Gate
	["splitside"] = "建立直線傳送門", --Create Straight Gate
	["splitrandom"] = "建立隨機傳送門", --Create Random Gate
	["cancelsplit"] = "破壞傳送門", --Destroy Gate
	["splitforward"] = "建立平台傳送門", --Create Platform Gate

	["splitter"] = "平台傳送門狂", --Portalmania
	["archonevent"] = "隨意門●壹", --StairGate-1
	["archonaltevent"] = "上下傳送門", --Division

	--DRIFTER
	["indrift"] = "空中冲刺", --Surf 
	["outdrift"] = "隨機漂移", --Random Drift
	["updrift"] = "𨋢", --Elevator
	["diagdrift"] = "斜線漂移", --Diagonal Drift
	["spin"] = "旋轉樓梯", --Spin Stairs
	["driftabove"] = "拎起上面樓梯", --Lift Above Stairs

	["riser"] = "上升者", --Riser
	["drifterevent"] = "漂移境界", --Driftage
	["drifteraltevent"] = "提升事件", --Liftage

	--HERETIC
	["createcursed"] = "建立詛咒樓梯", --Create Cursed Stairs
	["curse"] = "詛咒樓梯", --Curse Stairs
	["curseabove"] = "詛咒上面樓梯", --Curse Above Stairs
	["curseinter"] = "輕彈", --Flicker
	["autodown"] = "提高分裂樓梯", --Raise Schism
	["autoup"] = "向下分裂對面樓梯", --Schism Opposite Down

	["malediction"] = "詛咒建立", --Malediction
	["hereticevent"] = "分裂事件", --Disunion
	["hereticaltevent"] = "完全詛咒", --Vengeance

	--SPLICER
	["twistup"] = "扭曲連接上面樓梯", --Splice Stairs Up
	["twistside"] = "扭曲連接平行樓梯", --Splice Parallel Stairs
	["twistrotate"] = "扭曲連接旁邊樓梯", --Splice Adjacent Stairs
	["canceltwist"] = "恢復扭曲樓梯", --Restore Twisted Stairs
	["split2"] = "分開樓梯", --Split Stairs
	["splitalt"] = "向前分開樓梯", --Split Stairs Forward

	["twister"] = "分開者", --Twister
	["splicerevent"] = "交織事件", --Interweave
	["spliceraltevent"] = "分開事件", --Bisect

	--NECROMANCER
	["createdual"] = "建立雙重樓梯", --Create Dual Stairs
	["copyplatform"] = "複製鬼嘅平台", --Copy Ghost's Platform
	["soulbridge"] = "建立靈魂橋", --Create Soul Bridge
	["undeadabove"] = "移除上面樓梯靈魂", --Remove Soul Above
	["revival"] = "重生點", --Revival Point
	["regen"] = "再生法力點", --Regenerate Mana

	["duality"] = "二元建立", --Duality
	["necromancerevent"] = "復活事件", --Resurrection
	["necromanceraltevent"] = "靈魂收穫", --Soul Harvest

	--REAVER
	["createmirrored"] = "建立鏡面樓梯", --Create Mirrored Stairs
	["bigmirror"] = "大地板鏡面", --Giant Mirror
	["smallmirror"] = "細地板鏡面", --Small Mirror
	["outermirror"] = "外圍鏡面", --Outer Mirror
	["merge"] = "鬼合併", --Reaver Merge
	["oneway"] = "玻璃化上面樓梯", --Glass Stairs

	["reflection"] = "反射", --Reflection
	["reaverevent"] = "十字路", --Cross Roads
	["reaveraltevent"] = "玻璃路", --Vitrification


	--GREMLIN
	["tram"] = "建立電車樓梯", --Create Tram Stairs
	["screwup"] = "向上隨機發神經樓梯", --Random Above Crazy Stairs
	["revolve"] = "迴轉樓梯", --Revolve Stairs
	["trapstairs"] = "陷阱門化樓梯", --Trapdoor Stairs
	["screwdown"] = "發神經樓梯", --Crazy Stairs
	["spinplatform"] = "旋轉平台", --Revolve Platform

	["tramway"] = "電車路", --Tram-way
	["gremlinevent"] = "完全迴轉", --Revolvelution
	["gremlinaltevent"] = "完全堵塞", --Gridlock

	--TUTORIAL
	["tcreate"] = "建立樓梯", --Create Stairs
	["tflip"] = "反轉樓梯", --Flip Stairs
	["tdestroy"] = "摧毀上面樓梯", --Destroy Above Stairs
	["tmove"] = "移動樓梯", --Move Stairs
	["tdash"] = "衝刺", --Dash
	["trestore"] = "恢復樓梯", --Restore Stairs

	--CHAMELEON
	--["ditch"] = "X形樓梯", --Cross Stairs
	["cork"] = "螺絲形樓梯", --Corkscrew Stairs
	["warp"] = "彎曲樓梯", --Warp Stairs
	["chamdown"] = "向下移動樓梯", --Move Stairs Down
	["chamdraw"] = "下面吊橋", --Below Drawbridge
	--["chamswap"] = "複製鬼 (視覺效果)", --Copy Ghost (visual)
	["chamdrawabove"] = "上面吊橋", --Above Drawbridge
	["oneways"] = "單向化樓梯", --One-way Stairs

	--NEW
	--Staircase is regenerating
	["mugglereg"] = "重新生成樓梯塔中",
	--Events and Rigs Cooldown
	["mugglecd"] = "突發事件及壟斷事件冷卻中",
	--Share mana (requires 2 Mana minimum)
	["share"] = "分享法力點 (最少要有2個法力點)",

	--ARCHITECT
	--Create or shrink
	["archpatron"] = "建立或縮細樓梯",
	--Gate stairs or platforms
	["archarchon"] = "建立樓梯傳送門或平台傳送門",
	--Steal or place
	["archthief"] = "偷走或放走樓梯",
	--Dual or undead stairs
	["archnecro"] = "建立雙重樓梯或移除樓梯靈魂",
	--Escalator or hack-in
	["archhacker"] = "電梯化或入侵樓梯",
	--Move or restore
	["archkeeper"] = "移動或恢復樓梯",
	--Splice or split
	["archsplicer"] = "連接或分開樓梯",
	--Wall or Destroy
	["archwicked"] = "建立能量牆或摧毀樓梯",
	--Revolve stairs or platform
	["archgremlin"] = "迴轉樓梯或旋轉平台",
	--Fake or Flip stairs
	["archjoker"] = "建立假樓梯或反轉樓梯",
	--Drift or Elevator
	["archdrifter"] = "漂移平台或建立𨋢",
	--Phantom or Ghost stairs
	["archspectre"] = "建立幻影樓梯或鬼化樓梯",
	--Mirror or One-way stairs
	["archreaver"] = "建立鏡面樓梯或單向化樓梯",
	--Curse intersection or stairs
	["archheretic"] = "建立詛咒樓梯或交叉點",

	--END NEW

}

-- common description stuff
--This is a timed Ghost Union spell. Once in Ghost Union Mode, you can clip through blocking stairs and walk on ghost, obby, and fake stairs. Special stairs will have no effect on you, and you will not trigger rigs. However, you cannot cast spells in this mode.
local union = "依個係計時鬼聯盟咒語. 一喺呢個模式, 你可以穿過阻住嘅樓梯又可以喺鬼樓梯 / 損壞樓梯 / 假樓梯上面行. 特殊樓梯唔會影響你, 你都唔會觸發 Rigs (壟斷樓梯). 但係你唔可以喺呢個時候用咒語."
--This is an Overload spell. It will grant you one Mana every 6 seconds for the next minute (10 in total). You can have only one overload active at a time.
local overload = "依個係過載咒語. 之後果一分鐘, 佢每六秒會比一個法力點比你 (總共10個). 你只可以有一個有效過載咒語."
--This spell is timed.
local timed = "依個係咒語係計時. "  -- do not remove space
--This is a Rig spell. It will Rig all normal stairs, one by one, with
local rig = "依個係 Rig (壟斷) 咒語. 佢會逐個壟斷曬全部普通樓梯, 變成 " --do not remove space

--Due to different grammar in chinese, all spell-dependent events common string needs to divide into two parts
--This is an Event spell. It will affect all normal stairs with 
local event = "依個係突發事件咒語. 佢會用 "
local event2 = " 去影響全部普通樓梯."
--This is a Fill spell. It will create stairs in every empty uncursed intersection in a random direction. 
local fill = "依個係填滿咒語. 佢會喺吉又冇被詛咒嘅交叉點到隨機方向建立樓梯. " -- do not remove spaces
--This is a Drone spell. It will change the drone mode to %s. In this mode drones will cast randomly either %s or %s on normal stairs. Special stairs will be restored instead. Outside of limits, drones will create and destroy respectively.
local mode = "依個係無人機咒語. 佢會將無人機轉做 %s 模式. 無人機喺呢個模式會隨機喺普通樓梯變成 %s 或用 %s. 特殊樓梯會被恢復. 否則無人機會分別建立和摧毀."

--Due to different grammar in chinese, all string.format(timedExtra) is changed
--The second %s is the rank, the third %s is the alignment
--Rank up to %s to increase the limit to 90s. Casting this spell will also refill Mana for all %s with at least %s Rank.
local timedExtra = " 等級上升到 %s 去增加時限到90秒. 用呢個咒語都會補充所有有 %s 嘅 %s 法力點." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	--This spell allows you to create stairs in the chosen direction. If there are any crossing stairs in the way, they will be destroyed.
	["summon"] = "依個咒語會比你喺你揀嘅方向建立樓梯. 如果有阻住嘅樓梯, 佢哋會被摧毀.",
	--This spell calls the orb on the top level to the chosen platform. Rank up to DEFENDER to reduce the cost to 2 Mana. Rank up to SAVIOUR to double the speed at which the orb will travel to You.
	["restore"] = "依個咒語會在頂樓叫個終點球去你揀嘅平台. 等級上升到 DEFENDER 去減低法力點用量去2個. 等級上升到 SAVIOUR 去多兩倍移動速度.",
	--This spell recreates below stairs in the opposite direction. Recreated stairs will be normal regardeless of original stairs type. Rank up to PROTECTOR to be able to rebuild any un-cursed stairs.
	["split"] = "依個咒語會反方向重建下面樓梯. 重建樓梯永遠係普通. 等級上升到 PROTECTOR 去可以重建任何唔係被詛咒嘅樓梯",
	--This spell shrinks above stairs, allowing you to walk around them.
	["shrinkabove"] = "依個咒語可以縮細上面樓梯, 比你行上去.",
	--"This spell creates an energy bridge between platforms for 60 seconds. Links are intangible from below. Rank up to the CREATOR rank to cast Link in any direction.
	["link"] = "依個咒語會在兩個平台之間建立一條能量橋, 維持60秒. 能量橋可以由下面行去上去. 等級上升到 CREATOR 去可以喺任何方向用能量橋.",
	--This spell creates portal that will teleport all players one platform up. Portal lasts 60 seconds. Rank up to PROTECTOR to extend the time to 120 seconds.
	["portal"] = "依個咒語會建立一個傳送門. 傳送門會傳送所有玩家上一層, 維持60秒.",

	--It allows you to create as many stairs as you like for one minute. Keep jumping on the arrows to create stairs.
	["summoner"] = timed ..  "佢會比你一分鐘隨你鍾意建立樓梯. 不斷跳喺箭嘴上面去建立樓梯." .. string.format(timedExtra,RankData.PATRON[7].name,RankData.PATRON[3].name,"Patrons"),
	--the Patron Rig. Patron Rig, once triggered, will increase triggering player Mana by one. If player has maximum Mana, stairs will not trigger. After triggering, stairs will become normal again.
	["patronrigevent"] = rig .."Patron Rig. 一觸發 Patron Rig 會增加一個法力點比觸發玩家. 如果玩家滿咗法力點, 樓梯唔會被觸發. 樓梯喺觸發後會變成普通樓梯.",
	--Stair Overload
	--Created stairs will be normal.
	["patronevent"] = fill ..  "所建立樓梯會係普通.",
	--Shrinkage
	["patronaltevent"] = event .. "縮細樓梯咒語" .. event2,
	["patronmode"] = string.format(mode,"Patron","Patron Rig","縮細樓梯咒語"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	--This spell flips stairs around, so top will become bottom and vice versa. You may also flip such stairs back.
	["flip"] = "依個咒語上下掉轉樓梯, 即係話樓梯頂會係底, 底會係頂. 你可以再上下掉轉倒轉樓梯.",
	--This spell flips above stairs, so top will become bottom and vice versa. You may also flip such stairs back.
	["flipabove"] = "依個咒語上下掉轉上面樓梯, 即係話樓梯頂會係底, 底會係頂. 你可以再上下掉轉倒轉樓梯",
	--This spell allows you to create fake stairs in the chosen direction. If there are any crossing stairs in the way, they will be destroyed. Any player (including you) that will attempt to climb them will fall through, with the exception of TRICKSTERS, ITS and players in the Ghost Union Mode.
	["fake"] = "依個咒語比你喺你揀嘅方向建立假樓梯. 如果有阻住嘅樓梯, 佢哋會被摧毀. 任何玩家 (包括你) 嘗試行上去會跌落去, 除非 TRICKSTERS, ITS 及喺鬼聯盟嘅玩家.",
	--This spell creates invisible stairs. However, this will not destroy crossing stairs, so you can only place stairs in an empty intersection. Rank up to JESTER to see all invisible stairs, and have the option to not reveal them.
	["invisible"] =  "依個咒語比你建立隱形樓梯. 但係, 依個唔會摧毀阻住嘅樓梯, 所以你只可以喺吉嘅交叉點到建立隱形樓梯. 等級上升到 JESTER 去全部隱形樓梯同一個選擇去唔揭露佢哋.",
	--This spell turns stairs into disco mode. Any player (including you) will stop and dance on them for 5 seconds (usually twice). Ranks COMIC and up are immune to disco stairs.
	["disco"] = "依個咒語會將樓梯變成 Disco 模式. 任何玩家 (包括你) 一行上去會停喺到跳5秒舞 (通常2次). 等級上升到 COMIC 就可以沒事行 Disco 樓梯.",
	--This spell turns platform into a trap door for 60 seconds. Any player (including you) that will walk on the trap will fall to the platform below. Rank up to JOKESTER to be able to detect platform traps. Rank up to TRICKSTER to be immune to such traps.
	["trap"] = "依個咒語將平台變成陷阱, 維持60秒. 任何玩家 (包括你) 一行上去會跌落下一層. 等級上升到 JOKESTER 就可以見到依啲平台陷阱. 等級上升到 TRICKSTER 就可以沒事行平台陷阱.",

	--It allows you to cast as many flip stairs spells as you like for one minute. Always above stairs will be flipped, if found. If not, below stairs will be flipped instead.
	["flipper"] = timed ..  "佢會比你一分鐘隨你鍾意上下掉轉樓梯. 如果上面有樓梯, 佢會係第一個掉轉. 否則掉轉下面樓梯."  .. string.format(timedExtra,RankData.JOKER[7].name,RankData.JOKER[3].name,"Jokers"),
	--the Joker Rig. Stairs, once triggered, will flip automatically.
	["jokerrigevent"] = rig .. "Joker Rig. 一觸發 Joker Rig 會自動上下掉轉.",
	--Cloak
	["jokerevent"] = event .. "隱形咒語" .. event2,
	--Flip them all
	["jokeraltevent"] = event .. "反轉樓梯咒語" .. event2,
	["jokermode"] = string.format(mode,"Joker","Joker Rig","隱形咒語"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	--This spell destroys stairs. Unlike other spells, it will work on any stairs. Rank up to VILE to cast this spell for free. Rank up to VICIOUS to get 1 Mana everytime you destroy any special stairs. Rank up to ANNIHILATOR to destroy cursed stairs.
	["destroy"] = "依個咒語會摧毀樓梯. 唔似其他咒語, 依個可以喺任何樓梯都用得. 等級上升到 VILE 去免費用依個咒語. 等級上升到 VICIOUS 去喺你每次摧毀特殊樓梯可以攞1個法力點. 等級上升到 ANNIHILATOR 去摧毀被詛咒樓梯.",
	--This spell destroys above stairs. Unlike other spells, it will work on any stairs. Rank up to VICIOUS to get 1 Mana everytime you destroy any special stairs. Rank up to ANNIHILATOR to destroy cursed stairs.
	["destroyabove"] = "依個咒語會摧毀上面樓梯. 唔似其他咒語, 依個可以喺任何樓梯都用得. 等級上升到 VICIOUS 去喺你每次摧毀特殊樓梯可以攞1個法力點. 等級上升到 ANNIHILATOR 去摧毀被詛咒樓梯.",
	--This spell bends stairs up. Use it to gain access to above platform.
	["bend"] = "依個咒語會向上彎曲樓梯. 用佢嚟行上另一面平台.",
	--This spell turn above stairs into an obby, by removing most of the steps. Before attempting, remember about jump cooldown. Rank up to DESTROYER to walk on obbies just like on normal stairs.
	["damage"] = "依個咒語會將上面樓梯變成跑酷樓梯, 整走大部分樓梯級. 喺試之前, 記得你係有跳躍冷卻時間. 等級上升到 DESTROYER 去行上依啲跑酷樓梯.",
	--This spell bends opposite stairs down. Use it to gain access to the opposite platform. It can also be used on below stairs for trolling purposes.
	["flatten"] = "依個咒語會向下彎曲對面樓梯. 用佢嚟行過另一面平台. 你都可以用喺下面樓梯嚟整蠱其他人.",
	--This spell creates energy wall on the platform plus a link to opposite platform for 60 seconds. Only Wickeds and Ghost Unions can go through such wall and on the link.
	["wall"] = "依個咒語會建立一幅能量牆加上一條能量橋去對面平台, 維持60秒. 只有 Wickeds 同喺鬼聯盟嘅玩家可以穿過果幅牆同行上條橋.",

	--It allows you to cast as many bend up stairs as you like for one minute. Both below and above stairs will be bent at the same time if requirements are met.
	["bender"] = timed .. "佢會比你一分鐘隨你鍾意向上彎曲樓梯. 如果上面同下面都有樓梯, 佢哋會同時被彎曲."  .. string.format(timedExtra,RankData.WICKED[7].name,RankData.WICKED[3].name,"Wickeds"),
	--the Wicked Rig. Stairs, once triggered, will destroy automatically. Rank up to Devil to walk on Wicked Rigs without triggering them.
	["wickedrigevent"] = rig .. "Wicked Rig. 一觸發 Wicked Rig 會自動摧毀樓梯. 等級上升到 DEVIL 去唔觸發 Wicked Rigs.",
	--Destruction
	["wickedevent"] = event .. "損壞樓梯咒語" .. event2 .. " 自動重生唔會發生.",
	--Purge
	--This is an Event spell. It will destroy all the stairs and curses in the game. No exceptions. Regeneration will be triggered.
	["wickedaltevent"] = "依個係突發事件咒語. 佢會摧毀全部樓梯同全部詛咒交叉點. 一個都唔會留. 自動重生會發生.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","向上彎曲樓梯咒語"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	--This spell will move stairs in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on the stairs, prompting you to choose direction. Stairs cannot be moved outside the game area. Rank up to CONTROLLER to move any un-cursed stairs.
	["move"] = "依個咒語會橫向喐樓梯, 摧毀任何阻住嘅樓梯. 揀依個之後咒語, 箭嘴會喺樓梯上面出現, 比你揀移動方向. 樓梯唔可以出遊戲範圍. 等級上升到 CONTROLLER 去喐任何唔係被詛咒嘅樓梯.",
	--This spell will rotate stairs in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on stairs, prompting you to choose direction. Stairs cannot be rotated outside the game area. Rank up to CONTROLLER to move any un-cursed stairs.
	["rotate"] = "依個咒語會橫向轉動樓梯, 摧毀任何阻住嘅樓梯. 箭嘴會喺樓梯上面出現, 比你揀轉動方向. 樓梯唔可以出遊戲範圍. 等級上升到 CONTROLLER 去喐任何唔係被詛咒嘅樓梯.",
	--This spell will move stairs up, destroying any stairs in the way. Stairs cannot be moved above top level. Rank up to CONTROLLER to move any un-cursed stairs.
	["moveup"] = "依個咒語會向上喐樓梯, 摧毀任何阻住嘅樓梯. 喺頂層嘅樓梯冇得再喐. 等級上升到 CONTROLLER 去喐任何唔係被詛咒嘅樓梯.",
	--This spell fixes any special stairs. If stairs are already normal, this spell will not execute. Rank up to CAPTAIN to cast this spell for free. Rank up to ADMIRAL to be able to fix Cursed Stairs and Cursed Intersections.
	["movedown"] = "依個咒語恢復任何特殊樓梯. 如果樓梯係普通嘅話, 咒語會冇反應. 等級上升到 CAPTAIN 去免費用依個咒語. 等級上升到 ADMIRAL 去恢復被詛咒嘅樓梯及被詛咒交叉點.",
	--This spell will move or rotate stairs in random direction, destroying any stairs in the way. Rank up to OPERATOR to avoid stairs going down. Rank up to CONTROLLER to move any un-cursed stairs.
	["rig"] = "依個咒語會隨機喐樓梯, 摧毀任何阻住嘅樓梯. 等級上升到 OPERATOR 避免向下喐樓梯. 等級上升到 CONTROLLER 喐任何唔係被詛咒嘅樓梯.",
	--This spell will move or rotate above stairs in random direction, destroying any stairs in the way. Rank up to OPERATOR to avoid stairs going down. Rank up to CONTROLLER to move any un-cursed stairs.
	["moverandom"] = "依個咒語隨機喐上面樓梯, 摧毀任何阻住嘅樓梯. 等級上升到 OPERATOR 避免向下喐樓梯. 等級上升到 CONTROLLER 喐任何唔係被詛咒嘅樓梯..",

	--It allows you to cast as many move up spells as you like for one minute.
	["ascension"] = timed .. "佢會比你一分鐘隨你鍾意向上喐樓梯."  .. string.format(timedExtra,RankData.KEEPER[7].name,RankData.KEEPER[3].name,"Keepers"),
	--the Keeper Rig. Stairs, once triggered, will move or rotate in random direction. Rank up to OPERATOR, for any rigs that you trigger to never go down. Rank up to SENTINEL to have an option not to trigger them.
	["keeperrigevent"] = rig .. "Keeper Rig. 一觸發 Keeper Rig 會隨機喐樓梯. 等級上升到 OPERATOR 去避免向下喐樓梯. 等級上升到 SENTINEL 去有個選擇去唔觸發 Keeper Rigs.",
	--Reshuffle
	--Before executing you can choose soft or forced mode. In soft mode, this spell will move or rotate all normal stairs in random direction, without destroying anything in the process. In forced mode, this spell will move or rotate all stairs in random direction, destroying any staircases in the way.
	["keeperevent"] = event .. "隨機喐樓梯咒語" .. event2 .. " 喺你用之前, 你可以選擇心軟模式或者夾硬嚟模式. 喺心軟模式, 依個咒語會隨機喐樓梯, 唔會摧毀任何阻住嘅樓梯. 喺夾硬嚟模式, 依個咒語會隨機喐曬樓梯, 摧毀任何阻住嘅樓梯",
	--Restoration
	--This is an Event spell. It will restore all stairs in the game, including cursed ones. Unlike Purge it will not remove cursed intersections.
	["keeperaltevent"] = "依個係突發事件咒語. 佢會恢復全部樓梯, 包括被詛咒果啲. 唔似完全清除, 佢唔會整走被詛咒嘅交叉點.",
	--This is a Drone spell. It will change the drone mode to Keeper. In this mode drones will cast randomly either Keeper Rig on normal stairs or Random Move Spell on any un-cursed stairs. Special stairs will be restored instead. Outside of limits, drones will create and destroy respectively.
	["keepermode"] = "依個係無人機咒語. 佢會將無人機轉做 %s 模式. 無人機喺呢個模式會隨機喺普通樓梯變成 Keeper Rig 或喺任何唔係被詛咒嘅樓梯用隨機喐樓梯咒語. 特殊樓梯會被恢復. 否則無人機會分別建立和摧毀.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	--This spell will create Phantom Stairs in the chosen direction. If there are any crossing stairs in the way, they will be destroyed. Phantom stairs will quickly fade away after casting, disappearing completely.
	["phantom"] = "依個咒語會比你喺你揀嘅方向建立幻影樓梯. 如果有阻住嘅樓梯, 佢哋會被摧毀. 幻影樓梯會好快完全消失.",
	--This spells lets you ghostify above stairs. You can walk through ghostified stairs, but cannot walk on them unless you are ranked up to AETHER. Use this spell again to de-ghostify stairs. 
	["ghost"] = "依個咒語會比你鬼化上面樓梯. 你可以穿過被鬼化樓梯, 但唔可以行上去除非你等級上升到 AETHER. 用多次依個咒語去去鬼化樓梯. ",
	--This spell lets you ghostify stairs. You can walk through ghostified stairs, but cannot walk on them unless you are ranked up to AETHER. Rank up to PHANTOM to cast this spell for free. Use this spell again to de-ghostify stairs.
	["shadow"] = "依個咒語會比你鬼化樓梯. 你可以穿過被鬼化樓梯, 但唔可以行上去除非你等級上升到 AETHER. 等級上升到 PHANTOM 去免費用依個咒語. 用多次依個咒語去去鬼化樓梯.",
	--This spell will teleport you in the chosen direction. You can teleport through any un-cursed stairs in the way.
	["horizontal"] = "依個咒語會喺你揀嘅方向傳送. 你可以穿過任何唔係被詛咒嘅樓梯.",
	--This spell will teleport you to a random platform on the same level.
	["random"] = "依個咒語會隨機傳送你去其他同層平台.",
	--This spell will teleport you up, to the platform above.
	["vertical"] = "依個咒語會向上傳送你去上面果層平台.",

	--It allows you to cast as many Horizontal Teleport spells, as you like for one minute.
	["traveller"] = timed ..  "佢會比你一分鐘隨你鍾意用平面傳送咒語."  .. string.format(timedExtra,RankData.SPECTRE[7].name,RankData.SPECTRE[3].name,"Spectres"),
	--the Spectre Rig. Stairs, once triggered, will have a 50% chance of ghosting. Rank up to VISION to have an option to walk on Spectre Rigs without triggering them.
	["spectrerigevent"] = rig .. "Spectre Rig. 一觸發 Spectre Rig 會有50%機會鬼化樓梯. 等級上升到 VISION 去有個選擇去唔觸發 Spectre Rigs.",
	--Phantom Shuffle
	--Before executing you can choose soft ghosted or forced ghosted mode. In soft ghosted mode this spell will move or rotate normal stairs in random direction, without destroying anything in the process. In forced ghost mode, this spell will move or rotate all stairs in random direction, destroying any staircases in the way.
	["spectreevent"] = event .. "鬼化隨機喐樓梯咒語" .. event2 .. " 喺你用之前, 你可以選擇心軟模式或者夾硬嚟模式. 喺心軟模式, 依個咒語會隨機喐樓梯, 唔會摧毀任何阻住嘅樓梯. 喺夾硬嚟模式, 依個咒語會隨機喐曬樓梯, 摧毀任何阻住嘅樓梯.",
	--Aether Realm
	--This is an Event spell. It will ghostify all normal stairs. Rank up to AETHER to walk on ghostified stairs. Ghost Union can also be used to walk on ghostified stairs.
	["spectrealtevent"] = "依個係突發事件咒語. 佢會鬼化全部普通樓梯. 等級上升到 AETHER 去行上鬼化樓梯. 喺鬼聯盟嘅玩家都可以行上鬼化樓梯.",
	["spectremode"] = string.format(mode,"Spectre","Spectre Rig","心軟模式鬼化隨機喐樓梯咒語"),
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	--This spell will teleport you in the chosen direction. You cannot teleport through blocking stairs. Rank up to CRACKER to speed up this spell by 50%.
	["dash"] = "依個咒語會喺你揀嘅方向傳送. 你唔可以穿過阻住嘅樓梯. 等級上升到 CRACKER 去多50%速度",
	--This spell will teleport you around any un-cursed blocking above stairs. If the above stairs do not effectively block the way, this spell won't work. Rank up to EXPLOITER to speed up this spell by 50%.
	["blink"] = "依個咒語會傳送你過上面阻住又唔係被詛咒嘅樓梯. 如果上面樓梯唔係好明顯咁阻住嘅話, 咒語唔會有反應. 等級上升到 EXPLOITER 去多50%速度.",
	--This spell will teleport you to the spot where your ghost is. Unlike other basic spells, Swap can be cast anywhere.
	["swap"] = "依個咒語會同你個鬼交換位置. 唔似其他基本咒語, 交換可以喺咩地方都用得.",
	--This spell will turn stairs into an Escalator. You can choose either Up or Down Escalator. Rank up to SCRIPTER to have an option to be immune to Escalators.
	["slide"] = "依個咒語會將樓梯變成電梯. 可以選擇一喺向上或者向下電梯. 等級上升到 SCRIPTER 去有一個選擇去唔受電梯影響力.",
	--This spell will hack in stairs in the chosen direction. For this to work, there have to be stairs already present in that intersection facing the opposite way. Hacked in stairs can be of any un-cursed type and will be restored upon emerging.
	["slideup"] = "依個咒語會喺你揀嘅方向外掛攞樓梯. 你首先要有一個反方向樓梯喺嗰交叉點. 外掛攞樓梯可以係任何唔係被詛咒嘅樓梯, 樓梯會喺重建果陣恢復.",
	--This spell will glitch stairs, teleporting you and themselves to a different spot on the same level. Rank up to ZERO, to teleport stairs next to the orb, if you already are on the top level.
	["glitch"] = "依個咒語會故障樓梯, 隨機傳送你同個樓梯去另一個同層嘅地方. 如果你係喺頂層, 等級上升到 ZERO 去傳送個樓梯去終點球隔離.",

	--It allows you to cast as many Upwards Escalators as you like for one minute. If there are blocking un-cursed stairs above, they will be demolished.
	["hack"] = timed .. "佢會比你一分鐘隨你鍾意用向上電梯咒語. 如果上面有阻住又唔係被詛咒嘅樓梯, 佢哋會被摧毀." .. string.format(timedExtra,RankData.HACKER[7].name,RankData.HACKER[3].name,"Hackers"),
	--the Hacker Rig. Stairs, once triggered it will teleport player and stairs to a different spot on the same level. Only one player will be teleported. Rank up to REAPER to have an option to walk on Hacker Rigs without triggering them.
	["hackerrigevent"] = rig .. "Hacker Rig. 一觸發 Hacker Rig 會傳送你同個樓梯去另一個同層嘅地方. 只有一個玩家會被傳送. 等級上升到 REAPER 去有一個選擇去唔觸發 Hacker Rigs.",
	--Escalation
	["hackerevent"] = event .. "隨機電梯咒語" ..event2,
	--Breach
	["hackeraltevent"] = event ..  "向上電梯咒語" .. event2,
	["hackermode"] =  string.format(mode,"Hacker","Hacker Rig","隨機電梯咒語"),
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	--This spell allows you to steal a below normal or rigged stairs. Either this or steal above is required to cast other basic thief spells. Rank up to HIJACKER to be able to steal any un-cursed stairs. Rank up BANDIT and OUTLAW to be able to steal 2 and 3 staircases respectively at a time.
	["steal"] = "依個咒語會比你偷下面普通或 Rig (壟斷樓梯) . 你一定要用依個咒語或者偷上面果款先可以用其他其基本咒語. 等級上升到 HIJACKER 去可以偷任何唔係被詛咒嘅樓梯. 等級上升到 BANDIT 和 OUTLAW 去可以分別偷2同3個樓梯.",
	--This spell allows you to steal an above normal or rigged stairs. Either this or steal below is required to cast other basic thief spells. Rank up to HIJACKER to be able to steal any un-cursed stairs. Rank up BANDIT and OUTLAW to be able to steal 2 and 3 staircases respectively at a time
	["stealabove"] = "依個咒語會比你偷上面普通或 Rig (壟斷樓梯) . 你一定要用依個咒語或者偷下面果款先可以用其他其基本咒語. 等級上升到 HIJACKER 去可以偷任何唔係被詛咒嘅樓梯. 等級上升到 BANDIT 和 OUTLAW 去可以分別偷2同3個樓梯.",
	--This spell allows you to place the stolen stairs back in the chosen direction. However, this will not demolish crossing stairs, so you can only place stairs in an empty intersection. Rank up to ROBBER to place stairs on other normal or rigged stairs, crossing them.
	["place"] = "依個咒語會比你放返低你偷嘅樓梯喺你揀嘅方向. 但係, 佢係唔會摧毀阻住嘅樓梯, 你只可以放喺吉嘅交叉點到. 等級上升到 ROBBER 可以放喺其他普通樓梯 / 壟斷樓梯, 變成X形樓梯",
	--This spell allows you to create a spiral staircase from stolen stairs. It can only be cast on outer platforms and will last one minute.
	["uppass"] = "依個咒語會比你放螺旋樓梯. 你只可以喺外面平台到用, 螺旋樓梯只會維持1分鐘.",
	--This spell allows you to create a bent bypass from stolen stairs. It will be created in chosen direction and will last one minute.
	["sidepass"] = "依個咒語會比你建立繞道. 佢會喺你揀嘅方向建立繞道, 繞道只會維持1分鐘.",
	--This spell allows you to ditch stairs for free. You will need to find an empty intersection though. Ditched stairs are flat.
	["drop"] = "依個咒語會比你免費丟走樓梯. 但係你首先要揾到一個吉嘅交叉點. 丟走嘅樓梯係平架.",

	--It allows you to cast place stairs spell as many times as you like. Unlike regular place spell, this spell can be cast through crossing stairs, as stairs will be stolen automatically in this mode.
	["heist"] = timed .. "佢會比一分鐘隨你鍾意放樓梯. 唔似普通放樓梯咒語, 依個咒語可以唔使偷樓梯先, 因為樓梯係會自重被你偷." .. string.format(timedExtra,RankData.THIEF[7].name,RankData.THIEF[3].name,"Thieves"),
	--the Thief Rig. Stairs once triggered, will steal one Mana from triggering player and add it to your own Mana. You will not receive Mana if your Mana is at maximum. You will also not receive Mana if you change alignment.
	["thiefrigevent"] = rig .. "Thief Rig. 一觸發 Thief Rig 會喺觸發玩家到偷一個法力點, 然後比你. 如果你滿咗法力點, 你唔會再偷到法力點. 你轉咗 Alignment 都唔會比你偷法力點.",
	--Flatland
	["thiefevent"] = event .. "平地樓梯咒語" .. event2,
	--Mega Bypass
	-- This is an Event spell. It will create bypasses in every intersection at the edge of the staircase. If the intersection is cursed, bypass will not be created.
	["thiefaltevent"] = "依個係突發事件咒語. 佢會喺所有樓梯塔外面嘅平台之間嘅交叉點到建立繞道. 如果個交叉點係被詛咒, 繞道唔會被建立.",
	["thiefmode"] = string.format(mode,"Thief","Thief Rig","偷走樓梯咒語或放走樓梯咒語"),
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	--This spell will connect below stairs to another in a horizontal direction of your choosing with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to ILLUMINATI to be able to walk through horizontal portals.
	["splitside"] = "依個咒語會用傳送門去喺你揀嘅方向水平連接兩條樓梯. 如果揀嘅方向冇樓梯, 佢會自己生成. 等級上升到 PRODIGY 去覆蓋已經有連接嘅樓梯. 等級上升到 ILLUMINATI 去行過水平連接嘅傳送門.",
	--This spell will connect below stairs to another in a rotated horizontal direction of your choosing with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to ILLUMINATI to be able to walk through horizontal portals.
	["splitrotate"] = "依個咒語會用傳送門去喺你揀嘅方向轉彎連接兩條樓梯. 如果揀嘅方向冇樓梯, 佢會自己生成. 等級上升到 PRODIGY 去覆蓋已經有連接嘅樓梯. 等級上升到 ILLUMINATI 去行過轉彎連接嘅傳送門.",
	--This spell will connect below stairs to stairs above with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to SAGE to ignore downward connections.
	["splitup"] = "依個咒語會用傳送門去向上連接條樓梯. 如果揀嘅方向冇樓梯, 佢會自己生成. 等級上升到 PRODIGY 去覆蓋已經有連接嘅樓梯. 等級上升到 SAGE 去行過向下傳送門.",
	--This spell will discard any Gates on stairs. Rank up to DISCIPLE to be able to remove platform Gates. Rank up to SCHOLAR to cast this spell for free.
	["cancelsplit"] = "依個咒語會整走任何喺樓梯上面嘅傳送門. 等級上升到 DISCIPLE 去整走喺平台上面嘅傳送門. 等級上升到 SCHOLAR 去免費用依個咒語.",
	--This spell will connect below stairs to any valid intersection on the same floor with a Gate. If there are no stairs, they will be created. Rank up to PRODIGY to override an existing connection. Rank up to ILLUMINATI to be able to walk through horizontal portals.
	["splitrandom"] = "依個咒語會隨機連接去同層樓梯或交叉點. 如果果到喺冇樓梯, 佢會自己生成. 等級上升到 PRODIGY 去覆蓋已經有連接嘅樓梯. 等級上升到 ILLUMINATI 去可以行過水平連接嘅傳送門.",
	--This spell will connect two platforms in a horizontal direction of your choosing with a Gate. Rank up to DISCIPLE to be able to remove platform splits. Occupying stairs won't block the connection. Rank up to ILLUMINATI to be able to walk through such portals.
	["splitforward"] = "依個咒語會用傳送門去喺你揀嘅方向水平連接兩個平台. 等級上升到 DISCIPLE 去整走喺平台上面嘅傳送門. 阻住嘅樓梯唔會影響傳送門. 等級上升到 ILLUMINATI 去行過依種傳送門.",

	--It allows you to create as many platform splits as you like for one minute.
	["splitter"] = timed .. "佢會比一分鐘隨你鍾意建立平台傳送門." .. string.format(timedExtra,RankData.ARCHON[7].name,RankData.ARCHON[3].name,"Archons"), 
	--the Archon Rig. Stairs, once triggered, will teleport the player to the direction they were walking in, crossing any blocking un-cursed stairs. After triggering, stairs will become normal again.
	["archonrigevent"] = rig .. "Archon Rig. 一觸發 Archon Rig 會喺觸發玩家行緊嘅方向傳送, 穿過任何唔係被詛咒嘅樓梯. 樓梯喺觸發後會變成普通樓梯.",
	--StairGate-1
	["archonevent"] = event .. "隨機樓梯傳送門咒語" .. event2,
	--Division
	["archonaltevent"] = event .. "向上樓梯傳送門咒語" .. event2,
	["archonmode"] = string.format(mode,"Archon","Archon Rig","隨機樓梯傳送門咒語"),
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	--This spell will create a temporary surfboard, moving you to a platform in a direction of your choosing.  You cannot surf through blocking stairs.
	["indrift"] = "依個咒語會暫時的建立一個冲浪板, 帶你去喺你揀嘅方向嘅平台. 你唔可以冲過阻住嘅樓梯.",
	--This spell will create an elevator using below and above platforms. The platforms will be restored after a given time period. Rank up to VAGABOND to speed up the movement. Rank up to TRAVELLER to be able to boost the lift to second level. Rank up to STRIDER to be able to boost lift again to third level.
	["updrift"] = "依個咒語會用上面同下面平台建立一部𨋢. 平台會喺一段時間之後會恢復原狀. 等級上升到 VAGABOND 去增加移動速度. 等級上升到 TRAVELLER 去可以上兩層. 等級上升到 STRIDER 去可以上三層.",
	--This spell will either: Create a horizontal elevator using below and any platform in a diagonal fashion. Such elevator will disappear after 7 return journeys. OR: If cast in outside direction, this spell will create an elevator would circle around the Tower once.
	["diagdrift"] = "依個咒語一係會: 用下面平台同任何平台建立一個打斜喐嘅漂移平台. 依種漂移平台會回來七次. 又或者: 如果喺外面平台到用, 依個咒語會建立一個喺座塔外面走一圈嘅漂移平台.",
	--This spell will rotate below stairs 180 degrees. Rank up to NOMAD to be able to spin any uncursed stairs.
	["spin"] = "依個咒語會180度旋轉下面樓梯. 等級上升到 NOMAD 去旋轉任何唔係被詛咒嘅樓梯.",
	--This spell will drift below stairs into random orientation, towards a random empty intersection on the same level. Rank up to NOMAD to drift already drifted stairs.
	["outdrift"] = "依個咒語會隨機漂移下面樓梯去一個同一層又吉嘅交叉點, 又會隨機調整方向. 等級上升到 NOMAD 去再漂移已經漂移咗嘅樓梯.",
	--This spell will drift above stairs with less randomness and within the same intersection, so that you can walk under and climb them.
	["driftabove"] = "依個咒語會冇禁隨機漂移上面樓梯又會維持同一個位, 比你行過去同爬上去.",

	--It allows you to create as many Vertical Elevators as you want for one minute. You can also boost lifts while using this spell, if you are ranked high enough.
	["riser"] = timed .. "佢會比一分鐘隨你鍾意建立向上升嘅𨋢. 如果你嘅等級夠高嘅話, 你可以用依個咒語上多幾層." .. string.format(timedExtra,RankData.DRIFTER[7].name,RankData.DRIFTER[3].name,"Drifters"), 
	--the Drifter Rig. Stairs, once triggered, will spin around in random direction. Rank up to VOYAGER to gain immunity to this rig.
	["drifterrigevent"] = rig .. "Drifter Rig. 一觸發 Drifter Rig 會180度隨機旋轉樓梯. 等級上升到 VOYAGER 去唔觸發 Drifter Rigs.",
	--Driftage
	["drifterevent"] = event .. "隨機漂移咒語" ..  event2,
	--Liftage
	["drifteraltevent"] = event .. "拎起上面樓梯咒語" .. event2,
	["driftermode"] = string.format(mode,"Drifter","Drifter Rig","隨機漂移咒語"),
	["drifterrefill"] = overload,
	["drifterunion"] = union,

	--HERETIC
	--This spell allows you to create cursed stairs in the chosen direction. Any crossing stairs will be destroyed. Rank up to BANISHED to destroy crossing cursed stairs.
	["createcursed"] = "依個咒語會比你喺你揀嘅方向建立被詛咒嘅樓梯. 如果有阻住嘅樓梯, 佢哋會被摧毀. 等級上升到 BANISHED 去摧毀阻住又被詛咒嘅樓梯.",
	--This spell will curse below stairs. Use this spell again to uncurse stairs.
	["curse"] = "依個咒語會詛咒下面樓梯. 用多一次去解除詛咒.",
	--This spell will curse above stairs. Stairs will lift temporarily, allowing you to cross. Use this spell again to uncurse stairs.
	["curseabove"] = "依個咒語會詛咒上面樓梯. 樓梯會暫時升起, 比你行過去. 用多一次去解除詛咒.",
	--This spell will allow you to flicker across to the opposite platform, if there are no stairs in the way. Intersection will become cursed after this spell, so other players cannot use it anymore. If you are ranked up to INFIDEL, you can use this spell on already cursed interscetions, uncursing them in the process.
	["curseinter"] = "如果冇阻住嘅樓梯, 依個咒語會比你彈過去對面平台. 交叉點會被詛咒, 咁其他玩家就冇得用依個交叉點. 如果你等級上升到 INFIDEL, 你可以用依個咒語喺被詛咒嘅交叉點, 又可以解除詛咒.",
	--Use this spell to create and lift special mirrored section of the lower part of the staircase. Only ghost unions and Heretics can walk on that section.
	["autodown"] = "依個咒語會建立一個向上特殊樓梯下部份鏡像. 只有 Heretics 同喺鬼聯盟嘅玩家可以行上去.",
	--Use this spell to create special mirrored section of upper part of the crossing staircase, allowing you to access them. Regular steps will be lowered down. Only ghost unions and Heretics can walk on that section.  It can also be used on below stairs for trolling purposes.
	["autoup"] = "依個咒語會建立一個特殊對面樓梯上部份鏡像, 比你行過去. 普通樓梯級會降落嚟. 只有 Heretics 同喺鬼聯盟嘅玩家可以行上去. 你都可以用喺下面樓梯嚟整蠱其他人.",

	--It allows you to create as many cursed stairs as you want for one minute. Rank up to BANISHED to destroy crossing cursed stairs.
	["malediction"] = timed .. "佢會比一分鐘隨你鍾意建立被詛咒嘅樓梯. 等級上升到 BANISHED 去摧毀阻住又被詛咒嘅樓梯." .. string.format(timedExtra,RankData.HERETIC[7].name,RankData.HERETIC[3].name,"Heretics"), 
	--the Heretic Rig. Stairs, once triggered, will possess the triggering player. They will have to find Mana to be released. Possessed players cannot cast spells and they cannot jump. Rank up to UNBELIEVER to gain immunity to this rig. Rank up to EXILED to get 1 mana each time a player is possessed.
	["hereticrigevent"] = rig .. "Heretic Rig. 一觸發 Heretic Rig 會詛咒觸發玩家. 佢哋要揾法力點先可以解除詛咒. 被詛咒嘅玩家唔可以用咒語同唔可以跳. 等級上升到 UNBELIEVER 去唔觸發 Heretic Rigs. 等級上升到 EXILED 去喺每次有人被詛咒到攞1個法力點.",
	--Disunion
	["hereticevent"] = event .. "隨機分裂咒語" .. event2,
	--Vengeance
	["hereticaltevent"] = event .. "詛咒樓梯咒語" .. event2,
	["hereticmode"] = string.format(mode,"Heretic","Heretic Rig","隨機分裂咒語"),
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--SPLICER
	--This spell will twist stairs in right or left direction, connecting them to the neighbouring staircase. If there are no stairs in the chosen destination, they will be created. Rank up to TRANSFORMER to use this spell on already twisted stairs.
	["twistside"] = "依個咒語會向左或者向右扭曲樓梯, 連接隔離樓梯. 如果揀嘅方向冇樓梯, 佢會自己生成. 等級上升到 TRANSFORMER 去用喺已經扭曲咗嘅樓梯.",
	--This spell will twist stairs in the rotated horizontal direction, connecting them to the neighbouring staircase. If there are no stairs in the chosen destination, they will be created. Rank up to TRANSFORMER to use this spell on already twisted stairs.
	["twistrotate"] = "依個咒語會轉彎扭曲樓梯, 連接隔離樓梯. 如果揀嘅方向冇樓梯, 佢會自己生成. 等級上升到 TRANSFORMER 去用喺已經扭曲咗嘅樓梯.",
	--This spell will twist above stairs and likely below stairs too (if they are normal or rigged), so they create 2-level spiral staircase up. Rank up to TRANSFORMER to use this spell on already twisted stairs.
	["twistup"] = "依個咒語會扭曲上面樓梯, 又有大機會扭曲埋下面樓梯 (如果佢哋係普通樓梯或者 Rig (壟斷樓梯)), 所以佢會建立一個上兩層嘅螺旋樓梯. 等級上升到 TRANSFORMER 去用喺已經扭曲咗嘅樓梯.",
	--This spell will restore any twisted stairs. Rank up to COMBINER to cast this spell from platform on disconnected twisted stairs. Rank up to MIXER to cast this spell for free. Rank up to OPTIMUS to gain 1 Mana every time You restore twisted stairs.
	["canceltwist"] = "依個咒語會恢復任何扭曲咗嘅樓梯. 等級上升到 COMBINER 去可以喺平台上用依個咒語喺斷開咗樓梯. 等級上升到 MIXER 去免費用依個咒語. 等級上升到 OPTIMUS 去每次恢復扭曲咗嘅樓梯攞1個法力點.",
	--This spell splits stairs into two opposing staircases, allowing you to access all four platforms.
	["split2"] = "依個咒語會分開樓梯去兩條相反方向嘅樓梯, 比你去到全部四個平台.",
	--This spell splits stairs into two separated staircases, allowing you to bypass above stairs - even when they are cursed.
	["splitalt"] = "依個咒語會分開樓梯去兩條樓梯, 比你行上上面嘅樓梯 - 就算係被詛咒嘅樓梯.",

	--It allows you to cast as many Split Stairs Spells as you like for one minute. Split spell variety will be chosen automatically for Your benefit.
	["twister"] = timed .. "佢會比一分鐘隨你鍾意分開樓梯. 遊戲會根據你嘅著數去自動揀分開款式." .. string.format(timedExtra,RankData.SPLICER[7].name,RankData.SPLICER[3].name,"Splicers"), 
	--the Splicer Rig. Stairs, once triggered, will splice in a random direction. Rank up to ASSEMBLER to have the option to avoid Splicer Rigs.
	["splicerrigevent"] = rig .. "Splicer Rig. 一觸發 Splicer Rig 會隨機扭曲樓梯. 等級上升到 ASSEMBLER 去有一個選擇去唔觸發 Splicer Rigs.",
	--Interweave
	["splicerevent"] = event .. "隨機扭曲咒語" .. event2,
	--Bisect
	["spliceraltevent"] = event .. "向前分開樓梯咒語" .. event2,
	["splicermode"] = string.format(mode,"Splicer","Splicer Rig","隨機扭曲咒語"),
	["splicerrefill"] = overload,
	["splicerunion"] = union,

	--NECROMANCER
	--This spell will Create Stairs for both you and Your ghost, so that players near the ghost can use them. Rank up to SKELETON for ghost to ignore cursed stairs and intersections. Rank up to LICH to demolish crossing cursed stairs with this spell.
	["createdual"] = "依個咒語會喺你同你隻鬼果到建立樓梯, 咁喺你隻鬼附近嘅玩家可以用果啲樓梯. 等級上升到 SKELETON 去可以隻鬼唔洗理被詛咒嘅樓梯同交叉點. 等級上升到 LICH to 去摧毀阻住又阻住嘅樓梯.",
	--This spell will copy any stairs from ghost platform to yours and vice-versa. Stairs will be copied in mirrored fashion. Copied stairs will always be normal. Rank up to REVENANT for this spell to remove curses if it needs to.
	["copyplatform"] = "依個咒語會複製任何喺你隻鬼個平台啲樓梯去你個平台到, 又複製任何喺你個平台啲樓梯去你隻鬼個平台到. 複製樓梯會反轉同會係普通. 等級上升到 REVENANT 去整走被詛咒嘅樓梯同交叉點.",
	--This spell will create a rotating link between Yours and any diagonal platform of Your choice. Your ghost will also create a link in the opposite direction. Necromancer links will spin when a player jumps on them.
	["soulbridge"] = "依個咒語會喺你嘅平台同你揀嘅打斜平台建立一條會旋轉嘅連結. 你隻鬼都會建一條反方向嘅連結. Necromancer 連結會喺一個玩家跳先會轉.",
	--This spell will remove soul from above stairs and stairs above your ghost. If there are no stairs above your ghost, they will be created. Such stairs can be walked through and walked on, but will fade away after two minutes.
	["undeadabove"] = "依個咒語會移除你同你隻鬼上面樓梯嘅靈魂. 如果你隻鬼上面冇樓梯, 佢哋會自己生成. 依種樓梯係可以穿過去同行上去, 但會喺2分鐘後消失.",
	--Use this spell to create a 'revival' point where your ghost is. If you ever fall below such point, you will be teleported there. Revival point will be removed after use, completed climb or when you cast another one. Chameleon morph will also remove the point. Rank up to ACOLYTE to bring the Orb to this point, if you cast it on the top level.
	["revival"] = "依個咒語會喺你隻鬼果到建立一個「重生」點. 如果你跌低過依一點, 你會被傳送到果個重生點. 重生點會喺用完 / 爬完座塔 / 用多次個咒語後消失. Chameleon 變身都會整走個重生點. 如果你喺頂層到用, 等級上升到 ACOLYTE 去喐終點球去個重生點到.",
	--Use this spell to regenerate Mana once per climb. You will get 6 Mana points upon use. Players near Your ghost will get 3 Mana too. Rank up to DEATHBRINGER to regenerate 10 Mana and 5 Mana for players near Your ghost.
	["regen"] = "依個咒語會每攀爬生成法力點比你一次. 你每次會攞到6個法力點. 喺你隻鬼隔離嘅玩家都會攞到3個法力點. 等級上升到 DEATHBRINGER 去攞到10個法力點同5個法力點比喺你隻鬼隔離嘅玩家.", 

	--"It allows you to cast at many Dual Stairs as you like for one minute. Rank up to LICH to demolish crossing cursed stairs with this spell
	["duality"] = timed .. "佢會比你一分鐘隨你鍾意建立雙重樓梯. 等級上升到 LICH 去摧毀阻住又阻住嘅樓梯." .. string.format(timedExtra,RankData.NECROMANCER[7].name,RankData.NECROMANCER[3].name,"Necromancers"), 
	--the Necromancer Rig. Stairs, once triggered, will have their soul removed and will fade away.
	["necromancerrigevent"] = rig .. "Necromancer Rig. 一觸發 Necromancer Rig 會移除樓梯嘅靈魂, 慢慢咁消失.",
	--Resurrection
	--Created stairs will be soulless and will fade away after two minutes.
	["necromancerevent"] = fill .. "所建立嘅樓梯會係冇靈魂, 又會喺2分鐘後消失.",
	--Soul Harvest
	["necromanceraltevent"] = event .. "移除樓梯靈魂咒語" .. event2 .. " 依種樓梯會喺2分鐘後消失.",
	["necromancermode"] = string.format(mode,"Necromancer","Necromancer Rig","移除樓梯靈魂咒語"),
	["necromancerrefill"] = overload,
	["necromancerunion"] = union,

	--REAVER
	--This spell will Create Stairs with a mirror in the middle. Once you walk through the mirror, you will merge with Your ghost. Walk through the mirror again and you will separate from Your ghost. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.
	["createmirrored"] = "依個咒語會建立喺中間有塊鏡嘅樓梯. 一穿過塊鏡, 你會同隻鬼合併. 再穿過塊鏡, 你就會同隻鬼分返開. 喺你同隻鬼合併果陣, 你可以用地板鏡面但你隻鬼唔會幫你攞法力球.",
	--This spell will create a giant mirror on the whole level for 10 seconds. Only players merged with their ghost can walk on the mirror. Giant mirrors will remove any small mirrors on the level. Rank up to PRESENCE to extend mirror lifetime to 15 seconds.
	["bigmirror"] = "依個咒語會喺成層建立一個大地板鏡面, 維持10秒. 只有同隻鬼合併咗嘅玩家先可以行上塊鏡. 大鏡面會整走同層細鏡面. 等級上升到 PRESENCE 去延長維持時間到去15秒.",
	--This spell will create a small mirror in the chosen direction for 6 seconds. Only players merged with their ghost can walk on the mirror. Rank up to PRESENCE to extend mirror lifetime to 9 seconds.
	["smallmirror"] = "依個咒語會喺你揀嘅方向建立一個細地板鏡面, 維持6秒.只有同隻鬼合併咗嘅玩家先可以行上塊鏡. 等級上升到 PRESENCE 去延長維持時間到去9秒.",
	--This spell will create a mirror in the outer direction and twin mirror on the other side of the map. It can only be used in outer platforms. Players who walk through such mirror will merge with their ghost and teleport to the connected mirror on the other side of the tower. Mirror will disappear after 60 seconds. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.
	["outermirror"] = "依個咒語會喺外面同佢對面建立一塊鏡. 依個咒語只可以喺外面平台到用. 玩家一行過依種鏡會同隻鬼合併同傳送到去座塔嘅另一面. 塊境會喺60秒後消失. 喺你同隻鬼合併果陣, 你可以用地板鏡面但你隻鬼唔會幫你攞法力球.",
	--Use this spell to manually merge with Your ghost. Rank up to REPLICA to use this spell to unmerge from Your ghost. Rank up to POLTERGEIST to merge/unmerge nearby players. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.
	["merge"] = "依個咒語比你自己去同唔同隻鬼合併. 等級上升到 REPLICA 去同隻鬼分開. 等級上升到 POLTERGEIST 去鬼合併 / 鬼分開附近玩家. 喺你同隻鬼合併果陣, 你可以用地板鏡面但你隻鬼唔會幫你攞法力球.",
	--This spell will turn above stairs into Glass Stairs, allowing you to walk through them. Only players merged with ghost can walk on Glass Stairs.
	["oneway"] = "依個咒語將上面樓梯玻璃化, 比你穿過去. 只有同隻鬼合併咗嘅玩家先可以行上玻璃樓梯.",

	--It allows you to cast as many Giant Mirrors as you like for one minute. You will be merged with your ghost automatically.
	["reflection"] = timed .. "佢會比你一分鐘隨你鍾意建立大地板鏡面. 你會自重同隻鬼合併." .. string.format(timedExtra,RankData.REAVER[7].name,RankData.REAVER[3].name,"Reavers"), 
	--the Reaver Rig. Stairs, once triggered, will Reflect the triggering player. They would have to find Mana to break free. Reflected players must control their characters from their ghost perspective. Reflected players are unaffected by Reaver mirrors. Rank up to WIGHT to get Reaver Rig immunity.
	["reaverrigevent"] = rig .. "Reaver Rig. 一觸發 Reaver Rig 會反射觸發玩家. 佢哋要揾法力球先可以被釋放. 被反射嘅玩家會由佢隻鬼嘅視覺控制佢自己. 被反射嘅玩家唔會被 Reaver 鏡面受影響. 等級上升到 WIGHT 去可以唔觸發 Reaver Rigs.",
	--Cross Roads
	["reaverevent"] = event .. "隨機單向樓梯咒語".. event2 .. " 單向樓梯係同鏡面樓梯一樣, 但係你可以行一面. 等級上升到 ILLUSION 去冇依個效果.",
	--Vitrification
	["reaveraltevent"] = event .. "玻璃化樓梯咒語" .. event2,
	["reavermode"] = string.format(mode,"Reaver","Reaver Rig","隨機單向樓梯咒語"),
	["reaverrefill"] = overload,
	["reaverunion"] = union,

	--GREMLIN
	--This spell will create Tram Stairs in the chosen direction. Tram stairs have only half the length of the normal stairs, and once created will automatically travel to the target platform. To make stairs travel back, jump on them without a spell equipped. Rank up to FIEND to remotely bring back away Trams from any platform.
	["tram"] = "依個咒語會喺你揀嘅方向建立電車樓梯. 電車樓梯係得半條普通樓梯長度, 一建立後會自重喐上去個平台到. 要喐返落去, 唔好開住咒語, 上面跳. 等級上升到 FIEND 去喺平台到叫啲電車樓梯返落嚟.",
	--This spell will turn below stairs into Crazy Stairs. Crazy Stairs will swing around 6 platforms 3 times, and you can choose thie initial rotation. Rank up to DAEMON to remotely bring back Crazy Stairs back to an adjacent platform.
	["screwdown"] = "依個咒語會將下面樓梯變成發神經樓梯. 發神經樓梯會喺6個平台搖嚟搖去3次, 你可以揀開頭喐嘅方向. 等級上升到 DAEMON 去遠距離帶去附近嘅平台.",
	--"This spell will turn above stairs into Crazy Stairs. Crazy Stairs will swing around 6 platforms 3 times. The initial rotation will be random. Rank up to DAEMON to remotely bring back Crazy Stairs back to an adjacent platform."
	["screwup"] = "依個咒語會將上面樓梯變成發神經樓梯. 發神經樓梯會喺6個平台搖嚟搖去3次, 開頭喐嘅方向會係隨機. 等級上升到 DAEMON 去遠距離帶去附近嘅平台.",
	--This spell will turn below stairs into revolving propeller on a Z axis. You can choose direction of the rotation. Stairs will stop briefly after each 180 turn.
	["revolve"] = "依個咒語會將下面樓梯變成喺 Z(横) 軸旋轉嘅螺旋槳 (即係打直轉). 你可以選擇旋轉方向. 樓梯每轉完180度會停一陣.",
	--This spell will turn below stairs into a trap door. Stairs, once triggered, will revolve on X axis, dropping careless players below. Rank up to GOBLIN to detect Gremlin Traps. Rank up to DIABLO to be immune to Gremlin traps.
	["trapstairs"] = "依個咒語會將下面樓梯變一個陷阱門. 一觸發陷阱門會喺 X(前) 軸旋轉 (即係打横轉), 攪到唔細心玩家跌落一層. 等級上升到 GOBLIN 睇到 Gremlin 陷阱門. 等級上升到 DIABLO 去唔觸發陷阱門.",
	--This spell will revolve the whole platform with any adjacent stairs (including cursed ones), in the direction of your choice. Platform will pause briefly after each 90 degree turn. Once full 360 spin is achieved, platform will turn back to normal.
	["spinplatform"] = "依個咒語會喺你揀嘅方向旋轉成個平台連樓梯 (包括被詛咒). 平台每轉完90度會停一陣. 平台一轉完360度會恢復原形.",

	--It allows you to cast as many Tram Stairs as you like for one minute.
	["tramway"] = timed .. "佢會比你一分鐘隨你鍾意建立電車樓梯." .. string.format(timedExtra,RankData.GREMLIN[7].name,RankData.GREMLIN[3].name,"Gremlins"), 
	--the Gremlin Rig. Stairs, once triggered, will hypnotise the triggering player. They will have to find Mana to be released. Hypnotised players have their controls reversed. Rank up to HOBGOBLIN to be immune to Gremlin Rigs.
	["gremlinrigevent"] = rig .. "Gremlin Rig. 一觸發 Gremlin Rig 會催眠觸發玩家. 佢哋要揾法力球先可以被釋放. 被催眠嘅玩家個控制會相反咗. 等級上升到 HOBGOBLIN 去唔觸發 Gremlin Rigs.",
	--Revolvelution
	["gremlinevent"] = event .. "隨機迴轉樓梯咒語" .. event2, 
	--Gridlock
	--Created stairs will be of Tram variety.
	["gremlinaltevent"] = fill .. "所建立嘅樓梯會係電車樓梯.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","隨機迴轉樓梯咒語"),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,


	--CHAMELEON
	--This used to be a Keeper spell, before it got rejected. It will move any normal or rigged stairs down. If you have ranked Keeper to Captain, you may also move any un-cursed stairs.
	["chamdown"] = "喺未被廢除果陣, 依個原本係一個 Keeper 咒語. 佢會向下喐任何普通樓梯或者 Rig (壟斷樓梯) . 等級上升到 CAPTAIN, 你可以喐任何唔係被詛咒嘅樓梯.",
	--This used to be a Heretic spell, before it got rejected. It will turn stairs into drawbridge, making descent impossible unless other player activates bridge from below.
	["chamdraw"] = "喺未被廢除果陣, 依個原本係一個 Heretic 咒語. 佢會將下面樓梯變成吊橋, 搞到冇可能向下落除非有人由下面觸發吊橋.",
	--This used to be a Reaver spell, before it got rejected. This spell will turn below stairs into one-way passage, while merging players with their ghost, if they walk in proper direction. You can choose which direction to block. Rank up to Illusion to be immune to one-way stairs effect. While merged with ghost, you can use floor mirrors but your ghost will not collect Mana for you.
	["oneways"] = "喺未被廢除果陣, 依個原本係一個 Reaver 咒語. 依個會將下面樓梯變成單向樓梯, 一正確行過鏡面會同隻鬼合併. 你可以揀邊個方向去唔比人行. 等級上升到 ILLUSION 去忽視單向樓梯效果. 喺你同隻鬼合併果陣, 你可以用地板鏡面但你隻鬼唔會幫你攞法力球.",
	
	--This used to be a thief spell, before it got rejected. It will turn stairs into a crossed staircase.
	--["ditch"] = "喺未被廢除果陣, 依個原本係一個 Thief 咒語. 佢會將下面樓梯變成X字形樓梯.",
	
	--This used to be a Gremlin spell, before it got rejected. It will turn stairs into a corkscrew staircase. You can choose the direction of spin, when casting this spell. Old Daemon perk is no longer active.
	["cork"] = "喺未被廢除果陣, 依個原本係一個 Gremlin 咒語. 佢會將下面樓梯變成螺絲形樓梯. 你可以喺用依個咒語果陣揀旋轉方向.  舊 Daemon 等級嘅功能已停用"

	--This used to be a Heretic spell, before it got rejected. It will turn above stairs into drawbridge, allowing you to pass. Ascend is impossible unless other player activates bridge from above. Old Unbeliever rank is no longer active and auto draw from below is no longer possible.
	["chamdrawabove"] = "喺未被廢除果陣, 依個原本係一個 Heretic 咒語. 佢會將上面樓梯變成吊橋, 比你行上去. 搞到冇可能向上行除非有人由上面觸發吊橋. 舊 UNBELIEVER 等級嘅功能已停用, 唔會再自動觸發吊橋.",
	--This used to be a wicked spell, before it got rejected. It will warp stairs back to the platform.
	["warp"] = "喺未被廢除果陣, 依個原本係一個 Wicked 咒語. 佢會拉條樓梯返去平台到.",

	--the Chameleon Rig. Stairs once triggered, will execute random effect from all other rigs.
	["chameleonrigevent"] = rig .. "Chameleon Rig. 一觸發 Chameleon Rig 會隨機用其他 Rig (壟斷樓梯) 效果.",
	["chameleonmode"] =  string.format(mode,"Chameleon","Chameleon Rig","其他無人機模式用嘅咒語"),
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

	--NEW
	--With this spell you can share Your own Mana with a nearby player. You can only share one Mana at a time, and you must have two Mana minimum to do this.
	["share"] = "你可以用依個咒語去分享法力點比其他附近嘅玩家. 你只可以一個一個法力點分享比人, 而你要最少要2個法力點先可以咁做.",

	--ARCHITECT
	--This spell used on platform's arrows, will create normal stairs. When used on normal or rigged stairs, it will shrink them.
	["archpatron"] = "依個咒語一用喺平台上嘅箭嘴會建立普通樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯), 佢會縮細佢哋.",
	--This spell when used on platform's arrows, will create a gate between platforms. When used on stairs, it will gate them in the direction of Your choice.
	["archarchon"] = "依個咒語一用喺平台上嘅箭嘴會用傳送門連接平台. 一用喺樓梯會用傳送門去喺你揀嘅方向連接兩條樓梯.",
	--This spell when used on platform's arrows, will place normal stairs. When used on normal or rigged stairs it will steal them.
	["archthief"] = "依個咒語一用喺平台上嘅箭嘴會放低普通樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會偷走佢哋.",
	--This spell when used on platform's arrows, will create Dual stairs. When used on normal or rigged stairs, it will turn them into Undead Stairs.
	["archnecro"] = "依個咒語一用喺平台上嘅箭嘴會建立雙重樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會將佢哋變成冇靈魂嘅樓梯.",
	--This spell when used on platform's arrows, will hack-in any crossing stairs. When used on normal or rigged stairs, it will turn them into an Escalator of your choice.
	["archhacker"] = "依個咒語一用喺平台上嘅箭嘴會外掛攞對面樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會將佢哋變成你揀嘅方向喐嘅電梯.",
	--This spell when used on platform's arrows, will restore adjacent stairs. When used on normal or rigged stairs, it will move them in the direction of Your choice.
	["archkeeper"] = "依個咒語一用喺平台上嘅箭嘴會恢復隔離樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會喺你揀嘅方向喐條樓梯.",
	--This spell when used on platform's arrows, will split crossing stairs. When used on normal or rigged stairs, it will twist them in the direction of Your choice.
	["archsplicer"] = "依個咒語一用喺平台上嘅箭嘴會分開樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會喺你揀嘅方向扭曲連接條樓梯.",
	--This spell when used on platform's arrows, will create a wicked's wall without the link. When used on any uncursed stairs, it will destroy them.
	["archwicked"] = "依個咒語一用喺平台上嘅箭嘴會建立一幅 Wicked 嘅能量牆但係冇條能量橋. 一用喺任何唔係被詛咒嘅樓梯, 佢會被摧毀.",
	--This spell when used on platform, will revolve the platform in the direction of Your choice. When used on normal or rigged stairs, it will revolve them in the direction of Your choice.
	["archgremlin"] = "依個咒語一用喺平台上面會喺你揀嘅方向旋轉成個平台. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會喺你揀嘅方向 Z(横) 軸旋轉下面樓梯.",
	--This spell when used on platform's arrows, will create fake stairs. When used on normal, flipped or rigged stairs, it flip or un-flip them.
	["archjoker"] = "依個咒語一用喺平台上嘅箭嘴會建立假嘅樓梯. 一用喺普通樓梯, 倒轉咗嘅樓梯或者 Rig (壟斷樓梯) 會上下掉轉或反倒轉佢哋.",
	--This spell when used on platform, will turn it into an elevator. When used on normal or rigged stairs, it will drift them into a random intersection.
	["archdrifter"] = "依個咒語一用喺平台上面會將變成一部𨋢. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會隨機漂移去一個吉嘅交叉點.",
	--This spell when used on platform's arrows, will create Phantom stairs. When used on normal, ghosted or rigged stairs, it will Ghost or un-Ghost them.
	["archspectre"] = "依個咒語一用喺平台上嘅箭嘴會建立幻影樓梯. 一用喺普通樓梯, 鬼化咗嘅樓梯或者 Rig (壟斷樓梯) 會鬼化或去鬼化樓梯.",
	--This spell when used on platform's arrows, will create Mirrored stairs. When used on normal or rigged stairs, it turn them into One-Way stairs of Your choice.
	["archreaver"] = "依個咒語一用喺平台上嘅箭嘴會建立中間有塊鏡嘅樓梯. 一用喺普通樓梯或者 Rig (壟斷樓梯) 會喺你揀嘅方向變成單向樓梯.",
	--This spell when used on platform's arrows, will curse an empty intersection without flickering anyone. When used on normal, cursed or rigged stairs, it curse or un-curse them.
	["archheretic"] = "依個咒語一用喺平台上嘅箭嘴會詛咒個交叉點而唔會彈任何人. 一用喺普通樓梯, 被詛咒嘅樓梯或者 Rig (壟斷樓梯) 會詛咒或解除詛咒樓梯.",

}
local CommonPerksInsertALignment = {
	--This is Your starter %s rank.
	[1] = "依個係你 %s 一開始嘅等級.",
	--You will get bonus Mana when drones are in %s mode.
	[2] = "喺無人機喺 %s 模式果陣, 你會攞到額外法力點.",
}
local CommonPerksInsertTimedSpell = {
	--If someone casts a %s spell, your Mana will be refilled.
	[3] = "如果有人用 %s 咒語, 你嘅法力點會重生充滿.",
	--Your %s spell will last 50%% longer (90s).
	[7] = "你嘅 %s 咒語會維持多50%% (90秒).",
}



module.gui.ranks = {

	--Your Rank
	["title"] = "你嘅等級",

	--none
	--You have not chosen an alignment
	["none_1"] = "你未揀 Alignment!",
	--To cast a spell, you must pick a class
	["none_2"] = "你一定要揀一個 Alignment 先可以用咒語!",

	--NEW
	--You have been possessed
	["possessed_1"] = "你被人詛咒!",
	--As Possessed, you cannot use spells, your rank perks are inactive and you cannot jump.
	["possessed_3"] = "喺 Possessed, 你唔可以用咒語, 你嘅等級技能, 同唔可以跳.",

	--You have been hynotized
	["hypnotised_1"] = "你被人催眠!",
	--As Hypnotised, your controls are reversed!
	["hypnotised_3"] = "喺 Hypnotised, 你嘅控制會反轉!",

	--You have been reflected
	["reflected_1"] = "你被人反射!",
	--As Reflected, you control yourself from your ghost perspective!
	["reflected_3"] = "喺 Reflected, 你會喺你隻鬼嘅視覺到控制你自己!",

	--Find Mana or Patron Rig to break free.
	["findmana"] = "揾法力球或者 Patron Rig 去解脫.",
	--Permanent mode - Complete climb or visit sanctuary to de-morph.
	["permanent"] = "永久模式 - 爬完一次座塔或者去聖地去解除變身.",

	--You are now an Architect!
	["architect_1"] = "你依家係 Architect!",
	--Architects cannot acquire any ranks.
	["architect_2"] = "Architects 唔可攞任何等級.",
	--Roam the tower to wreak havoc!
	["architect_3"] = "隨你亂咁遊走座塔同整混亂!",

	--You are in the tutorial!
	["tutorial_1"] = "你依家喺教學!",
	--Collect Mana and use spells to climb the tower.
	["tutorial_2"] = "揾法力點去用咒語去爬座塔.",
	--Make sure to catch the White Orb at the top!
	["tutorial_3"] = "喺最頂記得要去到個終點球!",
	--END NEW

	--shared
	--HIGHER RANK ACQUIRED
	["higher"] = "你有更高等級",
	--YOUR CURRENT RANK
	["current"] = "你依家嘅等級",
	--RANK NOT ACQUIRED
	["lower"] = "你未有依個等級",

	--You need %d more climbs as %s to obtain this rank.
	["more"] = "你仲要爬多%d次先攞到依個等級 (用 %s).",
	--You already own a higher rank. All lower rank effects add up to the current rank.
	["done"] = "你已經有更高嘅等級. 所有低等級嘅效果會加埋落去你依家嘅等級.",
	--This is the maximum rank. You have made %d climbs as %s.
	["max"] = "依嗰係最高等級. 你爬咗%d次 (用 %s).",
	--Click on the right arrow to check requirements for the next rank.
	["next"] = "撳右箭嘴去睇下一個等級要求.",

	["PATRON"] = {
		--You can now create links in any uncursed direction.
		[4] = "你可以喺任何唔係被詛咒嘅方向建立能量橋",
		--You can now rebuild any uncursed stairs
		[5] = "你可以重新建立任何唔係被詛咒嘅樓梯",
		--The cost of the Call the Orb spell is reduced to 2 Mana.
		[6] = "叫終點球咒語嘅法力點用量會減少到去2個法力點.",
		--If you are out of Mana, jump on a platform to be blessed with 1 Mana.
		[8] = "如果你冇曬法力點, 喺平台上面跳去被祝褔一個法力點.",
		--Called Orb will travel twice as fast.
		[9] = "被叫嘅終點球會兩倍速度喐.",
	}, 
	["JOKER"] = { 
		--Disco stairs have no effect on you.
		[4] = "Disco 樓梯對你會冇反應.",
		--You can now see all invisible stairs. You have the option to not reveal them
		[5] = "你依家可以睇到隱形樓梯. 你可以選擇唔揭露佢哋.",
		--You can now detect platform traps and fake stairs.
		[6] = "你依家可以睇到平台陷阱同假嘅樓梯.",
		--You can now walk on fake stairs and traps.
		[8] = "你依家可以行上平台陷阱同假嘅樓梯.", 
		--You will get bonus Mana when someone triggers any prank. (1 mana per player pranked)
		[9] = "你每一玩家被整蠱就攞到一個法力點. (每整蠱玩家有一個法力)",
	},
	["WICKED"] = {
		--You can now walk on obbies as if they were normal stairs.
		[4] = "你可以就同普通樓梯一樣行上跑酷樓梯.",
		--The Destroy Below spell is now free.
		[5] = "摧毀下面樓梯咒語依家係免費.",
		--You will get 1 bonus Mana from destroying any special stairs.
		[6] = "你每摧毀任何特殊樓梯就攞到一個法力點.",
		--You have the option to avoid triggering any Wicked Rigs.
		[8] = "你有一個選擇去唔觸發任何 Wicked Rigs.",
		--You can now destroy cursed stairs.
		[9] = "你可以摧毀被詛咒嘅樓梯.",
	},
	["SPECTRE"] = { 
		--You will get an extra 1 Mana when you collect crystals with Your Ghost.
		[4] = "你會攞多一個法力點如果你隻鬼攞到法力球.", 
		--Your GHOSTIFY spell is now free.
		[5] = "你嘅鬼化下面樓梯咒語依家係免費.",
		--You can now touch the orb at the top with your ghost to finish a climb.
		[6] = "你依家可以用你隻鬼去個終點球去完成一座塔.",
		--You have the option to avoid triggering any Spectre Rigs
		[8] = "你有一個選擇去唔觸發任何 Spectre Rigs.", 
		--You can now walk on ghosted stairs.
		[9] = "你依家可以行上被鬼化嘅樓梯.",
	},
	["KEEPER"] = {
		--The Move Random spell and Keeper Rigs that you trigger will never cause the stairs to go down.
		[4] = "隨機喐樓梯咒語同你觸發嘅 Keeper Rigs 永遠唔會向下喐.",
		--You can now move any un-cursed stairs.
		[5] = "你可以喐任何唔係被詛咒嘅樓梯.",
		--Your Restore spell is now free.
		[6] = "你嘅恢復樓梯咒語依家係免費.",
		--You have the option to avoid triggering any Keeper Rigs 
		[8] = "你有一個選擇去唔觸發任何 Keeper Rigs.",
		--You can now restore cursed stairs and cursed intersections.
		[9] = "你可以恢復被詛咒嘅樓梯同被詛咒嘅交叉點.",
	},
	["HACKER"] = { 
		--You have the option to be immune to Escalators.
		[4] = "你有一個選擇去唔觸發電梯.",
		--Your Dash spell is now 50% faster.
		[5] = "你嘅衝刺咒語依家快50%.",
		--Your Blink spell is now 50% faster.
		[6] = "你嘅眨梯咒語依家快50%.", 
		--You have the option to avoid triggering any Hacker Rigs. (merges with Escalator switch)
		[8] = "你有一個選擇去唔觸發任何 Hacker Rigs. (加埋落唔觸發電梯果嗰制)",
		--If there is at least one free intersection, casting Glitch on the top level will create stairs leading to the orb.
		[9] = "如果終點球個平台附近致少有一個吉嘅交叉點, 喺頂層用故障樓梯會建立樓梯去個終點球.", 
	},
	["THIEF"] = {
		--You can now cast Place Stairs on any normal or rigged stairs as well as platforms.
		[4] = "你依家可以喺任何普通樓梯 / 壟斷樓梯同平台到用放走樓梯咒語.",
		--You can now keep 2 stolen stairs at the same time.
		[5] = "你依家可以同時間保持2條樓梯.",
		--You can now steal any un-cursed stairs.
		[6] = "你可以偷走任何唔係被詛咒嘅樓梯.",
		--If you are out of Mana, jump on a platform to get 1 Mana from your stash.
		[8] = "如果你冇曬法力點, 喺平台上面跳去攞一個法力點.", 
		--You can now keep 3 stolen stairs at the same time.
		[9] = "你依家可以同時間保持3條樓梯.",
	},
	["ARCHON"] = {
		--You can now cast the Destroy Gate spell on platforms, to remove Platform Gates.
		[4] = "你可以喺平台上用破壞傳送門咒語去破壞平台傳送門.",
		--Your Destroy Gate spell is now free.
		[5] = "你嘅破壞傳送門咒語依家係免費.",
		--Gates will never teleport you down.
		[6] = "傳送門永遠唔會向下傳送你.",
		--You can now cast Gate spells on stairs with Gates already on them.
		[8] = "你依家可以喺有傳送門嘅樓梯上用建立傳送門嘅咒語.",
		--You can choose to avoid teleportation on all but upward Gates.
		[9] = "你有一個選擇去唔觸發任何唔係向上傳送嘅傳送門.",
	},
	["DRIFTER"] = {
		--Your upward platform drifts will appear and move 50% faster.
		[4] = "你嘅向上漂移平台會出現同喐快50%.",
		--You can now spin any uncursed stairs and drift already drifted stairs.
		[5] = "你可以旋轉任何唔係被詛咒嘅樓梯同已經漂移咗嘅樓梯.",
		--You can now boost Elevators with both Riser and Elevator spells. Vagabond perk does not apply to boosted Elevators
		[6] = "你可以用上升者同𨋢咒語去增強部𨋢. Vagabond 嘅能力唔會影響增強咗嘅𨋢.",
		--You have the option to avoid triggering any Drifter Rigs.
		[8] = "你有一個選擇去唔觸發任何 Drifter Rigs.",
		--You can now boost Elevators twice, with both Riser and Elevator spells. Vagabond perk does not apply to boosted Elevators.
		[9] = "你可以用上升者同𨋢咒語去增強部𨋢兩次. Vagabond 嘅能力唔會影響增強咗嘅𨋢.",
	},
	["HERETIC"] = {
		--When out of Mana, you can touch cursed stairs to uncurse them and get one Mana.
		[4] = "喺你冇曬法力點果陣, 你可以點被詛咒嘅樓梯去解除詛咒同攞一個法力點.",
		--You are now immune to being possessed.
		[5] = "你依家唔會被詛咒.",
		--You can now cast the Flicker spell on a cursed intersection.
		[6] = "你依家可以喺被詛咒嘅交叉點用輕彈咒語.",
		--Your Create Cursed Stairs and Malediction spells can now destroy blocking cursed stairs.
		[8] = "你嘅建立詛咒樓梯咒語同詛咒建立咒語可以摧毀阻住又被詛咒嘅樓梯.",
		--You will get 1 extra Mana everytime someone is possessed.
		[9] = "每一玩家被詛咒就攞到一個法力點.",
	},
	["SPLICER"] = {
		--You can now restore disconnected stairs from platform.
		[4] = "你可以恢復同平台斷開咗嘅樓梯.",
		--Your Restore Twist spell is now free.
		[5] = "你嘅恢復扭曲樓梯咒語依家係免費.",
		--You have the option to avoid below Splicer Rigs.
		[6] = "你有一個選擇去唔觸發任何 Splicer Rigs.",
		--You can now splice already spliced stairs.
		[8] = "你可以扭曲已經扭曲咗嘅樓梯.",
		--You will get 1 Mana everytime you restore a Splice.
		[9] = "你每恢復扭曲樓梯就攞一個法力點.",
	},
	["REAVER"] = {
		--You can now use your Merge spell to unmerge.
		[4] = "你可以用你嘅鬼合併咒語去鬼分離.",
		--Your floor mirrors will last 50% longer. (15s big, 9s small)
		[5] = "你嘅鏡面會維持多50%. (大鏡面: 15秒, 細鏡面: 9秒)",
		--You are now immune to Reaver Rigs.
		[6] = "你依家唔會觸發 Reaver Rigs.",
		--Using merge spell will also affect nearby players.
		[8] = "用鬼合併咒語會影響附近玩家.",
		--You get a speed boost (25%) when walking on floor mirrors.
		[9] = "你喺地面鏡行會有多25%移動速度.",
	},
	["NECROMANCER"] = {
		--Create Dual Stairs will ignore cursed intersections and stairs on ghost's platform.
		[4] = "建立雙重樓梯會唔理喺你隻鬼嘅平台上有被詛咒嘅交叉點同樓梯.",
		--If you use a Revival Point on the top floor, it will bring the orb to where the point is placed.
		[5] = "如果你喺頂層用重生點, 佢會叫個終點球去個重生點到.",
		--Copy Platform spell will remove curses if it needs to.
		[6] = "複製鬼嘅平台咒語有需要會整走詛咒.",
		--You can demolish crossing cursed stairs, while casting Dual Stairs.
		[8] = "你可以喺用建立雙重樓梯果陣摧毀被詛咒嘅樓梯.",
		--Regenerate restores 10 mana instead of 6, and will restore 5 mana to those nearby your ghost.
		[9] = "再生法力點會再生10個法力點 (6變10), 同埋會再生5個法力點比喺你隻鬼附近嘅玩家.",
	},
	["GREMLIN"] = {
		--You can now see all Gremlin Traps.
		[4] = "你可以睇到所有 Gremlin 陷阱.",
		--You can now jump on platform to call all adjacent Trams.
		[5] = "你可以喺平台到叫所有電車樓梯返落嚟.",
		--You are now immune to Gremlin Rigs.
		[6] = "你依家唔會觸發 Gremlin Rigs.",
		--You are now immune to Gremlin Traps.
		[8] = "你依家唔會觸發 Gremlin 陷阱.",
		--You can now jump on platform to call and restore all adjacent Crazy Stairs.
		[9] = "你可以喺平台上面跳去叫同複復原所有周圍嘅發神經樓梯.",
	},
	["MUGGLE"] = { 
		--Your jump cooldown is reduced by 0.125s.
		[2] = "你嘅跳躍冷卻時間減0.125秒.",
		--Your jump cooldown is reduced by 0.25s.
		[3] = "你嘅跳躍冷卻時間減0.25秒.",
		--Your jump cooldown is reduced by 0.375s
		[4] = "你嘅跳躍冷卻時間減0.375秒.",
		--Your jump cooldown is reduced by 0.5s.
		[5] = "你嘅跳躍冷卻時間減0.5秒.",
		--Your walkspeed is increased by 10%.
		[6] = "你嘅移動速度增加多10%.",
		--Your walkspeed is increased by 20%.
		[7] = "你嘅移動速度增加多20%.",
		--Your walkspeed is increased by 30%.
		[8] = "你嘅移動速度增加多30%.",
		--Your jump power is increased by 20%.
		[9] = "你嘅跳躍力度增加多20%.",
	},
	["NONE"] = {
		--None cannot acquire any ranks. Jump on a morph in the middle of the map to change your alignment.
		[1] = "None 唔可以有其他等級. 喺地圖中間嘅變身墊跳去改變你嘅 Alignment.",
		--I am serious, NONE does not have any rank perks.
		[2] = "我係認真架, NONE 係冇任何等級能力.",
		--You are just wasting your time, you could at least rank up MUGGLE instead.
		[3] = "你只係喺到曬緊你啲時間, 你致少可以等級上升 MUGGLE.",
		--MUGGLE gets walkspeed boosts, you know? None does not get anything.
		[4] = "你知 MUGGLE 係有加速移動速度架嗎? None 唔會有任何嘢.",
		--If you think there is a secret rank perk at the end, you must really underestimate my laziness.
		[5] = "如果你覺得最尾係有隱藏能力, 你一定低估咗我有幾懶.",
		--Maybe you just like to torture yourself?
		[6] = "可能你鍾意虐待你自己?",
		--People at discord are lying, there is no secret perk at 50 climbs.
		[7] = "啲人喺 Discord 係講緊大話架, 爬完50次唔有隱藏能力.",
		--This is your final warning, stop before a total disappointment.
		[8] = "依個係最後警告, 好停如果唔係你會好失望.",
		--Your persistence is admirable. You get a total toggleable immunity to special stairs and an ability to pass through blocking stairs.
		[9] = "你嘅堅持係令人佩服. 你可以選擇去令所有特殊樓梯對你冇反應同可以穿過阻住嘅樓梯.",
	},

	["CHAMELEON"] = { 
		--This is your starter CHAMELEON rank. Other alignment rank bonuses still apply.
		[1] = "依個係你嘅 CHAMELEON 一開始嘅等級. 其他 Alignment 等級能力會用得用.",
		--EXCEPTION! You will ONLY get bonus Mana when drones are in CHAMELEON mode.
		[2] = "例外! 你只會喺無人機喺 CHAMELEON 模式果陣先有得額外法力點.",
		--Alignment change animation is much faster now.
		[3] = "Alignment 變身動畫會快好多.",
		--Your hands will now glow purple when casting, disguising your motives.
		[4] = "你隻手會喺用咒語發紫色光, 隱藏你嘅重機.",
		--Fake Stairs and Create Stairs spells will both have a purple glow.
		[5] = "建立假樓梯同建立咒語會發紫色光.",
		--You can now cast 4 spells which were rejected during development
		[6] = "你可以用4個被拒絕咗嘅咒語.",
		--You can now cast 2 more spells which were rejected during development.
		[7] = "你可以用另外2個被拒絕咗嘅咒語.",
		--Changing alignments doesn't have a morph animation anymore, making switching alignments seamless and private. Can be turned off in options.
		[8] = "改變 Alignments 唔會再有變身動畫, 令改變 Alignments 會無人會見到. 可以喺設定閂咗佢.",
		--You can now cast the Mystery Rig spell with multi-tokens.
		[9] = "你可以有多用途代幣去用 Mystery Rig 咒語.",
	},


}


module.gui.multitokens = {

	--You need 3 tokens to unlock a spell.
	["info"] = "你要3個代幣去解鎖一個咒語.",

}

module.gui.feedback = {

	--SEND FEEDBACK
	["title"] = "發送意見",
	--Click here to send a message to the developers! (minimum of 20 characters. We know who you are so please - no spam.)
	["prompt"] = "撳呢到去發送訊息比開發者! (最少要有20隻字. 我哋知道你係邊個, 所以唔該 - 唔好不斷發送訊息.)",
	--Send
	["send"] = "發送",
	--Locked
	["locked"] = "已封鎖",

}

module.gui.settings = {

	--NEW
	--Gameplay Settings
	["Gameplay"] = "遊戲設定",
	--Interface Settings
	["Interface"] = "介面設定",

	--Show your own avatar billboard
	["Billboard"] = "顯示你嘅頭上表板",
	--Show your overall rank in the avatar billboard
	["Rank"] = "喺頭上表板顯示你嘅整體等級",
	--Show the morph animation when using Chameleon ranked up to Deceiver or higher
	["Morph"] = "喺用 Chameleon (有 Deceiver 或更高的等級) 果陣顯示變身動畫",
	--Reduce your own mana capacity for an extra challenge
	["ManaLimit"] = "減低你自己法力點容量去挑戰自己",

	--Show direction selection for Keeper, when using move spells
	["KChoices"] = "喺用移動咒語果陣顯示方向選擇比 Keeper",
	--Show direction selection for Hacker, when using the escalator spell
	["HChoices"] = "喺用電梯咒語果陣顯示方向選擇比 Hacker",
	--Show direction selection for Archon, when using gate spells
	["AChoices"] = "喺用傳送門咒語果陣顯示方向選擇比 Archon",
	--Show direction selection for Splicer, when using splice spells
	["SChoices"] = "喺用扭曲咒語果陣顯示方向選擇比 Splicer",
	--Show direction selection for Gremlin, when using the revolve platform spell and the crazy stairs spell
	["GChoices"] = "喺用旋轉平台咒語或發神經樓梯咒語果陣顯示方向選擇比 Gremlin",
	--new
	--Show direction selection for Chameleon, when using the One-Way Stairs spell and the corkscrew stairs spell
	["CChoices"] = "喺用單向樓梯咒語或螺絲形樓梯咒語果陣顯示方向選擇比 Chameleon",
	--endnew

	--Show animated playerlist rather than standard Roblox Leaderboard
	["List"] = "用有動畫嘅玩家名單, 唔用 Roblox 普通玩家名單",
	--Auto switch back to basic spells after an executed ultimate spell
	["SwitchBack"] = "喺用完一個超級咒語自動轉返去基本咒語",
	--Show confirmation window when cancelling a timed ultimate spell
	["SafeCancel"] = "喺取消一個計時超級咒語顯示確認介面",
	--Show Multi Token window selection after the climb, when you still have unspent MultiTokens
	["Multi"] = "喺爬完座塔顯示多用途代幣選擇介面, 如果你仲有未用嘅多用途代幣",
	--Adjust the maximum width of the User Interface (%)
	["UISize"] = "調整最大介面寬度 (%)"
	--END NEW

}

module.gui.gameover = {}

module.gui.gameover.results = {

	--Your Alignment
	["class"] = "你嘅 ALIGNMENT",
	--Your Climb Time
	["time"] = "你嘅攀爬時間",
	--Climbs Awarded
	["climbs"] = "獲得攀爬次數",
	--Tokens Awarded
	["tokens"] = "獲得代幣數量",
	--Your Current Rank
	["rank"] = "你依家嘅等級",

	--NEW
	--Your Overall Rank
	["role"] = "你嘅總體等級",
	--Classic Tower Record
	["classic"] = "普通塔紀錄",
	--Pro Tower Record	
	["pro"] = "高級塔紀錄",
	--Infinite Tower Record	
	["infinite"] = "無限塔紀錄",
	--Custom Tower Record
	["custom"] = "自訂塔紀錄", --this will show in custom tower, but it will always be N/A, as custom tower does not keep records
	--Classic Tower Record
	["basic"] = "初級塔紀錄", --this will show in noVR tower, as they share the same record

	--%s Record
	["cTime"] = "%s 紀錄", --%s will be replaced by the used class
	--Levels Reached
	["levels"] = "到倒樓層",
	--%s Climbs
	["cClimbs"]	= "%s 攀爬次數", --%s will be replaced by the used class
	--Total Climbs
	["tClimbs"] = "總攀爬次數",
	--%s Tokens
	["tTokens"] = "%s 代幣",	--%s will be replaced by the used class	(or multi)
	--Spells Used
	["spells"] = "用咗幾多次咒語",	--amount
	--Rank
	["rRank"] = "排名",--if any
	--END NEW

}

module.gui.gameover.messages = {

	["PATRON"] = {

		--[[
		"HELP, PROTECT and CREATE",
		"Those noobs need our help",
		"There would be no hope without us Patrons",
		"11 out of 10, on the scale of niceness",
		"Sharing is caring",
		"You can never have too many stairs",
		"There is no I in Team, but there is definitely a Patron",
		"You cannot have a staircase without stairs",
		"Another job well done",
		]]--

		"幫助, 保護, 建立",
		"果啲新手要我哋幫手",
		"無我哋 Patrons 會無希望",
		"喺友善之尺10分滿分值11分",
		"分享就係關心",
		"你永遠都唔會有太多樓梯",
		"團結無個人, 但一定會有 Patron",
		"你唔可以有一個無樓梯嘅樓梯塔",
		"又完美完成咗一個工作",
	},
	["JOKER"] = {

		--[[
		"DECEIVE, CONFUSE and LAUGH",
		"This staircase is a joke",
		"Why so serious?",
		"HA! HA! HA!",
		"Relax and watch them fall",
		"You mad bro?",
		"You know the rules and so do I",
		"It would be boring without me",
		"Fake stairs are real",
		]]--

		"欺騙, 搞亂, 大笑",
		"依個樓梯塔係一個笑話",
		"做咩咁認真?",
		"HA! HA! HA!",
		"食住包花生再睇住佢哋跌落街",
		"師兄好嬲呀?",
		"You know the rules and so do I",
		"無我會好悶架",
		"假樓梯係真",
	},
	["WICKED"] = {

		--[[
		"PREVENT, BLOCK and DESTROY",
		"I'm not evil, there are just too many stairs",
		"Those stairs got to go",
		"Watch the world burn",
		"This staircase looks better without stairs",
		"I will destroy your mind, soul and body (and stairs)",
		"1)Make an obby 2)Watch noobs struggle 3)Enjoy",
		"All things die eventually",
		"Clear your mind - but first clear the staircase",
		]]--

		"防止, 阻住, 摧毀",
		"我唔係邪惡, 只係太多樓梯啫",
		"果啲樓梯要消失",
		"睇住個世界被燃燒",
		"依個樓梯塔無樓梯仲好睇",
		"我會摧毀你嘅頭腦, 你嘅靈魂, 你嘅肉體 (同埋樓梯)",
		"1) 整一個跑酷 2) 睇住啲新手卡住 3) 食花生",
		"萬物都會有完嘅一日",
		"清空你嘅思想 - 但喺清咗個樓梯塔先",
	},
	["SPECTRE"] = {

		--[[
		"DISAPPEAR, HIDE and TELEPORT",
		"Of course teleporting is safe",
		"You can't catch me",
		"The beauty of ghosted stairs is unparalleled",
		"People falling? Why should I care?",
		"You can solve all your problems with teleporting",
		"Once you start teleporting, you will not be able to stop",
		"At least I'm not teleporting stairs",
		"Keep up you noobs!",
		]]--

		"消失, 匿埋, 傳送",
		"傳送當然係安全",
		"你唔會捉到我",
		"被鬼化嘅樓梯嘅美係佢獨一無二",
		"啲人跌緊落街? 我點解要理?",
		"你可以用傳送去解決所有問題",
		"傳送無涯, 回頭不是岸",
		"我致少唔係傳送緊啲樓梯",
		"你班新手試下跟住我!",
	},
	["MUGGLE"] = {

		--[[
		"WALK, JUMP and FALL",
		"We did not have those fancy spells in alpha stage",
		"I swear those Drones are rigged",
		"There is always a path",
		"Stairjumping is a talent",
		"My secret? Stop and think",
		"I don't believe in magic",
		"Sometimes you need to wait for a drone - Like in real life",
		"People use spells? Noobs!",
		]]--

		"行, 跳, 跌",
		"我哋喺發展階段係無果啲咁靚的咒語",
		"你好肯定果啲無人機係被人壟斷咗",
		"總會有一條出路",
		"Stairjumping 係一個才能",
		"我啲秘訣? 停喺到再諗",
		"我唔相信有魔法嘅存在",
		"你有時係要等無人機 - 就好似現實咁",
		"啲人用咒語? 廢柴!",
	},
	["CHAMELEON"] = {

		--[[
		"COPY, IMITATE and SURPRISE",
		"I am too lazy to come up with my own spells",
		"More variety = more fun",
		"Teaming is slow - Morphing is fast",
		"Ability to adjust is the basis of survival",
		"I AM decisive, I just like to change my mind",
		"You mastered a class? I mastered all the classes",
		"One alignment only? Boring!",
		"I like chaos",
		]]--

		"複製, 模仿, 驚喜",
		"我太過懶去諗自己啲咒語出嚟",
		"多元化 = 多樂趣",
		"團隊太慢 - 變形仲快",
		"識得改變係基本生存要有",
		"我係可以做到決定, 我只係鍾意改變我啲諗法啫",
		"你精通咗一個班級? 我精通曬所有班級",
		"只喺一個 Alignment? 會唔會太悶?",
		"我鍾意混亂",
	},
	["KEEPER"] = {

		--[[
		"MOVE, ROTATE and CONTROL",
		"Stop messing up my staircase!",
		"Another mighty success for the Keepers",
		"Mission complete!",
		"I like order",
		"Chaos tamed",
		"I am the only true alignment",
		"One day I will sort out this tower",
		"Fixed stairs = happy stairs",
		]]--

		"移動, 轉動, 控制",
		"好停搞亂我嘅樓梯塔!",
		"又係一個巨大成功比 Keepers",
		"任務成功!",
		"我鍾意秩序",
		"混亂已平息",
		"我係唯一一個真正嘅 Alignment",
		"我總會有一日我會整理好依座塔",
		"復原咗嘅樓梯 = 開心嘅樓梯",
	},
	["THIEF"] = {

		--[[
		"\"BORROW\", USE and RETURN",
		"It's called borrowing actually",
		"Flat land is so beautiful",
		"At least I do not steal platforms",
		"Just do not walk on steal rigs, smh",
		"Like did you see me steal anything?",
		"I am like Robin Hood - Steal from the rich and give to myself",
		"It's not like anyone would notice one staircase missing",
		"Stairs redistribution prevents anarchy",
		]]--

		"\"我借\", 我用, 我還",
		"其實佢係叫借",
		"平地係好靚架",
		"我致少唔係偷走啲平台",
		"咪唔好行上啲 Steal Rigs 囉",
		"我話你有見到我偷嘢咩?",
		"我好似 Robin Hood - 喺有錢人到偷嘢自己用",
		"又唔係會有人發現有條樓梯唔見咗",
		"樓梯重先分配防止混亂",
	},
	["HACKER"] = {

		--[[
		"EXPLOIT, GLITCH and BREAK",
		"Fair play? There's no such thing",
		"Wait! This staircase is not real... Are we living in a simulated Roblox experience?",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"Have you seen any rules posted anywhere here?",
		"I'm cheating? Everybody here is",
		"I mean few tweaks here and there - Hardly an exploit",
		"Speed is all that matters",
		"Escalators for life",
		]]--

		"外掛, 故障, 破壞",
		"公平咁玩? 冇依樣嘢架喎",
		"等陣! 依個樓梯唔係真架喎... 我哋係咪喺一個虛擬嘅 Roblox 遊戲?",
		"大竹弓戈 大竹一土 木中田女 木金弓竹",
		"你有邊到見到有寫規則?",
		"我出 cheat? 依到全部人都係",
		"我依到果到調整咗少少嘢 - 好難話佢係外掛",
		"速度先之係最重要",
		"永遠愛電梯",
	},
	["HERETIC"] = {

		--[[
		"YOU SHALL NOT PASS",
		"Banning black magic is like banning fun",
		"Possess people. Keep the Overmind satiated",
		"Death and decay",
		"Dark ritual complete",
		"We should not restrict ourselves",
		"Get possessed",
		"Choose the dark side - It's easier than Illumination",
		"Why would I care if people get stranded?",
		]]--

		"你. 唔. 會. 通. 過.",
		"禁黑魔法就係禁樂趣",
		"詛咒其他人. 滿足 Overmind",
		"死亡同腐爛",
		"黑暗儀式完成",
		"我哋唔應該限制住自己",
		"被我哋詛咒",
		"去揀黑暗面 - 係簡單過秘密學會",
		"點解我要理人哋困喺度?",
	},
	["ARCHON"] = {

		--[[
		"OPEN PORTAL, ???, PROFIT",
		"I used to rule this staircase",
		"Plan ahead to succeed",
		"Study hard and you will succeed",
		"Ability to gate stairs is an Art form",
		"I can't using my Archon potar",
		"The cake is a lie",
		"There is a gate for every problem",
		"Confused everyone!",
		]]--

		"開傳送門, ???, 收益",
		"我以前統治過呢條樓梯",
		"預先計劃先可以成功",
		"進一步理解, 你就會成功",
		"有能力去開傳送門係一種藝術",
		"我唔可以係咁用 Archon 傳送門", --I honestly have no idea what this suppose to say
		"個蛋糕係假架",
		"每一個問題都有一個傳送門",
		"所有人都好混亂!",
	},
	["DRIFTER"] = {

		--[[
		"SURF, RIDE, and GLIDE",
		"Who needs stairs anyway? We're in space!",
		"Fly you fools!",
		"Surf the Solar Wind",
		"There is no down in space - Jump without worry",
		"Drift everything - Jump to victory",
		"Don't stop - Keep drifting",
		"I love to ride platforms",
		"Keep surfing",
		]]--

		"漂移, 漂蕩, 漂浮",
		"邊個仲要樓梯? 我哋喺太空!",
		"飛啦, 你班傻仔!",
		"喺 Solar Wind 到漂浮",
		"大空冇吸力 - 唔使擔心咁跳",
		"漂移曬所有嘢 - 跳到去勝利",
		"唔好停 - 繼續漂移",
		"我鍾意喺平台到漂蕩",
		"繼續漂浮",
	},
	["SPLICER"] = {

		--[[
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
		]]--

		"扭曲, 分裂, 連接",
		"千其唔好行一條直線行太耐",
		"喺你人生增加扭扭曲曲",
		"其他人嘅混亂就係 Splicer 嘅秩序",
		"我好肯定我可以連接果啲樓梯",
		"同人連接 - 唔好唔好, 連接樓梯仲好!",
		"我嘅思想就係咁扭曲",
		"分開定連接 - 依個先係個問題",
		"多謝你 Markerquest, 你救咗我",
		"依個樓梯塔太過直",
	},
	["REAVER"] = {

		--[[
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
		]]--
		
		"倒影, 代替, 合併",
		"鏡面只係一道門",
		"依座樓梯塔係一個幻覺",
		"你可以喺塊鏡入面見到你嘅靈魂",
		"係我哋望緊佢哋, 定係佢哋望緊我哋?",
		"七年冇運行. 係比我定比另外果個?",
		"係啲鬼困喺啲鏡後面 - 定係我哋先係?",
		"我唔再見到自己, 我見到未來",
		"媽咪! 依個唔係穿牆!!!",
		"唔好喺我後面鬼鬼鼠鼠咁行!",
	},
	["NECROMANCER"] = {

		--[[
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
		]]--

		"跟隨, 復活, 補益",
		"我哋唔係撞你個鬼, 我哋想同你做朋友啫",
		"你嘅靈魂係屬於我架!",
		"跟住我嘅鬼. 信我. ;)",
		"喺我隻鬼身邊會好安全架. 我點解要講大話啫?",
		"係時候收集一啲靈魂",
		"我哋只係有一個好差嘅 PR. 我怪 Hollywood",
		"如果死亡係唔好嘅, 咁死靈術一定係好",
		"我需要攞靈- 我係話法力球, 我要法力點",
		"我唔驚我跌落街, 依個係一個有戰略性嘅咒語!",
	},
	["GREMLIN"] = {

		--[[
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
		]]--

		"旋轉, 迴轉, 催眠",
		"過嚟同我玩!",
		"氹氹轉 菊花園 炒米餅 糯米糍",
		"依座樓梯塔太過悶",
		"等我嚟幫你修復果個樓梯, hehe",
		"你鍾唔鍾意我嘅傑作? 唔鍾意? 太遲, 我依家先開始.",
		"醫生叫我去放鬆, 而我就係咁樣放鬆.",
		"Joker 好記低啲嘢. 我講笑咋, 比我入返馬戲團!",
		"個樓梯塔去咗邊?",
		"Weeeeeeeeeeeeeeeeeeeee!!!!!!!",
	},
	["NONE"] = {

		--[[
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
		]]--

		"求你, 快啲, 去停",
		"Muggle 背叛咗我哋, 冇功能就冇功能.",
		"[加入訊息]",
		"如果你嘜都唔做, 你唔會失敗.",
		"冇嘢喺個樓梯塔頂.",
		"你係知道 NONE 係用嚟改 Bug 嗰呵?",
		"喺一個變形板跳去改變你嘅 Alignment. 又或者唔使 - 我只係一個訊息, 唔係個警察.",
		"依個先係真正嘅方法去爬樓梯.",
		"我隻腳好痛.",
		"移動速度同跳力度太過多人用.",
		"嚴格啲嚟講, 我其實係遊戲第一個整出嚟嘅級別.",
	},

}

module.gui.gameover.maxrank ={

	--"Leave no Noob Behind"
	["SAVIOUR"] = "唔留低任何新手",
	--"Pranking is Living",
	["IT"] = "一世都會整蠱",
	--"Destroy Everything!"
	["ANNIHILATOR"] = "摧毀所有嘢!",
	--"Enter the Nether Realm"
	["AETHER"] = "進入異世界",
	--"Spells are Overrated"
	["DABSFORLIF"] = "咒語唔好玩",
	--"I just like all the Spells"
	["USURPER"] = "我只係鍾意所有咒語",
	--"Order Restored"
	["ADMIRAL"] = "恢復秩序",
	--"Mine, mine all MINE!"
	["OUTLAW"] = "全部都屬於我!",
	--"Rootkit Installed"
	["ZERO"] = "破解器已安裝",
	--"Excommunication"
	["EXILED"] = "被逐出之人",
	--"Illuminati Confirmed"
	["ILLUMINATI"] = "秘密學會係存在",
	--"I'll take the Elevator"
	["STRIDER"] = "我漂移得架啦",
	--"Rise, Rise, RISE!"
	["DEATHBRINGER"] = "復活, 起身, 升起!",
	--"The Entanglement"
	["OPTIMUS"] = "糾纏樓梯",
	--"We are ONE"
	["ILLUSION"] = "我哋係一體",
	--"You spin me Round and Round."
	["DAEMON"] = "氹氹轉 菊花園",
	--"The Nothingness"
	["BLACK HOLE"] = "虛空", 

}

module.gui.gameover.credits = {

	["common"] = {

		--[[
		OLD
		"CRAZY STAIRS",
		"Game conceptualized, designed and scripted by Sleazel",
		"Help with design - cakegirlserina",
		"Models by ZielonyLeszek",
		"Skyboxes by @wwwtyro's generator",
		"Datastore module, ProfileStore, by loleris",
		"Thanks for playing!",	
		

		"瘋狂樓梯 (CRAZY STAIRS)",
		"遊戲概念 / 設計 / 編程師: Sleazel",
		"設計額外幫助: cakegirlserina",
		"模型設計師: ZielonyLeszek",
		"天空盒設計師: @wwwtyro's generator",
		"Datastore 組件, ProfileStore 編程師: loleris",
		"多謝你玩依隻遊戲!",	
	},
	["climb"] = "%s 攀爬音樂 - % : %",
	["endgame"] = "%s 完遊戲音樂 - % : %",
	["disco"] = "Disco 樓梯音樂 - % : %",
	["elevator"] = "電梯音樂 - % : %", --drifter platforms
	["testers"] = "試玩家:",
	["thanks"] = "特別鳴謝:",
	]]--

	["crazy"] = "瘋狂",
	["stairs"] = "樓梯",
	["game"] = "遊戲設計者:",
	["models"] = "模型設計者:",
	["icons"] = "咒語 Icons 設計者:",
	["boxes"] = "天空盒設計者:",
	["data"] = "Datastore 組件編程師:",
	["translators"] = "翻譯員:",
	["testers"] = "試玩家:",
	["thanks"] = "特別鳴謝:",
	["music"] = "遊戲音樂:",


	["climb"] = "攀爬音樂",
	["endgame"] = "完遊戲音樂",
	["ghost"] = "鬼聯合音樂",
	["disco"] = "Disco 樓梯音樂",
	["elevator"] = "漂移平台音樂", --drifter platforms
	["crazies"] = "發神經樓梯音樂", --gremlin crazy stairs music
	["finish"] = "多謝你玩依隻遊戲!",
}

module.static = {

	--[[
	"BASIC TOWER",
	"How do I play?",
	"The goal of the game is to reach the top and collect the floating Energy Orb. First choose your alignment (class) by jumping on the glowing pads in the middle of the map.",
	"Once happy with the choice, collect floating shapes to refill Mana and climb the stairs. Use your class spell to help you with the climb.",
	"How do I cast spells?",
	"Every spell has a mana cost that will be required to cast the spell. When you collect enough Mana click on the spell. Your hands will start to glow, indicating a successful cast.",
	"After casting, the spell still needs to be executed. All spells are executed by jumping. Depending on the spell, you will need to jump either on platform or stairs. Guide arrows will appear, to help you with the execution.",
	"Once you complete the climb, you will receive 3 spell tokens, that will let you unlock one spell. Complete the climb again to unlock more spells. You can't use tokens from one class to unlock a spell from another.",
	"How do I cast ultimate spells?",
	"First you will need to unlock all basic spells to access the ultimate spells. Ultimate spells do not require unlocking themself, but they use Tokens instead of Mana when cast.",
	"Complete the climb enough times to unlock all basic spells. You may want to try to win the race to get extra Tokens. There is also option to purchase tokens. Once unlocked, click leftmost button or press 'C'",
	"Some ultimate spells are timed, and do not require execution. Please read more info in the Alignment Guilds to learn more about an ultimate spell, before casting. Cancelling a timed spell will not refund tokens",
	]]--

	["bas_1"] = "初級塔",
	["bas_2"] = "點樣玩?",
	["bas_3"] = "遊戲目標就係上到最頂同攞到漂浮緊嘅能量球. 你可以先喺地圖中間啲發光板上面跳去揀 Alignment (級別).",
	["bas_4"] = "揀完之後, 攞漂浮緊嘅立體去補充法力點同爬個樓梯塔. 用你啲咒語去幫你爬.",
	["bas_5"] = "點樣用咒語?",
	["bas_6"] = "所有咒語都會用某過數法力點先可以用. 當你有足夠法力點, 撳個咒語. 你隻手會開始發光, 代表住你開咗個咒語.",
	["bas_7"] = "開咗之後, 你仲要用佢先得. 所有咒語係靠跳去用. 睇你用咩咒語, 你一係要喺平台, 一係要喺樓梯上面跳先用到咒語. 會有指導箭嘴去幫你去用.",
	["bas_8"] = "當你爬完之後, 你會攞到3個咒語代幣, 比你去開一個咒語. 再爬多幾次去開多啲咒語. 你唔可以用喺其他級別到用其他級別嘅代幣.",
	["bas_9"] = "點樣用超級咒語?",
	["bas_10"] = "你首先要開曬所有基本咒語先可以用超級咒語. 你唔使解開超級咒語, 但佢哋要用代幣 (唔係法力點) 先用到.",
	["bas_11"] = "爬多幾次去開曬所有基本咒語. 你可以靠比賽去攞多啲代幣. 你又可以買代幣. 你一開曬所有基本咒語, 撳最左手邊嘅制或撳 'C'",
	["bas_12"] = "有啲超級咒語係計時, 同唔使跳去用. 喺用之前, 你可以喺 Alignment 公會到睇超級咒語嘅資訊. 取消一個計時咒語係唔會比返啲代幣比你",

	-- ["cla_1"] = "NORMAL TOWER",
	-- ["cla_2"] = "More alignments!",
	-- ["cla_3"] = "In the Normal Tower, in addition to Basic Tower alignments, you may also play as Gremlin, Splicer, Archon, Reaver, Heretic or even as a Muggle with no spells.",
	-- ["cla_4"] = "Those alignments are significantly harder to master than Basic Tower classes, and you may encounter more Crazy Stairs in this tower.",
	-- ["cla_5"] = "Be aware of the Architects!",
	-- ["cla_6"] = "Unlike Basic Tower, Normal Tower includes both VR and game pass Architects.",
	-- ["cla_7"] = "Architect is a special alignment, with an ability to fly. Architects have unlimited Mana and can be a help or a nuisance to other players. Architects are banned from Basic Tower only.",
	-- ["cla_8"] = "Encountering an Architect may be a blessing or a curse, and succesfully dodging Architect will require a maximum knowledge and practice of your preffered alignment skills.",
	-- ["cla_9"] = "Events and Rigs!",
	-- ["cla_10"] = "In the Normal Tower players are allowed to cast Ulitmate Events and Rigs.",
	-- ["cla_11"] = "Unlike Basic Tower, all your Ultimate spells are unlocked. You may cast Events that affect the whole staicase, or Rigs that will enchant all stairs with your chosen alignment spell.",
	-- ["cla_12"] = "Normal Tower will not be restored periodically, like Basic Tower, and it is up to the players to decide if they want messy staircase or not.",

	["cla_1"] = "普通塔",
	["cla_2"] = "更多 Alignments!",
	["cla_3"] = "喺普通塔, 除咗初級塔嘅 Alignments, 你仲可以用 Gremlin, Splicer, Archon, Reaver, Heretic, 甚至冇咒語嘅 Muggle.",
	["cla_4"] = "依啲 Alignments 係會比初級塔嘅 Alignments 更加難去精通, 你又可能喺到遇到更加瘋狂樓梯.",
	["cla_5"] = "睇住啲 Architects!",
	["cla_6"] = "唔似初級塔, 普通塔會加埋 VR 同 Architects 特權證.",
	["cla_7"] = "Architect 係一個特別嘅 Alignment, 佢哋可以飛, 有無限法力點. 佢哋可以幫你, 又可以害你. Architect 只係喺初級塔到唔可以用.",
	["cla_8"] = "遇到 Architect 一係就祝福, 一係就不幸. 要成功避開 Architect 需要有成個遊戲嘅知識同訓練你所揀嘅 Alignment.",
	["cla_9"] = "突發事件同壟斷事件!",
	["cla_10"] = "喺普通塔, 玩家可以用超級突發事件咒語同壟斷事件咒語.",
	["cla_11"] = "唔似初級塔, 你嘅所有超級咒語會解鎖. 你可以用突發事件咒語去影響成個樓梯塔, 或者壟斷事件咒語去用你用緊嘅 Alignment 嘅咒語去升級所有樓梯.",
	["cla_12"] = "普通塔唔會好似初級塔咁定時恢復, 反而會由玩家決定去要唔要混亂嘅樓梯塔.",

	--[[
	"PRO TOWER",
	"Even levels restrictions",
	"In the Pro Tower some platform spells cannot be cast on the even levels. Trap, Create Portal, Vertical Teleport, Spiral Staicase and Random Teleport can only be executed on odd levels.",
	"Drifters cannot drift those platforms neither.Affected platforms are marked with the red circle in the middle.",
	"Cursed Stairs",
	"In the Pro Tower Drones will randomly create Cursed Stairs or turn normal stairs into Cursed ones. There is 20% chance of Cursed Stairs apperance. Guide arrows will not show near Cursed Stairs.",
	"Cursed Stairs are immune to most spells. You cannot teleport through them nor use Hacker Blink spell. Furthermore, all spells that would cause Cursed Stairs destruction will not work (like Keeper's Move).",
	"Only Heretics and Admirals can restore Cursed Stairs. Purge Event and Restoration will get rid of all cursed stairs too. However Drones will always create new ones in Pro Tower.",
	"Cursed Intersections",
	"In the Pro Tower Drones will randomly create Cursed Intersections too. When Drone finds an empty Intersection, there is 20% chance of the Curse. Guide Arrows will turn to crosses to mark the intersection.",
	"Cursed Intersections prevent all platform spells, that are executed on arrows. You cannot create stairs, links nor teleport through Cursed Intersection.",
	"Only Heretics, Admirals and Drones can restore Cursed Intersections. As with Cursed Stairs, Wicked's Purge Event will remove all Curses, but during regeneration new ones will appear.",
	]]--

	["pro_1"] = "高級塔",
	["pro_2"] = "雙數層限制",
	["pro_3"] = "喺高級塔會有一啲平台咒語係唔會比你喺雙數層到用. 建立陷阱, 建立平台傳送門, 向上傳送, 螺旋樓梯同隨機傳送咒語只可以喺單數層到用.",
	["pro_4"] = "Drifters 都唔可以漂移果啲平台. 受影響嘅平台中間會有一個紅色嘅圓圈.",
	["pro_5"] = "被詛咒啲樓梯",
	["pro_6"] = "無人機喺高級塔會隨機建立被詛咒嘅樓梯或詛咒普通樓梯. 被詛咒嘅樓梯會有 20% 機會出現. 指導箭嘴唔會喺被詛咒嘅樓梯附近出現.",
	["pro_7"] = "被詛咒嘅樓梯係唔受大部份咒語影響. 你唔可以靠傳送或者 Hacker 眨梯咒語穿過佢哋. 加上所有可以摧毀被詛咒嘅樓梯嘅咒語都唔會有反應 (例如: Keeper 移動咒語).",
	["pro_8"] = "只有 Heretics 同 Admirals 可以恢復被詛咒嘅樓梯. 完全清除同完全恢復會整走全部被詛咒嘅樓梯. 但係無人機會建立新被詛咒嘅樓梯.",
	["pro_9"] = "被詛咒啲交叉點",
	["pro_10"] = "無人機喺高級塔會隨機建立被詛咒嘅交叉點. 無人機一揾到吉嘅交叉點, 佢會有 20% 機會去詛咒. 指導箭嘴會變成交叉.",
	["pro_11"] = "被詛咒嘅交叉點會唔比人用任何用喺箭嘴上面嘅平台咒語. 你唔可以建立樓梯, 能量橋或者傳送穿過被詛咒嘅交叉點.",
	["pro_12"] = "只有 Heretics, Admirals, Architects 同無人機可以恢復被詛咒嘅交叉點. Wicked 完全清除會整走全部被詛咒嘅樓梯同交叉點, 但喺自動重生會再建新嘅被詛咒嘅交叉點.",

	--[[
	"INFINITE TOWER",
	"RACE MANDATORY",
	"In the infinite tower, participating in the race is mandatory. Casual players are not allowed to cast spells and will not receive any awards for climbing. Touching the orb will just grant 10 Mana.",
	"To 'complete' infinite tower you need to join the race and try to stay on it as long as you can. You will receive rewards (if any) upon elimination.",
	"Fallen Drone",
	"Unlike classic and pro towers, Fallen Drone has a special task in the infinite tower.",
	"Each 'raise interval', Fallen Drone will create 2 new levels. Each even level will be restricted. On top of that, some stairs or intersections may even become cursed.",
	"First interval lasts for 20 seconds. Each raise will reduce the interval by half second, until the levels are created faster than they could be climbed.",
	"Eraser",
	"Eraser is a special force field that will rise together with tower and remove bottom levels. Falling behind the eraser eliminates players from the round. This is similar to rising lava in other games.",
	"Much like Fallen Drone, eraser will speed up. It will however raise steadily, rather than removing 2 levels at the same time.",
	"Stairs and platforms touched by eraser will vanish. Try to avoid the eraser for as long as you can to ensure victory.",
	]]--

	["inf_1"] = "無限塔",
	["inf_2"] = "比賽制",
	["inf_3"] = "喺無限塔一定要玩比賽. 非比賽玩家唔可以用咒語同唔會攞到任何獎勵. 去到個終點球只會比你10個法力點.",
	["inf_4"] = "去 '完成' 無限塔, 你需要參加比賽再生存得有咁耐就耐. 你會喺淘汰之後有得攞獎勵 (如果有架話).",
	["inf_5"] = "淪落無人機",
	["inf_6"] = "唔似喺初級塔, 普通塔同高級塔, 淪落無人機喺無限塔有一個特別嘅任務.",
	["inf_7"] = "每隔 '上升時間', 淪落無人機建立新2層. 每雙數層會係有咒語限制. 再加上有啲樓梯同交叉點會被詛咒.",
	["inf_8"] = "第一個上升時間會維持20秒. 每一次上升會減0.5秒, 直到建立樓層快到啲玩家爬唔切.",
	["inf_9"] = "移除者",
	["inf_10"] = "移除者係一個特殊力場, 佢會同座塔一齊上升, 同整走較底嘅樓層. 跌低過移除者會淘汰喺果個回合果啲玩家. 基本上係同上升熔岩遊戲一樣.",
	["inf_11"] = "同淪落無人機一樣, 移除者會加速. 但佢係會慢慢咁加速, 而唔係不斷同時間整走2層.",
	["inf_12"] = "移除者點到嘅樓梯同平台都會消失. 嘗試下避開個移除者, 有咁耐避咁耐去贏.",

	--[[
	"CUSTOM TOWER",
	"YOU DECIDE!",
	"In custom tower you can adjust any tower settings to your liking.",
	"Rewards in Custom Tower are halved. You will get 1 token each 12 levels and qualifying climb each 30 levels.",
	"Tower Settings",
	"By changing the tower settings you can have it your way. Choose levels, restrict even levels or even set the tower to the infinite mode.",
	"Only server owner can adjust the settings.",
	"Drone Settings",
	"You can also change the small drone setting. Adjust the max count, the min count or even disable them altoghether.",
	]]--

	["cus_1"] = "自訂塔",
	["cus_2"] = "你自己選擇!",
	["cus_3"] = "你喺自訂塔可以任你改座塔嘅設定.",
	["cus_4"] = "自訂塔會比一半獎勵. 你每12層會有1個代幣同每30層會有一個攀爬獎勵.",
	["cus_5"] = "樓梯塔設定",
	["cus_6"] = "你可以改座塔嘅設定去任你玩. 揀有幾多層, 限制住雙數層, 或者將座塔變做無限模式.",
	["cus_7"] = "只有 Server 主人先可以更改座塔嘅設定.",
	["cus_8"] = "",
	["cus_9"] = "無人機設定",
	["cus_10"] = "你都可以改啲細無人機嘅設定. 更改最多最少樓梯數, 或者直接閂曬佢哋.",
	["cus_11"] = "",
	["cus_12"] = "",

	--[[
	"By launching Crazy Stairs in VR mode you automatically become an Architect.",
	"Unlike regular players, Architects do not need to ascend the staircase. Your goal is to help or troll other players that are climbing the tower.",
	"The choice is yours. Will you be a menace or a saviour? Or do you simply want to mess around? Have fun!",
	"How do I navigate?",
	"Use your left thumbstick to move forward or backward. Tilting the left thumbstick sideways will make you move left and right instead.",
	"Use your right thumbstick to move up or down. Tilting the right thubmstick left or right will result in 'snap' turning of the camera.",
	"Try to stay outside of the staircase for better view and ease of targeting.",
	"How do I cast spells?",
	"To cast a spell, squeeze magic orb with the grip button. Laser pointer will appear that will help you target stairs and platforms for spell execution.",
	"Execute the spell with the trigger button, while still holding the grip button. Each alignment in VR has two spells. One platform and one stairs spell. Depending on the target, a proper spell will be chosen.",
	"To change an alingment in the VR mode, press and hold the trigger button, without the grip button. You can then change alignment with the corresponding hand's thumbstick.",
	]]--

	["vr_1"] = "VR",
	["vr_2"] = "Architect 模式",
	["vr_3"] = "唔似普通玩家, Architects 唔使爬座塔. 你嘅目的就喺幫人或者整蠱人.",
	["vr_4"] = "個選擇係你嘅. 你會選擇做好人定壞人? 或者你想純粹玩嘢? 開心玩!",
	["vr_5"] = "點樣喐?",
	["vr_6"] = "用你嘅左蘑菇頂去向前向後喐. 左右喐蘑菇頂去向左向右喐.",
	["vr_7"] = "用你嘅右蘑菇頂去向上向下喐. 左右喐蘑菇頂會定格喐個鏡頭.",
	["vr_8"] = "盡量喺樓梯塔外面喐去容易啲睇同對準.",
	["vr_9"] = "點樣用咒語?",
	["vr_10"] = "用捉緊制榨塞個魔法球去揀咒語. 雷射指針會出現去幫你去對準樓梯同平台.",
	["vr_11"] = "喺撳塞個 Grip 制用 Trigger 制去用咒語. 每個 Alignment 喺 VR 有2個咒語. 一個比平台, 一個比樓梯. 睇你用喺邊, 遊戲會自己揀啱果個咒語去用.",
	["vr_12"] = "唔撳 Grip 制撳塞個 Trigger 制去喺 VR 改變 Alignment. 跟住你可以喺你個別隻手到揀 Alignment.",

	["home_1"] = "MUGGLE 屋企",
	["home_2"] = "我哋嘅座右銘:\n行\n跳\n跌\n",
	--PROS:\nWalkspeed and jump power bonus at higher ranks\nBragging rights\nCONS:\nNo spells\nGets stuck easily
	["home_3"] = "好處:\n高等級會有額外移動速度同跳躍力\n吹大啲\n壞處:\n冇咒語\n好容易卡住",
	--We did not have those fancy spells in alpha stage!'\nour founder's quote
	["home_4"] = "'我哋喺發展階段係無果啲咁靚的咒語!'\n我哋嘅創辦人嘅金句",

	["oasis_1"] = "CHAMELEON 綠洲",
	["oasis_2"] = "我哋嘅座右銘:\n複製\n模仿\n驚喜\n",
	--PROS:\nCan change alignments anywhere, anytime\nCONS:\nCosts Robux\nRanking up all classes takes time
	["oasis_3"] = "好處:\n可以隨時隨地改變 Alignments\n壞處:\n要貨金 (Robux)\n上升曬全部等級需要時間",
	--'I am too lazy to come up with my own spells.'\nour founder's quote
	["oasis_4"] = "'我太過懶去諗自己啲咒語出嚟.'\n我哋嘅創辦人嘅金句",

	["nexus_1"] = "HERETIC 暗會",
	["nexus_2"] = "我哋嘅座右銘:\n你.\n唔. 會.\n通. 過.\n",
	--PROS:\nBest in pro tower\nCannot be stopped\nCONS:\nTeaming is tricky\nMana hungry
	["nexus_3"] = "好處:\n最好喺高級塔到用\n唔會被人阻止\n壞處:\n較難去組隊玩\n要用好多法力點",
	--'Banning black magic is like banning fun.'\nour founder's quote
	["nexus_4"] = "'禁黑魔法就係禁樂趣.'\n我哋嘅創辦人嘅金句",

	["guild_1"] = "THIEF 幫會",
	["guild_2"] = "我哋嘅座右銘:\n\"我借\"\n我用\n我還\n",
	--PROS:\nMana efficient\nVersatile\nCONS:\nNeeds to steal stairs\nCannot destroy crossing stairs
	["guild_3"] = "好處:\n唔用太多法力點\n萬能\n壞處:\n需要偷樓梯\n唔可以摧毀阻住嘅樓梯",
	--'It's called borrowing actually.'\nour founder's quote
	["guild_4"] = "'其實佢係叫借.'\n我哋嘅創辦人嘅金句",

	["nether_1"] = "SPECTRE 地下城",
	["nether_2"] = "我哋嘅座右銘:\n消失\n匿埋\n傳送\n",
	--PROS:\nFast spells\nPerfect for solo play\nCONS:\nCosts Robux\nNot recommended for teams
	["nether_3"] = "好處:\n咒語係好快\n最適合比個人玩\n壞處:\n要貨金 (Robux)\n唔建議同人組隊玩",
	--'Of course teleporting is safe.'\nour founder's quote (MIA)
	["nether_4"] = "'傳送當然係安全.'\n我哋嘅創辦人嘅金句 (MIA)",

	["study_1"] = "ARCHON 學所",
	["study_2"] = "我哋嘅座右銘:\n開傳送門\n???\n收益\n",
	--PROS:\nUseful Rig\nConfuses opponents\nCONS:\nHardest to learn\nRequires planning
	["study_3"] = "好處:\nRig 會好有用\n搞亂人哋\n壞處:\n最難明點玩\n需要計劃下一步",
	--'I used to rule this staircase.'\nour founder's quote
	["study_4"] = "'我以前統治過呢條樓梯.'\n我哋嘅創辦人嘅金句",

	["haven_1"] = "PATRON 天堂",
	["haven_2"] = "我哋嘅座右銘:\n幫助\n保護\n建立\n",
	--PROS:\nEasiest to learn\nTeam player\nCONS:\nUses a lot of Mana\nMay attract leechers
	["haven_3"] = "好處:\n最易上手\n團隊玩法\n壞處:\n要用好多法力點\n其他人會跟住你",
	--'Those noobs need our help!'\nour founder's quote
	["haven_4"] = "'果啲新手要我哋幫手.'\n我哋嘅創辦人嘅金句",

	["shelter_1"] = "DRIFTER 避難所",
	["shelter_2"] = "我哋嘅座右銘:\n漂移\n漂蕩\n漂浮\n",
	--PROS:\nVersatile\nTeam player\nCONS:\nRequires some parkour skills\nTricky in pro towers
	["shelter_3"] = "好處:\n萬能\n團隊玩法\n壞處:\n需要跑酷技巧\n喺高級塔會比較難用",
	--'Who needs stairs anyway? We're in space!'\nour founder's quote
	["shelter_4"] = "'邊個仲要樓梯? 我哋喺太空!'\n我哋嘅創辦人嘅金句",

	["circus_1"] = "JOKER 馬戲團",
	["circus_2"] = "我哋嘅座右銘:\n欺騙\n搞亂\n大笑\n",
	--PROS:\nMade for trolling\nFlips are very useful\nCONS:\nExpensive spells\nYou may ruin friendships"
	["circus_3"] = "好處:\n用嚟整蠱人\n倒轉樓梯好有用\n壞處:\n咒語比較貴\n你會冇曬朋友",
	--'This staircase is a joke.'\nour founder's quote
	["circus_4"] = "'依個樓梯塔係一個笑話.'\n我哋嘅創辦人嘅金句",

	["base_1"] = "KEEPER 基地",
	["base_2"] = "我哋嘅座右銘:\n移動\n轉動\n控制\n",
	--PROS:\nCan restore stairs\nCan reuse stairs\nCONS:\nRequires parkour to use correctly\nUseless without stairs
	["base_3"] = "好處:\n可以恢復樓梯\n可以重用樓梯\n壞處:\n需要跑酷技巧先可以用得啱\n冇樓梯就冇用",
	--'Stop messing up my staircase!'\nour founder's quote
	["base_4"] = "'好停搞亂我嘅樓梯塔!'\n我哋嘅創辦人嘅金句",

	["chamber_1"] = "WICKED 密室",
	["chamber_2"] = "我哋嘅座右銘:\n防止\n阻住\n摧毀\n",
	--PROS:\nCan destroy any stairs\nCan purge whole staircase\nCONS:\nOver-reliant on stairs
	["chamber_3"] = "好處:\n可以摧毀任何樓梯\n可以摧毀成座塔\n壞處:\n太過依賴樓梯",
	--'I'm not evil, there are just too many stairs.
	["chamber_4"] = "'我唔係邪惡, 只係太多樓梯啫.'\n我哋嘅創辦人嘅金句",

	["backdoor_1"] = "HACKER 後門",
	["backdoor_2"] = "我哋嘅座右銘:\n外掛\n故障\n破壞\n",
	--PROS:\nFastest alignment\nHard to follow\nCONS:\nOver-reliant on stairs\nUseless in teams
	["backdoor_3"] = "好處:\n最快嘅 Alignment\n其他人會好難跟得上\n壞處:\n太過依賴樓梯\n同人一隊玩會冇用",
	--'Fair play? There's no such thing.'\nour founder's quote
	["backdoor_4"] = "'公平咁玩? 冇依樣嘢架喎.'\n我哋嘅創辦人嘅金句",

	["hub_1"] = "SPLICER 中心",
	["hub_2"] = "我哋嘅座右銘:\n扭曲\n分裂\n連接\n",
	--PROS:\nVersatile\nGood in teams\nCONS:\nBit confusing.\nTakes time to learn"
	["hub_3"] = "好處:\n萬能\n最好同人一隊玩\n壞處:\n少少亂.\n需要時間先明點玩",
	--Never go in a straight line for too long.'\nour founder's quote
	["hub_4"] = "'千其唔好行一條直線行太耐.'\n我哋嘅創辦人嘅金句",

	["shack_1"] = "GREMLIN 小屋",
	["shack_2"] = "我哋嘅座右銘:\n旋轉\n迴轉\n催眠\n",
	--PROS:\nNo pros\nSeriously, don't use\nCONS:\nEveryone will hate you.\nEVERYONE
	["shack_3"] = "好處:\n冇好處\n我認真架, 唔好用\n壞處:\n所有人都會好憎你.\n所 有 人",
	--'Come play with me.'\nour founder's quote
	["shack_4"] = "'過嚟同我玩!'\n我哋嘅創辦人嘅金句",

	["mirror_1"] = "REAVER 鏡子",
	["mirror_2"] = "我哋嘅座右銘:\n反影\n代替\n合併\n",
	--PROS:\nMirrors can be used by other players\nCONS:\nMerge and unmerge mechanic may be confusing.
	["mirror_3"] = "好處:\n其他人都可以用鏡子\n壞處:\n合併同分開技能會好亂.",
	--'Mirrors are just doorways.'\nour founder's quote
	["mirror_4"] = "'鏡面只係一道門.'\n我哋嘅創辦人嘅金句",

	["grave_1"] = "NECROMANCER 墳墓",
	["grave_2"] = "我哋嘅座右銘:\n跟隨\n復活\n補益\n",
	--PROS:\nWorks well if other players follow your ghost.\nSpells help you and others as well.\nCONS:\nHeaviest alignment on mana.\nDifficult to get used to watching your ghost.
	["grave_3"] = "好處:\n有人跟住你隻鬼先有用.\n咒語會幫你同其他人.\n壞處:\n用得最多法力點嘅 Alignment.\n比較難去睇住你隻鬼.",
	--'We aren't actually haunting you, we just wanna be friends.'\nour founder's quote
	["grave_4"] = "'我哋唔係撞你個鬼, 我哋想同你做朋友啫.'\n我哋嘅創辦人嘅金句",

	--NEW (architect)
	["studio_1"] = "ARCHITECT 工作室",
	["studio_2"] = "我哋嘅座右銘:\n設計\n執行\n測試\n",
	--PROS:\nAbility to Fly\nDoes not use Mana\nCONS:\nCost Robux\nCannot acquire climbs
	["studio_3"] = "好處:\n可以飛\n唔使用法力點\n壞處:\n要貨金 (Robux)\n唔可以攞到攀爬獎勵",
	--'Now I rule this staircase!'\nour founder's quote"
	["studio_4"] = "'我依家係統治呢條樓梯塔果個人!'\n我哋嘅創辦人嘅金句",

	-- --Architect is not avialable in the Basic Tower.
	-- ["studio_basic"] = "Architect 唔可以喺初級塔到用",

	--"NOT AVAILABLE IN THE BASIC TOWER"
	["not_available"] = "唔可以喺初級塔到用",

	--END NEW

	--SHARED
	--Pro Tower counts as 2 climbs
	["leader_pro"] = "高級塔會比你2個攀爬獎勵",	
	--Update in: 
	["leader_update"] = "更新: ",
	--Updating...	
	["leader_updating"] = "更新緊...",
	--RANK	
	["leader_rank"] = "等級",
	--Climbs Req
	["leader_req"] = "攀爬量要求",
	--Custom tower does not support leaderboards.
	["leader_off"] = "自訂塔冇排行榜.",

	--OVERALL
	--Overall Ranks
	["over_title"] = "總等級",
	--Each acquired rank adds 1 point
	["over_desc"] = "每得到一個等級會加1分",
	--Rank
	["over_rank"] = "等級",
	--Point Req
	["over_req"] = "分數要求",
	--* Requires Chameleon OR Spectre
	["emperor_req"] = "* 需要有 Chameleon 或者 Spectre",
	--** Requires Chameleon AND Spectre
	["overmind_req"] = "** 需要有 Chameleon 同 Spectre",
	--Prefix
	["over_prefix"] = "名稱字頭",
	--Gamepass Required
	["over_passes"] = "需要\n特權證",
	--Olive - Not in Group
	["over_notgroup"] = "橄欖色 - 唔喺群組",
	--Teal - in the Group
	["over_group"] = "青藍色 - 喺群組",
	--MODERATOR - player is a moderator
	["over_mod"] = "MODERATOR - 個玩家係 Mod",
	--ADMIN - player is an admin
	["over_admin"] = "ADMIN - 個玩家係管理員", -- pwease sleazel uwu --ew wth
	--PRANK ME - Game Creator (sleazel)
	["over_owner"] = "PRANK ME - 遊戲創作者 (sleazel)",

	--OTHER
	["muggle_lead"] = "HASTY MUGGLES",
	["muggle_ranks"] = "MUGGLE 等級",

	["hacker_lead"] = "ENCRYPTED HACKERS",
	["hacker_ranks"] = "HACKER 等級",

	["wicked_lead"] = "VIOLENT WICKEDS",
	["wicked_ranks"] = "WICKED 等級",

	["keeper_lead"] = "PREPARED KEEPERS",
	["keeper_ranks"] = "KEEPER 等級",

	["joker_lead"] = "CRAZY JOKERS",
	["joker_ranks"] = "JOKER 等級",

	["drifter_lead"] = "RAPID DRIFTERS",
	["drifter_ranks"] = "DRIFTER 等級",

	["patron_lead"] = "NOBLE PATRONS",
	["patron_ranks"] = "PATRON 等級",

	["archon_lead"] = "AGILE ARCHONS",
	["archon_ranks"] = "ARCHON 等級",

	["spectre_lead"] = "FLYING SPECTRES",
	["spectre_ranks"] = "SPECTRE 等級",

	["thief_lead"] = "STEALTHY THIEVES",
	["thief_ranks"] = "THIEF 等級",

	["heretic_lead"] = "RUTHLESS HERETICS",
	["heretic_ranks"] = "HERETIC 等級",

	["necromancer_lead"] = "UNDEAD NECROMANCERS",
	["necromancer_ranks"] = "NECROMANCER 等級",

	["splicer_lead"] = "TWISTED SPLICERS",
	["splicer_ranks"] = "SPLICER 等級",

	["reaver_lead"] = "REFLECTED REAVERS",
	["reaver_ranks"] = "REAVER 等級",

	["gremlin_lead"] = "LUCKY GREMLINS",
	["gremlin_ranks"] = "GREMLIN 等級",

	["chameleon_lead"] = "SWIFT CHAMELEONS",
	["chameleon_ranks"] = "CHAMELEON 等級",

	--Today's Record
	["dailies"] = "今日紀錄",
	--Most Climbs
	["most_climbs"] = "最多攀爬量",
	--Most Race Wins
	["most_wins"] = "最多比賽勝利", 

}

--TUTORIAL (new)
module.tutorial = {

	--[[
	(old)
	["tut_big_1"] = "歡迎嚟到瘋狂樓梯 (Crazy Stairs)!",
	["tut_big_2"] = "首先去攞啲法力點.",
	["tut_big_3"] = "你可以用依個咒語去建立樓梯.",
	["tut_big_4"] = "所有咒語都要靠跳去用.",
	["tut_big_5"] = "攞呢個法力球:",
	["tut_big_6"] = "你可以用依個咒語去倒轉樓梯.",
	["tut_big_7"] = "有啲咒語喺樓梯上面先用到.",
	["tut_big_8"] = "攞呢個法力球:",
	["tut_big_9"] = "你可以用依個咒語去喐樓梯.",
	["tut_big_10"] = "喺向前箭嘴到跳去喐樓梯.",
	["tut_big_11"] = "你會喺依隻遊戲撞到勁多阻住嘅樓梯.",
	["tut_big_12"] = "你可以用依個咒語去摧毀阻住嘅樓梯.",
	["tut_big_13"] = "你可以喺下面樓梯上面跳去摧毀上面樓梯.",
	["tut_big_14"] = "攞呢個法力球:",
	["tut_big_15"] = "用依個咒語去傳送到去平台.",
	["tut_big_16"] = "喺箭嘴上面跳去傳送.",
	["tut_big_17"] = "你可能會見到一啲樓梯係唔會比你行上去.",
	["tut_big_18"] = "用依個咒語去恢復佢哋.",
	["tut_big_19"] = "恢復樓梯咒語可以喺樓梯上面或者喺佢附近嘅箭嘴上面用.",
	["tut_big_20"] = "你需要去到樓梯塔最頂攞呢個球體先可以贏. 祝你好幸!",

	["tut_select"] = "揀依個咒語.",

	["tut_small_init"] = "喺到跳去玩教學",
	["tut_small_collect"] = "攞法力球",
	["tut_small_arrow"] = "喺箭嘴上面跳",
	["tut_small_stairs"] = "喺樓梯上面跳",
	["tut_small_pellet"] = "攞終點球",
	]]--

	["tut_big_1"] = "歡迎嚟到瘋狂樓梯 (Crazy Stairs)!",
	["tut_big_2"] = "首先學點樣去變身. 喺依嗰變身墊到跳去變做 Patron!",
	["tut_big_3"] = "Patrons 可以建立樓梯, 但你需要法力點去用咒語. 呢到係一啲法力球比你.",
	["tut_big_4"] = "你可以用依嗰咒語去建立樓梯. 喺你畫面下低撳相對嘅制.",
	["tut_big_5"] = "所有咒語都要靠跳去執行.",
	["tut_big_6"] = "係咪好正呢? 依家變做去 Joker. Jokers 可以反轉樓梯.",
	["tut_big_7"] = "攞呢個法力球:",
	["tut_big_8"] = "你可以用依嗰咒語去反轉樓梯.",
	["tut_big_9"] = "有啲咒語需要喺樓梯上面用.",
	["tut_big_10"] = "依家變做去 Keeper. Keepers 可以喐樓梯.",
	["tut_big_11"] = "攞呢個法力球:",
	["tut_big_12"] = "你可以用依嗰咒語去喐樓梯.",
	["tut_big_13"] = "喺向前箭嘴到跳去喐樓梯.",
	["tut_big_14"] = "依家變做去 Wicked. Wickeds 可以摧毀樓梯.",
	["tut_big_15"] = "你喺依隻遊戲會遇到好多樓梯阻住你.",
	["tut_big_16"] = "你可以用依嗰咒語去摧毀阻住嘅樓梯.",
	["tut_big_17"] = "你可以喺下面樓梯跳去摧毀上面樓梯You can destroy above stairs, by jumping on below ones.",
	["tut_big_18"] = "依家變做去 Hacker. Hackers 可以傳送.",
	["tut_big_19"] = "攞呢個法力球:",
	["tut_big_20"] = "用依嗰咒語去傳送到去其他平台.",
	["tut_big_21"] = "喺箭嘴上面到跳去傳送.",
	["tut_big_22"] = "你需要喺樓梯塔頂攞呢嗰終點球去嬴. 祝你好運!",

	["tut_select"] = "揀呢嗰咒語.",

	["tut_small_init"] = "喺到跳去開始教學",
	["tut_small_morph"] = "喺到跳去變身",
	["tut_small_collect"] = "攞法力球",
	["tut_small_arrow"] = "喺箭嘴上面到跳",
	["tut_small_stairs"] = "喺樓梯上面到跳",
	["tut_small_pellet"] = "攞終點球",
	
	--end new

}

module.where = {

	--[[
	"Must be executed on platform. Won't work on bottom nor even levels in pro towers.",
	"Must be executed on platform's arrows.",
	"Must be executed on stairs.",
	"Must be executed on below stairs, to affect the above stairs. Works on links too.",
	"May affect both below and above stairs.",
	"Can be executed on either platform's arrows or stairs.",
	"Can be executed on either platform or stairs.",
	"Can be executed on platform's arrows or stairs on higher ranks.",
	"Can be executed anywhere.",
	"This spell does not require an execution.",
	]]--

	["platform"] = "一定要喺平台上面用. 喺高級嘅最底同雙數層唔會有反應.",
	["arrow"] = "一定要喺平台上面嘅箭嘴到用.",
	["stairs"] = "一定要喺樓梯上面用.",
	["above"] = "一定要喺下面樓梯到用先可以影響上面樓梯. 喺能量橋都可以用.",
	["dynamic"] = "有可能會影響下面同上面樓梯.",
	["both"] = "可以喺平台上面嘅箭嘴或者樓梯上面用.",
	["both2"] = "可以喺平台上面或者樓梯上面用.",
	["both3"] = "要更高等級先可以喺平台上面嘅箭嘴或者樓梯上面用",
	["anywhere"] = "可以喺邊到都用得.",
	["nowhere"] = "依個咒語唔使跳去用.",

}

module.guide = {

	--arrows
	["arrow"] = {

		--[[
		"Can be executed on an empty intersection or through non-blocking stairs",
		"Can be executed on an empty intersection or through non-blocking stairs. Rank up to Creator to cast Link in any direction."
		"Can be executed on an empty intersection, or through crossing stairs. Rank up to Banished to demolish crossing cursed stairs.",
		--new
		"Can be executed on an empty intersection, or through crossing stairs. Rank up to Lich to demolish crossing cursed stairs.",
		--end new
		"Can be executed on an empty intersection. Rank up to Infidel to execute on a cursed intersection.",
		"Can be executed on any un-cursed intersection.",
		"Can be executed on any un-cursed intersection, without a Wall or Gate in the way.",
		"Can be executed on an empty intersection, or through un-cursed crossing stairs.",
		"Can be executed on an empty intersection, or through un-cursed crossing stairs on higher ranks.",
		"Can be executed on an empty intersection only.",
		"Can be executed on an empty intersection. Ranked up Thieves can cast this spell on normal or rigged stairs."
		"Can be executed on an intersection with normal or rigged crossing stairs only.",
		"Can be executed on an intersection with any un-cursed crossing stairs only.",
		"Can be executed on any un-cursed intersection without a Bypass yet.",
		]]--
		--Examples of where guides appear
		--Drifter Surf
		["through"] = "可以喺吉嘅交叉點到用或者穿過唔係阻住嘅樓梯",

		["link"] = "可以喺吉嘅交叉點到用或者穿過唔係阻住嘅樓梯. 等級上升到 Creator 去喺任何方向用能量橋.",
		--Heretic Create Cursed Stairs
		["superforced"] = "可以喺吉嘅交叉點或者有穿過阻住嘅樓梯到用. 等級上升到 Banished 去摧毀阻住又被詛咒嘅樓梯.",
		--new
		--Necromancer Create Dual Stairs (not applied correctly)
		["superforcednecro"] = "可以喺吉嘅交叉點或者有穿過阻住嘅樓梯到用. 等級上升到 Lich 去摧毀阻住又被詛咒嘅樓梯.",
		--end new
		--Heretic Flicker
		["flicker"] = "可以喺吉嘅交叉點到用. 等級上升到 Infidel 去喺有被詛咒嘅交叉點都用得.",
		--Most
		["any"] = "可以用喺任何唔係被詛咒嘅交叉點.",
		--Archon Platform Gate
		["wall"] = "可以用喺任何唔係被詛咒嘅交叉點, 如果冇能量牆或者傳送門阻住嘅話.",
		--Patron Create Stairs
		["forced"] = "可以喺吉嘅交叉點或者有阻住又唔係被詛咒嘅樓梯都用.",
		--Is this deprecated
		["halfsoft"] = "可以用喺吉嘅交叉點, 或者喺更高嘅等級去穿過唔係被詛咒又阻住嘅樓梯.",
		--Most
		["soft"] = "只可以喺吉嘅交叉點到用.",

		["soft2"] = "可以喺吉嘅交叉點到用. 高等級 Thieves 可以用依個咒語用喺普通樓梯同 Rig (壟斷樓梯)",

		--Opposite Stairs
		["flatten"] = "可以喺一個有阻住嘅普通樓梯或者 Rig (壟斷樓梯) 嘅交叉點到用.",
		--Hack In
		["hack"] = "只可以喺有阻住又唔係被詛咒嘅樓梯到用.",
		--Bypass
		["sidepass"] = "可以喺任何唔係被詛咒又未有繞道嘅交叉點到用.",
	},

	["platform"]= {

		--[[
		"This spell has no special requirements.",
		"Can be executed in both inner and outer diagonal directions.",
		"Can be executed in perpendicular outer directions only.",
		"This spell will demolish any small mirrors already on the current level, but not the big one.",
		"Can be executed in inner diagonal directions only, without a link yet.",
		"Can be executed in both clockwise and counterclockwise directions.",
		"Can be exectued on top platforms only.",
		]]--

		--platform
		["middle"] = "依個咒語冇任何特別條件.",
		["diag"] = "可以向外向內打斜方向用.",
		["outer"] = "只可以喺垂直對外用.",
		["centre"] = "依個咒語會摧毀任何喺同一層嘅細鏡面, 但唔會摧毀大果啲.",
		["inner"] = "只可以喺向內打斜又冇條靈魂橋先可以用.",
		["prevolve"] = "可以順時針同逆時針用.",
		["top"] = "只可以喺頂層平台到用.",
	},

	["stairs"] ={

		--[[
		"Can be exectued on normal, rigged or cursed stairs.",
		"Can be executed on any stairs. Rank up to Annihilator to destroy cursed stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Hijacker to steal any un-cursed stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Controller to move any un-cursed stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Controller to move any un-cursed stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Controller to move any un-cursed stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Protector to rebuild any un-cursed stairs",
		"Can be executed on normal, flipped or rigged stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates.",
		"Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates",
		"Can be executed on normal or rigged stairs. Rank up to Prodigy to override gates",
		"Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		"Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		"Can be executed on normal or rigged stairs. Rank up to Transformer to override splices.",
		"Can be executed on normal or rigged stairs. Rank up to Nomad to spin already drifted stairs.",
		"Can be executed on normal or rigged stairs. Rank up to Nomad to drift already drifted stairs.",
		"Can be executed on normal or rigged stairs only.",
		"Can be executed on normal or rigged stairs only.",
		"Can be executed on normal or rigged stairs only.",
		"Can be executed on normal or rigged stairs only.",
		]]--

		["cursed"] = "只可以用喺普通樓梯, Rig (壟斷樓梯) 或者被詛咒嘅樓梯.",
		["all"] = "可以用喺任何樓梯. 等級上升到 Annihilator 去摧毀被詛咒嘅樓梯.",
		["steal"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Hijacker 去偷任何唔係被詛咒嘅樓梯.",
		["onedirection"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Controller 去喐任何唔係被詛咒嘅樓梯.",
		["straight"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Controller 去喐任何唔係被詛咒嘅樓梯.",
		["rotate"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Controller 去喐任何唔係被詛咒嘅樓梯.",
		["rebuild"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Protector 去重建任何唔係被詛咒嘅樓梯.",
		["flip"]= "可以用喺普通樓梯, 倒轉咗嘅樓梯, 或者 Rig (壟斷樓梯).",
		["gate"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Prodigy 去用喺有傳送門嘅樓梯.",
		["gatestr"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Prodigy 去用喺有傳送門嘅樓梯",
		["gaterot"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Prodigy 去用喺有傳送門嘅樓梯",
		["twist"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Transformer 去用喺已經扭曲咗嘅樓梯.",
		["twiststr"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Transformer 去用喺已經扭曲咗嘅樓梯.",
		["twistrot"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Transformer 去用喺已經扭曲咗嘅樓梯.",
		["spin"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Nomad 去旋轉已經漂移咗嘅樓梯.",
		["drift"] = "可以用喺普通樓梯, Rig (壟斷樓梯). 等級上升到 Nomad 去漂移已經漂移咗嘅樓梯.",
		["escalator"] = "只可以用喺普通樓梯, Rig (壟斷樓梯).",
		["oneway"] = "只可以用喺普通樓梯, Rig (壟斷樓梯).",
		["revolve"] = "只可以用喺普通樓梯, Rig (壟斷樓梯).",
		["normalrig"] = "只可以用喺普通樓梯, Rig (壟斷樓梯).",
		["corkscrew"] = "只可以用喺普通樓梯, Rig (壟斷樓梯).",

	},

	["above"] = {

		--[[
		"Can be exectued below normal, rigged or cursed stairs.",
		"Can be executed below any stairs. Rank up to Annihilator to destroy above cursed stairs.",
		"Can be executed below normal or rigged stairs. Rank up to Hijacker to steal any above un-cursed stairs.",
		"Can be executed below normal, flipped or rigged stairs.",
		"Can be executed below normal or rigged stairs. Rank up to Controller to move any above un-cursed stairs.",
		"This spell lets you bypass any un-cursed blocking stairs.",
		"Can be executed below normal or rigged stairs only.",
		]]--

		["cursed"] = "可以喺下面普通樓梯, Rig (壟斷樓梯) 或者被詛咒嘅樓梯到用.",
		["all"] = "可以喺任何下面樓梯到用. 等級上升到 Annihilator 去摧毀上面又被詛咒嘅樓梯.",
		["steal"] = "可以喺下面樓梯或者 Rig (壟斷樓梯) 到用. 等級上升到 Hijacker 去偷任何上面又唔係被詛咒嘅樓梯.",
		["flip"]= "可以喺下面普通樓梯, 倒轉咗嘅樓梯, 或者 Rig (壟斷樓梯) 到用.",
		["onedirection"] = "可以喺下面普通樓梯, Rig (壟斷樓梯) 到用. 等級上升到 Controller 去喐任何上面又唔係被詛咒嘅樓梯.",
		["slide"] = "依個咒語可以比你兜過任何唔係被詛咒又唔阻住嘅樓梯.",
		["normalrig"] = "只可以喺下面普通樓梯或者壟斷樓到用.",

	},

	["dynamic"] = {
		--hack, twister, bender and flipper
		--[[
		"Can be executed on or below normal, flipped or rigged stairs. If above execution fails for any reason, below stairs will be affected instead.",
		"Can be executed on or below any normal or rigged stairs. Spell will be applied to both above and below stairs.",
		"Can be executed on normal or rigged stairs. If there are blocking un-cursed stairs above, they will be removed.",
		]]--

		['flip'] = "可以喺下面普通樓梯, 倒轉咗嘅樓梯, 或者 Rig (壟斷樓梯) 到用. 如果有咩事用唔到喺上面樓梯, 咁就會用喺下面.",
		['normalrig'] = "可以喺普通樓梯或者 Rig (壟斷樓梯) 到用. 咒語會用喺上面同下面樓梯.",
		['slide'] = "可以喺普通樓梯或者 Rig (壟斷樓梯) 到用. 如果上面有阻住又唔係被詛咒嘅樓梯, 佢哋會被摧毀.",
	},

	["both"] = {

		--[[
		"Can be executed on any stairs or on platform's arrow with any adjacent stairs. Rank up to Admiral to restore cursed stairs.",
		"Can be executed on twisted stairs only or on platform's arrow with adjacent twisted stairs. Rank up to Combiner to restore de-attached stairs from platform.",
		"Can be executed on normal, rigged or ghosted stairs or on platfrom's arrow with adjacent normal, rigged or ghosted stairs.",
		"Can be executed on an intersection with normal or rigged opposite stairs. Can be executed on stairs too."
		]]--

		['restore'] = "可以用喺任何樓梯或者平台上面附近有樓梯嘅箭嘴. 等級上升到 Admiral 去恢復被詛咒嘅樓梯.",
		['deltwists'] = "只可以用喺已經扭曲咗嘅樓梯或者平台上面附近有扭曲咗嘅樓梯嘅箭嘴. 等級上升到 Combiner 去恢復同平台斷開咗嘅樓梯.",
		['ghosted'] = "可以用喺普通樓梯, Rig (壟斷樓梯) 或者鬼化咗嘅樓梯或者喺平台上面附近有普通樓梯, Rig (壟斷樓梯) 或者鬼化咗嘅樓梯嘅箭嘴到用.",
		["flatten"] = "可以用喺對面有普通樓梯或者 Rig (壟斷樓梯) 嘅交叉點. 都可以用喺樓梯到",

		--[[
		"Patron's Create Stairs (when used on arrows) or Shrink Stairs (when used on stairs)",
		"Archon's Platform Gate (when used on arrows) or Gate Stairs (when used on stairs)",
		"Thief's Place Stairs (when used on arrows) or Steal Stairs (when used on stairs)",
		"Necromancer's Create Dual Stairs (when used on arrows) or Undead Stairs (when used on stairs)",
		"Hacker's Hack-In Stairs (when used on arrows) or Escalator (when used on stairs)",
		"Keeper's Restore Stairs (when used on arrows) or Move/Rotate Stairs (when used on stairs)",
		"Splicer's Split Opposite Stairs (when used on arrows) or Twist Stairs (when used on stairs)",
		"Wicked's Wall without a Link (when used on arrows) or Destroy Stairs (when used on stairs)",
		"Joker's Create Fake Stairs (when used on arrows) or Flip/Unflip Stairs (when used on stairs)",
		"Spectre's Create Phantom Stairs (when used on arrows) or Ghost/UnGhost Stairs (when used on stairs)",
		"Reaver's Create Mirrored Stairs (when used on arrows) or One-Way Stairs (when used on stairs)",
		"Heretic's Curse Intersection without Flicker (when used on arrows) or Curse/unCurse Stairs (when used on stairs)",
		]]--

		--NEW
		["archpatron"] = "Patron 建立樓梯 (用喺箭嘴) 或者 縮細樓梯 (用喺樓梯)",
		["archarchon"] = "Archon 建立平台傳送門 (用喺箭嘴) 或者 建立傳送門 (用喺樓梯)",
		["archthief"] = "Thief 放走樓梯 (用喺箭嘴) 或者 偷走樓梯 (用喺樓梯)",
		["archnecro"] = "Necromancer 建立雙重樓梯 (用喺箭嘴) 或者 移除樓梯靈魂 (用喺樓梯)",
		["archhacker"] = "Hacker 入侵樓梯 (用喺箭嘴) 或者 電梯 (用喺樓梯)",
		["archkeeper"] = "Keeper 恢復樓梯 (用喺箭嘴) 或者 移動/轉動樓梯 (用喺樓梯)",
		["archsplicer"] = "Splicer 分開對面樓梯 (用喺箭嘴) 或者 扭曲連接樓梯 (用喺樓梯)",
		["archwicked"] = "Wicked 冇能量橋嘅能量牆 (用喺箭嘴) 或者 摧毀樓梯 (用喺樓梯)",
		["archjoker"] = "Joker 建立假樓梯 (用喺箭嘴) 或者 反轉/反反轉樓梯 (用喺樓梯)",
		["archspectre"] = "Spectre 建立幻影樓梯 (用喺箭嘴) 或者 鬼化/去鬼化樓梯 (用喺樓梯)",
		["archreaver"] = "Reaver 建立鏡面樓梯 (用喺箭嘴) 或者 單向樓梯 (用喺樓梯)",
		["archheretic"] = "Heretic 詛咒交叉點 (用喺箭嘴) 或者 詛咒樓梯/解除樓梯詛咒 (用喺樓梯)",

	},

	['both2'] = {

		--[[
		"Can be excuted on gated stairs only. Rank up to Disciple to use this spell to remove Platform's gates.",
		"Gremlin's Revolve Platform (when used on platform) or Revolve Stairs (when used on stairs)",
		"Drifter's Elevator (when used on platform) or Random Drift Stairs (when used on stairs)",
		]]--

		['delsplits'] = "只可以用喺有傳送門嘅樓梯. 等級上升到 Disciple 去用依個咒語去整走平台傳送門.",

		["archgremlin"] = "Gremlin 旋轉平台 (用喺平台) 或者 迴轉樓梯 (用喺樓梯)",
		["archdrifter"] = "Drifter 𨋢 (用喺平台) 或者 隨機漂移樓梯 (用喺樓梯)",
	},

	['both3'] = {

		--"Can be executed on an empty intersection only. Rank up to cast this spell on Normal or Rigged stairs too."

		["soft2"] = "只可以喺吉嘅交叉點到用. 等級上升去用依個咒語用喺普通樓梯同 Rig (壟斷樓梯)"
	},

	['anywhere'] = {
		['anywhere'] = "依個咒語可以喺邊到都用得.",
	},

	["nowhere"] = {
		['slide'] = "依個咒語唔使跳去用.",

	},

}



module.spells.manacosts = {
	"0 個法力點",
	"1 個法力點",
	"2 個法力點",
	"3 個法力點",
	"4 個法力點", 
	"0 個法力點 + 樓梯",
	"1 個法力點 + 樓梯",
	"2 個法力點 + 樓梯",
	"3 個法力點 + 樓梯", 
	"", 
	"10 個法力點" 
}

module.spells.tokencosts = {

	"1 個代幣",
	"2 個代幣",
	"3 個代幣",

	["chameleonrigevent"] = "2 多用途代幣",
	["unlock"] = "(用3個代幣去解鎖)",
}

module.serverfeedback = {
	--this part will not put the original text
	--failed spell (local)

	["nomana"] = "唔夠法力點!",
	["notokens"] = "唔夠代幣!",
	["coolwait"] = "你依家唔可以用壟斷事件或者突發事件, 等一陣先.",
	["nomirror"] = "你需要同隻鬼合併去喺鏡面上面行.",
	--new
	["noreflected"] = "你唔可以喺 Reflected 用依個咒語.",
	["noflyarch"] = "你唔可以喺 Possessed, Hypnotized 或者 Reflected 用 Architect 去飛",
	["noblackhole"] = "你唔可以喺 Possessed, Hypnotized 或者 Reflected 用 Black Hole 技能",
	--end new
	["regenused"] = "再生法力點已經用過一次.",

	--failed spell (server)
	["unknown"] = "不明錯誤.", --this should not show for normal players, only exploiters
	["lockedspell"] = "依個咒語未解開!",
	["possessed"] = "你唔可以喺被人詛咒果陣用咒語.",
	["spelllock"] = "你依家唔可以用咒語.",
	["nothere"] = "你唔可以喺教學用依個咒語.",
	["onlyracers"] = "只有比賽玩家先可以用咒語.",
	--["cancelfirst"] = "You need to cancel current spell first...", --removed
	["stashfull"] = "你嘅樓梯竇滿咗.",
	["stashempty"] = "你要偷樓梯先可以用依個咒語.",
	["ultwait"] = "另一個超級咒語執行緊. 等一陣先.",
	["notdefault"] = "無人機要去返普通模式先. 等一陣先.",
	["noreshuffle"] = "揀咗重新排整模式先!",
	["oneoverload"] = "你唔可以開幾個法力過載.",
	["cursed"] = "依個樓梯係被人詛咒咗!",
	["cursed2"] = "被詛咒嘅樓梯阻住咗!",
	["blocked"] = "依個交叉點係被人詛咒咗.",
	["locked"] = "依個樓梯係鎖咗.",
	["platformlocked"] = "目標平台係鎖咗.",
	["normalrig"] = "依個咒語只可以用喺普通樓梯或者 Rig (壟斷樓梯).",
	["noway"] = "樓梯阻住咗. (佢有可能係隱形)",
	["noway2"] = "對面樓梯阻住咗. (佢有可能係隱形)",
	["noplatform"] = "你揀嘅方向揾唔到有平台.",
	--NEW
	["nopass"] = "依個咒語只可以喺樓梯側邊到用.",
	--END NEW
	["pass"] = "已經有繞道.",
	["link"] = "已經有能量橋.",
	["noblink"] = "你只可以眨過阻住嘅樓梯.",
	["noblink2"] = "你唔可以喺同上面樓梯斷開咗嘅樓梯到用眨梯.",
	["noflip"] = "只有普通樓梯, 倒轉咗嘅樓梯或者 Rig (壟斷樓梯) 先可以反轉.",
	["nothingtocopy"] = "冇樓梯可以被比你同你隻鬼去複製.",
	["wrongdirection"] = "你唔可以喺果個方向用依個咒語.",
	["notfound"] = "揾唔到有樓梯.",
	["nocursedblink"] = "你唔可以眨過被詛咒嘅樓梯.",
	["nostairs"] = "依到冇樓梯.",
	["noground"] = "依個咒語唔可喺最底層到用.",
	["oddonly"] = "依個咒語唔可以喺依一層到用.",
	["noabove"] = "上面揾唔到有樓梯.",
	["lock"] = "你依家唔可以用咒語",
	--["outdrift"] = "Outside drift can only be created on the outer platforms.", --removed
	["cantgate"] = "依個方向封鎖咗.",
	["wall"] = "已經有能量牆.",
	["nocurse"] = "只有普通樓梯, 被詛咒嘅樓梯或者 Rig (壟斷樓梯) 先可以被詛咒/解除詛咒.",
	["nogate"] = "依個樓梯冇傳送門.",
	--NEW
	["noghost"] = "依個咒語只可以喺普通樓梯, Rig (壟斷樓梯), 被鬼化嘅樓梯.",
	["wrongplace"] = "另一個樓梯要喺遊戲範圍內.",
	["archrace"] = "Architects 唔可以同人比賽!",
	--["noobrace"] = "你唔可喺教學同人比賽!", deprecated
	["toolate"] = "有人已經比賽緊, 等一陣再試.",
	["blockedplit"] = "目標交叉點係被人詛咒.",
	--END NEW
	["cursedtarget"] = "果個方向有被詛咒嘅樓梯.",
	["lockedother"] = "未可以建立樓梯住, 另一個樓梯鎖住咗.",
	["failedgate"] = "分開樓梯失敗咗.",
	["notwist"] = "依個樓梯冇被扭曲.",
	["wrongmove"] = "唔可以喐樓梯出遊戲範圍.",
	["blockedmove"] = "唔可以喐樓梯, 目標交叉點喺被詛咒嘅.",
	["lockedmove"] = "未可以喐樓梯, 阻住嘅樓梯鎖住咗.",
	["normal"] = "依個樓梯係普通嘅.",
	["lockedinter"] = "依個交叉點鎖住咗.",
	["toponly"] = "'叫終點球'咒語只可以喺最頂層到用.",
	["duplicatemirror"] = "依一層已經有鏡面.",
	["norestore"] = "Thief 鐃道同螺旋樓梯唔可以被恢復.",

	--higher rank required
	["admiral2"] = "等級上升到 Admiral 去解除樓梯詛咒.",
	["admiral"] = "等級上升到 Admiral 去解除交叉點詛咒.",
	["infidel"] = "等級上升到 Infidel 去喺被詛咒嘅交叉點用輕彈.",
	["banished"] = "等級上升到 Banished 去摧毀阻住又被詛咒嘅樓梯.",
	["annihilator"] = "等級上升到 Annihilator 去摧毀被詛咒嘅樓梯.",
	["disciple"] = "等級上升到 Disciple 去整走平台傳送門.",
	--NEW
	["nomad1"] = "等級上升到 Nomad 去旋轉任何唔係被詛咒嘅樓梯.",
	["nomad2"] = "等級上升到 Nomad 去漂移已經漂移咗嘅樓梯.",
	--END NEW
	["prodigy"] = "等級上升到 Prodigy 去覆蓋傳送門.",
	["traveller"] = "等級上升到 Traveller 去再上升昇降機.",
	["controller"] = "等級上升到 Controller 去喐任何唔係被詛咒嘅樓梯.",--*
	["replica"] = "等級上升到 Replica 去用依個咒語去鬼分開.",--*
	--NEW
	["skeleton"] = "等級上升到 Skeleton 去喺用依個咒語去移除詛咒.",
	--END NEW
	["hijacker"] = "等級上升到 Hijacker 去偷走任何唔係被詛咒嘅樓梯.",
	["transformer"] = "等級上升到 Transformer 去扭曲連接已經扭曲咗嘅樓梯.",
	["strider"] = "等級上升到 Strider 去雙重上升昇降機.",
	["lich"] = "等級上升到 Lich 去摧毀阻住又被詛咒嘅樓梯.",
	["creator"] = "等級上升到 Creator 去喺任何方向建立能量橋.",
	["protector"] = "等級上升到 Protector 去重建任何唔係被詛咒嘅樓梯.",
	["robber"] = "等級上升到 Robber 去喺樓梯上用依個咒語.",

	--rig activation
	["keeperrig"] = "樓梯喐緊!",
	["hackerrig"] = "樓梯故障咗!",
	["jokerrig"] = "樓梯倒轉咗!",
	["wickedrig"] = "樓梯冧緊!",
	["spectrerig"] = "樓梯鬼化咗!",
	["notspectrerig"] = "樓梯 冇 鬼化到!",
	["patronrig"] = "你攞到 1 個法力點, 係由 %s 比你!",
	["thiefrig"] = "%s 偷走咗你 1 個法力點!",
	["mythiefrig"] = "你喺 %s 偷咗 1 法力點",
	["notthiefrig"] = "%s 唔再係 Thief - 冇偷到法力點.",
	["leftthiefrig"] = "Thief 離開咗個遊戲 - 冇偷到法力點.",
	["hereticrig"] = "你被人詛咒!",
	["archonrig"] = "瞬間轉移!",
	["drifterrig"] = "樓梯轉緊!",
	["splicerrig"] = "樓梯扭曲緊!",
	["necrorig"] = "樓梯消失緊!",
	["reaverrig"] = "你被人反射!",
	["gremlinrig"] = "你被人催眠!",
	["reveal"] = "你發現隱形樓梯!",

	--drifer lifts
	["boosted"] = "加強部𨋢!",
	["noboost"] = "冇得加強, 上面冇平台.",
	["noupplatform"] = "冇得加強, 上面冇平台.",

	--mana overload
	["overstarted"] = "你開咗法力過載!",
	["overended"] = "法力過載完咗.",

	--mana share
	["2minshare"] = "最少要有 2 個法力點...",
	["noshare"] = "附近冇玩家去比法力點...",
	["noinf"] = "你唔可以分享無限個法力點!",
	["toomuch"] = "%s 滿咗法力點!",
	["shared"] = "比咗法力點比 %s!",
	["received"] = "%s 比咗法力點比你!",

	--prompts
	--["scancel"] = "Cancel your spell to change alignments.", --removed
	["morph"] = "喺依到跳去變 %s!",
	["race"] = "喺依到跳去開一埸比賽.",
	["norace"] = "無限模式會自動開埸比賽.",

	--misc
	["secret"] = "揾到隱藏徽章!",
	["unlocked"] = "咒語解鎖!",

	--chameleon exceptions	
	["chamtutorial"] = "你唔可以喺教學用 CHAMELEON!",
	["champossessed"] = "你唔可以喺被人詛咒用 CHAMELEON.",
	["chamhypnotised"] = "你唔可以喺催眠用 CHAMELEON.",
	["chamreflected"] = "你唔可以喺反射用 CHAMELEON.",
	--["chamspell"] = "Please execute or cancel current spell first.", --removed
	["morphpossessed"] = "你唔可以喺被人詛咒轉 Alignment.",
	["morphhypnotised"] = "你唔可以喺催眠轉 Alignment.",
	["morphreflected"] = "你唔可以喺反射轉 Alignment.",
	["bannedclass"] = "%s 唔可以喺初級塔到用",

	["nocode"] = "入咗個代碼先.",
	["invalid"] = "依個代碼係錯.",
	["old"] = "依個代碼唔可以再用.",
	["basic_arch"] = "你唔可以喺初級塔到免費試用 Architect",
	["accepted"] = "代碼接受.",

	--free demos
	["tryspectre"] = "你有10分鐘去用 Spectre! 唔好離開個 Server.",
	["endspectre"] = "Spectre 試用期會喺1分鐘後完!",
	["trycham"] = "你有10分鐘去用 Chameleon! 唔好離開個 Server.",
	["new20pass"] = "增加咗法力容量!",
	["newchampass"] = "你可以喺攀爬果陣轉 Alignment!",
	--NEW
	["newarchpass"] = "你依家可以做 ARCHITECT!",
	["tryarch"] = "你有10分鐘去用非 VR Architect! 唔好離開個 Server.",
	["endarch"] = "非 VR Architect 試用期會喺1分鐘後完!",
	--END NEW
	["newspectrepass"] = "你依家可以做 SPECTRE!",
	["endcham"] = "Chameleon 試用期會喺1分鐘後完!",
	["trymana"] = "你有10分鐘去用更多容量! 唔好離開個 Server.",
	["endmana"] = "更多容量試用期會喺1分鐘後完!",


	["used"] = "你用過依個代碼.",
	["tooshort"] = "你嘅訊息太短所冇傳送出去.",
	["sent"] = "傳送咗你嘅訊息, 多謝.",

	--NEW
	['noobteleport'] = "完成教學去轉樓梯塔!",
	--['noobmorph'] = "完成教學去可以變身!", deprecated
	['noobnocode'] = "完成教學去用代碼!",
	['noobchameleon'] = "完成教學去用 Chameleon!",

	--GIFTING
	['notingame'] = "果個玩家離開咗遊戲, 你唔可以比個特權證!",
	['alreadyowns'] = "果個玩家已經有果個特權證.",
	['gotit'] = "你攞到 %s 特權證, 由 %s 比你",
	['given'] = "%s 攞到 %s 特權證!",
	--END NEW

	--custom tower feedbacks
	["notinrace"] = "你唔可以喺比賽期間轉去無限模式!",
	["notinreg"] = "你唔可以喺完全重生期間轉去無限模式!",
	["infinite"] = "Server 依家係無限模式!",
	["classic"] = "Server 依家係普通模式",
	["casual"] = "普通玩家依家可以用咒語!",
	["nocasual"] = "普通玩家冇得再用咒語",
	["purge"] = "完全清除會喺普通模式完全重生!",
	["nopurge"] = "完全清除唔會喺普通模式完全重生!",
	["noevens"] = "雙數層唔可以用某啲咒語",
	["evens"] = "雙數層唔可以用全部咒語",
	["orbmoves"] = "終點球會隨機自己喐!",
	["orbstopped"] = "終點球唔會隨機自己喐!",
	["infreg"] = "樓梯塔會喺完咗無限模式回合完全重生!",
	["noinfreg"] = "樓梯塔唔會喺完咗無限模式回合完全重生!",
	["drones"] = "開咗細無人機!",
	["nodrones"] = "閂咗細無人機!",
	["dronefix"] = "無人機會恢復樓梯!",
	["nodronefix"] = "無人機唔會恢復樓梯!",
	["droneunlock"] = "無人機會整走被詛咒嘅交叉點!",
	["nodroneunlock"] = "無人機唔會整走被詛咒嘅交叉點!",
	["droneuncurse"] = "無人機會恢復被詛咒嘅樓梯!",
	["nodroneuncurse"] = "無人機唔會恢復被詛咒嘅樓梯",
	["dronemove"] = "無人機會喺普通模式喐樓梯!",
	["nodronemove"] = "無人機唔會喺普通模式喐樓梯!",
	["dronespin"] = "無人機會喺普通模式旋轉樓梯!",
	["nodronespin"] = "無人機唔會喺普通模式旋轉樓梯!",
	["noinput"] = "入啲嘢!",
	["nonumber"] = "入一個數!",
	["notrace"] = "你唔可以喺比賽期間改座塔嘅層數!",
	["notultimate"] = "你唔可以喺超級咒語期間改座塔嘅層數!",
	["notregen"] = "你唔可以喺完全重生期間改座塔嘅層數!",
	["wait"] = "改緊樓梯塔樓層數, 等一陣先...",
	["duration"] = "比賽時限改變咗 (唔會影響依家嘅比賽)",
	["init"] = "無限模式預設上升時間改變咗",
	["reduction"] = "無限模式減上升時間改變咗",
	["mininf"] = "最細上升時間改變咗",
	["cooldown"] = "壟斷事件同突發事件冷卻時間改變咗",
	["speed"] = "細無人機移動速度改變咗",
	["spin"] = "細無人機用咒語速度改變咗",
	["max"] = "最多樓梯量改變咗",
	["min"] = "最少樓梯量改變咗",
	["curse"] = "無人機詛咒樓梯嘅機會改變咗",
	["block"] = "無人機詛咒交叉點嘅機會改變咗",



}

module.serverbroadcast = {
	["pranked"] = "%s 整蠱咗 %s!",
	["found"] = "%s 揾到 %s 嘅隱形樓梯!",
	["disco"] = "%s 喺到享受緊 %s 嘅 Disco 音樂.",
	["trap"] = "%s 跌咗落 %s 嘅陷阱.",
	["obby"] = "%s 試緊 %s 嘅跑酷.",
	["default"] = "無人機去到返普通模式.",
	["reg"] = "樓梯塔完全重生緊.",
	["done"] = "樓梯塔完全重生完.",
	["union"] = "%s 同佢隻鬼合併咗!",
	["eliminated"] = "%s 被淘汰.",
	["won"] = "%s 贏咗個比賽!",
	--["falsestart"] = "False Start", --removed
	--["countdown"] = "Race in %d seconds!", --removed
	--["noplayers"] = "No racing players, infinite mode will not start!", --removed
	["nojoin"] = "閂咗個比賽 - 冇人可以再參加.",
	--["allfalse"] = "All players have False Started!", --removed
	["safety"] = "樓梯塔樓層數改變咗, 依埸比賽唔會開始.",
	["leader"] = "%s 爬第一!",
	["toolate"] = "冇人可以喺限時之內去到最頂!",
	--["go"] = "GO!", --removed
	["over"] = "比賽完咗!",

	--NEW
	--honestly not sure if 隻揪 is allowed
	["newrace"] = "%s 開咗埸比賽 - 同佢隻揪!",
	["joined"] = "%s 入咗比賽!",
	["2min"] = "冇人同 %s 隻揪!",
	["infstart"] = "無限模式比賽開始咗!"

	--END NEW

}

module.localfeedback = {

	--["cancel"] = "Cancel other spell first!", --removed
	["nomana"] = "唔夠法力點!",
	["notokens"] = "唔夠代幣!",
	["unlocked"] = "咒語解鎖咗!",
	["maxmana"] = "你已經滿咗法力點!",
	["nopurchase"] = "你唔需要喺教學買法力點!",
	["notinbasic"] = "唔可以喺初級塔到用突發事件咒語",
	--NEW 
	["limitset"] = "你開咗法力點限制 - 阻止咗你去買.", --for refill mana
	["hasarchitect"] = "你已經有 Architect 特權證!",
	--END NEW
	["haschameleon"] = "你已經有 Chameleon 特權證!",
	["hasspectre"] = "你已經有 Spectre 特權證!",
	["hasmana"] = "你已經有 Bigger Storage 特權證!",
	["nomuggle"] = "你以為 Muggle 有一啲隱藏嘅超級咒語, 但係佢係冇架.",
	["nonone"] = "你以為 None 有一啲隱藏嘅超級咒語, 但係佢係冇架.",
	["nounlocks"] = "開曬全部基本咒語去用超級咒語!",
	["onetoken"] = "你攞到一個 %s 咒語代幣!",
	["moretokens"] = "你攞到一啲 %s 咒語代幣!",
	["music"] = "成功改到音樂.",
	["nomusic"] = "音樂加載唔到.",
	["noteleport"] = "傳送失敗!", 
	["norefresh"] = "你未可以刷新.",

	--NEW
	["failedjoin"] = "入唔到比賽.",
	["nounion"] = "你唔可以用鬼聯盟.",
	--END NEW

}


--NEW (redone)
module.switchon = {

	["JOKER1"] = "你唔會再露隱形樓梯.",
	["WICKED1"] = "你唔會再觸發下面嘅 Wicked Rigs.",
	["KEEPER1"] = "你唔會再觸發下面嘅 Keeper Rigs.",
	["SPECTRE1"] = "你唔會再觸發下面嘅 Spectre Rigs.",
	["HACKER1"] = "電樓唔會對你有影響.",
	["HACKER2"] = "電樓同 Rigs 唔會對你有影響.",
	["ARCHON1"] = "只有向上嘅傳送門會傳送你.",
	["DRIFTER1"] = "你唔會再觸發下面嘅 Drifter Rigs.",
	["SPLICER1"] = "你唔會再觸發下面嘅 Splicer Rigs.",
	--["REAVER1"] = "You will no longer trigger below Reaver Rigs.", --removed
	--["GREMLIN1"] = "附近嘅螺絲形樓梯唔會喐.", --removed
	["NONE"] = "所有特殊效果唔會影你.",

}

module.switchoff = {

	["JOKER1"] = "你會露隱形樓梯.",
	["WICKED1"] = "你會觸發下面嘅 Wicked Rigs.",
	["KEEPER1"] = "你會觸發下面嘅 Keeper Rigs.",
	["SPECTRE1"] = "你會觸發下面嘅 Spectre Rigs.",
	["HACKER1"] = "電樓會對你有影響.",
	["HACKER2"] = "電樓同 Rigs 會對你有影響.",
	["ARCHON1"] = "所有唔係向下嘅傳送門會傳送你.",
	["DRIFTER1"] = "你會觸發下面嘅 Drifter Rigs.",
	["SPLICER1"] = "你會觸發下面嘅 Splicer Rigs.",
	--["REAVER1"] = "You will now trigger below Reaver Rigs.", --removed
	--["GREMLIN1"] = "附近嘅螺絲形樓梯會喐.", --removed
	["NONE"] = "所有特殊效果會影你.",
}
--END NEW

local timedSpell = "%s 用咗 %s 咒語!"

module.timedspells = {}


module.eventspells = {

	["patronrigevent"] = "%s 用送法力點咒語去壟斷所有普通樓梯!",
	["patronevent"] = "%s 用普通樓梯去填滿座塔!",
	["patronaltevent"] = "%s 縮細所有普通樓梯!",

	["jokerrigevent"] = "%s 用反轉咒語去壟斷所有普通樓梯!",
	["jokerevent"] = "%s 隱藏咗所有普通樓梯!",
	["jokeraltevent"] = "%s 反轉所有普通樓梯!",

	["wickedrigevent"] = "%s 用摧咒語去壟斷所有普通樓梯!",
	["wickedevent"] = "%s 摧毀所有普通樓梯!",
	["wickedaltevent"] = "%s 摧毀 所 有 樓樓!",

	["keeperrigevent"] = "%s 用隨機移動咒語去壟斷所有普通樓梯!",
	["keeperevent"] = "%s 重新排整所有普通樓梯!",
	["keeperaltevent"] = "%s 恢復所有樓梯!",

	["spectrerigevent"] = "%s 壟斷所有普通樓梯去50%機會鬼化樓梯!",
	["spectreevent"] = "%s 幻影重新排整所有普通樓梯!",
	["spectrealtevent"] = "%s 鬼化所有普通樓梯!",

	["hackerrigevent"] = "%s 用故障咒語去壟斷所有普通樓梯!",
	["hackerevent"] = "%s 將所有普通樓梯變成電樓!",
	["hackeraltevent"] = "%s 將所有普通樓梯變成向上電樓!",

	["thiefrigevent"] = "%s 用偷法力點咒語去壟斷所有普通樓梯!",
	["thiefevent"] = "%s 鏟平所有普通樓梯!",
	["thiefaltevent"] = "%s 喺所有樓層建立蹺道!",

	["archonrigevent"] = "%s 用穿過咒語去壟斷所有普通樓梯!",
	["archonevent"] = "%s 隨機喺普通樓梯建立傳送門!",
	["archonaltevent"] = "%s 喺普通樓梯建立向上傳送門!",

	["drifterrigevent"] = "%s 用旋轉咒語去壟斷所有普通樓梯!",
	["drifterevent"] = "%s 隨機漂移所有普通樓梯!",
	["drifteraltevent"] = "%s 拎起所有普通樓梯!",

	["hereticrigevent"] = "%s 用詛咒咒語去壟斷所有普通樓梯!",
	["hereticevent"] = "%s 分裂所有普通樓梯!",
	["hereticaltevent"] = "%s 詛咒所有普通樓梯!",

	["splicerrigevent"] = "%s 用扭曲連接咒語去壟斷所有普通樓梯!",
	["splicerevent"] = "%s 扭曲連接所有普通樓梯!",
	["spliceraltevent"] = "%s 分開所有普通樓梯!",

	["necromancerrigevent"] = "%s 用移除靈魂咒語去壟斷所有普通樓梯!",
	["necromancerevent"] = "%s 用冇靈魂嘅樓梯去填滿座塔!",
	["necromanceraltevent"] = "%s 移除所有普通樓梯嘅靈魂!",

	["gremlinrigevent"] = "%s 用催眠咒語去壟斷所有普通樓梯!",
	["gremlinevent"] = "%s 迴轉所有普通樓梯!",
	["gremlinaltevent"] = "%s 用電車樓梯去填滿座塔!",

	["reaverrigevent"] = "%s 用反射咒語去壟斷所有普通樓梯!",
	["reaverevent"] = "%s 將普通樓梯隨機變成單向樓梯!",
	["reaveraltevent"] = "%s 將普通樓梯變成玻璃樓梯!",

	["newmode"] = "%s 將無人機轉做 %s 模式!",

	["chameleonrigevent"] = "%s 用神秘咒語去壟斷所有普通樓梯!"
}

module.spells.extras = {

	["Prompt"] = "撳下面嘅咒語去睇點用",
	["Title1"] = "基本咒語",
	["Title2"] = "獨特超級咒語",
	["Title3"] = "共享超級咒語同基本咒語",
	["ManaCost"] = "法力點: %s", 
	["TokenCost"] = "代幣: %s", 
	["Special"] = "特別要求: %s",
	["Execution"] = "點執行: %s",
	["Description"] = "簡介: %s",
	["basic"] = "基本咒語",
	["ultimate"] = "超級咒語",
	["unlock"] = "0 (3 個去解鎖)",
	["none"] = "冇特別要求",

	--NEW
	["LeftHand"] = "左手",
	["RightHand"] = "右手",

}

module.gui.mana = {

	["mana"] = "法力點", --main name
	["ghost"] = "鬼魂",
	["spirit"] = "幽靈", --only for spirit spectres
	["welcome"] = "歡迎",
	["drones"] = "無人機",
	["orb"] = "法力球",
	["refill"] = "補充", --for all 2nd rank bonuses
	["overload"] = "過載",
	["steal"] = "偷",
	["gift"] = "送",
	["share"] = "分享",
	["prank"] = "整蠱",
	["possession"] = "詛咒",
	["ritual"] = "儀式",
	["purge"] = "摧毀",
	["blessing"] = "祝福",
	--["hack"] = "HACK", --removed
	["stash"] = "竇",
	["backdoor"] = "後門",
	["chamber"] = "密室",
	["base"] = "基地",
	["circus"] = "馬戲團",
	["shelter"] = "避難所",
	["haven"] = "天堂",
	["study"] = "學所",
	["nether"] = "地下城",
	["guild"] = "幫會",
	["nexus"] = "暗會",
	["oasis"] = "綠洲",
	["hub"] = "中心",
	["mirror"] = "鏡子",
	["grave"] = "墳墓",
	["shack"] = "小屋",
	["regen"] = "再生",
	["optimus"] = "OPTIMUS",
	["tutorial"] = "教學",--player mana is drained upon starting tutorial

}


module.gui.gameover.extras = {

	--["noobs"] = "Tutorials are for noobs!", --removed
	["possessed"] = "果啲 Heretics 煩死人!",
	["hypnotised"] = "我喺邊?",
	--NEW
	["reflected"] = "比我出去!",
	--END NEW
	["new"] = "新等級 - %s",

}

module.gui.gameover.raceplacements = {
	"你贏咗個比賽!",
	"第二名!",
	"第三名!",
	"你排第四名.",
	"你排第五名.",
	"你排第六名.",
	"你排第七名.",
	"你排第八名.",
	"你排第九名.",
	"你排第十名.",
	"你排第十一名.",
	"你排第十二名.",
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
