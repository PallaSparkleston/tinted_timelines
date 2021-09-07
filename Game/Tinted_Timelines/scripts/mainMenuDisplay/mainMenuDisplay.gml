if (mainMenuEvents == false){
	mainButtonWidth = 400;
	mainButtonHeight = 100;
	mainMenuEvents = true;
	spacing = 50;
	mainMenuStart = 150;
	//initialize all buttons, pictures, etc.
	startButton = instance_create_layer(room_width/2 - mainButtonWidth/2, mainMenuStart,"Instances",obj_UI_Button);
	startButton.text = "Start";
	startButton.width = mainButtonWidth;
	startButton.height = mainButtonHeight;
	
	testButton = instance_create_layer(room_width/2 - mainButtonWidth/2,mainMenuStart + mainButtonHeight + spacing,"Instances",obj_UI_Button);
	testButton.text = "Test Room";
	testButton.width = mainButtonWidth;
	testButton.height = mainButtonHeight;
	
	extrasButton = instance_create_layer(room_width/2 - mainButtonWidth/2,mainMenuStart+ 2*(mainButtonHeight + spacing),"Instances",obj_UI_Button);
	extrasButton.text = "Extras";
	extrasButton.width = mainButtonWidth;
	extrasButton.height = mainButtonHeight;
	
	
	quitButton = instance_create_layer(room_width/2 - mainButtonWidth/2,mainMenuStart+ 3*(mainButtonHeight + spacing),"Instances",obj_UI_Button);
	quitButton.text = "Quit";
	quitButton.width = mainButtonWidth;
	quitButton.height = mainButtonHeight;
	
	boxAlphaValue = 1;
	
}
//maintain all initialized parts, manage animation, etc.

drawMenu();
draw_sprite(spr_title,-1,room_width/2 + 35,0);
draw_sprite(beefSprite,-1, 120,450);
draw_sprite(wellingtonSprite,-1,room_width-120, 450);

//simple fade in animation
if (boxAlphaValue > 0){
	boxAlphaValue -= 0.01;
	draw_set_alpha(boxAlphaValue);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}