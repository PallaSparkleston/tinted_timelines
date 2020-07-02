if (selfColor == color.blue){
	global.beefShotsHit++;
	instance_destroy(id);
	with(other.id){	
		myHealth -= other.damage;
		audio_play_sound(sound_sword_hit, 10, false);
	}	
	checkEnemyPulse();
}