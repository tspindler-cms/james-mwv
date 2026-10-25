declare_plugin("JJJ_Mahan",
----- USS Mahan DDG-72 = Arleigh Burke Class Guide Missile Destroyer
{
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("JJJ Mahan"),
version		 = "0.0.3",		 
state		 = "installed",
info		 = _("USS Mahan (DDG-72)"),

Skins =
	{
		{
			name  = "DDG-72 1999",
			dir   = "Skins/1"
		},
	},

})
----------------------------------------------------------------------------------------
---General
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Mahan.zip")

-- sensors
dofile(current_mod_path.."/Database/Sensors/Mahan_sensors.lua")

-- weapons
dofile(current_mod_path.."/Database/Weapons/Mahan_weapons.lua")

--Ship
dofile(current_mod_path .."/Database/db_ships.lua")
plugin_done()

