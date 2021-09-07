//players have swapped reload time
if (object_index == obj_Beef || object_index == obj_Wellington){
	if (selfColor == color.red){
		if (global.blueTime == true && tempAlarm0 > 0){
			alarm[0] = tempAlarm0;
			tempAlarm0 -= 1;
		}else if (alarm[0] > 0){
			tempAlarm0 = alarm[0];
			alarm[0] = -1;
		}
	}else if (selfColor == color.blue){
		if (global.redTime == true && tempAlarm0 > 0){
			alarm[0] = tempAlarm0;
			tempAlarm0 -= 1;
		}else if (alarm[0] > 0){
			tempAlarm0 = alarm[0];
			alarm[0] = -1;
		}
	}
}else{//make reload stop when time stops, resume when time is moving for items with colors matching
	if (selfColor == color.blue){
		if (global.blueTime == true && tempAlarm0 > 0){
			alarm[0] = tempAlarm0;
			tempAlarm0 -= 1;
		}else if (alarm[0] > 0){
			tempAlarm0 = alarm[0];
			alarm[0] = -1;
		}
	}else if (selfColor == color.red){
		if (global.redTime == true && tempAlarm0 > 0){
			alarm[0] = tempAlarm0;
			tempAlarm0 -= 1;
		}else if (alarm[0] > 0){
			tempAlarm0 = alarm[0];
			alarm[0] = -1;
		}
	} else if (selfColor == color.purple) {
		if ((global.redTime|| global.blueTime) && tempAlarm0 > 0){
			alarm[0] = tempAlarm0;
			tempAlarm0 -= 1;
		}else if (alarm[0] > 0){
			tempAlarm0 = alarm[0];
			alarm[0] = -1;
		}
	}
}