x = xprevious;
y = yprevious;

if (obj_Wall.x > x) {
	x--
}
if (obj_Wall.x < x) {
	x++
}
if (obj_Wall.y > y) {
	y--
}
if (obj_Wall.y > y) {
	y++
}

selfState = aiState.patrol;