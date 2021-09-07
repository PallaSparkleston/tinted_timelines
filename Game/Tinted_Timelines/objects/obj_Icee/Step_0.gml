if (gameWon) {
	
	if (delay && !alarmActivate) {
		alarm[0] = 120;
		alarmActivate = true
	}
		

	image_angle++;
	
	if (keyboard_check_pressed(vk_anykey)) {
		instance_activate_all();
		instance_destroy();
		saveGame(false);
		room = victoryRoom;
	}
	
}

