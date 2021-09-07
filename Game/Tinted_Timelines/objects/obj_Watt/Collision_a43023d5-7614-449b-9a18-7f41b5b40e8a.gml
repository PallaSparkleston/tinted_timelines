with(other){
	if (watts < global.maxWatts){
		watts++;	
	}
	//calls equipweapon to adjust current reload
	equipWeapon(currentGun);
}

// Inherit the parent event
event_inherited();

