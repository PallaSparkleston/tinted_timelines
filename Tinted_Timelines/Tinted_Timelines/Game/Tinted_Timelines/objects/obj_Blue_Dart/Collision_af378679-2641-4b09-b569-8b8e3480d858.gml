if (hasCollided == false){
	audio_play_sound(sound_wall_thud, 10, false);
	alarm[0] = global.dartStick;
	hasCollided = true;
}