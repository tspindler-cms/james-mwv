dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

USS_Barry_weapons = weapons:new()

-- Mark 45
USS_Barry_weapons:addTurret(1)
USS_Barry_weapons:addLauncher(1, 1, ship_FMC5)
USS_Barry_weapons:addLauncher(1, 2, ship_FMC5)

-- Phalanx CIWS
USS_Barry_weapons:addTurret(2)
USS_Barry_weapons:addLauncher(2, 1, phalanx)

USS_Barry_weapons:addTurret(3)
USS_Barry_weapons:addLauncher(3, 1, phalanx)

-- SM-2MR
USS_Barry_weapons:addTurret(4)
USS_Barry_weapons:addLauncher(4, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(5)
USS_Barry_weapons:addLauncher(5, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(6)
USS_Barry_weapons:addLauncher(6, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(7)
USS_Barry_weapons:addLauncher(7, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(8)
USS_Barry_weapons:addLauncher(8, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(9)
USS_Barry_weapons:addLauncher(9, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(10)
USS_Barry_weapons:addLauncher(10, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(11)
USS_Barry_weapons:addLauncher(11, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(12)
USS_Barry_weapons:addLauncher(12, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(13)
USS_Barry_weapons:addLauncher(13, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(14)
USS_Barry_weapons:addLauncher(14, 1, ship_MK41_SM2)

USS_Barry_weapons:addTurret(15)
USS_Barry_weapons:addLauncher(15, 1, ship_MK41_SM2)
-- BGM-109
USS_Barry_weapons:addTurret(16)
USS_Barry_weapons:addLauncher(16, 1, M26)

USS_Barry_weapons:addTurret(17)
USS_Barry_weapons:addLauncher(17, 1, M26)

-- RGM-84
USS_Barry_weapons:addTurret(18)
USS_Barry_weapons:addLauncher(18, 1, HARPOON)




-- _9A33, _9M120, _9M311, M26, ship_MK41_SM2, HARPOON, 