
if (isReloaded == true){
	isReloaded = false;
	alarm[0] = reloadTime;
	switch (playerDir){
		case directions.upLeft:
			tempx = x - 0.5*sprite_height;
			tempy = y - 0.5*sprite_height;
			angle = 45;
			break;
		case directions.downLeft:
			tempx = x - 0.5*sprite_height;
			tempy = y + 0.5*sprite_height;
			angle = 135;
			break;
		case directions.downRight:
			tempx = x + 0.5*sprite_height;
			tempy = y + 0.5*sprite_height;
			angle = 225;
			break;
		case directions.upRight:
			tempx = x + 0.5*sprite_height;
			tempy = y - 0.5*sprite_height;
			angle = 315;
			break;
		case directions.up:
			tempx = x;
			tempy = y - 0.5*sprite_height;
			angle = 0;
			break;
		case directions.down:
			tempx = x;
			tempy = y + 0.5*sprite_height;
			angle = 180;
			break;
		case directions.left:
			tempx = x - 0.5*sprite_width;
			tempy = y;
			angle = 90;
			break;
		case directions.right:
			tempx = x + 0.5*sprite_width;
			tempy = y;
			angle = 270;
			break;
	}
	//if the bullet will be spawned in a wall, don't spawn it
	if(position_meeting(tempx, tempy,obj_Wall)){
		exit;
	}
	if (object_index == obj_Beef){
		global.beefShotsFired++;
		switch (currentGun){
			case(weapon.dartGun):
				var inst = instance_create_layer(tempx,tempy,"Instances",obj_Blue_Dart);
				inst.bulletSpeed = global.dartSpeed;
				inst.damage = global.dartDamage;
				inst.image_angle = angle;
				audio_play_sound(sound_dart_throw, 10, false);
				break;
			case(weapon.stapleGun):
				global.beefShotsFired+=2;
				for (i = angle - global.stapleSpreadAngle; i <= angle + global.stapleSpreadAngle; i += global.stapleSpreadAngle){
					var inst = instance_create_layer(tempx,tempy,"Instances",obj_Blue_Staple);
					inst.bulletSpeed = global.stapleSpeed;
					inst.damage = global.stapleDamage;
					inst.image_angle = i;
					audio_play_sound(sound_staples, 10, false);
				}
				break;
			case(weapon.rubberBall):
				var inst = instance_create_layer(tempx,tempy,"Instances",obj_Blue_Bounce);
				inst.bulletSpeed = global.rubberSpeed;
				inst.damage = global.rubberDamage;
				inst.image_angle = angle;
				audio_play_sound(sound_dart_throw, 10, false);
				with(inst){
					if(place_meeting(x, y,obj_Wall)){
						instance_destroy();
					}
				}
				break;
			case(weapon.swordPatch):
				if (global.redSliceNext) {
					var inst = instance_create_layer(tempx,tempy,"Instances",obj_Blue_Sword);
					inst.bulletSpeed = global.swordSpeed;
					inst.damage = global.swordDamage;
					inst.originalAngle = angle+90;
					inst.image_angle = angle+90;
					inst.slice = true;
					global.redSliceNext = false;
					reloadTime = (room_speed*global.swordReload) * (1 - watts*global.wattBoostFactor);
				} else {
					var inst = instance_create_layer(tempx,tempy,"Instances",obj_Blue_Sword);
					inst.bulletSpeed = global.swordSpeed;
					inst.damage = global.swordDamage;
					inst.originalAngle = angle+90;
					inst.image_angle = angle+90;
					inst.slice = false;
					global.redSliceNext = true;
					reloadTime = (room_speed*global.sliceReload) * (1 - watts*global.wattBoostFactor);
				}
				audio_play_sound(sound_sword_swipe, 10, false);
				break;
			case(weapon.rocketLauncher):
				var inst = instance_create_layer(tempx,tempy,"Instances",obj_Blue_Rocket);
				inst.bulletSpeed = global.rocketStartSpeed;
				inst.damage = global.rocketDamage;
				inst.image_angle = angle;
				break;
		}
	}else{
		global.wellShotsFired++;
		switch (currentGun){
			case(weapon.dartGun):
				var inst = instance_create_layer(tempx,tempy,"Instances",obj_Red_Dart);
				inst.bulletSpeed = global.dartSpeed;
				inst.damage = global.dartDamage;
				inst.image_angle = angle;
				audio_play_sound(sound_dart_throw, 10, false);
				break;
			case(weapon.stapleGun):
				global.wellShotsFired+=2;
				for (i = angle - global.stapleSpreadAngle; i <= angle + global.stapleSpreadAngle; i += global.stapleSpreadAngle){
					var inst = instance_create_layer(tempx,tempy,"Instances",obj_Red_Staple);
					inst.bulletSpeed = global.stapleSpeed;
					inst.damage = global.stapleDamage;
					inst.image_angle = i;
					audio_play_sound(sound_staples, 10, false);
				}
				break;
			case(weapon.rubberBall):
				var inst = instance_create_layer(tempx,tempy,"Instances",obj_Red_Bounce);
				inst.bulletSpeed = global.rubberSpeed;
				inst.damage = global.rubberDamage;
				inst.image_angle = angle;
				audio_play_sound(sound_dart_throw, 10, false);
				with(inst){
					if(place_meeting(x, y,obj_Wall)){
						instance_destroy();
					}
				}
				break;
			case(weapon.swordPatch):
				if (global.blueSliceNext) {
					var inst = instance_create_layer(tempx,tempy,"Instances",obj_Red_Sword);
					inst.bulletSpeed = global.swordSpeed;
					inst.damage = global.swordDamage;
					inst.originalAngle = angle+90;
					inst.image_angle = angle+90;
					inst.slice = true;
					global.blueSliceNext = false;
					reloadTime = (room_speed*global.swordReload) * (1 - watts*global.wattBoostFactor);
				} else {
					var inst = instance_create_layer(tempx,tempy,"Instances",obj_Red_Sword);
					inst.bulletSpeed = global.swordSpeed;
					inst.damage = global.swordDamage;
					inst.originalAngle = angle+90;
					inst.image_angle = angle+90;
					inst.slice = false;
					global.blueSliceNext = true;
					reloadTime = (room_speed*global.sliceReload) * (1 - watts*global.wattBoostFactor);
				}
				audio_play_sound(sound_sword_swipe, 10, false);
				break;
			case(weapon.rocketLauncher):
				var inst = instance_create_layer(tempx,tempy,"Instances",obj_Red_Rocket);
				inst.bulletSpeed = global.rocketStartSpeed;
				inst.damage = global.rocketDamage;
				inst.image_angle = angle;
				break;
		}
	}
	
}