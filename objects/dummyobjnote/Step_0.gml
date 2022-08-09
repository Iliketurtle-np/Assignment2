
/// @description Insert description here
// You can write your code in this editor
if(global.dummynote)
{
camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])+600,y-0)
global.dummynote = false;
}
if(instance_exists(oPlayer))
{
	visible = false;
}