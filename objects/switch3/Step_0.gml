/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oPlayer) && keyboard_check_pressed(ord("X"))&& OLighting.visible == false)
{
	global.switch3On = true;
	global.cameradisabled = false;
	OLighting.visible = true;
	global.switchcount +=1;
	image_xscale = -image_xscale;
	audio_play_sound(PowerOutage,1,false);
	io_clear();
}
if(global.switch3On && keyboard_check_pressed(ord("X")) && place_meeting(x,y,oPlayer))
{
	global.switch3On = false;
	global.switchcount -=1;
	image_xscale = abs(image_xscale);
	io_clear();
}

 

 