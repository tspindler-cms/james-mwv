--DCS Mod AI Ship USS Mahan DDG-72 by James J Jackson

GT = {};
dofile(current_mod_path..'/Database/scripts/Mahan_RunwaysAndRoutes.lua') -- the runways and taxiway lua file
GT_t.ws = 0;
GT.virtualStwID_names = { [1] = _("Front"), [2] = _("Back"), }

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "Mahan_dcs"
GT.visual.shape_dstr = ""

GT.animation_arguments.radar1_rotation = 10; 
GT.radar1_period = 3.5;
GT.animation_arguments.radar2_rotation = 11;
GT.radar2_period = 2.2; 
GT.animation_arguments.radar3_rotation = 12;
GT.radar3_period = 2;  
GT.animation_arguments.nav_lights = 0;

GT.animation_arguments.water_propeller = 13;
GT.animation_arguments.flight_deck_fences = 14;


GT.life = 2300; -- Determines Ships Life in DCS
GT.mass = 8.6e+006; -- Ship Tonnage
GT.max_velocity = 16.5333 -- Ships Speed
GT.race_velocity = 16.5333 -- Ships Speed
GT.economy_velocity = 10.2889
GT.economy_distance = 8.100e+006
GT.race_distance = 2.778e+006
GT.shipLength = 143.0 --Ships Length
GT.Width = 22  --Ships Beam
GT.Height = 38 
GT.Length = 155.5 --Ships Length
GT.DeckLevel = 6.0
GT.X_nose = 68.5 --Measured in Meters in Blender or 3DS Max 
GT.X_tail = -69.0 --Measured in Meters in Blender or 3DS Max 
GT.Tail_Width = 15
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.269786
GT.R_min = 275
GT.distFindObstacles = 160 -- Ships Distance Apart
GT.RCS = 32000

GT.numParking = 1
GT.Plane_Num_ = 0
GT.Helicopter_Num_ = 1

GT.airWeaponDist = 100000 -- Ships RADAR
GT.airFindDist = 150000 --ShipS Radar

GT.Landing_Point = {-62.582, 4.7419, 0};

--------------------------------------------------------------------------------
-- DAMAGE MODEL AREAS
--------------------------------------------------------------------------------

GT.DM = {
        { area_name = "GUN1",	            area_arg = 71,	area_life = 110},
	{ area_name = "deck_front",	    area_arg = 72,	area_life = 500},
        { area_name = "bridge",		    area_arg = 73,	area_life = 300},
	{ area_name = "CIWS1",		    area_arg = 74,	area_life = 110},
        { area_name = "CIWS2",		    area_arg = 75,	area_life = 110},
	{ area_name = "deck_mid",	    area_arg = 76,	area_life = 800},
	{ area_name = "funnel_front",	    area_arg = 77,	area_life = 110},
	{ area_name = "funnel_rear",	    area_arg = 78,	area_life = 110},
	{ area_name = "VLS1",		    area_arg = 79,	area_life = 110},
	{ area_name = "VLS2",		    area_arg = 80,	area_life = 110},
	{ area_name = "superstructure",	    area_arg = 81,	area_life = 500},
	{ area_name = "flightdeck",	    area_arg = 82,	area_life = 110},
	{ area_name = "HP1",		    area_arg = 83,	area_life = 300},
	{ area_name = "HP2",	    	    area_arg = 84,	area_life = 110},
	{ area_name = "MAST",	    	    area_arg = 85,	area_life = 250},
        { area_name = "hull_front",             area_arg = 86,	area_life = 1100},
        { area_name = "hull",             area_arg = 87,	area_life = 1100},
        { area_name = "hull_tail",             area_arg = 88,	area_life = 1100},
    }

--[[
GT.exhaust = {
	[1] = { size = 0.30 , pos = {12.38, 23.40, -3.9 } }, 
	[2] = { size = 0.30 , pos = {-18.38, 20.93, 4.07 } },
	}
]]

