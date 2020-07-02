continueButton = instance_create_layer(room_width/2 - 150,room_height/2 - 150,"Instances",obj_UI_Button);
continueButton.text = "Continue?";
continueButton.width = 300;
continueButton.height = 100;
audio_play_sound(deathTheme,5,true)
audio_stop_sound(earlyLevels)
audio_stop_sound(lateLevels)
audio_stop_sound(bossMusic)
audio_stop_sound(mainTheme)
quitButton = instance_create_layer(room_width/2 - 150,room_height/2 + 50,"Instances",obj_UI_Button);
quitButton.text = "Quit";
quitButton.width = 300;
quitButton.height = 100;