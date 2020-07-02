global.pause = false;
if (room == victoryRoom){
	//any itnitialization necessary
}
if (room == mainMenu){
	audio_stop_sound(mainTheme)
	audio_stop_sound(deathTheme)
	audio_stop_sound(earlyLevels)
	audio_stop_sound(lateLevels)
	audio_stop_sound(victoryTheme)
	audio_stop_sound(bossMusic)
	audio_play_sound(mainTheme, 5, true)
	globalInit();
}
if (room == extrasMenu){
	global.extrasEntered = true;	
}
if (room != mainMenu && room != extrasMenu && room != victoryRoom){
	needSave = true;
}else{
	needSave = false;	
}
screenShot = -1;
pauseEvents = false;
mainMenuEvents = false;
death = false;
//Resizes window to match room size, places it in the center of the screen
surface_resize(application_surface,room_width,room_height);
window_set_size(room_width,room_height);
window_set_position(display_get_width()/2 - room_width/2,display_get_height()/2 - room_height/2);