//Declare all universal pieces, called at very start of game
//Useful enums
enum directions{
	left,
	right,
	up,
	down,
	upLeft,
	upRight,
	downLeft,
	downRight,
	none
}
enum weapon{
	dartGun,
	stapleGun,
	swordPatch,
	rubberBall,
	rocketLauncher
}
enum color{
	blue,
	red,
	purple
}
enum aiState{
	patrol,
	attack
}
global.needLoad = false;
global.needLoadNoPos = false;
//global score stats
global.beefShotsFired = 0;
global.wellShotsFired = 0;
global.beefShotsHit = 0;
global.wellShotsHit = 0;
global.beefKills = 0;
global.wellKills = 0;
global.deaths = 0;


//Volume vars
if (!variable_global_exists("extrasEntered")){
	global.currentVolume = 100;
	global.maxVolume = 100;

}

global.blueTime = false;
global.redTime = false;
global.pause = false;

//Player Stats
global.maxHealth = 100;
global.sharedHealth = global.maxHealth;
//Bullet Stats
global.animationSpeed = 1;
//Darts
global.dartStick = 60 * 1;
global.dartDamage = 2;
global.dartSpeed = 4;
global.dartReload = 1; //fires one time per second
//Staples
global.stapleUpTime = 60 * .5;
global.stapleDamage = 0.25;
global.stapleSpreadAngle = 20;
global.stapleSpeed = 10;
global.stapleReload = 1/10; //fires 10 times in one second
//Swords
global.redSliceNext = true; //decides if the next attack by beef is a slice or a throw
global.blueSliceNext = true; //same thing, but for wellington
global.swordDamage = 8;
global.swordSpeed = 3;
global.sliceReload = 0.5; //can fire sword half a second after slice
global.swordReload = 1.2; //takes 1.2 seconds to fire a new sword

//Rubber ball
global.rubberBallUptime = room_speed * 7;
global.rubberDamage = 3;
global.rubberReload = 0.7;
global.rubberBounces = 5;
global.rubberSpeed = 5;

//Rockets
global.rocketStick = 30 * 1;
global.rocketDamage = 3;
global.rocketStartSpeed = 2;
global.rocketReload = 3; //fires one time every 3 seconds
global.explosionDamage = 0.05;
global.explosionDuration = 80;

//Powerup stats
global.heartHeal = 10;
global.wattBoostFactor = 0.05; //% decrease in reload time per watt
global.maxWatts = 10;

//Door stats
global.enterDirection = 12;

//Bot Stats
global.blobStartHp = 5;
global.bouncerStartHp = 10;

global.bouncerReload = 60 * 1;
global.bouncerSpeed = 1;
global.bouncerRotation = 2; //(in degrees)
global.bouncerDamage = 5;
global.slicerStartHp = 10;
global.slicerReload = 60 * 1;
global.slicerSpeed = 1;
global.slicerRotation = 2; //(in degrees)
global.slicerDamage = 1;

//Boss Stats
global.blobbossStartHp = 80;
global.blobbossNextColor = color.red;

//Room Tracking
global.powerups[0]=0;
global.powerupIterator = 0;
global.room1Cleared = false
global.room2Cleared = false
global.room3Cleared = false
global.room4Cleared = false
global.room5Cleared = false
global.room6Cleared = false
global.room7Cleared = false
global.room8Cleared = false
global.room9Cleared = false
global.room10Cleared = false