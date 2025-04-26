local TowerData = require(game.ReplicatedFirst:WaitForChild('DataModules'):WaitForChild('TowerData'))
local SpellData = require(game.ReplicatedFirst.DataModules:WaitForChild('SpellData'))
local RankData = require(game.ReplicatedFirst.DataModules:WaitForChild('RankData'))

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "네",
	["no"] = "아니오",
	["ok"] = "확인",
	["menu"] = "메뉴",
	["default"] = "DEFAULT",
	["validate"] = "VALIDATE",
	["play"] = "플레이",
	["skip"] = "튜토리얼\n건너뛰기",
	["loading"] = "로딩중입니다, 잠시만 기다려주세요...",
	["mode"] = "%s\n모드",
	["cd"] = "궁극의 주문\n쿨다운",
	["complete"] = "완료",
}

module.gui.switcher = {

	["title"] = "서버 변경",

	["public"] = "공개 서버",
	["private"] = "개인 서버",
	["join"] = "함께 플레이하기",
	["friends"] = "플레이 중인 친구들",
	["refresh"] = "새로고침 중...",
	["fail"] = "새로고침에 실패하였습니다!",

}

module.gui.serversettings = {

	["title"] = "서버장 설정",

	["Moderation"] = "관리",
	["rules"] = "Your server, Your rules.",
	["temp"] = "모든 뮤트와 차단은 일시적입니다.",
	["kick"] = "추방",
	["ban"] = "차단",
	["mute"] = "뮤트",

	["Drones"] = "드론 설정",
	["DronesReadOnly"] = "드론 설정 (읽기 전용)",
	["DroneEnabled"] = "드론 활성화",
	["DroneFix"] = "드론의 계단 복구 허용",
	["DroneRemove"] = "드론의 저주받은 교차로 복구 허용",
	["DroneUnCurse"] = "드론의 저주받은 계단 복구 허용",
	["DroneMove"] = "기본 모드 드론의 계단 이동 허용",
	["DroneSpin"] = "기본 모드 드론의 계단 회전 허용",
	["DroneSpeed"] = "드론의 이동 속도 (층/초)",
	["DroneDelay"] = "드론 회전 간격 (초)",
	["DroneMax"] = "타워 내 최대 계단 수 (타워 내 계단의 숫자가 이 수치를 넘을 경우 드론은 계단의 파괴만 진행)",
	["DroneMin"] = "타워 내 최소 계단 수 (타워 내 계단의 숫자가 이 수치보다 작을 경우 드론은 계단의 생성만 진행)",
	["DroneBlock"] = "비어있는 교차로 당 저주받은 교차로를 생성할 확률 (%)",
	["DroneCurse"] = "저주받은 계단을 생성하거나 일반 계단을 저주받은 계단으로 바꿀 확률 (%)",

	["Tower"] = "타워 설정",
	["TowerReadOnly"] = "타워 설정 (읽기 전용)",
	["InfMode"] = "무한 모드 (경주나 재생성 중 변경 불가)",
	["CasualPlayers"] = "일반 플레이어들의 주문 사용 허용",
	["Regeneration"] = "Wicked의 정화 이후 자동 계단 생성 허용 (무한 모드에서 작동하지 않음)",
	["EvenLevels"] = "짝수번째 층에서의 주문 사용 제한",
	["OrbMoves"] = "Endgame 오브의 이동 허용",
	["InfRegeneration"] = "새 서버에서와 타워 층의 변경, 그리고 무한모드 경주 이후의 자동 계단 재생성 허용",
	["TowerLevels"] = "타워의 전체 층 (혹은 무한 모드에서의 활성화할 층). 경주나 재생성 중에 변경할 수 없습니다.",
	["RaceDuration"] = "최대 경주 지속시간. 현재 진행중인 경주에 영향을 미치지 않습니다. (초)",
	["InfStart"] = "Initial Infinite mode round interval (2 levels are created each round) (seconds)",
	["InfReduction"] = "Infinite mode interval reduction (each round is shorter by) (seconds)",
	["InfMin"] = "Infinite mode minimum interval duration (seconds)",
	["Cooldown"] = "이벤트와 Rig 쿨다운 시간 (초)",

}

module.gui.shop = {

	["title"] = "정신없는 계단 상점",

	["chameleon"] = "Chameleon은 계단을 오르는 중 자유롭게 성향을 바꿀 수 있습니다.",
	["spectre"] = "Spectre는 개인 플레이에 최적화된 텔레포트 기반 성향입니다.",
	["mana"] = "마나 저장소의 용량을 10 포인트 늘립니다.",

	["3tokens"] = "1개의 기본 주문을 해금하거나 궁극의 주문 3개를 사용할 수 있는 만큼의 토큰입니다.",
	["30tokens"] = "10개의 기본 주문을 해금하거나 궁극의 주문 30개를 사용할 수 있는 만큼의 토큰입니다.",
	["300tokens"] = "모든 기본 주문을 해금하고도 93개의 토큰이 남는 만큼의 토큰입니다.",

	["3TOKENS"] = "3 멀티 토큰 (R$%d)",
	["30TOKENS"] = "30 멀티 토큰 (R$%d)",
	["300TOKENS"] = "300 멀티 토큰 (R$%d)",
	["SPECTRE PASS"] = "Spectre 게임패스 (R$%d)",
	["MANA PASS"] = "20 마나 저장소 게임패스 (R$%d)",
	["CHAMELEON PASS"] = "Chameleon 게임패스 (R$%d)",

}

module.gui.spellbar = {

	["share"] = "마나\n나누기",
	["nocasual"] = "경주에 참여하는 사람들만 주문을 사용할 수 있습니다",

} 

module.gui.stats = {

	["total"] = "전체 등반 수: %d / 경주 승리 수: %d",
	["class"] = "%s로 완료한 등반 수: %d",
	["best"] = "%s로 달성한 최고 기록: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "지배당했습니다! (해방되기 위해 마나를 찾으세요)",
	["released"] = "풀려났습니다",
	["timesup"] = "시간이 다 되었습니다...",

}


module.gui.activatecham = {

	["title"] = "CHAMELEON 활성화",
	["body"] = "Chameleon 모드를 활성화 하시겠습니까?\n등반이 끝날 때까지 유지될 것입니다."

}

module.gui.caceltimed = {

	["title"] = "시한 주문 취소",
	["body"] = "현재 활성화된 시한 주문을 취소하시겠습니까? 사용된 토큰은 돌려받을 수 없습니다."

}

module.gui.climbtimer = {

	["prompt"] = "계단을\n오르세요!",
	["floor"] = "층",
	["last"] = "이전 등반 시간",

}

