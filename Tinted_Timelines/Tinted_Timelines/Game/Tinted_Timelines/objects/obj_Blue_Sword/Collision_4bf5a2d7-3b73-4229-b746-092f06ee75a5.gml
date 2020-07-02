instance_destroy(id);
with(other.id){	
	myHealth -= other.damage;
}	
checkEnemyPulse();
if (selfColor == color.blue){
	global.beefShotsHit++;
	audio_play_sound(sound_sword_hit, 10, false);
	
}else{
	global.wellShotsHit++;
	audio_play_sound(sound_sword_hit, 10, false);
}