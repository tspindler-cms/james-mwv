dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

USS_Curtis_Wilbur_weapons = weapons:new()

-- Mark 45
USS_Curtis_Wilbur_weapons:addTurret(1)
USS_Curtis_Wilbur_weapons:addLauncher(1, 1, ship_FMC5)
USS_Curtis_Wilbur_weapons:addLauncher(1, 2, ship_FMC5)

-- Phalanx CIWS
USS_Curtis_Wilbur_weapons:addTurret(2)
USS_Curtis_Wilbur_weapons:addLauncher(2, 1, phalanx)

USS_Curtis_Wilbur_weapons:addTurret(3)
USS_Curtis_Wilbur_weapons:addLauncher(3, 1, phalanx)

-- RGM-84
USS_Curtis_Wilbur_weapons:addTurret(4)
USS_Curtis_Wilbur_weapons:addLauncher(4, 1, HARPOON)

USS_Curtis_Wilbur_weapons:addLauncher(15, 1, ship_MK41_SM2)
USS_Curtis_Wilbur_weapons:addLauncher(15, 2, ship_MK41_SM2)
USS_Curtis_Wilbur_weapons:addLauncher(15, 3, M26)

USS_Curtis_Wilbur_weapons:addLauncher(16, 1, ship_MK41_SM2)
USS_Curtis_Wilbur_weapons:addLauncher(16, 2, ship_MK41_SM2)
USS_Curtis_Wilbur_weapons:addLauncher(16, 3, M26)

-- _9A33, _9M120, _9M311, M26, ship_MK41_SM2, HARPOON, 