module.gui.codes = {

	["title"] = "코드 입력",
	["body"] = "코드를 이곳에 입력하세요:",
	["prompt"] = "(코드)",
	["button"] = "인증",

}

module.gui.gauges = {

	["prompt"] = "점프하여 진행하거나, 주문 아이콘을 다시 클릭하여 취소하세요.",

	["found"] = "%d개의 계단 발견 (%.1f%% fill)",
	["special"] = "%d개의 특수 계단 발견 (%.1f%%)",
	["affected"] = "%d개의 계단이 영향을 받을 것 (%.1f%%)",
	["cursed"] = "%d개의 저주받은 교차로 발견 (%.1f%%)",
	["fill"] = "%d개의 계단이 생성될 것 (%.1f%%)",
	["purge"] = "%d개의 객체들이 파괴될 것 (%.1f%%)",
	["normal"] = "복구할 필요 없는 %d개의 일반 계단 (%.1f%%)",
	["restore"] = "%d개의 계단이 일반 계단으로 복구될 것 (%.1f%%)",
	["bypass1"] = "%d개의 교차로가 저주받음 (%.1f%%)",
	["bypass2"] = "%d개의 우회로가 이미 존재 (%.1f%%)",
	["bypass3"] = "%d개의 우회로가 생성될 것 (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "소리 설정",

	["master"] = "전체 볼륨",
	["default"] = "(전체 볼륨 사용 중)",
	["climb"] = "등반 음악",
	["endgame"] = "등반 완료 후 음악",
	["failed"] = "[로딩하지 못함]",

}

