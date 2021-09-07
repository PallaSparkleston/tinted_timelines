instance_destroy(id);
with(other.id){	
	myHealth -= other.damage;
}	
checkEnemyPulse();
if (selfColor == color.blue){
	global.beefShotsHit++;	
}else{
	global.wellShotsHit++;
}