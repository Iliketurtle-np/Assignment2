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
if(room == TestRoom)
{ 
    created = 1;
    image_yscale = 0.322;
    if (hsp < 0)
    {
        image_xscale = -0.41;
        currentdirection = -0.41;
    }
    else if (hsp > 0)
    {
        image_xscale = .41;
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
else if (room == House1)
{
	
    created = 1;
    inRm_Game = false;
    inHouse1 = true;
    image_yscale =.350;
    if (hsp < 0)
        {
            image_xscale = -.415;
            currentdirection = -.415;
        }
        else if (hsp > 0)
        {
            image_xscale = .415;
		}
}
else if (room == House2)
{
	
    created = 1;
    inRm_Game = false;
    inHouse2 = true;
    image_yscale =.491;
    if (hsp < 0)
        {
            image_xscale = -.61;
            currentdirection = -.61;
        }
        else if (hsp > 0)
        {
            image_xscale = .61;
		}
}
else if (room == House3)
{
	
    created = 1;
    inRm_Game = false;
    inHouse3 = true;
    image_yscale =.39;
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
else if (room == HiddenRoom)
{
	
    created = 1;
  
    image_yscale =.128;
    if (hsp < 0)
        {
            image_xscale = -.215;
            currentdirection = -.215;
        }
        else if (hsp > 0)
        {
            image_xscale = .215;
		}
}
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check(vk_space);
keyUp = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
if(global.cameradisabled == false)
{
	cameraflash = keyboard_check(ord("C"));
}
//camera flash and sound

if(global.cameradisabled == false)
{
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
}

//Calculate Movement
var _move = keyRight - keyLeft;

hsp    = _move*walkSp;
if (hsp != 0)
{
	count +=1;
}
else
{
	count = 0;
}
//if Game room is Rm_Game image_xscale changes to 0.2
if( count > 50 && vsp == 0)
{
	
	audio_play_sound(Footstep,1,false);
	
	count = 0;
}
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
if (place_meeting(x,y+1,Dummybox)) && (keyJump)
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
else if(place_meeting(x+hsp,y,Dummybox))
{
	while (!place_meeting(x+sign(hsp),y,Dummybox))
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
else if(place_meeting(x+2,y,Dummybox) && keyRight)
{
	Dummybox.x = Dummybox.x +1;
}
if (place_meeting(x-2,y,oBox) && keyLeft)
{
	oBox.x = oBox.x - 1;
}
else if(place_meeting(x-2,y,Dummybox) && keyLeft){
Dummybox.x = Dummybox.x -1;
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
if(place_meeting(x,y+vsp,Dummybox))
{
	while (!place_meeting(x,y+sign(vsp),Dummybox))
    {
        y = y+sign(vsp);
    }
    vsp=0
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
if (place_meeting(x,y+vsp,Dummybox))
{
    while (!place_meeting(x,y+sign(vsp),Dummybox))
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
	global.returnfromhouse4 = true;
	game_load("state1.dat");
	global.exitHouse4 = true;
    io_clear()  
}
//door1 activation
if (place_meeting(x,y,Door1)&& keyUp && room == Rm_Game && inRm_Game == true)
{
	game_save("state2.dat");
    room_goto(House1)
    io_clear()  
}

if(place_meeting(x,y,Door1) && keyUp && room == House1)

{
	room_goto(Rm_Game)
	global.cameradisabled = false;
	game_load("state2.dat");
    io_clear()  
}
//door2 activation
if (place_meeting(x,y,Door2)&& keyUp && room == Rm_Game && inRm_Game == true)
{
	game_save("state3.dat");
    room_goto(House2)
    io_clear()  
}

if(place_meeting(x,y,Door2) && keyUp && room == House2)

{
	room_goto(Rm_Game)
	global.cameradisabled = false;
	game_load("state3.dat");
    io_clear()  
}
//door 3 activation
//door2 activation
if (place_meeting(x,y,Door3)&& keyUp && room == Rm_Game && inRm_Game == true)
{
	game_save("state4.dat");
    room_goto(House3)
    io_clear()  
}

if(place_meeting(x,y,Door3) && keyUp && room == House3)

{
	room_goto(Rm_Game)
	global.cameradisabled = false;
	game_load("state4.dat");
    io_clear()  
}

if(place_meeting(x,y,Door4) && keyUp && room == TestRoom)
{
	room_goto(Rm_Game)
}
if (keydown)
{
	global.Conditionmeet = true;
}

audio_listener_position(x,y,0);
if(place_meeting(x,y,LastDoor) && keyUp)
{
	EndingJumpScare.visible = true;
	audio_play_sound(EndScare,1,false);
	alarm[5]= 60;
	OLighting.visible = false;
}