module.gui.results = {

	["title"] = "경주 결과",

	["place"] = "등수",
	["name"] = "이름",
	["level"] = "MAX LEVEL",
	["time"] = "TIME",
	["rank"] = "RANK",
	["not"] = "N/A",
	[1] = "WINNER",
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

module.gui.racetimer = {

	["gather"] = "경주에 참여하지\n않는 중입니다.",
	["race"] = "경주\n종료",
	["inf"] = "탈락",
	["off"] = "경주\n타이머",
	["wait"] = "경주 시작 대기 시간:",
	["on"] = "Rank",

}


module.spells = {}

--SPELL NAMES

local CommonSpellNames = {
	["rigevent"] = "%s Rig",
	["mode"] = "드론 %s 모드",
	["refill"] = "마나 과부하 (%s)",
	["union"] = "잔상과 합체 (%s)",
	--["event"]
}

module.spells.names = {

	--PATRON
	["summon"] = "계단 생성",
	["restore"] = "오브 호출", 
	["split"] = "대칭 계단 재구성",
	["shrinkabove"] = "위쪽 계단 줄이기",
	["link"] = "링크 생성",
	["portal"] = "포탈 생성",

	["summoner"] = "소환술",
	["patronevent"] = "계단 과부하",
	["patronaltevent"] = "축소",

	--JOKER 
	["flip"] = "계단 뒤집기",
	["flipabove"] = "위쪽 계단 뒤집기",
	["fake"] = "가짜 계단 생성",
	["invisible"] = "투명 계단 생성",
	["disco"] = "디스코 계단",
	["trap"] = "발판 함정화",

	["flipper"] = "플리퍼",
	["jokerevent"] = "은폐",
	["jokeraltevent"] = "모든 계단 뒤집기",

	--WICKED
	["destroy"] = "계단 파괴",
	["destroyabove"] = "위쪽 계단 파괴",
	["bend"] = "계단 구부려 올리기",
	["damage"] = "위쪽 계단 파손",
	["flatten"] = "반대쪽 계단 구부려 내리기",
	["wall"] = "벽 생성" ,

	["bender"] = "밴더",
	["wickedevent"] = "파괴",
	["wickedaltevent"] = "말살",

	--KEEPER
	["move"] = "계단 이동",
	["rotate"] = "계단 회전",
	["moveup"] = "계단을 위로 이동",
	["movedown"] = "계단 복구",
	["moverandom"] = "위쪽 계단 무작위 이동",
	["rig"] = "계단 무작위 이동",

	["ascension"] = "상승",
	["keeperevent"] = "셔플",
	["keeperaltevent"] = "복원",

	--SPECTRE
	["phantom"] = "유령 계단 생성",
	["ghost"] = "위쪽 계단 유령화",
	["shadow"] = "계단 유령화",
	["horizontal"] = "교차로 텔레포트",
	["random"] = "무작위 텔레포트",
	["vertical"] = "수직 텔레포트",

	["traveller"] = "아지랑이",
	["spectreevent"] = "유령화 셔플",
	["spectrealtevent"] = "천당",

	--HACKER
	["dash"] = "대시",
	["blink"] = "점멸",
	["swap"] = "잔상과 자리 교체",
	["slide"] = "에스컬레이터",
	["slideup"] = "해킹된 계단 설치",
	["glitch"] = "계단 글리치 발생",

	["hack"] = "속도 핵",
	["hackerevent"] = "승강",
	["hackeraltevent"] = "규칙 위반",

	--THIEF
	["steal"] = "계단 훔치기",
	["stealabove"] = "위쪽 계단 훔치기",
	["place"] = "계단 설치",
	["uppass"] = "나선형 계단 설치",
	["sidepass"] = "우회로 생성",
	["drop"] = "계단 버리기",

	["heist"] = "절도",
	["thiefevent"] = "계단 평탄화",
	["thiefaltevent"] = "우회로 천국",

	--ARCHON
	["splitup"] = "상승 게이트 생성",
	["splitrotate"] = "회전 게이트 생성",
	["splitside"] = "직진 게이트 생성",
	["splitrandom"] = "무작위 게이트 생성",
	["cancelsplit"] = "게이트 파괴",
	["splitforward"] = "교차로 게이트 생성",

	["splitter"] = "포탈 마니아",
	["archonevent"] = "모든 계단 무작위 게이트 생성",
	["archonaltevent"] = "분열",

	--DRIFTER
	["indrift"] = "서핑",
	["outdrift"] = "계단 무작위 표류",
	["updrift"] = "엘리베이터",
	["diagdrift"] = "발판 대각선 이동",
	["spin"] = "계단 드리프트",
	["driftabove"] = "위쪽 계단 드리프트",

	["riser"] = "Riser",
	["drifterevent"] = "표류",
	["drifteraltevent"] = "드리프트",

	--HERETIC
	["createcursed"] = "저주받은 계단 생성",
	["curse"] = "계단 저주",
	["curseabove"] = "위쪽 계단 저주",
	["curseinter"] = "플리커",
	["autodown"] = "계단 분열 후 올리기",
	["autoup"] = "계단 분열 후 내리기",

	["malediction"] = "저주",
	["hereticevent"] = "불통일",
	["hereticaltevent"] = "복수",

	--SPLICER
	["twistup"] = "위쪽 계단과 잇대어 연결",
	["twistside"] = "평행한 계단과 잇대어 연결",
	["twistrotate"] = "인접한 계단과 잇대어 연결",
	["canceltwist"] = "연결된 계단 복구",
	["split2"] = "계단 위아래로 쪼개기",
	["splitalt"] = "계단 양 옆으로 쪼개기",

	["twister"] = "트위스터",
	["splicerevent"] = "짜넣기",
	["spliceraltevent"] = "이등분",
	
	--necro
	["createdual"] = "이중 계단 생성",
	["copyplatform"] = "잔상의 발판 복사",
	["soulbridge"] = "영혼 다리 생성",
	["undeadabove"] = "위쪽 계단 영혼 제거",
	["revival"] = "리스폰 포인트",
	["regen"] = "마나 회복",

	["duality"] = "이중성",
	["necromancerevent"] = "부활",
	["necromanceraltevent"] = "영혼 수확",
	
	--reaver
	["createmirrored"] = "거울 계단 생성",
	["bigmirror"] = "거울 바닥",
	["smallmirror"] = "작은 거울",
	["outermirror"] = "거울 포탈",
	["merge"] = "Reaver 합체",
	["oneway"] = "일방통행 게이트 생성",

	["reflection"] = "반사",
	["reaverevent"] = "게이트 생성",
	["reaveraltevent"] = "일방통행",
	
	
	--gremlin
	["tram"] = "트램 계단 생성",
	["screwup"] = "위쪽 계단 스크루",
	["revolve"] = "360도 계단 회전",
	["trapstairs"] = "다락문 계단",
	["screwdown"] = "계단 스크루",
	["spinplatform"] = "발판 회전",

	["tramway"] = "트램 선로",
	["gremlinevent"] = "회전 파티",
	["gremlinaltevent"] = "교통 정체",

	--CHAMELEON
	["ditch"] = "십자 계단 생성",
	["warp"] = "계단 말아올리기",
	["chamdown"] = "계단 아래로 내리기",
	["chamdraw"] = "도개교 개방",
	["chamswap"] = "잔상 복사 (외관만)",
	["chamdrawabove"] = "위쪽 계단 도개교 개방",

	--MISC (compatibility)
	["reg"] = "계단이 재생성 중입니다",

}-- " .. RankData.PATRON[7].name .. " 

-- common description stuff
local union = "이 주문은 시한 잔상 합체 주문입니다. 잔상 합체 모드에 들어가면 앞을 막는 계단을 뚫고 지나갈 수 있으며, 유령화 계단, 파손된 계단, 그리고 가짜 계단을 자유롭게 오르내릴 수 있습니다. 특수 계단은 당신에게 아무런 영향을 끼치지 않을 것이며, Rig의 영향도 받지 않을 것입니다. 그러나, 이 모드에서 주문은 사용할 수 없습니다."
local overload = "이 주문은 마나 과부하 주문입니다. 6초마다 1의 마나를 얻는 상태가 60초 동안 지속됩니다 (총 10의 마나를 얻을 수 있습니다). 한 번에 하나의 마나 과부하 상태만을 유지할 수 있습니다."
local timed = "이 주문은 시한 주문입니다. "  -- do not remove space
local rig = "이 주문은 Rig 주문입니다. 모든 일반 계단에 Rig의 효과를 부여합니다. Rig의 효과는 다음과 같습니다. " -- do not remove space
local event = "이 주문은 이벤트 주문입니다. 모든 일반 계단에 이벤트의 효과를 부여합니다. 이벤트의 효과는 다음과 같습니다. " -- do not remove space
local fill = "이 주문은 채우기 주문입니다. 저주받은 교차로를 제외한 모든 교차로에 무작위 방향으로 계단을 생성합니다. " -- do not remove spaces
local mode = "이 주문은 드론 주문입니다. 드론을 %s 모드로 변경합니다. 해당 모드에서 드론은 일반 계단에 무작위로 %s 또는 %s 주문을 시행합니다. 특수 계단은 복구될 것입니다. Outside of limits, drones will create and destroy respectively."
local timedExtra = " 시간 제한을 90초로 늘리기 위해서는 %까지 등급을 높여야 합니다. 또한 이 주문은 %s 이상의 등급의 모든 %s에게 마나를 공급할 것입니다." -- do not remove leading space

module.spells.descriptions = {

	--PATRON
	["summon"] = "이 주문은 선택한 방향으로 계단을 생성할 수 있게 합니다. 만약 교차하는 계단이 있다면 그 계단은 파괴될 것입니다.",
	["restore"] = "이 주문은 최상층에서 선택한 발판으로 엔드게임 오브를 호출합니다. DEFENDER 이후 등급은 해당 주문 사용 시 마나를 3이 아닌 2 소모합니다. SAVIOUR 등급은 오브 호출 시 오브가 이동하는 속도가 두 배가 됩니다.",
	["split"] = "이 주문은 현재 서 있는 계단을 반대되는 방향으로 재생성합니다. 재생성된 계단은 원래 계단의 종류와 관계없이 일반 계단으로 생성됩니다.",
	["shrinkabove"] = "이 주문은 위쪽 계단을 축소시켜 주변으로 걸어다닐 수 있도록 합니다.",
	["link"] = "이 주문은 두 발판 사이에 60초 동안 유지되는 에너지장 다리를 생성합니다. 이 다리는 아래에서 통과할 수 있습니다. CREATOR 이상 등급은 에너지장 다리의 지속시간이 120초로 증가합니다.",
	["portal"] = "이 주문은 모든 플레이어들을 한 층 높이 텔레포트 시키는 포탈을 생성합니다. 포탈은 60초 동안 지속됩니다. PROTECTOR 이상 등급은 포탈의 지속시간이 120초로 증가합니다.",

	["summoner"] = timed ..  "이 주문은 60초 동안 원하는 대로 계단을 생성할 수 있게 합니다. 발판의 화살표 위에서 점프하여 계단을 생성할 수 있습니다." .. string.format(timedExtra,RankData.PATRON[7].name,"Patrons",RankData.PATRON[3].name),
	["patronrigevent"] = rig .."활성화 되었을 때, 활성화한 대상에게 1의 마나를 부여합니다. 플레이어가 최대 마나를 보유 중이라면 계단은 활성화되지 않습니다. 활성화 이후 계단은 일반 계단으로 되돌아갑니다.",
	["patronevent"] = fill ..  "생성될 계단은 일반 계단입니다.",
	["patronaltevent"] = event .. "계단에 계단 축소 주문을 시행합니다.",
	["patronmode"] = string.format(mode,"Patron","Patron Rig","계단 축소"),
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "이 주문은 계단의 위쪽이 아래쪽이 되는 식으로 계단을 뒤집습니다. 뒤집힌 계단을 다시 뒤집는 데 사용할 수도 있습니다.",
	["flipabove"] = "이 주문은 위쪽 계단의 위쪽이 아래쪽이 되는 식으로 계단을 뒤집습니다. 뒤집힌 계단을 다시 뒤집는 데 사용할 수도 있습니다.",
	["fake"] = "이 주문은 선택한 방향으로 가짜 계단을 생성할 수 있게 합니다. 만약 교차하는 계단이 있다면 그 계단은 파괴될 것입니다. TRICKSTER, IT 등급의 플레이어들과 잔상 합체 모드에 들어간 플레이어들을 제외하고, 당신을 포함한 어떤 플레이어든 그 계단을 오르려고 한다면 밑으로 떨어질 것입니다.",
	["invisible"] =  "이 주문은 투명 계단을 생성할 수 있게 합니다. 교차하는 계단을 파괴하지 않으므로, 빈 교차로에 계단을 생성해야 합니다. JESTER 이상 등급은 모든 투명 계단을 볼 수 있으며, 드러내지 않도록 선택할 수 있습니다.",
	["disco"] = "이 주문은 계단을 디스코 모드로 바꿉니다. 당신을 포함한 어떤 플레이어든 이 계단에 도달하면 멈춰서 5초 동안 춤을 춰야 합니다. (보통 한 계단에 두 번 춤춰야 합니다) COMIC 이상 등급은 디스코 계단의 효과에 면역입니다.",
	["trap"] = "이 주문은 60초 동안 발판을 다락문처럼 바꿉니다. 당신을 포함한 어떤 플레이어든 그 발판에 다다르면 바로 밑 발판으로 떨어질 것입니다. JOKESTER 이상 등급은 이러한 발판 함정을 볼 수 있습니다. TRICKSTER 이상 등급은 이러한 함정 효과에 면역입니다.",

	["flipper"] = timed ..  "이 주문은 60초 동안 원하는 대로 계단 뒤집기 주문을 사용할 수 있게 합니다. 항상 위쪽 계단이 뒤집힐 것이며, 위쪽에 계단이 없다면 아래쪽 계단이 대신 뒤집힐 것입니다."  .. string.format(timedExtra,RankData.JOKER[7].name,"Jokers",RankData.JOKER[3].name),
	["jokerrigevent"] = rig .. "활성화 되었을 때, 계단이 자동으로 뒤집힐 것입니다.",
	["jokerevent"] = event .. "계단을 투명화합니다. 불필요한 메시지를 줄이기 위해 투명 계단을 발견 시의 메시지는 나오지 않을 것입니다.",
	["jokeraltevent"] = event .. "계단에 계단 뒤집기 주문을 시행합니다.",
	["jokermode"] = string.format(mode,"Joker","Joker Rig","투명 계단"),
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "이 주문은 계단을 파괴합니다. 다른 주문과 달리 이 주문은 모든 종류의 계단에 통합니다. VILE 이상 등급은 해당 주문을 마나 소모 없이 시행할 수 있습니다. VICIOUS 이상 등급은 해당 주문으로 특수 계단을 파괴할 때마다 1 마나를 얻습니다. ANNIHILATOR 등급은 저주받은 계단도 파괴할 수 있습니다.",
	["destroyabove"] = "이 주문은 위쪽 계단을 파괴합니다. 다른 주문과 달리 이 주문은 모든 종류의 계단에 통합니다. VICIOUS 이상 등급은 해당 주문으로 특수 계단을 파괴할 때마다 1 마나를 얻습니다. ANNIHILATOR 등급은 저주받은 계단도 파괴할 수 있습니다.",
	["bend"] = "이 주문은 계단을 구부려 올립니다. 위쪽 발판으로 가기 위해 사용하십시오.",
	["damage"] = "이 주문은 위쪽 계단의 대부분을 파괴하여 점프맵의 형태로 만듭니다. 계단을 오르며 점프 쿨다운을 신경써야 할 것입니다. DESTROYER 이상 등급은 이러한 계단을 일반 계단처럼 자유롭게 이동할 수 있습니다.",
	["flatten"] = "이 주문은 반대쪽 계단을 구부려 내립니다. 반대쪽 발판으로 가기 위해 사용하십시오.",
	["wall"] = "이 주문은 60초 동안 발판 위에 에너지장 벽과 반대쪽 발판으로 연결되는 링크를 생성합니다. Wicked와 잔상 합체 모드의 플레이어들만이 이 벽을 통과하고 링크를 사용할 수 있습니다.",

	["bender"] = timed .. "이 주문은 60초 동안 원하는 대로 계단을 구부리는 주문을 사용할 수 있게 합니다. 조건만 맞다면 아래쪽과 위쪽 계단 모두 동시에 구부려질 것입니다."  .. string.format(timedExtra,RankData.WICKED[7].name,"Wickeds",RankData.WICKED[3].name),
	["wickedrigevent"] = rig .. "활성화 되었을 때, 계단이 자동으로 파괴될 것입니다. Devil 이상 등급은 계단을 활성화시키지 않고 지나갈 수 있습니다.",
	["wickedevent"] = event .. "계단에 파괴 주문을 시행합니다. 재생성 이벤트가 진행되지 않을 것입니다.",
	["wickedaltevent"] = "이 주문은 이벤트 주문입니다. 예외 없이 모든 계단과 저주받은 객체들을 파괴할 것입니다. 재생성 이벤트가 진행될 것입니다.",
	["wickedmode"] =  string.format(mode,"Wicked","Wicked Rig","구부리기"),
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "이 주문은 계단을 This spell will move stairs in a horizontal fashion, destroying any stairs in the way. After casting, arrows will appear on the stairs, prompting you to choose direction. Stairs cannot be moved outside the game area. Rank up to CONTROLLER to move any un-cursed stairs.",
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
	["spinplatform"] = "This spell will revolve the whole platform with any adjacent stairs (icluding cursed ones), in the direction of your choice. Platform will pause briefly after each 90 degree turn. Once full 360 spin is achieved, platform will turn back to normal.",
	
	["tramway"] = timed .. "It allows you to cast as many Tram Stairs as you like for one minute." .. string.format(timedExtra,RankData.GREMLIN[7].name,"Gremlins",RankData.GREMLIN[3].name), 
	["gremlinrigevent"] = rig .. "the Gremlin Rig. Stairs, once triggered, will hypnotize the triggering player. They will have to find Mana to be released. Hypnotized players have their controls reversed. Rank up to HOBGOBLIN to be immune to Gremlin Rigs.",
	["gremlinevent"] = event .. "the Random Revolve Stairs spell.", 
	["gremlinaltevent"] = fill .. "Created stairs will be of Tram variety.",
	["gremlinmode"] = string.format(mode,"Gremlin","Gremlin Rig","Random Revolve Stairs spell."),
	["gremlinrefill"] = overload,
	["gremlinunion"] = union,

	--CHAMELEON
	["chamdown"] = "This used to be a Keeper spell, before it got rejected. It will move any normal or rigged stairs down. If you have ranked Keeper to Captain, you may also move flipped stairs.",
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

	["title"] = "등급",

	--none
	["none_1"] = "성향을 선택하지 않았습니다!",
	["none_2"] = "그 어떤 주문도 사용할 수 없습니다!",
	["none_3"] = "맵 중앙을 둘러싸는 작은 원들 중 하나에서 점프하여 성향을 선택하세요.",

	--shared
	["higher"] = "HIGHER RANK ACQUIRED",
	["current"] = "현재 등급",
	["lower"] = "RANK NOT ACQUIRED",

	["more"] = "You need %d more climbs as %s to obtain this rank.",
	["done"] = "You already own a higher rank. All lower rank effects add up to the current rank.",
	["max"] = "This is the maximum rank. You have made %d climbs as %s.",
	["next"] = "Click on the right arrow to check requirements for the next rank.",

	["PATRON"] = {
		[4] = "생성한 링크의 지속시간이 두 배가 됩니다 (120초).",
		[5] = "생성한 포탈의 지속시간이 두 배가 됩니다 (120초).",
		[6] = "오브 호출 주문의 요구 마나량이 2로 줄어듭니다.",
		[8] = "마나를 다 썼다면 발판 위에서 점프하여 마나 1의 축복을 받을 수 있습니다.",
		[9] = "호출된 오브의 이동 속도가 두 배로 빨라집니다.",
	}, 
	["JOKER"] = { 
		[4] = "디스코 계단에 영향을 받지 않습니다.",
		[5] = "모든 투명화된 계단을 볼 수 있습니다. 투명 계단을 드러낼지 말지 선택할 수 있습니다.",
		[6] = "발판 함정과 가짜 계단을 볼 수 있습니다.",
		[8] = "가짜 계단 위로 지나다닐 수 있습니다.", 
		[9] = "누군가 당신의 장난에 걸린다면 보너스 마나를 받습니다. (장난친 플레이어 1 명 당 1 마나)",
	},
	["WICKED"] = {
		[4] = "일반 계단 위로 지나다니는 것 처럼 손상된 계단 위를 지나다닐 수 있습니다.",
		[5] = "계단 파괴 주문을 마나 소비 없이 사용할 수 있습니다.",
		[6] = "특수 계단을 파괴하면 1 마나를 보너스로 얻습니다.",
		[8] = "Wicked Rig를 활성화할지 하지 않을지 선택할 수 있습니다.",
		[9] = "저주받은 계단을 파괴할 수 있습니다",
	},
	["SPECTRE"] = { 
		[4] = "잔상으로 마나 크리스탈을 얻을 시 추가로 1 마나를 얻습니다.", 
		[5] = "Your DE-GHOSTIFY spell is now free.",
		[6] = "최상위층의 오브에 잔상이 닿아도 게임을 클리어할 수 있습니다.",
		[8] = "Spectre Rig를 활성화할지 하지 않을지 선택할 수 있습니다.", 
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
		[6] = "You can now steal any un-curesed stairs.",
		[8] = "If you are out of Mana, jump on a platform to get 1 Mana from your stash.", 
		[9] = "You can now keep 2 stolen stairs at the same time.",
	},
	["ARCHON"] = {
		[4] = "You can now cast the Destroy Gate spell on platforms, to remove Platform Gates.",
		[5] = "Your Destroy Gate spell is now free.",
		[6] = "Gates will nevev teleport you down.",
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
		[4] = "You can now see all Gremlin Traps.",
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
		[6] = "You can now cast 4 more spells which were rejected during development.",
		[7] = "You can now cast 2 more spells which were rejected during development.",
		[8] = "Changing alignments doesn't have a morph animation anymore, making switching alignments seamless and private. Can be turned off in options.",
		[9] = "You can now cast the Mystery Rig spell with multi-tokens.",
	},


}

module.gui.reshuffle = {

	["title"] = "STAIRS RESHUFFLE MODE",

	["body"] = "계단이 움직이는 동안 충돌을 피하길 원하십니까? 그렇지 않으면, 이동하는 계단과 충돌하는 계단은 모두 파괴될 것입니다.",

}

module.gui.multitokens = {

	["title"] = "CHOOSE YOUR TOKENS",

	["info"] = "주문을 해금하기 위해서 3개의 토큰이 필요합니다.",
	["notokens"] = "You have no multi tokens left",
	["nopass"] = "NO GAME PASS",

}

module.gui.feedback = {

	["title"] = "피드백 보내기",

	["prompt"] = "여기를 클릭해 개발자들에게 메시지를 보내세요! (최소 20자 이상 보내주세요. 당신이 누군지 알 수 있으니 부디 의미 없는 메시지를 보내지 말아주세요.)",
	["send"] = "보내기",
	["locked"] = "잠김",

}

module.gui.settings = {

	["title"] = "게임 설정",

	["ANIM"] = "애니메이션\n설정",	
	["MISC"] = "기타\n설정",
	["INTER"] = "인터페이스\n설정",	
	["INTER2"] = "추가 인터페이스\n설정",	

	["list"] = "Show animated playerlist",
	["morph"] = "Show morph animation when using Deceiver or Usurper",
	["billboard"] = "Show Your own avatar billboard",
	["rank"] = "Show Your Overall Rank in avatar billboard",
	["switchback"] = "Auto switch back to basic spells after executed ultimate spell",
	["safecancel"] = "Show confirmation window when cancelling a timed ultimate spell",
	["multi"] = "Show Multi Token window selection after the climb",
	["kchoices"] = "Show direction selection window for Keeper (won't work on Xbox)",
	["hchoices"] = "Show direction selection window for Hacker (won't work on Xbox)",
	["achoices"] = "Show direction selection window for Archon (won't work on Xbox)",
	["rchoices"] = "Show direction selection window for Reaver (won't work on Xbox)",
	["schoices"] = "Show direction selection window for Splicer (won't work on Xbox)",
	["gchoices"] = "Show direction selection window for Gremlin (won't work on Xbox)",
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
		"돕고, 수호하고 생성하자",
		"저 뉴비들에게 우리의 도움이 필요해",
		"우리 Patron들이 없으면 희망도 없을거야",
		"친절함에 있어서는 100점 만점에 200점이지",
		"콩 한쪽도 나눠먹는게 도리지",
		"계단은 다다익선",
		"팀워크에서 개인플레이는 하면 안되지만, Patron은 플레이 해도 되지",
		"계단 없는 층계는 본 적 없잖아",
		"이번에도 멋지게 해냈어",
	},
	["JOKER"] = {
		"속이고, 혼란에 빠뜨리고 웃어넘기자",
		"이번 역은 함정, 함정 역입니다...",
		"왜 그렇게 심각해?",
		"하! 하! 하!",
		"앉아서 쟤네 떨어지는 거나 같이 보자",
		"긁?",
		"미안하다, 이거 보여주려고 어그로 끌었다",
		"그래도 내가 없으면 재미없을걸?",
		"가짜 계단 만큼 진짜인 것도 없지",
	},
	["WICKED"] = {
		"방해하고, 막고 파괴하자",
		"내가 나쁜 게 아니라, 계단이 너무 많은거야",
		"줄건 줘, 저 계단들처럼",
		"세상이 불타는 걸 보고싶네",
		"계단이 없는 층계가 더 나아보이는데",
		"네 생각과 정신, 그리고 육체를 부숴버리겠어 (그리고 계단도)",
		"1)계단을 파손하고 2)바보들이 고통받는 걸 봐 3)즐겨",
		"모든 건 언젠가 다 죽어",
		"생각을 정리해 - 계단을 정리한 다음 말이지",
	},
	["SPECTRE"] = {
		"사라지고, 숨고 텔레포트하자",
		"텔레포트는 당연히 안전해",
		"나 잡아봐라",
		"그 무엇도 유령화된 계단의 아름다움에 견줄 수 없지",
		"사람들이 떨어진다고? 그래서?",
		"텔레포트를 하면 성적이 오르고, 키가 크고... 뭐든 해결해준다고",
		"텔레포트는 한번 시작하면 멈출 수 없어",
		"계단을 텔레포트 하지 않는 것에 감사하라고",
		"빨리 좀 올라와라 이 뉴비들아!",
	},
	["MUGGLE"] = {
		"걷고, 점프하고 떨어지자",
		"이 게임 알파 버전에는 이런 화려한 주문 따위 없었던 것 같은데",
		"누가 저 드론들 좀 고쳐봐, 문제가 있는 것 같으니까",
		"어딘가에는 반드시 길이 있기 마련",
		"계단을 넘어 점프하는 건 재능의 영역이지",
		"내 비결? 멈춰서 생각하기",
		"이런 시대에 마법이 어딨어",
		"참는 자에게 복이 온다고 했어, 그러니까 저 드론이 올 때까지 참아보자고",
		"누가 요즘 주문 씀?",
	},
	["CHAMELEON"] = {
		"베끼고, 따라하고 놀래키자",
		"귀찮아서 그냥 여기저기서 갖다 썼어",
		"다양한 게 더 재밌잖아",
		"팀플레이는 너무 느려 - 변신하는게 더 빠르지",
		"적응은 생존하는 데 있어서 필수야",
		"나 결정장애 같은 거 없어, 그냥 유연한 생각을 가진 것 뿐이야",
		"성향 하나 마스터했다고? 난 죄다 마스터했는데",
		"성향 하나만 쓰는 건 재미없잖아",
		"난 혼돈이 좋아",
	},
	["KEEPER"] = {
		"이동하고, 회전하고 제어하자",
		"내 계단 좀 그만 망가뜨려!",
		"Keeper들에게 승리를 안겨줬어",
		"임무 완수!",
		"난 정돈된 게 좋아",
		"혼돈을 길들였어",
		"오직 나만이 진정한 성향이야",
		"언젠가 이 타워도 싹 정리해주지",
		"통계적으로 고쳐진 계단이 더 행복해한다더라",
	},
	["THIEF"] = {
		"\"빌리고\", 사용하고 돌려놓자",
		"음, '빌리는' 거라고 해줄래?",
		"평평해진 계단들 너무 예쁜걸",
		"적어도 난 발판을 훔치지는 않는다고",
		"누가 내 계단 밟고 마나 뺏기라고 협박했어?",
		"내가 훔쳤다는 증거 있어?",
		"부자한테서 훔쳐서 나한테 주는 내가 이 시대의 진정한 홍길동이지",
		"저 많은 계단들에서 하나 없어진다고 누가 알아채기나 하겠어?",
		"계단의 재분배는 무정부주의를 막아주지",
	},
	["HACKER"] = {
		"해킹하고, 글리치를 일으키고 망가뜨리자",
		"페어플레이 좋아하네",
		"이 계단 진짜가 아닌 것 같은데... 설마 우리 게임 속에 살고 있는 건 아니겠지?",
		"01000011 01010010 01000001 01011010 01011001 00100000 01010011 01010100 01000001 01001001 01010010 01010011",
		"눈 씻고 찾아봐도 여기 규칙이란 건 없는 것 같은데",
		"속임수를 쓰는 건 너도 마찬가지면서",
		"이게 어딜 봐서 해킹이야, 그냥 여기저기 조금 바꾼 것 뿐이라고",
		"빠르기만 하면 됐지 뭘",
		"사랑해요 에스컬레이터",
	},
	["HERETIC"] = {
		"넌 못 지나간다",
		"흑마법의 금지는 재미의 금지와 같지",
		"그분을 위해 더 많은 사람들을 지배해야 해",
		"죽음과 부패",
		"흑마법 의식 완료",
		"스스로를 통제해서는 안 돼",
		"얌전히 지배당해라",
		"덕을 쌓는 건 어렵지만 그걸 무너뜨리는 건 참 쉽지",
		"왜 내가 사람들이 오도가도 못하게 된 걸 신경써야 하는데?",
	},
	["ARCHON"] = {
		"포탈을 열고, ???, 짜잔",
		"내가 계단을 지배할 상인가?",
		"성공을 위해서는 먼저 탄탄한 계획이 있어야 해",
		"부모님들이 괜히 공부하라고 하시는게 아니지",
		"계단을 분할하는 능력도 예술로 쳐줘야해",
		"나 Archon 포타를 사용할 수 업서",
		"케이크는 거짓말이야",
		"모든 문제에는 반드시 답이 있기 마련이야",
		"모두를 혼란에 빠뜨렸어!",
	},
	["DRIFTER"] = {
		"뛰어오르고, 올라타고 활공하자",
		"우린 우주에 있는데 계단이 무슨 소용이람!",
		"날면 되잖아 이 바보들아!",
		"태양풍을 타고 항해하자",
		"우주에 바닥은 없으니까 걱정 말고 뛰어",
		"모든 걸 움직이고 성공을 위해 점프하자",
		"멈추지 말고 계속 움직여",
		"발판 타는 게 세상에서 제일 재밌어",
		"계속 항해해",
	},
	["SPLICER"] = {
		"비틀고, 잇고 연결하자",
		"너무 일직선으로만 가지는 마",
		"잊지 못할 트위스트가 될 거야",
		"엉망진창이라니? 난 최선을 다해 정돈한 거라고",
		"계단 연결하는 것 쯤이야 식은 죽 먹기지",
		"사람들을 이어주는 것 보다는 계단끼리 이어주는 게 더 낫지",
		"그래, 난 비틀린 사람이야, 어쩔래?",
		"쪼개느냐 잇느냐, 그것이 문제로다",
		"Markerquest가 없었다면 빛을 보지 못했을거야",
		"이 계단 너무 똑바르잖아",
	},
	["REAVER"] = {
		"반사하고, 교체하고 합체하자",
		"거울을 너무 오래 들여다보고 있지 마",
		"이 계단은 허상일 뿐이야",
		"너도 거울 속에 네 영혼이 보여?",
		"심연을 들여다보면 심연도 우리를 들여다 본다는데",
		"깨진 거울을 들여다보면 삼 대가 운이 나쁘다는데, 날 말하는 걸까 아니면 거울 속의 나를 말하는 걸까?",
		"거울 너머에 잔상들이 갇혀있는 걸까, 아니면 우리가 갇혀있는 걸까?",
		"거울 속에서 더 이상 내가 보이지 않아, 내 미래가 보여",
		"난 거울 속의 나와 가위바위보를 해서 이긴적이 있지",
		"내가 그렇게 놀래키지 말랬지!",
	},
	["NECROMANCER"] = {
		"따라가고, 되살리고 이롭게 하자",
		"우린 널 괴롭히는 게 아니라 그냥 친구가 되고 싶을 뿐이야",
		"네 영혼은 내 것이다!",
		"내 잔상을 따라가, 날 믿어!",
		"내 잔상 주변은 안전해. 내가 왜 거짓말을 하겠어?",
		"영혼 수확 시간이야",
		"우리 이미지가 안 좋아진 건 다 영화 때문이야",
		"죽음이 나쁘다면 강령술은 좋은 일 아냐?",
		"영ㅎ- 아니, 마나가 좀 필요하네, 마나 말이야",
 		"내가 떨어진 건 추진력을 얻기 위함이었지",
	},
	["GREMLIN"] = {
		"회전하고, 돌리고 최면을 걸자",
		"이리 와서 나랑 놀자!",
		"빙빙 돌아가는 회전목마처럼, 영원히 계속 될 것처럼...",
		"이 계단 진짜 재미없네",
		"계단 좀 고쳐줄까...? 히히",
		"내 작품 어때? 짜증난다고? 어쩌나, 이제 시작인데",
		"의사가 나한테 안정을 취하라는데, 이게 내가 안정을 취하는 방식이야",
		"장난으로는 Joker보다 내가 한 수 위인 것 같은데? ...장난이야, 네 서커스에 다시 들어가게 해줘!",
		"여기 있던 계단 어디갔지?",
		"야호오오오오오오오오!!!!!!!",
	},

}

