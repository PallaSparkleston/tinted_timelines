selfColor = color.blue;
myHealth =  global.slicerStartHp;
tempAlarm0 = 0;
alarm[0] = global.slicerReload;
reloaded = false;
pathEnd = false;
selfState = aiState.patrol;
moveSpeed = global.slicerSpeed;
rotateSpeed = global.slicerRotation;
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
hasDied = false;