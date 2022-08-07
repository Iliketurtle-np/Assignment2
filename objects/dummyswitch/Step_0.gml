/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x,y,oPlayer) && keyboard_check_pressed(ord("X")))
{
	image_xscale = -image_xscale;
	io_clear();
}
if(keyboard_check_pressed(ord("X")) && place_meeting(x,y,oPlayer))
{
	image_xscale = abs(image_xscale);
	io_clear();
}
