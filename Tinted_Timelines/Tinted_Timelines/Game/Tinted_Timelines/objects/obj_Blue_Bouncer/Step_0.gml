if (global.blueTime == true){
	if (selfState == aiState.attack){
		//face enemy
		opposite = x-target.x
		adjacent = y-target.y
		if (adjacent > 0) {
			image_angle = darctan(opposite/adjacent)
		}else if(adjacent == 0){
			image_angle = 0;
		} else {
			image_angle = darctan(opposite/adjacent)+180
		}
		//run around the room randomly, avoid walls (short version of patrol/botMovement)
		bounceStrafe();
		steps = 50;
		directShot = true;
		var yStep = (y - target.y)/steps;
		var xStep  = (x - target.x)/steps;
		for (var i = 0; i < steps; i++){
			if (position_meeting(x - (xStep*i),y - (yStep*i),obj_Wall)){
				directShot = false; //no perfect shot on the player
			}
		}
		fireDistX = x;
		fireDistY = y;
		//do a direct shot calculation, but asjudt the change in x and y to match simple bullet reflections
		if (directShot == false){
			//50 degree cone, check to see if a bankshot can happen
			bankShot = false;
			var xMod;
			var yMod;
			stepCheck = 10;
			var xPrev;
			var yPrev;
			for (var i = image_angle - 25 -90; i < image_angle + 25 - 90; i+=2){
				//depth for each angle set to dist from player to bot x 4
				xMod = -1;
				yMod = 1;
				xPrev = x;
				yPrev = y;
				var leavingSteps = 0;
				for (var j = 1; j < sqrt((yStep * 200)*(yStep * 200) + (xStep * 200)*(xStep*200)); j+=stepCheck){
					var xOff = xMod*stepCheck * dcos(i);
					var yOff = yMod*stepCheck * dsin(i);
					xPrev += xOff;
					yPrev += yOff;
					if (position_meeting(xPrev + xOff,yPrev,obj_Wall)){
						//reflect change in x
						xMod = -xMod;
					}
					if (position_meeting(xPrev ,yPrev+yOff,obj_Wall)){
						//reflect change in y
						yMod = -yMod;
					}
					//bullet is "leaving", bot stops calculation early. Dumbs down bot a little to speed up game
					if ((xPrev+xOff - target.x)*(xPrev+xOff - target.x) + (yPrev+yOff - target.y)*(yPrev+yOff - target.y) > (xPrev - target.x)*(xPrev - target.x) + (yPrev - target.y)*(yPrev - target.y)){
						leavingSteps++;
					}
					if (leavingSteps > 50){
						break;	
					}
					if position_meeting(xPrev,yPrev, target){
						bankShot = true;
						bankAngle = i + 90;
						image_angle = bankAngle;
						break;
					}
				}
				if (bankShot == true){
					break;	
				}
			}
		}
		
	}
	if (reloaded == true){
		//fire gun with different options, either direct fire, ricochet, or random
		if (directShot == true){
			bounceShoot(); //just blast enemy if directly in line of sight
		}else if (bankShot == true){
			image_angle = bankAngle;
			bounceShoot();
		}
	}

	if(health<=0){
		instance_destroy(self)
	}
	if (selfState == aiState.patrol){
		bounceMovement();
		//60 degree cone
		for (var i = image_angle - 30 -90; i < image_angle + 30 - 90; i+=5){
			//300 depth
			for (var j = 1; j < 300; j+=25){
				var xOff = -j * dcos(i);
				var yOff = j * dsin(i);
				if (position_meeting(x + xOff,y + yOff,obj_Wall)){
					break;
				}else if(position_meeting(x + xOff,y + yOff,obj_Beef) || position_meeting(x + xOff,y + yOff,obj_Wellington)){
					selfState = aiState.attack; //Spotted an enemy, angery
					pickRandomDir();
				}
			}
		}
		
	}
}else{
	//do nothing if blue time is inactive
}
holdTimer();
tintObject();
if(myHealth<=0){
	instance_destroy(self);
	global.beefKills++;
}
if(checkCleared(room)){
	instance_destroy(self)	
}