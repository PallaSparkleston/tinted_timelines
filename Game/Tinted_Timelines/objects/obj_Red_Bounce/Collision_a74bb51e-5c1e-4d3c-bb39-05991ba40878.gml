if (selfColor == color.red){
	instance_destroy(id);
	global.wellShotsHit++;
	with(other.id){	
		myHealth -= other.damage;
		audio_play_sound(sound_bounce_hit, 10, false);
	}	
	checkEnemyPulse();
}