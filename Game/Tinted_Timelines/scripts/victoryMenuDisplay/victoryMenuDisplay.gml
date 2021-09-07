if (mainMenuEvents == false){
	victoryButtonWidth = 200;
	victoryButtonHeight = 50;
	mainMenuEvents = true;

	//initialize all buttons, pictures, etc.
	
	backButton = instance_create_layer(room_width*1/18,room_height*7/8 ,"Instances",obj_UI_Button);
	backButton.text = "Back";
	backButton.width = victoryButtonWidth;
	backButton.height = victoryButtonHeight;
	boxAlphaValue = 1;
	
}
//maintain all initialized parts, manage animation, etc.barLength,room_height*3/4 + volBarHeight, c_red,c_red,c_red,c_red, false);

draw_sprite(beefSprite,-1, 100,450);
draw_sprite(wellingtonSprite,-1,room_width-100, 450);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(room_width/2, 50, "Congratulations!");
draw_text(room_width/2, 100, "Stats:");
draw_set_color(c_purple);
draw_text_transformed(room_width/2, 150, "Deaths: " + string(global.deaths), 0.8,0.8,0);

//Beef stats
draw_set_halign(fa_left);
draw_set_color(c_red);
draw_text_transformed(room_width/6, 250, "Shots fired: " + string(global.beefShotsFired), 0.8,0.8,0);
draw_text_transformed(room_width/6, 300, "Enemies Destroyed: " + string(global.beefKills), 0.8,0.8,0);
draw_text_transformed(room_width/6, 350, "Accuracy: " + string(global.beefShotsHit/global.beefShotsFired * 100) + "%", 0.8,0.8,0);
//Wellington stats
draw_set_halign(fa_right);
draw_set_color(c_blue);
draw_text_transformed(room_width*5/6, 250, "Shots fired: " + string(global.wellShotsFired), 0.8,0.8,0);
draw_text_transformed(room_width*5/6, 300, "Enemies Destroyed: " + string(global.wellKills), 0.8,0.8,0);
draw_text_transformed(room_width*5/6, 350, "Accuracy: " + string(global.wellShotsHit/global.wellShotsFired * 100) + "%", 0.8,0.8,0);
drawMenu();

//simple fade in animation
if (boxAlphaValue > 0){
	boxAlphaValue -= 0.01;
	draw_set_alpha(boxAlphaValue);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}