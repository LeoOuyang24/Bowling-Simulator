/// @description Insert description here
// You can write your code in this editor
speed = 1
objHealth = 10
hurt=false
force = {x: 0, y: 0}

function takeDamage(amount, push)
{
	if (!hurt)
	{
		objHealth -= amount
		image_blend = make_colour_hsv(1, 255, random(255))
		alarm[0] = 10
		hurt = true
		force = push
	}
}