-- weapon systems
GT.WS = {}
GT.WS.maxTargetDetectionRange = 450000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(60);
GT.WS.searchRadarFrequencies = {{50.0e6, 54.0e6}, {2.0e9, 2.2e9}}

WSN_20 = {}
WSN_20.deviation_error_azimuth         = 0.0002
WSN_20.deviation_error_elevation     = 0.0002
WSN_20.deviation_error_speed_sensor    = 0.0002
WSN_20.deviation_error_stability     = 0.0002
WSN_20.deviation_error_distance     = 0.0002
GT_t.WSN_t[20] = WSN_20;

---------------------------------------------------- MK45 5" Ammo ---------------------------------------------

GT_t.WS_t.ship_mk45_1x127mm = {name = "Mk45 5inch 54cal"};
GT_t.WS_t.ship_mk45_1x127mm.angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(85)},
                    };
GT_t.WS_t.ship_mk45_1x127mm.omegaY = math.rad(10) -- Block 1B
GT_t.WS_t.ship_mk45_1x127mm.omegaZ = math.rad(10) -- Block 1B
GT_t.WS_t.ship_mk45_1x127mm.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_mk45_1x127mm.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_mk45_1x127mm.reference_angle_Z = 0


GT_t.LN_t.ship_mk45_127mm_AIR = {}
GT_t.LN_t.ship_mk45_127mm_AIR.type = 11
GT_t.LN_t.ship_mk45_127mm_AIR.distanceMin = 20
GT_t.LN_t.ship_mk45_127mm_AIR.distanceMax = 14214
GT_t.LN_t.ship_mk45_127mm_AIR.max_trg_alt = 7000
GT_t.LN_t.ship_mk45_127mm_AIR.reactionTime = 2
GT_t.LN_t.ship_mk45_127mm_AIR.sensor = {}
set_recursive_metatable(GT_t.LN_t.ship_mk45_127mm_AIR.sensor, GT_t.WSN_t[20])
GT_t.LN_t.ship_mk45_127mm_AIR.PL = {}
GT_t.LN_t.ship_mk45_127mm_AIR.PL[1] = {
							shell_name = {"JJJ_Mahan_mk45_127mm_AIR"},
							automaticLoader = true,
							shot_delay = 3,
							ammo_capacity = 352,
						}

GT_t.LN_t.ship_mk45_127mm = {}
GT_t.LN_t.ship_mk45_127mm.type = 6
GT_t.LN_t.ship_mk45_127mm.distanceMin = 20
GT_t.LN_t.ship_mk45_127mm.distanceMax = 23691
GT_t.LN_t.ship_mk45_127mm.max_trg_alt = 8534
GT_t.LN_t.ship_mk45_127mm.reactionTime = 12
GT_t.LN_t.ship_mk45_127mm.sensor = {}
set_recursive_metatable(GT_t.LN_t.ship_mk45_127mm.sensor, GT_t.WSN_t[10])
GT_t.LN_t.ship_mk45_127mm.PL = {}
GT_t.LN_t.ship_mk45_127mm.PL[1] = {
							shell_name = {"MK45_127"}, 
							automaticLoader = true,
							shot_delay = 3.75,
							ammo_capacity = 352,
						}
---------------------------------------------------- MK45 5"54 Main Guns ---------------------------------------------
--Front turret;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'GUN1'
GT.WS[ws].center = 'CENTER_TURRET_1'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].drawArgument1 = 1111;
GT.WS[ws].drawArgument2 = 1112;
GT.WS[ws].reference_angle_Z = math.rad(5)
GT.WS[ws].angles = {
                    {math.rad(145), math.rad(-145), math.rad(-15), math.rad(65)},
                    };
-- first set of launchers

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk45_127mm_AIR);
__LN.sightMaxTanVel = 300;
__LN.BR = {{ connector_name = 'POINT_MK45_1',
							recoilArgument = 1113,
							recoilTime = 0.2 }};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.ship_mk45_127mm);
