if (selfColor == color.red) {
	if (global.redTime) {
	with(other.id){	
		myHealth -= global.explosionDamage;
	}	
	checkEnemyPulse();
	}
}