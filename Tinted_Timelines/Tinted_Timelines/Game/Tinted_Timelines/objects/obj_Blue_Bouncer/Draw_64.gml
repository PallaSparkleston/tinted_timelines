draw_healthbar(x-20, y-20, x+20, y-25, (myHealth/global.bouncerStartHp)*100, c_black, c_red, c_lime, 0, true, true)

//draw ! if in attack
if (selfState == aiState.attack){
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(x,y-sprite_height*2, "!");
}

//draw cone of sight
if (selfState == aiState.patrol){
	draw_set_color(c_black);
	//60 degree cone
		for (var i = image_angle - 30 -90; i < image_angle + 30 - 90; i+=5){
			//300 depth
			for (var j = 1; j < 300; j+=25){
				var xOff = -j * dcos(i);
				var yOff = j * dsin(i);
				draw_circle(x + xOff, y + yOff,2,false);
				if (position_meeting(x + xOff,y + yOff,obj_Wall)){
					break;
				}
			}
		}
}

//draw cool lines to show AI aim process
if (directShot == true && global.blueTime == true){
	var yStep = (y - target.y)/steps;
		var xStep  = (x - target.x)/steps;
		for (var i = 0; i < steps; i++){
			draw_set_color(c_blue);
			draw_point(x - xStep*i, y - yStep*i);
		}	
}

if (directShot == false && bankShot == true && global.blueTime == true){
	steps = 50;
	var yStep = (y - target.y)/steps;
	var xStep  = (x - target.x)/steps;
	var xMod;
	var yMod;
	stepCheck = 5;
	var xPrev;
	var yPrev;
	var i = bankAngle - 90;
	//depth for each angle set to dist from player to bot x 2
	xMod = -1;
	yMod = 1;
	xPrev = x;
	yPrev = y;
	for (var j = 1; j < sqrt((yStep * 100)*(yStep * 100) + (xStep * 100)*(xStep*100)); j+=stepCheck){
		var xOff = xMod*stepCheck * dcos(i);
		var yOff = yMod*stepCheck * dsin(i);
		draw_set_color(c_blue);
		draw_line(xPrev,yPrev, xPrev+xOff, yPrev+yOff);
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
		if position_meeting(xPrev,yPrev, target){
			bankShot = true;
			break;
		}
	}
				
}