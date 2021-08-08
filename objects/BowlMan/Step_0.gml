/// @description Insert description here
// You can write your code in this editor
function addStamina(amount)
{
	stamina = clamp(stamina + amount,0,maxStamina);	
}
	
	horiz = 0
	vert = 0
	if (controllable)
	{
		if (keyboard_check(vk_left)and keyboard_lastkey != vk_right)
			{
				horiz = -1;
				image_xscale = 1
			}
		else if (keyboard_check(vk_right) and keyboard_lastkey != vk_left)
			{
				horiz = 1;
				image_xscale = -1
			}
		if (keyboard_check(vk_up) and keyboard_lastkey != vk_down)
			 vert = 1
		else if (keyboard_check(vk_down) and keyboard_lastkey != vk_up)
			vert = -1;
		if (vert == 0 and horiz == 0)
		{
			speed = 0	
		}
		else
		{
			radians = arctan2(vert,horiz)
			direction = radians*180/pi
			speed = 2
		}
	
		if (keyboard_check_pressed(ord("Q")))
		{
			instance_create_layer(x -sprite_width/2 - (image_xscale*.5 + .5)*sprite_get_width(Sprite2),y-sprite_get_height(Sprite2)/2,"Instances",Object2)
		}
		else if (keyboard_check_pressed(ord("E")))
		{
			var inst = instance_create_layer(x -sprite_width/2 - (image_xscale*.5 + .5)*sprite_get_width(Sprite2),y-sprite_get_height(Sprite2)/2,"Instances",Object2)
			with (inst)
		    {
			    image_xscale *= 2;
				if x < other.x
					x -= sprite_width/2;
				alarm[0] = 10
				mag = 2
			
		    }
		}
		else if (keyboard_check_pressed(vk_space) && stamina >= rollStamina)
		{
			alarm[0] = 10;
			alarm[1] = staminaRegenDelay
			regen = false
			speed += 2;
			controllable = false; //become uncontrollable during roll
			addStamina(-rollStamina);
		}
	}
	if (regen)
	{
		addStamina(.1)	
	}
	
	if x > room_width
		x= 0

	