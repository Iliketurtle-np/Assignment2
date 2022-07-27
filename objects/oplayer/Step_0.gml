/// @description Core Player Logic

//Get player inputs
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check(vk_space);
keyUp = keyboard_check(vk_up);
//Calculate Movement
var _move = keyRight - keyLeft;

hsp	= _move*walkSp;
//cannot go outside of game
if(x < 0)
{
	x = 5;
}	
else if(x > 1022)
{
	x = 1020;
}
if (hsp < 0)
{
	image_xscale = -0.2;
	currentdirection = -0.2;
}
else if (hsp > 0)
{
	image_xscale = .2;
}
vsp = vsp+grv;

if (place_meeting(x,y+1,oWall)) && (keyJump)
{
	vsp = -jumpSp
}

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x+sign(hsp);
	}
	hsp=0;
}
x = x+hsp;
//door4 collison
/*if (place_meeting(x,y,Door4)&& keyUp)
{
	room_goto()
}*/
//Horizontal collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y+sign(vsp);
	}
	vsp=0;
}
y = y+vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index= sPlayerWalk;
	image_speed = 0;
	if(hsp>0 or hsp <0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerWalk;
	}
}



camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,
y - 0)