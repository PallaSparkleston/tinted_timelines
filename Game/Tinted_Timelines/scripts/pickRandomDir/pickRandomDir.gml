//Pass in a direction enum variable, changes it to a random direction
var repeated = currentDir;
//continue generating random directions until a NEW direction is chosen.
dirChecked[currentDir] = true;
while (currentDir == repeated && dirChecked[currentDir] = true){
	var rand = irandom_range(0,9);
	switch (rand){
		case 1:
			currentDir = directions.left;
			break;
		case 2:
			currentDir = directions.right;
			break;
		case 3:
			currentDir = directions.up;
			break;
		case 4:
			currentDir = directions.down;
			break;
		case 5:
			currentDir = directions.upLeft;
			break;
		case 6:
			currentDir = directions.upRight;
			break;
		case 7:
			currentDir = directions.downLeft;
			break;
		case 8:
			currentDir = directions.downRight;
			break;
	}
}