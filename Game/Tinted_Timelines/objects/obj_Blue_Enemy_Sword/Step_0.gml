if (instance_exists(creator)) {
	x = creator.x;
	y = creator.y;
	image_angle -= 20;
	if (image_angle == originalAngle-180) {
		instance_destroy();
	}
} else {
	instance_destroy()
}