
if (global.blueTime == true){
	if (slice) {
		x = obj_Beef.tempx;
		y = obj_Beef.tempy;
		image_angle -= 20;
		if (image_angle == originalAngle-180) {
			instance_destroy();
		}
	} else {
		bulletMovement(needsDir);	
		if (!hasCollided) {
			image_angle -= 10;
		}
	}
}

holdTimer();
tintObject();