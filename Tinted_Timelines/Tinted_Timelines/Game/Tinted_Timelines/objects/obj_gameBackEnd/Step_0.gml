/// @description for doing backend stuff every frame
//Some pause code taken from: https://developer.amazon.com/blogs/appstore/post/35ad26c8-95df-4033-8a58-70276d1dbe8d/gamemaker-basics-pause-and-unpause
if (room != mainMenu){
	if(global.needLoadNoPos ==true){
		global.needLoadNoPos = false;
		loadGame(false);
	}
	if (global.needLoad == true){
		global.needLoad = false;
		loadGame(true);
	}
	//save in step function to make sure all objects were initialized
	if (needSave == true){
		saveGame(true);	
		needSave = false;
	}
	if (global.sharedHealth <= 0) {
		if (death == false){
			//runs once to initalize
			global.pause = true;
			//make sure pause menu isn't drawn
			death = true;
			if (!sprite_exists(screenShot)){
				screenShot = sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);
			}
			instance_deactivate_all(true);
			deathMenuLayout();
		}
		if (quitButton.clicked == true){
			audio_play_sound(sound_menu_button, 10, false);
			room = mainMenu;	
		}
		if (continueButton.clicked == true){
			audio_play_sound(sound_menu_button, 10, false);
			audio_stop_sound(deathTheme)
			if(!global.room6Cleared){
				audio_play_sound(earlyLevels,5,true)	
			}
			else if(!global.room9Cleared){
				audio_play_sound(lateLevels,5,true)	
			}
			else{
				audio_play_sound(bossMusic,5,true)	
			}
			global.deaths++;
			if (room != mainMenu && room != extrasMenu && room != Room1 && room != debugRoom){
				global.needLoad = true;
			}else{
				//used to be globalInit();, changed to keep deaths stat
				global.needLoadNoPos = true;
			}
			layer_destroy_instances("Instances");
			room_restart();
		}
		
	}
	if (keyboard_check_pressed(vk_escape) && room!= extrasMenu && room != victoryRoom && room != mainMenu && death == false){
		audio_play_sound(sound_menu_button, 10, false);
		global.pause = !global.pause;
		if (!sprite_exists(screenShot)){
			screenShot = sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);
		}
	}
	if (global.pause == true && death ==false){
		if (pauseEvents == false){
			pauseEvents = true;
			instance_deactivate_all(true);
			pauseMenuLayout();
		}
		if (resumeButton.clicked == true){
			audio_play_sound(sound_menu_button, 10, false);
			global.pause = false;
		}
		if (quitButton.clicked == true){
			audio_play_sound(sound_menu_button, 10, false);
			room = mainMenu;	
		}
	}
	//Note: Couldn't use "else" here, since the resume button would cause the UI
	//to be redrawn before instances were reactivated.
	if (global.pause == false){
		if (sprite_exists(screenShot)){
			sprite_delete(screenShot);
		}
		instance_activate_all();
		if (pauseEvents == true){
			pauseEvents = false;
			instance_destroy(resumeButton);
			instance_destroy(quitButton);
		}
	}	
}else if (mainMenuEvents == true){
	if (startButton.clicked == true){
		audio_play_sound(sound_menu_button, 10, false);
		audio_play_sound(earlyLevels,5,true)
		audio_stop_sound(mainTheme)
		room = Room1;
	}else if (testButton.clicked == true){
		audio_play_sound(sound_menu_button, 10, false);
		room = debugRoom;	
	}else if (extrasButton.clicked == true){
		audio_play_sound(sound_menu_button, 10, false);
		room = extrasMenu;
	}else if (quitButton.clicked == true){
		audio_play_sound(sound_menu_button, 10, false);
		game_end();
	}
}

if (room == extrasMenu &&mainMenuEvents == true){
	if (backButton.clicked == true){
		audio_play_sound(sound_menu_button, 10, false);
		room = mainMenu;	
	}
}
if (room == victoryRoom &&mainMenuEvents == true){
	if (backButton.clicked == true){
		audio_play_sound(sound_menu_button, 10, false);
		room = mainMenu;	
	}
}
