/// @description Core Player Logic
//Get player inputs
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check(vk_space);
keyUp = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
if(room == Rm_Game)
{ 
	inHouse4 = false;
	inRm_Game = true;
	if (hsp < 0)
	{
		image_xscale = -0.2;
		currentdirection = -0.2;
	}
	else if (hsp > 0)
	{
		image_xscale = .2;
	}

}
else if (room == House4)
{
	inRm_Game = false;
	inHouse4 = true;
	if (hsp < 0)
		{
			image_xscale = -0.5;
			currentdirection = -0.5;
		}
		else if (hsp > 0)
		{
			image_xscale = 0.5;
		}
}




//door4 activation
if (place_meeting(x,y,Door4)&& keyUp && room == Rm_Game && inRm_Game == true)
{
	room_goto(House4)
}
else if(place_meeting(x,y,Door4) && keydown && room == House4 && inHouse4 ==true)
{
    room_goto(Rm_Game)
} 

//Calculate Movement
var _move = keyRight - keyLeft;

hsp	= _move*walkSp;
//if Game room is Rm_Game image_xscale changes to 0.2

vsp = vsp+grv;
//Jump Action
if (place_meeting(x,y+1,oWall)) && (keyJump)
{
	vsp = -jumpSp
}
//Slope collision
/*if(place_meeting(x+hsp,y+vsp,SlopeObject))
{
	while (!place_meeting(x+sign(hsp),y,SlopeObject) && !place_meeting(x,y+sign(vsp),SlopeObject))
	{
		x = x+sign(hsp);
		y=y+sign(vsp);
	}
	hsp = 0;
	vsp =0;
}
*/






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