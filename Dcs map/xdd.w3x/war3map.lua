udg_AllPlayers = {}
udg_playeradd = nil
udg_Untitled_Variable_001 = {}
gg_rct_Region_000 = nil
gg_rct_Region_001 = nil
gg_trg_Untitled_Trigger_002 = nil
gg_trg_Untitled_Trigger_001 = nil
gg_rct_Region_002 = nil
gg_trg_Untitled_Trigger_003 = nil
function InitGlobals()
local i = 0

end

function CreateNeutralPassiveBuildings()
local p = Player(PLAYER_NEUTRAL_PASSIVE)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("n000"), -1344.0, -1408.0, 270.000, FourCC("n000"))
SetUnitColor(u, ConvertPlayerColor(0))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
end

function CreateAllUnits()
CreateNeutralPassiveBuildings()
CreatePlayerBuildings()
CreatePlayerUnits()
end

function CreateRegions()
local we

gg_rct_Region_000 = Rect(-1088.0, -1760.0, 256.0, -1024.0)
gg_rct_Region_001 = Rect(-1344.0, -832.0, -352.0, -224.0)
gg_rct_Region_002 = Rect(-480.0, 160.0, 320.0, 576.0)
end

function Trig_Untitled_Trigger_003_Actions()
end

function InitTrig_Untitled_Trigger_003()
gg_trg_Untitled_Trigger_003 = CreateTrigger()
TriggerAddAction(gg_trg_Untitled_Trigger_003, Trig_Untitled_Trigger_003_Actions)
end

function Trig_Untitled_Trigger_002_Func001A()
CreateNUnitsAtLoc(1, FourCC("wisp"), GetEnumPlayer(), GetRectCenter(gg_rct_Region_000), bj_UNIT_FACING)
udg_Untitled_Variable_001[GetForLoopIndexA()] = udg_Untitled_Variable_001[GetForLoopIndexA()]
udg_playeradd = GetEnumPlayer()
CreateNUnitsAtLoc(1, FourCC("H000"), GetEnumPlayer(), GetRectCenter(gg_rct_Region_000), bj_UNIT_FACING)
DisplayTextToForce(GetPlayersAll(), GetPlayerName(udg_playeradd))
end

function Trig_Untitled_Trigger_002_Func002002()
SetPlayerStateBJ(Player(0), PLAYER_STATE_RESOURCE_GOLD, 750)
end

function Trig_Untitled_Trigger_002_Func003002()
SetPlayerStateBJ(Player(0), PLAYER_STATE_RESOURCE_LUMBER, 750)
end

function Trig_Untitled_Trigger_002_Actions()
ForForce(GetPlayersAll(), Trig_Untitled_Trigger_002_Func001A)
ForForce(GetPlayersAll(), Trig_Untitled_Trigger_002_Func002002)
ForForce(GetPlayersAll(), Trig_Untitled_Trigger_002_Func003002)
end

function InitTrig_Untitled_Trigger_002()
gg_trg_Untitled_Trigger_002 = CreateTrigger()
TriggerAddAction(gg_trg_Untitled_Trigger_002, Trig_Untitled_Trigger_002_Actions)
end

function Trig_Untitled_Trigger_001_Actions()
CreateNUnitsAtLoc(1, FourCC("hfoo"), Player(0), GetRectCenter(gg_rct_Region_000), bj_UNIT_FACING)
end

function InitTrig_Untitled_Trigger_001()
gg_trg_Untitled_Trigger_001 = CreateTrigger()
TriggerRegisterPlayerChatEvent(gg_trg_Untitled_Trigger_001, Player(0), "spawn", true)
TriggerAddAction(gg_trg_Untitled_Trigger_001, Trig_Untitled_Trigger_001_Actions)
end

function InitCustomTriggers()
InitTrig_Untitled_Trigger_003()
InitTrig_Untitled_Trigger_002()
InitTrig_Untitled_Trigger_001()
end

function RunInitializationTriggers()
ConditionalTriggerExecute(gg_trg_Untitled_Trigger_002)
end

function InitCustomPlayerSlots()
SetPlayerStartLocation(Player(0), 0)
SetPlayerColor(Player(0), ConvertPlayerColor(0))
SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
SetPlayerRaceSelectable(Player(0), true)
SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
SetPlayerTeam(Player(0), 0)
end

function main()
SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
NewSoundEnvironment("Default")
SetAmbientDaySound("LordaeronSummerDay")
SetAmbientNightSound("LordaeronSummerNight")
SetMapMusic("Music", true, 0)
CreateRegions()
CreateAllUnits()
InitBlizzard()
InitGlobals()
InitCustomTriggers()
RunInitializationTriggers()
end

function config()
SetMapName("TRIGSTR_007")
SetMapDescription("TRIGSTR_009")
SetPlayers(1)
SetTeams(1)
SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
DefineStartLocation(0, -3008.0, -1024.0)
InitCustomPlayerSlots()
SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
InitGenericPlayerSlots()
end

