/// @description
// You can write your code in this editor
created = 0;
WasinHouse4 = false;
takepic = true;
global.exitHouse4 = false;

if(room == Rm_Game)
{
	hsp = 0;
	vsp = 0;
	grv = 0.5;
	walkSp = 1.5;
	jumpSp = 7;
	object_get_visible(Clouds)
	audio_play_sound(Rm_gameSound,1,true);
	audio_pause_sound(RoomBGM);
}
else if(room == House4)
{
	global.exitHouse4 = true;
	hsp = 0;
	vsp = 0;
	grv = 0.8;
	walkSp = 2.5;
	jumpSp = 15;
	audio_play_sound(RoomBGM,1,true);
	audio_pause_sound(Rm_gameSound);
}
else if(room == House1)
{
	global.cameradisabled = true;
	global.exitHouse1 = true;
	hsp = 0;
	vsp = 0;
	grv = 0.8;
	walkSp = 2.5;
	jumpSp = 15;
	audio_play_sound(RoomBGM,1,true);
	audio_pause_sound(Rm_gameSound);
}
else if(room == House2)
{
	
	global.exitHouse2 = true;
	hsp = 0;
	vsp = 0;
	grv = 0.8;
	walkSp = 2.5;
	jumpSp = 15;
	if(global.switch3On == false)
	{
		global.cameradisabled = true;
		OLighting.visible = false;
	}
	audio_play_sound(RoomBGM,1,true);
	audio_pause_sound(Rm_gameSound);
}
else if(room == House3)
{
	
	global.exitHouse3 = true;
	hsp = 0;
	vsp = 0;
	grv = 0.8;
	walkSp = 2.5;
	jumpSp = 15;

	global.cameradisabled = true;
	OLighting.visible = false;
	audio_play_sound(RoomBGM,1,true);
	audio_pause_sound(Rm_gameSound);
}
if(room == TestRoom)
{
	
	hsp = 0;
	vsp = 0;
	grv = 0.5;
	walkSp = 1.5;
	jumpSp = 7;
	//initialise all the global conditions 
	global.Conditionmeet = false;
	global.returnfromhouse4 = false;
	global.pickupkey = false;
	global.switch1On = false;
	global.switch2On = false;
	global.switch3On = false;
	global.switch4On = false;
	global.switch5On = false;
	global.HiddenDoor = false;
	global.cameradisabled = false;
	global.count = 0;
	global.switchcount = 0;
	global.audioplayed = true;
	global.scream = true;

}
if( room == HiddenRoom)
{
	takepic = false;
	hsp = 0;
	vsp = 0;
	grv = 0.5;
	walkSp = 1.5;
	jumpSp = 7;
	
}
if(instance_exists(OSmoke) && global.switchcount > 1 && room == Rm_Game && global.audioplayed)
{
	audio_listener_orientation(0,1,0,0,0,1);
	audio_falloff_set_model(audio_falloff_exponent_distance);

	audio_play_sound_at(UnknownFootstep,OSmoke.x,OSmoke.y,0,10,200,1,false,1);
	global.audioplayed = false;
}
else
{
	audio_pause_sound(UnknownFootstep);
}
if(!instance_exists(Switch3))
{
	audio_pause_sound(PowerOutage);
}