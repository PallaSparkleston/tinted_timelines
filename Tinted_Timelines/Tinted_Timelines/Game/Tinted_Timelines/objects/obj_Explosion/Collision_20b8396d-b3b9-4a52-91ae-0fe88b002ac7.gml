if (selfColor == color.blue) {
	if (global.blueTime) {
	with(other.id){	
		myHealth -= global.explosionDamage;
	}	
	checkEnemyPulse();
	}
}