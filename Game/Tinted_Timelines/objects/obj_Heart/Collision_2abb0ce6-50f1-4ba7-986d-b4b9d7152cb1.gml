//if the players won't get over-healed, give them the full amount
if (global.sharedHealth + global.heartHeal < global.maxHealth){ 
	global.sharedHealth += global.heartHeal;
}//if the players still have HP missing, but just need hp topped off
else if (global.sharedHealth < global.maxHealth){
	global.sharedHealth = global.maxHealth;	
}
// Inherit the parent event
event_inherited();

