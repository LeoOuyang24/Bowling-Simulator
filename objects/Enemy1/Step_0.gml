/// @description Insert description here
// You can write your code in this editor
x = x + horSpeed
y = y + verSpeed


if(x < playerPursueDistance){
	goingToAttack = true
	sprite_index = Sprite4
}

if( ( abs(BowlMan.x - x) < attackDistance) && ( abs(BowlMan.y - y) < attackDistance ) ){
	
	if(canAttackFlag){
		sprite_index = attackSprite;
		BowlMan.playerHealth -= attackDamage;
		canAttackFlag = false
		alarm[2] = room_speed * 3; //controls when can attack next
		alarm[5] = room_speed * 1; //controls attacking sprite
		//goingToAttack = false
		//movingAway = true
		//alarm[6] = room_speed * 5; //trigger wander
	}
}else{
	//sprite_index = walkSprite;
}

if(goingToAttack){
	
if(BowlMan.x < x){
	horSpeed = -enemySpeed
}
if(BowlMan.x > x){
	horSpeed = enemySpeed
}
if(BowlMan.y < y){
	verSpeed = -enemySpeed
}
if(BowlMan.y > y){
	verSpeed = enemySpeed
}

}


if( x < leftXRoomLimit ){
	horSpeed = enemySpeed;
}
if( x > rightXRoomLimit ){
	horSpeed = -enemySpeed;
}

if( y < upperYRoomLimit ){
	verSpeed = enemySpeed;
}
if( y > lowerYRoomLimit ){
	verSpeed = -enemySpeed;
}

if(BowlMan.x < x){
	image_xscale = 1
}
if(BowlMan.x > x){
	image_xscale = -1
}






