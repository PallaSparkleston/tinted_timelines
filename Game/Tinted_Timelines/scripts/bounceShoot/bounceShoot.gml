if (selfColor == color.blue && !place_meeting(fireDistX, fireDistY,obj_Wall)){	
	var inst = instance_create_layer(fireDistX ,fireDistY,"Instances",obj_Blue_Enemy_Bounce);
	inst.image_angle = image_angle;
	reloaded = false;
	alarm[0] = global.bouncerReload;
}else if(!place_meeting(fireDistX, fireDistY,obj_Wall)){
	var inst = instance_create_layer(fireDistX ,fireDistY,"Instances",obj_Red_Enemy_Bounce);
	inst.image_angle = image_angle;
	reloaded = false;
	alarm[0] = global.bouncerReload;
}