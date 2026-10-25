declare_plugin("JJJ_Barry",
----- USS Barry DDG-52 = Arleigh Burke Class Guide Missile Destroyer
{
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("JJJ Barry"),
version		 = "0.0.3",		 
state		 = "installed",
info		 = _("USS Barry (DDG-52)"),

Skins =
	{
		{
			name  = "DDG-52 1993",
			dir   = "Skins/1"
		},
	},

})
----------------------------------------------------------------------------------------
---General
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Barry.zip")

-- sensors
dofile(current_mod_path.."/Database/Sensors/Barry_sensors.lua")

-- weapons
dofile(current_mod_path.."/Database/Weapons/Barry_weapons.lua")

--Ship
dofile(current_mod_path .."/Database/db_ships.lua")
plugin_done()

