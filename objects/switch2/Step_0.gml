/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oPlayer) && keyboard_check_pressed(ord("X")))
{
	global.switch2On = true;
	global.switchcount +=1;
	image_xscale = -image_xscale;
	io_clear();
}
if(global.switch2On && keyboard_check_pressed(ord("X")) && place_meeting(x,y,oPlayer))
{
	global.switch2On = false;
	global.switchcount -=1;	
	image_xscale = abs(image_xscale);
	io_clear();
}





