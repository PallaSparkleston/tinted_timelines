//Make objects that can currently move have full opacity, while object that can't slightly transparent
//Currently only valid for bullets, but may be useful for enemies


if (selfColor == color.blue && global.blueTime == true){
	image_alpha = 1;
	image_speed = global.animationSpeed;
}else if(selfColor == color.blue){
	image_alpha = .4;
	image_speed = 0;
}

if (selfColor == color.red && global.redTime == true){
	image_alpha = 1;
	image_speed = global.animationSpeed;
}else if(selfColor == color.red){
	image_alpha = .4;	
	image_speed = 0;
}

if (selfColor == color.purple && (global.redTime || global.blueTime)){
	image_alpha = 1;
	image_speed = global.animationSpeed;
}else if (selfColor == color.purple) {
	image_alpha = .4;	
	image_speed = 0;
}