if (global.blueTime == true){
	if (selfState == aiState.attack){
		//face enemy
		opposite = x-target.x
		adjacent = y-target.y
		if (adjacent > 0) {
			image_angle = darctan(opposite/adjacent)
		}else if(adjacent == 0){
			image_angle = 0;
		} else {
			image_angle = darctan(opposite/adjacent)+180
		}
		
		// follow the target
		if (x <= target.x) {
			x++
		} else if (x > target.x) {
			x--
		}
		if (y <= target.y) {
			y++
		} else if (y > target.y) {
			y--
		}
		
		var inst = instance_create_layer(x,y,"Instances",obj_Blue_Enemy_Sword);
					inst.bulletSpeed = global.swordSpeed;
					inst.damage = global.swordDamage;
					inst.originalAngle = image_angle+90;
					inst.creator = self
		
	}
	if(health<=0){
		instance_destroy(self)
	}
	if (selfState == aiState.patrol){
		bounceMovement();
		//60 degree cone
		for (var i = image_angle - 30 -90; i < image_angle + 30 - 90; i++){
			//300 depth
			for (var j = 1; j < 300; j+=25){
				var xOff = -j * dcos(i);
				var yOff = j * dsin(i);
				if (position_meeting(x + xOff,y + yOff,obj_Wall)){
					break;
				}else if(position_meeting(x + xOff,y + yOff,obj_Beef) || position_meeting(x + xOff,y + yOff,obj_Wellington)){
					selfState = aiState.attack; //Spotted an enemy, angery
					pickRandomDir();
				}
			}
		}
		
	}
}else{
	//do nothing if red time is inactive
}
holdTimer();
tintObject();
if(myHealth<=0){
	instance_destroy(self);
	global.beefKills++;
}
if(checkCleared(room)){
	instance_destroy(self)	
}