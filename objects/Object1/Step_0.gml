/// @description Insert description here
// You can write your code in this editor
show_debug_message(keyboard_lastkey)

	horiz = 0
	vert = 0
	
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
	
	if (keyboard_check(vk_space))
		instance_create_layer(x -sprite_width/2 - (image_xscale*.5 + .5)*sprite_get_width(Sprite2),y,"Instances",Object2)