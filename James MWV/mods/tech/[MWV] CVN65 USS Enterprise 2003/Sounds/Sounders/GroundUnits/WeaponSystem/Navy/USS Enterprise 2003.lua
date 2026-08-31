dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/_cap_common_sounder.lua")

USS_Enterprise_2003_weapons = weapons:new()

USS_Enterprise_2003_weapons:addTurret(1)
USS_Enterprise_2003_weapons:addLauncher(1, 1, phalanx)

USS_Enterprise_2003_weapons:addTurret(2)
USS_Enterprise_2003_weapons:addLauncher(2, 1, phalanx)

USS_Enterprise_2003_weapons:addTurret(3)
USS_Enterprise_2003_weapons:addLauncher(3, 1, phalanx)

USS_Enterprise_2003_weapons:addTurret(4)
USS_Enterprise_2003_weapons:addLauncher(4, 1, _9M311)

USS_Enterprise_2003_weapons:addTurret(5)
USS_Enterprise_2003_weapons:addLauncher(5, 1, _9M311)



