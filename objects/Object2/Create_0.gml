/// @description Insert description here
// You can write your code in this editor

BowlMan.controllable = false
BowlMan.speed = 0
mag = 0
phase = 0
start = 0
during = 0
finish = 0
function setDuration(start_,during_,finish_)
{
	start = delta_time/10000*start_
	during = during_*delta_time/10000
	finish = finish_*delta_time/10000
	alarm[0] = start
}
