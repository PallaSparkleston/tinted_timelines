if (selfColor == color.red){
	global.wellShotsHit++;
	inst = instance_create_layer(x,y,"Instances", obj_Explosion);
	inst.selfColor = selfColor;
	instance_destroy(id);
	with(other.id){	
		myHealth -= other.damage;
	}	
	checkEnemyPulse();
}