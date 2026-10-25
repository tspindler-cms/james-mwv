declare_plugin("JJJ_Curtis_Wilbur",
----- USS Curtis Wilbur DDG-54 = Arleigh Burke Class Guide Missile Destroyer
{
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("JJJ Curtis Wilbur"),
version		 = "0.0.3",		 
state		 = "installed",
info		 = _("USS Curtis Wilbur (DDG-54)"),

Skins =
	{
		{
			name  = "DDG-54 1997",
			dir   = "Skins/1"
		},
	},

})
----------------------------------------------------------------------------------------
---General
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Ctwb.zip")

-- sensors
dofile(current_mod_path.."/Database/Sensors/Ctwb_sensors.lua")

-- weapons
dofile(current_mod_path.."/Database/Weapons/Ctwb_weapons.lua")

--Ship
dofile(current_mod_path .."/Database/db_ships.lua")
plugin_done()

