if (global.blobbossNextColor == color.red) {
	bullet = instance_create_depth(x, y,0,obj_Red_Blob)
	opposite = x-obj_Beef.x
	adjacent = y-obj_Beef.y
	if (adjacent > 0) {
		bullet.image_angle = darctan(opposite/adjacent)
	} else {
		bullet.image_angle = darctan(opposite/adjacent)+180
	}

	bullet.bulletSpeed=1
	bullet.selfColor=color.red
	
	// shoot a random color bullet next
	if (irandom(1) == 0) {
		global.blobbossNextColor = color.red
	} else {
		global.blobbossNextColor = color.blue
	}
} else if (global.blobbossNextColor == color.blue) {
	bullet = instance_create_depth(x, y,0,obj_Blue_Blob)
	opposite = x-obj_Wellington.x
	adjacent = y-obj_Wellington.y
	if (adjacent > 0) {
		bullet.image_angle = darctan(opposite/adjacent)
	} else {
		bullet.image_angle = darctan(opposite/adjacent)+180
	}

	bullet.bulletSpeed=1
	bullet.selfColor=color.blue
	
		// shoot a random color bullet next
	if (irandom(1) == 0) {
		global.blobbossNextColor = color.red
	} else {
		global.blobbossNextColor = color.blue
	}
}
alarm[0]=40