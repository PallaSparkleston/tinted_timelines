if (selfColor == color.blue){
	global.beefShotsHit++;
	instance_destroy(id);
	with(other.id){	
		myHealth -= other.damage;
	}	
	checkEnemyPulse();
}