if (global.redTime == true){
	opposite = x-obj_Beef.x
	adjacent = y-obj_Beef.y

	if (adjacent > 0) {
		image_angle = darctan(opposite/adjacent)
	} else {
		image_angle = darctan(opposite/adjacent)
	}

	if (path_position == 1){
		pathEnd = true;	
	}else if(path_position == 0){
		pathEnd = false;	
	}
	if (pathEnd == false){
		path_speed = 1;	
	} 
} else if (global.blueTime == true){
	opposite = x-obj_Wellington.x
	adjacent = y-obj_Wellington.y

	if (adjacent > 0) {
		image_angle = darctan(opposite/adjacent)
	} else {
		image_angle = darctan(opposite/adjacent)
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


if(myHealth<=0){
	instance_create_depth(x, y, 0, obj_Icee);
	temp--
	if(temp = 0){
		instance_destroy(self);
	}
}


holdTimer();
tintObject();
if(checkCleared(room)){
	instance_destroy(self)	
}