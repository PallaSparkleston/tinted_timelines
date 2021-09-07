draw_healthbar(x-20, y-20, x+20, y-25, (myHealth/global.bouncerStartHp)*100, c_black, c_red, c_lime, 0, true, true)

//draw ! if in attack
if (selfState == aiState.attack){
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(x,y-sprite_height*2, "!");
}

//draw cone of sight
if (selfState == aiState.patrol){
	draw_set_color(c_black);
	//60 degree cone
		for (var i = image_angle - 30 -90; i < image_angle + 30 - 90; i++){
			//300 depth
			for (var j = 1; j < 300; j+=25){
				var xOff = -j * dcos(i);
				var yOff = j * dsin(i);
				draw_point(x + xOff, y + yOff);
				if (position_meeting(x + xOff,y + yOff,obj_Wall)){
					break;
				}
			}
		}
}