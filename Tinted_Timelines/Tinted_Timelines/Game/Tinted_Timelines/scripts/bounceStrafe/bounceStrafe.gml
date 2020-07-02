//Makes the bot move around in chosen directions, without facing them.
var xMovement = -moveSpeed * dsin(image_angle);
var yMovement = -moveSpeed * dcos(image_angle);
var goalAngle;
switch currentDir  {
	case directions.upLeft:
		goalAngle = 45;
		break;
	case directions.downLeft:
		goalAngle = 135;
		break;
	case directions.downRight:
		goalAngle = 225;
		break;
	case directions.upRight:
		goalAngle = 315;
		break;
	case directions.up:
		goalAngle = 0;
		break;
	case directions.down:
		goalAngle = 180;
		break;
	case directions.left:
		goalAngle = 90;
		break;
	case directions.right:
		goalAngle = 270;
		break;
}
var xMovement = -moveSpeed * dsin(goalAngle);
if (regularPathingCountDown <= 0){
	var yMovement = -moveSpeed * dcos(image_angle);
}else{
	var yMovement = -moveSpeed * dcos(goalAngle);
	regularPathingCountDown--;
}
y += yMovement;
x += xMovement;
if (place_meeting(x, y,obj_Wall)){
	y = yprevious;
	var yMovement = -moveSpeed * dcos(goalAngle);
	y += yMovement;
	regularPathingCountDown = 200;
}


//if the bot just went into a wall, change direction
if (place_meeting(x, y,obj_Wall)){
	x = xprevious;
	y = yprevious;
	pickRandomDir();
}else{
	dirChecked = [false,false,false,false,false,false,false,false,false]; //a correct direction has been found! clear wrong dirs
}