__LN.BR = {{ connector_name = 'POINT_MK45_1',
							recoilArgument = 1113,
							recoilTime = 0.2 }};
-------------------------------------------------------- MK15 CIWS System -------------------------------------------

-- CIWS Phalanxs
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'CIWS1'
GT.WS[ws].center = 'CENTER_TURRET_2'
GT.WS[ws].drawArgument1 = 1211
GT.WS[ws].drawArgument2 = 1212
GT.WS[ws].angles[1][1] = math.rad(115);
GT.WS[ws].angles[1][2] = math.rad(-115);
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].LN[1].fireAnimationArgument = 1213;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_CIWS_1'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'CIWS2'
GT.WS[ws].center = 'CENTER_TURRET_3'
GT.WS[ws].drawArgument1 = 1221
GT.WS[ws].drawArgument2 = 1222
GT.WS[ws].angles[1][1] = math.rad(-42);
GT.WS[ws].angles[1][2] = math.rad(42);
GT.WS[ws].reference_angle_Y = math.rad(180);
GT.WS[ws].LN[1].fireAnimationArgument = 1223;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_CIWS_2'


------------------------------------------- RGM-84 Harpoon Launchers ---------------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_HARPOON )
GT.WS[ws].area = 'HP1';
GT.WS[ws].center = 'POINT_HARPOON_4'
GT.WS[ws].canSetTacticalDir = true
GT.WS[ws].LN[1].distanceMin = 5000
GT.WS[ws].LN[1].distanceMax = 250000
GT.WS[ws].LN[1].reactionTime = 8;
GT.WS[ws].LN[1].launch_delay = 1;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8;
GT.WS[ws].LN[1].show_external_missile = false;
GT.WS[ws].LN[1].external_tracking_awacs = true
GT.WS[ws].LN[1].BR = {
						{connector_name = 'POINT_HARPOON_1', drawArgument = 1611},
						{connector_name = 'POINT_HARPOON_2', drawArgument = 1612},
						{connector_name = 'POINT_HARPOON_3', drawArgument = 1613},
						{connector_name = 'POINT_HARPOON_4', drawArgument = 1614},
						{connector_name = 'POINT_HARPOON_5', drawArgument = 1615},
						{connector_name = 'POINT_HARPOON_6', drawArgument = 1616},
						{connector_name = 'POINT_HARPOON_7', drawArgument = 1617},
						{connector_name = 'POINT_HARPOON_8', drawArgument = 1618},
					}


-----------------------------------------------------------------------------------------------------------------------------
-- AIGES trackers
ws = GT_t.inc_ws();
local first_MahanSPY1_tracker_id = ws;
GT.WS[ws] = {
	omegaY = 2,
	omegaZ = 2,
	pidY = {p=100, i=0.05, d=12, inn = 50},
	pidZ = {p=100, i=0.05, d=12, inn = 50},
	--area = 'bridge',
	pos = {0.0, 19.0, 0.0},
	angles = { {math.rad(180), math.rad(-180), math.rad(-90), math.rad(80)} },
	LN = {
		[1] = {
			type = 102,
			frequencyRange = {0.5e9, 0.58e9},
			distanceMin = 1000,
			distanceMax = 370000,
			reactionTime = 2.0,
			reflection_limit = 0.03,
			ECM_K = 0.6,
			min_trg_alt = 5,
			max_trg_alt = 60000,
			max_number_of_missiles_channels = 82,
			beamWidth = math.rad(90);
		}
	}
};
local MahanSPY1_tracker_ws = {{{'self', ws}}}

for i=2,10 do
	ws = GT_t.inc_ws();
	GT.WS[ws] = {};
	set_recursive_metatable(GT.WS[ws], GT.WS[first_MahanSPY1_tracker_id]);
	table.insert(MahanSPY1_tracker_ws, {{'self', ws}})
end;


