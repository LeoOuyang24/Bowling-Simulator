/// @description Insert description here
// You can write your code in this editor
enemySpeed = 1
enemyDirDuration = 3
horSpeed = 0
verSpeed = 0
numAlarms = 4
attackDistance = 150
playerPursueDistance = 800 //should be anything onscreen basically
goingToAttack = true

leftXRoomLimit = 50
rightXRoomLimit = room_width - 50
upperYRoomLimit = 50
lowerYRoomLimit = room_height - 50


walkSprite = Sprite1
attackSprite = Sprite2
sprite_index = walkSprite

if(abs( x - BowlMan.x ) < playerPursueDistance && abs( y - BowlMan.y ) < playerPursueDistance ){
	goingToAttack = true
	sprite_index = Sprite4
}else{
	goingToAttack = false
}


if(!goingToAttack){ //wander if not close enough to player
	
dir = irandom_range(0, numAlarms)
while(dir=2){
	dir = floor( irandom_range(0, numAlarms) ) 
}
alarm[dir] = room_speed * enemyDirDuration;

}

canAttackFlag = true
attackDamage = 10



