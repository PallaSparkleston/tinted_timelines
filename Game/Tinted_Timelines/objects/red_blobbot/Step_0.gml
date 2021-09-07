if (global.redTime == true){
	opposite = x-obj_Beef.x
	adjacent = y-obj_Beef.y

	if (adjacent > 0) {
		image_angle = darctan(opposite/adjacent)
	} else {
		image_angle = darctan(opposite/adjacent)+180
	}

	if(myHealth<=0){
		instance_destroy(self);
		global.wellKills++;
	}
	if (path_position == 1){
		pathEnd = true;	
	}else if(path_position == 0){
		pathEnd = false;	
	}
	if (pathEnd == false){
		path_speed = 1;	
	}else{
		path_speed = -1;	
	}
}else{
	path_speed = 0;	
}
holdTimer();
tintObject();
if(checkCleared(room)){
	instance_destroy(self)	
}