/// @description Insert description here
// You can write your code in this editor
if(global.switch5On == false && place_meeting(x,y,oPlayer) && keyboard_check_pressed(ord("X")))
{
	global.switch5On = true;
	global.switchcount +=1;
	image_xscale = -image_xscale;
	io_clear();
}
if(global.switch5On && keyboard_check_pressed(ord("X")) && place_meeting(x,y,oPlayer))
{
	global.switch5On = false;
	global.switchcount -=1;
	image_xscale = abs(image_xscale);
	io_clear();
}



