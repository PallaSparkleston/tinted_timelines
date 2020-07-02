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
alarm[0]=60