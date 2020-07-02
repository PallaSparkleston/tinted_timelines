///@func saveGame(savePosition)
//overwrite old file
if (file_exists("save.ini")){
	file_delete("save.ini");	
}
ini_open("save.ini");
ini_write_real("room","room_index", room);

ini_write_real("score","beef_shots", global.beefShotsFired);
ini_write_real("score","well_shots", global.wellShotsFired);
ini_write_real("score","beef_score", global.beefKills);
ini_write_real("score","well_score", global.wellKills);
ini_write_real("score","beef_hits", global.beefShotsHit);
ini_write_real("score","well_hits", global.wellShotsHit);


ini_write_real("inventory","health", global.sharedHealth);
ini_write_real("inventory","beef_gun", obj_Beef.currentGun);
ini_write_real("inventory","beef_watts", obj_Beef.watts);
ini_write_real("inventory","well_gun", obj_Wellington.currentGun);
ini_write_real("inventory","well_watts", obj_Wellington.watts);
if (argument0){
	ini_write_real("locations", "beef_x", obj_Beef.x);
	ini_write_real("locations", "beef_y", obj_Beef.y);
	ini_write_real("locations", "well_x", obj_Wellington.x);
	ini_write_real("locations", "well_y", obj_Wellington.y);
}
ini_close();