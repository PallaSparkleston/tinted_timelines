//for easy coordinate selection, uncomment
//draw_text(20, 20, string(mouse_x))
//draw_text(20,60, string(mouse_y));

//draw main UI sprite
draw_set_alpha(.75);
draw_sprite(spr_UI_Main, -1, 0, -20);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Draw upper indicator of time on the screen
draw_set_alpha(1);
draw_sprite(spr_Time_Background, -1, room_width/2 +1, 0)
tempColor = c_black;
if (global.redTime == true && global.blueTime == true){
	tempColor = c_purple;
}else if (global.redTime == true){
	tempColor = c_red;
}else if (global.blueTime == true){
	tempColor = c_blue;
}
draw_circle_color(room_width/2, 40, 20, tempColor, tempColor, false);

//Draw health bar
draw_set_alpha(1);
//background
draw_rectangle_color(422, 662, 828, 688, c_black, c_black, c_black, c_black, false);
//decreasing health bar based on HP
draw_rectangle_color(425 +(200*(1-global.sharedHealth/global.maxHealth)), 665, 825-(200*(1-global.sharedHealth/global.maxHealth)), 685, c_red, c_blue, c_blue, c_red, false);

if (global.pause == false){
	//Draw reload bars
	reloadPercent = 0;
	reloadPercent2 = 0;
	with (obj_Beef){
		if (tempAlarm0 != -1){
			other.reloadPercent = 1 - (tempAlarm0/reloadTime);
		}else{
			other.reloadPercent = 1;
		}
		if (other.reloadPercent < 0){
			other.reloadPercent = 0;
		}
	}
	if (reloadPercent != 1){
		color1 = c_white;
	}else{
		color1 = c_blue;	
	}
	with (obj_Wellington){
		if (tempAlarm0 != -1){
			other.reloadPercent2 = 1 - (tempAlarm0/reloadTime);
		}else{
			other.reloadPercent2 = 1;
		}
		if (other.reloadPercent2 < 0){
			other.reloadPercent2 = 0;
		}
	
	}
	if (reloadPercent2 != 1){
		color2 = c_white;
	}else{
		color2 = c_red;	
	}
	watts1 = obj_Beef.watts;
	watts2 = obj_Wellington.watts;
	beefGun = obj_Beef.currentGun;
	wellGun = obj_Wellington.currentGun;
}
draw_rectangle_color(208, 622, 322, 638, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(950, 622, 1064, 638, c_black, c_black, c_black, c_black, false);

draw_rectangle_color(210, 624, 210 + 110*reloadPercent, 636, color1, color1, color1, color1, false);
draw_rectangle_color(952, 624, 952 + 110*reloadPercent2, 636, color2, color2, color2, color2, false);


//Draw number of watts for each player
draw_set_color(c_black);
draw_set_font(font_Watt_Display);
draw_text(228,650, string(watts1));
draw_text(1020,650, string(watts2));

//Draw current weapons of players
switch(beefGun){
	case(weapon.dartGun):
		draw_sprite_stretched(spr_Dart_Gun, -1,50, 610, 80, 80 );
		break;
	case(weapon.stapleGun):
		draw_sprite_stretched(spr_Staple_gun, -1, 20, 580, 150,150);
		break;
	case(weapon.rubberBall):
		draw_sprite_stretched(spr_Rubber_Ball, -1, 20, 580, 150,150);
		break;
	case(weapon.swordPatch):
		draw_sprite_stretched(spr_Sword_Patch, -1, 20, 580, 150,150);
		break;
	case(weapon.rocketLauncher):
		draw_sprite_stretched(spr_Rocket_Launcher, -1, 20, 560, 150,150);
		break;
}
switch(wellGun){
	case(weapon.dartGun):
		draw_sprite_stretched(spr_Dart_Gun, -1,1130, 610, 80, 80 );
		break;
	case(weapon.stapleGun):
		draw_sprite_stretched(spr_Staple_gun, -1, 1100, 580, 150,150);
		break;
	case(weapon.rubberBall):
		draw_sprite_stretched(spr_Rubber_Ball, -1, 1100, 580, 150,150);
		break;
	case(weapon.swordPatch):
		draw_sprite_stretched(spr_Sword_Patch, -1, 1100, 580, 150,150);
		break;
	case(weapon.rocketLauncher):
		draw_sprite_stretched(spr_Rocket_Launcher, -1, 1100, 560, 150,150);
		break;
}

