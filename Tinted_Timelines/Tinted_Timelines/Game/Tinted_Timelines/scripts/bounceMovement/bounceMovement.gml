var goalAngle = image_angle;
var xMovement = -moveSpeed * dsin(image_angle);
var yMovement = -moveSpeed * dcos(image_angle);
var moved = false;
switch currentDir  {
	case directions.upLeft:
		if (image_angle == 45){
			y += yMovement;
			x += xMovement;
			moved = true;
		}else{
			goalAngle = 45;
		}
		break;
	case directions.downLeft:
		if (image_angle == 135){
			y += yMovement;
			x += xMovement;
			moved = true;
		}else{
			goalAngle = 135;
		}
		break;
	case directions.downRight:
		if (image_angle == 225){
			y += yMovement;
			x += xMovement;
			moved = true;
		}else{
			goalAngle = 225;
		}
		break;
	case directions.upRight:
		if (image_angle == 315){
			y += yMovement;
			x += xMovement;
			moved = true;
		}else{
			goalAngle = 315;
		}
		break;
	case directions.up:
		if (image_angle == 0){
			y -= moveSpeed;
			moved = true;
		}else{
			goalAngle = 0;
		}
		break;
	case directions.down:
		if (image_angle == 180){
			y += moveSpeed;
			moved = true;
		}else{
			goalAngle = 180;
		}
		break;
	case directions.left:
		if (image_angle == 90){
			x -= moveSpeed;
			moved = true;
		}else{
			goalAngle = 90;
		}
		break;
	case directions.right:
		if (image_angle == 270){
			x += moveSpeed;
			moved = true;
		}else{
			goalAngle = 270;
		}
		break;
	case directions.none:
		pickRandomDir(); //start up the process
		break;
}
if (moved == true){
	//if the bot just went into a wall or outside it's patrol, take it back, change its direction
	if (place_meeting(x, y,obj_Wall)){
		x = xprevious;
		y = yprevious;
		pickRandomDir();
	}else if(x < patrolCoordX || x > patrolCoordX + patrolWidth || y < patrolCoordY || y > patrolCoordY + patrolHeight){
		x = xprevious;
		y = yprevious;
		pickRandomDir();	
	}else{
		dirChecked = [false,false,false,false,false,false,false,false,false]; //a correct direction has been found! clear wrong dirs
	}
}
//if the bot doesn't meet the goal angle, make them rotate for the frame
if (goalAngle != image_angle){ 
	if (image_angle < goalAngle){
		image_angle += rotateSpeed;	
		if (image_angle % 45 == 1){
			image_angle -= 1;	
		}
	}else{
		image_angle -= rotateSpeed;
		if (image_angle % 45 == 44){
			image_angle += 1;	
		}
	}
	//make sure weird decimal didn't get thrown in
	image_angle = floor(image_angle);
}