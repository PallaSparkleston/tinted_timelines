gameWon = false
delay = true
alarmActivate = false
if(id==inst_637DCEBE){
	if(!global.room10Cleared){
		instance_destroy(self)
	}
}