-----------------------------------------------------------------------------------------------------------------------------
local Mahan_front_cells = {
	{connector_name = 'VF11', recoilArgument = 1411, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF12', recoilArgument = 1412, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF13', recoilArgument = 1413, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF14', recoilArgument = 1414, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF15', recoilArgument = 1415, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF16', recoilArgument = 1416, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF17', recoilArgument = 1417, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF18', recoilArgument = 1418, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF21', recoilArgument = 1421, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF22', recoilArgument = 1422, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF23', recoilArgument = 1423, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF24', recoilArgument = 1424, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF25', recoilArgument = 1425, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF31', recoilArgument = 1431, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF32', recoilArgument = 1432, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF33', recoilArgument = 1433, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF34', recoilArgument = 1434, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF35', recoilArgument = 1435, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF36', recoilArgument = 1436, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF37', recoilArgument = 1437, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF38', recoilArgument = 1438, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF41', recoilArgument = 1441, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF42', recoilArgument = 1442, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF43', recoilArgument = 1443, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF44', recoilArgument = 1444, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF45', recoilArgument = 1445, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF46', recoilArgument = 1446, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF47', recoilArgument = 1447, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VF48', recoilArgument = 1448, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},

}

local Mahan_rear_cells = {
	{connector_name = 'VR11', recoilArgument = 1511, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR12', recoilArgument = 1512, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR13', recoilArgument = 1513, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR14', recoilArgument = 1514, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR15', recoilArgument = 1515, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR16', recoilArgument = 1516, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR17', recoilArgument = 1517, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR18', recoilArgument = 1518, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR21', recoilArgument = 1521, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR22', recoilArgument = 1522, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR23', recoilArgument = 1523, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR24', recoilArgument = 1524, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR25', recoilArgument = 1525, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR26', recoilArgument = 1526, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR27', recoilArgument = 1527, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR28', recoilArgument = 1528, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR31', recoilArgument = 1531, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR32', recoilArgument = 1532, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR33', recoilArgument = 1533, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR34', recoilArgument = 1534, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR35', recoilArgument = 1535, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR36', recoilArgument = 1536, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR37', recoilArgument = 1537, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR38', recoilArgument = 1538, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR41', recoilArgument = 1541, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR42', recoilArgument = 1542, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR43', recoilArgument = 1543, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR44', recoilArgument = 1544, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR45', recoilArgument = 1545, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR46', recoilArgument = 1546, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR47', recoilArgument = 1547, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR48', recoilArgument = 1548, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR51', recoilArgument = 1551, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR52', recoilArgument = 1552, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR53', recoilArgument = 1553, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR54', recoilArgument = 1554, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR55', recoilArgument = 1555, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR56', recoilArgument = 1556, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR57', recoilArgument = 1557, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR58', recoilArgument = 1558, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR61', recoilArgument = 1561, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR62', recoilArgument = 1562, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR63', recoilArgument = 1563, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR64', recoilArgument = 1564, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR65', recoilArgument = 1565, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR71', recoilArgument = 1571, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR72', recoilArgument = 1572, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR73', recoilArgument = 1573, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR74', recoilArgument = 1574, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR75', recoilArgument = 1575, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR76', recoilArgument = 1576, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR77', recoilArgument = 1577, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR78', recoilArgument = 1578, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR81', recoilArgument = 1581, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR82', recoilArgument = 1582, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR83', recoilArgument = 1583, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR84', recoilArgument = 1584, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR85', recoilArgument = 1585, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR86', recoilArgument = 1586, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR87', recoilArgument = 1587, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'VR88', recoilArgument = 1588, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
}

-------------------------------------------------------------------------------------------------
--   VLS FRONT 1
-------------------------------------------------------------------------------------------------

-- Front VLS			32 missiles
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MK41_SM2 )
GT.WS[ws].sharesBarrelsBetweenLaunchers = true
GT.WS[ws].area = 'VLS1'
GT.WS[ws].center = 'VF24'
GT.WS[ws].LN[1].depends_on_unit = MahanSPY1_tracker_ws
GT.WS[ws].LN[1].PL[1].ammo_capacity = 0
GT.WS[ws].LN[1].PL[1].virtualStwID = 1;	
GT.WS[ws].LN[1].BR = Mahan_front_cells
-- SM-2ER - inherit LN[1]
GT.WS[ws].LN[2] = {}
set_recursive_metatable(GT.WS[ws].LN[2], GT.WS[ws].LN[1])
GT.WS[ws].LN[2].distanceMax = 180000
GT.WS[ws].LN[2].depends_on_unit = MahanSPY1_tracker_ws
GT.WS[ws].LN[2].PL[1].ammo_capacity = 25 -- SM-2ER
GT.WS[ws].LN[2].PL[1].type_ammunition = "weapons.missiles.SM_2ER"
GT.WS[ws].LN[2].PL[1].name_ammunition = _("SM 2ER RIM 156")
GT.WS[ws].LN[2].BR = Mahan_front_cells
-- Tomahawk BGM-109B
GT.WS[ws].LN[3] = {}
set_recursive_metatable(GT.WS[ws].LN[3], GT_t.WS_t.ship_TOMAHAWK.LN[1])
GT.WS[ws].LN[3].PL[1].ammo_capacity = 4
GT.WS[ws].LN[3].PL[1].virtualStwID = 1;	
GT.WS[ws].LN[3].BR = Mahan_front_cells
--16
-- Rear VLS			64 missiles - inherit front VLS
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT.WS[ws-1])
GT.WS[ws].area = 'VLS2'
GT.WS[ws].center = 'VR44'

