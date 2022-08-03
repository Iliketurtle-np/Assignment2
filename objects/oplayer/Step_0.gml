//Get player inputs
if(room == Rm_Game)
{ 
    created = 1;
    inHouse4 = false;
    inRm_Game = true;
    image_yscale = 0.113;
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
	
    created = 1;
    inRm_Game = false;
    inHouse4 = true;
    image_yscale =.483;
    if (hsp < 0)
        {
            image_xscale = -.46;
            currentdirection = -.46;
        }
        else if (hsp > 0)
        {
            image_xscale = .46;
		}
}
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check(vk_space);
keyUp = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
cameraflash = keyboard_check(ord("C"));
//camera flash and sound


	if(takepic)
{
	if (cameraflash)
	{
		takepic = false;
		audio_play_sound(CameraTakingPic,1,0);
		
		OLighting.visible =false; 
		alarm[0] = 5;
	}
}

//Calculate Movement
var _move = keyRight - keyLeft;

hsp    = _move*walkSp;
//if Game room is Rm_Game image_xscale changes to 0.2

vsp = vsp+grv;
//Jump Action
if (place_meeting(x,y+1,oWall)) && (keyJump)
{
    vsp = -jumpSp
}
if (place_meeting(x,y+1,oBox)) && (keyJump)
{
    vsp = -jumpSp
}
if(room == House4 && place_meeting(x+hsp,y,oWall))
{
	touchingground =true;
}
else
{
	touchingground=false;
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


//Horizontal Push Box

if (place_meeting(x+hsp,y,oBox))
{
    while (!place_meeting(x+sign(hsp),y,oBox))
    {
        x = x+sign(hsp);
	}
	hsp=0;
}

x = x+hsp;
if (place_meeting(x+2,y,oBox) && keyRight)
{
	oBox.x = oBox.x + 1;
}
if (place_meeting(x-2,y,oBox) && keyLeft)
{
	oBox.x = oBox.x - 1;
}

//vertical box collision
if (place_meeting(x,y+vsp,oBox))
{
    while (!place_meeting(x,y+sign(vsp),oBox))
    {
        y = y+sign(vsp);
    }
    vsp=0;
}
//Vertical collision
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



//door4 activation
if (place_meeting(x,y,Door4)&& keyUp && room == Rm_Game && inRm_Game == true)
{
	game_save("state1.dat");
    room_goto(House4)
    io_clear()  
}

if(place_meeting(x,y,Door4) && keyUp && room == House4 && inHouse4 ==true)

{
	room_goto(Rm_Game)
	game_load("state1.dat");
	global.exitHouse4 = true;
    io_clear()  
}