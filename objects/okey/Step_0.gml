/// @description Insert description here
// You can write your code in this editor

if( place_meeting(x,y, oPlayer) && keyboard_check_pressed(ord("Z")) && Okey.visible == true)
{
	global.pickupkey = true;
	
	instance_destroy();
}
if (global.switch5On && instance_exists(Okey))
{
	Okey.visible = true;
}
else if(global.switch5On == false && instance_exists(Okey))
{
	Okey.visible = false;
}
