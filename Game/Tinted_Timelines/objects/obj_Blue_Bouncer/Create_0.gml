//path_start(blob1,1, path_action_reverse,0);
selfColor = color.blue;
myHealth =  global.bouncerStartHp;
tempAlarm0 = 0;
alarm[0] = global.bouncerReload;
reloaded = false;
pathEnd = false;
selfState = aiState.patrol;
moveSpeed = global.bouncerSpeed;
rotateSpeed = global.bouncerRotation;
//area to patrol is a rectangle on the map
patrolCoordX = x - sprite_width;
patrolCoordY = y - sprite_height;
patrolWidth = 400;
patrolHeight = 200;
currentDir = directions.none;
//9 false bools for directions
dirChecked = [false,false,false,false,false,false,false,false,false];
regularPathingCountDown = 0;
target = obj_Wellington;
directShot = false;
bankShot = false;
bankAngle = 0;
hasDied = false;