GT.WS[ws].LN[1].PL[1].ammo_capacity = 0
GT.WS[ws].LN[1].PL[1].virtualStwID = 2;	
GT.WS[ws].LN[1].BR = Mahan_rear_cells

GT.WS[ws].LN[2].PL[1].ammo_capacity = 57
GT.WS[ws].LN[2].PL[1].virtualStwID = 2;	
GT.WS[ws].LN[2].BR = Mahan_rear_cells

GT.WS[ws].LN[3].PL[1].ammo_capacity = 4
GT.WS[ws].LN[3].PL[1].virtualStwID = 2;	
GT.WS[ws].LN[3].BR = Mahan_rear_cells
--------------------------- AN SPG 62 tracker radar ------------------------------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].center = 'CENTER_FCS_1'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 1031
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 400;
GT.WS[ws].LN[1].distanceMax = 305600;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 30480;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws1 = {{{"self", ws-1}}, {{"self", ws}}};


ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(-180)
GT.WS[ws].center = 'CENTER_FCS_2'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 1032
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 400;
GT.WS[ws].LN[1].distanceMax = 305600;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 30480;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws2 = {{{"self", ws-1}}, {{"self", ws}}};	


ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(-180)
GT.WS[ws].center = 'CENTER_FCS_3'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 1033
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 400;
GT.WS[ws].LN[1].distanceMax = 305600;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 30480;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws3 = {{{"self", ws-1}}, {{"self", ws}}};	
----------------------------------------------------Weapons End -----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

GT.Name = "USS Mahan"
GT.DisplayName = _("[MWV] DDG-72 USS Mahan")
GT.DisplayNameShort = _("Arleigh Burke Class - Flight II")
GT.Rate = 3000

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR",},
                RADAR = {
                    "Mahan/SPY-1 surface",
                    "Mahan/SPY-1 air",}
            };
GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 15.3;
GT.sensor.max_range_finding_target = 500;
GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000068"; --Destroyer
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,TICONDEROGA,
                    "Cruisers",
                    "RADAR_BAND1_FOR_ARM",
					"RADAR_BAND2_FOR_ARM",
                    "DetectionByAWACS",
					"Datalink",
					"Straight_in_approach_type",
                };
				
GT.Categories = {
					{name = "Armed Ship"},
					{name = "HelicopterCarrier"}
				};
GT.tags  =
{
	"Destroyer",
}	
GT.Countries = { "USA" };			