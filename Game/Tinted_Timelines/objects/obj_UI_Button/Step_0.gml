/// @description changes color if user hovers the box, sets clicked to true if hit
if (mouse_x < x + width && mouse_x > x && mouse_y < y +height && mouse_y > y){
	setColor = highlightColor;
	if (mouse_check_button_released(mb_left)){
		clicked = true;
	}
}else{
	setColor = boxColor;	
}
