declare_plugin("JJJ_enterprise_03",
{
	dirName		  = current_mod_path,
	displayName   = _("CVN-65 Enterprise"),
	shortName	  =   "Big-E 2003",
	version		  =   "0.0.3",
	state		  =   "installed",
	fileMenuName = _("MWV Enterprise 03"),
	developerName =   "TeTeT, James J. Jackson, Riko",
	info		  =    _("USS Enterprise, CVN-65, circa 2003, Wikipedia:  In 1958, she became the first nuclear-powered aircraft carrier in the United States Navy, and the world, as well as the eighth United States naval vessel to bear the name."),

	Skins =
	{
		{
			name  = "CVN-65 2003",
			dir   = "Skins/1"
		},
	},

})

mount_vfs_liveries_path (current_mod_path .. "/Liveries")
mount_vfs_model_path    (current_mod_path .. "/Shapes")
mount_vfs_texture_path	(current_mod_path .. "/Textures/CVN_652k3.zip")
-- sensors
dofile(current_mod_path.."/Database/Sensors/CVN652k3_sensors.lua")
dofile(current_mod_path .. "/Database/db_ships.lua")

plugin_done()
