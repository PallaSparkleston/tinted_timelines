if (mainMenuEvents == false){
	extraButtonWidth = 200;
	extraButtonHeight = 50;
	mainMenuEvents = true;


	//initialize all buttons, pictures, etc.
	
	
	backButton = instance_create_layer(room_width*1/18,room_height*7/8 ,"Instances",obj_UI_Button);
	backButton.text = "Back";
	backButton.width = extraButtonWidth;
	backButton.height = extraButtonHeight;
	
	volumeBar = instance_create_layer(room_width*1/4, room_height*4/5, "Instances", obj_UI_Volume_Bar);
	volumeBar.barLength = room_width * 1/2;
	volumeBar.volBarHeight = 30; 
}
//maintain all initialized parts, manage animation, etc.barLength,room_height*3/4 + volBarHeight, c_red,c_red,c_red,c_red, false);

draw_sprite(spr_controls,-1, 0,0);

//draw_sprite(spr_title,-1,room_width/2 + 35,0);
draw_sprite(beefSprite,-1, 100,450);
draw_sprite(wellingtonSprite,-1,room_width-100, 450);
drawMenu();