///@func equipWeapon(weapon)
///@description Gives the player the stats of the weapon based on the enum
switch (argument0){
	case weapon.dartGun:
		reloadTime = (room_speed*global.dartReload) * (1 - watts*global.wattBoostFactor);
		currentGun = weapon.dartGun;
		break;
	case weapon.stapleGun:
		reloadTime = (room_speed*global.stapleReload) * (1 - watts*global.wattBoostFactor);
		currentGun = weapon.stapleGun;
		break;
	case weapon.swordPatch:
		reloadTime = (room_speed*global.swordReload) * (1 - watts*global.wattBoostFactor);
		currentGun = weapon.swordPatch;
		break;
	case weapon.rubberBall:
		reloadTime = (room_speed*global.rubberReload) * (1 - watts*global.wattBoostFactor);
		currentGun = weapon.rubberBall;
		break;
	case weapon.rocketLauncher:
		reloadTime = (room_speed*global.rocketReload) * (1 - watts*global.wattBoostFactor);
		currentGun = weapon.rocketLauncher;
		break;
}