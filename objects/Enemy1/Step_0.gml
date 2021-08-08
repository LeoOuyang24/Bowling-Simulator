/// @description Insert description here
// You can write your code in this editor
direction = -arctan2(BowlMan.y - y,BowlMan.x - x)*180/pi
if (hurt)
{
	speed = 0
}
else
{
	speed = .5	
}
var forceGain = .1
if (force.x != 0)
{
	x += force.x
	force.x -= clamp(forceGain,abs(force.x),forceGain)*(force.x/abs(force.x))

}
if (force.y != 0)
{
	y += force.y
	force.y -= clamp(forceGain,abs(force.y),forceGain)*(force.y/abs(force.y))
}

/*if (BowlMan.y + BowlMan.sprite_height < y) or (BowlMan.y > y + sprite_height)
{
	if x - 10 <= BowlMan.x + BowlMan.sprite_width and x + sprite_width + 10 >= BowlMan.x
	{
		image_blend = make_colour_hsv(1, 255, random(255))
	}
}*/