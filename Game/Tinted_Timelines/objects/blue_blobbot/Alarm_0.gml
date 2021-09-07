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
alarm[0]=60