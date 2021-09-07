with(obj_UI_Button){
	draw_set_color(textColor);
	draw_set_font(font_Watt_Display);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_rectangle_color(x,y,x+width,y+height,setColor,setColor,setColor,setColor,false);
	draw_rectangle_color(x,y,x+width,y+height,textColor,textColor,textColor,textColor,true);
	draw_text(x+width/2,y+height/2, text);
}