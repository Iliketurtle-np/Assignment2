/// @description Insert description here
// You can write your code in this editor
if(global.pickupkey && place_meeting(x,y,oPlayer)&& OHiddenDoor.visible)
{
	sprite_index =SDoorOpen;
	global.HiddenDoor = true;
}
if(global.switch1On && global.switch5On)

{
	visible = true;
}
else
{
	visible = false;
}
if(global.HiddenDoor && keyboard_check_pressed(vk_up))
{
	room_goto(HiddenRoom);
}

