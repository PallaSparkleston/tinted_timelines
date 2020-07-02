currentLoc = global.currentVolume/global.maxVolume*barLength;
if (x == anchorX && y == anchorY){
	x = anchorX + currentLoc;
	y = anchorY + volBarHeight/2;
}
x = anchorX + currentLoc;
if(mouse_check_button(mb_left)){
	if (position_meeting(mouse_x,mouse_y,id)){
		clicked = true;
		sprite_index = spr_Volume_Clicked;
	}
}
if(mouse_check_button_released(mb_left)){
	clicked = false;
	sprite_index = spr_Volume;
}
if (clicked == true && mouse_x < x-5 && global.currentVolume > 0){
	global.currentVolume -= 1;	
}
else if (clicked == true && mouse_x > x+5 && global.currentVolume < global.maxVolume){
	global.currentVolume += 1;	
}

audio_master_gain(global.currentVolume/100);