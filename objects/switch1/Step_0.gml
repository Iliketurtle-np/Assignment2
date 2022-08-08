/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oPlayer) && keyboard_check_pressed(ord("X")))
{
	global.switch1On = true;
	global.switchcount +=1;
	image_xscale = -image_xscale;
	io_clear();
}
if(global.switch1On && keyboard_check_pressed(ord("X")) && place_meeting(x,y,oPlayer))
{
	global.switch1On = false;
	global.switchcount -=1;
	image_xscale = abs(image_xscale);
	io_clear();
}


