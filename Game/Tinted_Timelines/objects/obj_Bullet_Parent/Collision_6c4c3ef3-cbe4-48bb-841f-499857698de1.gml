if (selfColor == color.red){
	instance_destroy(id);
	global.wellShotsHit++;
	with(other.id){	
		myHealth -= other.damage;
	}	
	checkEnemyPulse();
}