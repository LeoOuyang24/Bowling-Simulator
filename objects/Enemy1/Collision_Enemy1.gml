/// @description Insert description here
// You can write your code in this editor


var angle = arctan2(BowlMan.y + BowlMan.sprite_height/2 - other.y - other.sprite_height/2,
				BowlMan.x +BowlMan.sprite_width/2 - other.x - other.sprite_width/2)
other.takeDamage(1,{x:-1*cos(angle)*mag,y:-1*sin(angle)*mag})
