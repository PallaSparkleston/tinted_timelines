if(argument0=="Beef"){
	tempBool=true;
}
else if(argument0 == "Wellington"){
	tempBool=false;
}
else{
	return;
}
if(global.enterDirection ==12){
	if(tempBool){
		x=650
		y=550
		return;
	}
	else{
		x=600
		y=550
		return;
	}
}
else if(global.enterDirection == 6){
	if(tempBool){
		x=650
		y=100
		return;
	}
	else{
		x=600
		y=100
		return;
	}
}
else if(global.enterDirection == 3){
	if(tempBool){
		x=100
		y=350
		return;
	}
	else{
		x=100
		y=400
		return;
	}
}
else if(global.enterDirection == 9){
	if(tempBool){
		x=100
		y=350
		return;
	}
	else{
		x=100
		y=400
		return;
	}
}