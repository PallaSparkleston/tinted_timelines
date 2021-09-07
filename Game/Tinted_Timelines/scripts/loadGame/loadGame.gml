///@func loadGame(loadPosition)
if (file_exists("save.ini")){
	ini_open("save.ini");
	global.beefShotsFired = ini_read_real("score","beef_shots", global.beefShotsFired);
	global.wellShotsFired = ini_read_real("score","well_shots", global.wellShotsFired);
	global.beefKills = ini_read_real("score","beef_score", global.beefKills);
	global.wellKills = ini_read_real("score","well_score", global.wellKills);
	global.beefShotsHit = ini_read_real("score","beef_hits", global.beefShotsHit);
	global.wellShotsHit = ini_read_real("score","well_hits", global.wellShotsHit);

	global.sharedHealth = ini_read_real("inventory","health", global.sharedHealth);
	obj_Beef.currentGun = ini_read_real("inventory","beef_gun", obj_Beef.currentGun);
	obj_Beef.watts = ini_read_real("inventory","beef_watts", obj_Beef.watts);
	obj_Wellington.currentGun = ini_read_real("inventory","well_gun", obj_Wellington.currentGun);
	obj_Wellington.watts = ini_read_real("inventory","well_watts", obj_Wellington.watts);
	
	with (obj_Beef){
		equipWeapon(currentGun);
	}
	with (obj_Wellington){
		equipWeapon(currentGun);
	}
	
	if (argument0){
		obj_Beef.x = ini_read_real("locations", "beef_x", obj_Beef.x);
		obj_Beef.y = ini_read_real("locations", "beef_y", obj_Beef.y);
		obj_Wellington.x = ini_read_real("locations", "well_x", obj_Wellington.x);
		obj_Wellington.y = ini_write_real("locations", "well_y", obj_Wellington.y);
	}
	ini_close();
}