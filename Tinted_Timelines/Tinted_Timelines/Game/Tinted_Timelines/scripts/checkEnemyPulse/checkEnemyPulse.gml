//quick check to credit a kill to a player
if (other.myHealth <= 0 && selfColor == color.blue && other.hasDied == false){
	global.beefKills++;
	other.hasDied = true;
}else if(other.myHealth <= 0 && selfColor == color.red && other.hasDied == false){
	global.wellKills++;
	other.hasDied = true;
}