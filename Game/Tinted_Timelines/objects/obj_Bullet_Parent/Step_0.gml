if (selfColor == color.red){
	if (global.redTime == true){
		bulletMovement(needsDir);		
	}
}else if (selfColor == color.blue) {
	if (global.blueTime == true){
		bulletMovement(needsDir);		
	}
}
holdTimer();
tintObject();