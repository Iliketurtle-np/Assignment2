/// @description Core Player Logic

//Get player inputs
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check(vk_space);

//Calculate Movement
var _move = keyRight - keyLeft;

hsp	= _move*walkSp;

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
/*if (!place_meeting(x,y+1,oWall))
{
	sprite_index= sPlayerA;
	image_speed = 0;
	if(vsp>0) image_index = 1; else image_index = 0;
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
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
*/