/// @description Code for moving
// You can write your code in this editor
if (keyboard_check(ord("I")) && keyboard_check(ord("J"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_UpLeft;
		playerDir = directions.upLeft;
	}
	x -= diagonalMultiplier*moveSpeed;
	y -= diagonalMultiplier*moveSpeed;
}
else if (keyboard_check(ord("I")) && keyboard_check(ord("L"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_UpRight;
		playerDir = directions.upRight;
	}
	x += diagonalMultiplier*moveSpeed;
	y -= diagonalMultiplier*moveSpeed;
}
else if (keyboard_check(ord("K")) && keyboard_check(ord("L"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_DownRight;
		playerDir = directions.downRight;
	}
	x += diagonalMultiplier*moveSpeed;
	y += diagonalMultiplier*moveSpeed;
}
else if (keyboard_check(ord("K")) && keyboard_check(ord("J"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_DownLeft;
		playerDir = directions.downLeft;
	}
	x -= diagonalMultiplier*moveSpeed;
	y += diagonalMultiplier*moveSpeed;
}
else if (keyboard_check(ord("I"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_Up;
		playerDir = directions.up;
	}
	y -= moveSpeed;
}
else if (keyboard_check(ord("J"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_Left;
		playerDir = directions.left;
	}
	x -= moveSpeed;
}
else if (keyboard_check(ord("K"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_Down;
		playerDir = directions.down;
	}
	y += moveSpeed;
}
else if (keyboard_check(ord("L"))){
	if (!keyboard_check(191)) {
		sprite_index = spr_Wellington_Right;
		playerDir = directions.right;
	}
	x += moveSpeed;
}
holdTimer();
if (xprevious == x && yprevious == y){
	global.redTime = false;
}else{
	global.redTime = true;
}
if (keyboard_check(vk_space)){
	fireBullet();
}