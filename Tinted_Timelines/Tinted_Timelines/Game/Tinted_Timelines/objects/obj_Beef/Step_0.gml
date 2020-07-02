/// @description Code for moving
if (keyboard_check(ord("W")) && keyboard_check(ord("A"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_UpLeft;
		playerDir = directions.upLeft;
	}
	x -= diagonalMultiplier*moveSpeed;
	y -= diagonalMultiplier*moveSpeed;
}
else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_UpRight;
		playerDir = directions.upRight;
	}
	x += diagonalMultiplier*moveSpeed;
	y -= diagonalMultiplier*moveSpeed;
}
else if (keyboard_check(ord("S")) && keyboard_check(ord("D"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_DownRight;
		playerDir = directions.downRight;
	}
	x += diagonalMultiplier*moveSpeed;
	y += diagonalMultiplier*moveSpeed;

	
}
else if (keyboard_check(ord("S")) && keyboard_check(ord("A"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_DownLeft;
		playerDir = directions.downLeft;
	}
	x -= diagonalMultiplier*moveSpeed;
	y += diagonalMultiplier*moveSpeed;
}

else if (keyboard_check(ord("W"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_Up;
		playerDir = directions.up;
	}
	y -= moveSpeed;
}
else if (keyboard_check(ord("A"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_Left;
		playerDir = directions.left;
	}
	x -= moveSpeed;
}
else if (keyboard_check(ord("S"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_Down;
		playerDir = directions.down;
	}
	y += moveSpeed;
}
else if (keyboard_check(ord("D"))){
	if (!keyboard_check(ord("C"))) {
		sprite_index = spr_Beef_Right;
		playerDir = directions.right;
	}
	x += moveSpeed;
}

if (xprevious == x && yprevious == y){
	global.blueTime = false;
}else{
	global.blueTime = true;
}

holdTimer();

if (keyboard_check(vk_lcontrol)){
	fireBullet();
}