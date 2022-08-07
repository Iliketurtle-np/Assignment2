/// @description Insert description here
// You can write your code in this editor
var lay_id = layer_get_id("background1");
var bg = layer_background_get_id(lay_id)

if(place_meeting(x,y,oPlayer) && keyboard_check_pressed(ord("X")))
{
	global.switch4On = true;
	image_xscale = -image_xscale;
	global.count = 1;
	layer_background_sprite(bg,sRoom3)
	layer_background_speed(bg, 0.6);
	io_clear();
}
if(global.switch4On && keyboard_check_pressed(ord("X")) && place_meeting(x,y,oPlayer))
{
	global.switch4On = false;
	image_xscale = abs(image_xscale);
	io_clear();
}



