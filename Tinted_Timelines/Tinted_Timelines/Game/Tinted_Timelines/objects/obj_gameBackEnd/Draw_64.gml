if(global.needLoad || global.needLoadNoPos){
	exit;	
}
if (room == mainMenu){
	mainMenuDisplay();	
}
if (room != mainMenu && room != victoryRoom && room != extrasMenu && global.pause == false && death == false){
	drawPlayerUI();
}
if (room != mainMenu && room != extrasMenu && room != victoryRoom && global.pause == true) {
	draw_sprite(screenShot,-1,0,0);
	drawPlayerUI();
	drawMenu();
}
if (room == extrasMenu){
	extrasMenuDisplay();	
}
if (room == victoryRoom){
	victoryMenuDisplay();
}