module.gui.gameover.maxrank ={

	["SAVIOUR"] = "도움이 필요한 사람을 내버려둬서는 안돼",
	["IT"] = "장난은 내 인생",
	["ANNIHILATOR"] = "다 파괴되어라!",
	["AETHER"] = "다른 차원으로의 이동이야",
	["DABSFORLIF"] = "주문은 너무 과대평가됐어",
	["USURPER"] = "난 모든 주문을 평등하게 사랑할 뿐이야",
	["ADMIRAL"] = "정리정돈 완료",
	["OUTLAW"] = "네 것도 내 것, 내 것도 내 것",
	["ZERO"] = "전문적 해킹을 배웠거든",
	["EXILED"] = "제명이다",
	["ILLUMINATI"] = "...그래서 일루미나티야",
	["STRIDER"] = "난 엘리베이터 탈게",
	["DEATHBRINGER"] = "Rise, rise, RISE!",
	["OPTIMUS"] = "얽히고 섥혔어",
	["ALIEN"] = "우리는 하나야",
	["DAEMON"] = "빙빙 돌아가는 회전목마처럼",

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
	"한국어 - ambronium",
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
	["pro_4"] = "Drifters cannot drift those platforms neither.Affected platforms are marked with the red hollow circle in the middle.",
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

	["home_1"] = "MUGGLE의 집",
	["home_2"] = "OUR MOTTO:\n걷고\n점프하고\nAND\n떨어지자",
	["home_3"] = "PROS:\n높은 랭크에서의 이동 속도와 점프 높이 보너스\n자랑할 수 있음\nCONS:\n주문 사용 불가\n잘 막혀버림",
	["home_4"] = "'이 게임 알파 버전에는 이런 화려한 주문 따위 없었던 것 같은데'\n창립자의 말",

	["oasis_1"] = "CHAMELEON의 오아시스",
	["oasis_2"] = "OUR MOTTO:\nCOPY\nIMITATE\nAND\nSURPRISE",
	["oasis_3"] = "PROS:\n언제 어디서든 성향을 바꿀 수 있음\nCONS:\n게임패스임\n모든 성향 파밍에 시간이 오래 걸림",
	["oasis_4"] = "'귀찮아서 그냥 여기저기서 갖다 썼어.'\n창립자의 말",

	["nexus_1"] = "HERETIC'S NEXUS",
	["nexus_2"] = "OUR MOTTO:\n넌\n못\n지나간다",
	["nexus_3"] = "PROS:\n프로 타워에서 좋음\n저지당하지 않음\nCONS:\n팀플레이가 까다로움\n마나 소모가 심함",
	["nexus_4"] = "'흑마법의 금지는 재미의 금지와 같지.'\n창립자의 말",

	["guild_1"] = "THIEF의 길드",
	["guild_2"] = "OUR MOTTO:\nBORROW\nUSE\nAND\nRETURN",
	["guild_3"] = "PROS:\n효율적인 마나 사용\nVersatile\nCONS:\n계단을 훔쳐야 사용 가능\nCannot destroy crossing stairs",
	["guild_4"] = "'음, \'빌리는\' 거라고 해줄래?'\n창립자의 말",

	["nether_1"] = "SPECTRE'S NETHER",
	["nether_2"] = "OUR MOTTO:\nDISAPPEAR\nHIDE\nAND\nTELEPORT",
	["nether_3"] = "PROS:\n신속한 주문들\n개인플레이에 탁월함\nCONS:\n게임패스임\n팀플레이에 적합하지 않음",
	["nether_4"] = "'Of course teleporting is safe.'\n창립자의 말 (현재 실종 상태)",

	["study_1"] = "ARCHON의 서재",
	["study_2"] = "OUR MOTTO:\nOPEN\nPORTAL\n???\nPROFIT",
	["study_3"] = "PROS:\n유용한 Rig\nConfuses opponents\nCONS:\n익히기 가장 어려움\n계획적으로 움직여야 함",
	["study_4"] = "'내가 계단을 지배할 상인가?'\n창립자의 말",

	["haven_1"] = "PATRON의 안식처",
	["haven_2"] = "OUR MOTTO:\nHELP\nPROTECT\nAND\nCREATE",
	["haven_3"] = "PROS:\n익히기 가장 쉬움\n팀플레이 최적화\nCONS:\n마나를 많이 사용함\n날먹당할 수 있음",
	["haven_4"] = "'저 뉴비들에게 우리의 도움이 필요해!'\n창립자의 말",

	["shelter_1"] = "DRIFTER의 쉼터",
	["shelter_2"] = "OUR MOTTO:\nSURF\nRIDE\nAND\nGLIDE",
	["shelter_3"] = "PROS:\nVersatile\n팀플레이 최적화\nCONS:\n파쿠르 실력이 필요함\n프로 타워에서 쓰기 까다로움",
	["shelter_4"] = "'우린 우주에 있는데 계단이 무슨 소용이람!'\n창립자의 말",

	["circus_1"] = "JOKER의 서커스",
	["circus_2"] = "OUR MOTTO:\nDECEIVE\nCONFUSE\nAND\nLAUGH",
	["circus_3"] = "PROS:\n트롤링 최적화\n계단 뒤집기가 꽤 쓸만함\nCONS:\n주문이 비쌈\n절교당할 수 있음",
	["circus_4"] = "'이번 역은 함정, 함정 역입니다...'\n창립자의 말",

	["base_1"] = "KEEPER의 기지",
	["base_2"] = "OUR MOTTO:\nMOVE\nROTATE\nAND\nCONTROL",
	["base_3"] = "PROS:\n계단의 복구가 가능\n계단의 재사용 가능\nCONS:\n올바른 사용을 위해 파쿠르 실력이 필요함\n계단 없이는 쓸모없음",
	["base_4"] = "'내 계단 좀 그만 망가뜨려!'\n창립자의 말",

	["chamber_1"] = "WICKED'S CHAMBER",
	["chamber_2"] = "OUR MOTTO:\nPREVENT\nBLOCK\nAND\nDESTROY",
	["chamber_3"] = "PROS:\n어떤 계단이든 파괴 가능\n모든 계단을 없애버릴 수 있음\nCONS:\n계단에 과하게 의존적임",
	["chamber_4"] = "'I'm not evil, there are just too many stairs.'\n창립자의 말",

	["backdoor_1"] = "HACKER의 통신망",
	["backdoor_2"] = "OUR MOTTO:\nEXPLOIT\nGLITCH\nAND\nBREAK",
	["backdoor_3"] = "PROS:\n가장 빠른 성향\n쫓아가기 어려움\nCONS:\n계단에 과하게 의존적임\n팀플레이에서 쓸모없음",
	["backdoor_4"] = "'페어플레이 좋아하네.'\n창립자의 말",

	["hub_1"] = "SPLICER'S HUB",
	["hub_2"] = "OUR MOTTO:\nTWIST\nSPLICE\nAND\nCONNECT",
	["hub_3"] = "PROS:\nVersatile\n팀플레이에 좋음\nCONS:\n사용하기 약간 헷갈림\n익히기 위해 시간이 필요함",
	["hub_4"] = "'너무 일직선으로만 가지는 마.'\n창립자의 말",

	["shack_1"] = "GREMLIN의 오두막",
	["shack_2"] = "OUR MOTTO:\nROTATE\nREVOLVE\nAND\nHYPNOTIZE",
	["shack_3"] = "PROS:\n장점 없음\n진심 이거 왜 씀?\nCONS:\n이거 쓰면 아무도 안 좋아함\n아무도",
	["shack_4"] = "'이리 와서 나랑 놀자.'\n창립자의 말",

	["mirror_1"] = "REAVER의 거울",
	["mirror_2"] = "OUR MOTTO:\nREFLECT\nREPLACE\nAND\nMERGE",
	["mirror_3"] = "PROS:\n다른 플레이어들도 거울을 쓸 수 있음\nCONS:\n합체와 합체 해제가 헷갈릴 수 있음",
	["mirror_4"] = "'Mirrors are just doorways.'\n창립자의 말",

	["grave_1"] = "NECROMANCER의 무덤",
	["grave_2"] = "OUR MOTTO:\nFOLLOW\nREVIVE\nAND\nBENEFIT",
	["grave_3"] = "PROS:\n다른 플레이어들이 잔상을 따라간다면 잘 먹힘\n주문이 모두에게 도움이 됨\nCONS:\n마나 소모량이 가장 큼\n잔상에 신경쓰는 데 적응하기 어려움",
	["grave_4"] = "'우린 널 괴롭히는 게 아니라 그냥 친구가 되고 싶을 뿐이야.'\n창립자의 말",

	--SHARED
	["leader_pro"] = "프로 타워는 두 번의 등반 수로 칩니다.",	
	["leader_update"] = "Update in: ",	
	["leader_updating"] = "Updating...",	
	["leader_rank"] = "RANK",
	["leader_req"] = "CLIMBS REQ",
	["leader_off"] = "커스텀 타워는 순위표를 지원하지 않습니다.",

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

	["tut_big_1"] = "정신없는 계단에 오신 것을 환영합니다!",
	["tut_big_2"] = "우선 변신하는 방법부터 배워봅시다.",
	["tut_big_3"] = "당신은 이제 Patron입니다, Patron은 계단을 생성할 수 있습니다.",
	["tut_big_4"] = "모든 주문은 점프해서 실행됩니다.",
	["tut_big_5"] = "멋지지 않나요? 이제 Joker로 변신해 봅시다. Joker는 계단을 뒤집을 수 있습니다.",
	["tut_big_6"] = "당신은 이제 Joker입니다, 이 주문을 사용해서 계단을 뒤집어보세요.",
	["tut_big_7"] = "몇몇 주문들은 계단 위에서 실행해야 합니다.",
	["tut_big_8"] = "이제 Keeper로 변신하세요. Keeper는 계단을 움직일 수 있습니다.",
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