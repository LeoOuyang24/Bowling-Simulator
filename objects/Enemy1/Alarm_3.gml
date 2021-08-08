/// @description Insert description here
// You can write your code in this editor
verSpeed = 0
horSpeed = enemySpeed

dir = irandom_range(0, numAlarms)
while(dir=2){
	dir = floor( irandom_range(0, numAlarms) ) 
}

alarm[dir] = room_speed * enemyDirDuration;