if (selfColor == color.red){
	if (global.redTime == true){
		bulletMovement(needsDir);		
	}
}else if (selfColor == color.blue) {
	if (global.blueTime == true){
		bulletMovement(needsDir);		
	}
}

holdTimer();
tintObject();
if (global.blueTime == true && tempAlarm1 > 0){
	alarm[1] = tempAlarm1;
	tempAlarm1 -= 1;
}else if (alarm[1] > 0){
	tempAlarm1 = alarm[1];
	alarm[1] = -1;
}
if (bounces < global.rubberBounces && canCollide == true){
	var horizSpeed = -bulletSpeed * dsin(image_angle);
	var vertSpeed = -bulletSpeed * dcos(image_angle);
	//set new horizontal and vertical speeds if it hits
	if (place_meeting(x,y + sprite_width/10,obj_Wall) || place_meeting(x,y - sprite_width/10,obj_Wall)){ //top/bot collisions
		audio_play_sound(sound_bounce, 5, false);
		canCollide = false;
		bounces += 1;
		needsDir = true;
		alarm[1] = 10;
		vertSpeed = -vertSpeed;
	}else if  (place_meeting(x + sprite_width/10,y,obj_Wall) || place_meeting(x - sprite_width/10,y,obj_Wall)){ //side collisions
		audio_play_sound(sound_bounce, 5, false);
		canCollide = false;
		bounces += 1;
		needsDir = true;
		alarm[1] = 10;
		horizSpeed = -horizSpeed;
	}
	image_angle = -darctan2(vertSpeed,horizSpeed) -90;	
}else if (canCollide == true){
	instance_destroy();
}

