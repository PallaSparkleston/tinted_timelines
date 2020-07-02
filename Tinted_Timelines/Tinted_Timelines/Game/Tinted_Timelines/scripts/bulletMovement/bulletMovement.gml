//if time condition is met, a bullet calls this script to move
//updated to move based on the image angle to work with sword patch

if(argument0) {
	if (sprite_index = spr_Red_Sword || sprite_index == spr_Blue_Sword) {
		bulletDir = image_angle - 90;
	} else {
		bulletDir = image_angle;
	}
	needsDir = false;
}

if ((sprite_index = spr_Red_Rocket || sprite_index = spr_Blue_Rocket) && !hasCollided) {
	bulletSpeed = bulletSpeed*1.08;
}

xMovement = -bulletSpeed * dsin(bulletDir);
yMovement = -bulletSpeed * dcos(bulletDir);
x += xMovement;
y += yMovement;

