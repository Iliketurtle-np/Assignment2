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
	//audio_play_sound(Rm_gameSound,1,true);
}
else if(room == House4)
{
	global.exitHouse4 = true;
	hsp = 0;
	vsp = 0;
	grv = 0.8;
	walkSp = 2.5;
	jumpSp = 15;

}
if(room == TestRoom)
{
	
	hsp = 0;
	vsp = 0;
	grv = 0.5;
	walkSp = 1.5;
	jumpSp = 7;
	global.Conditionmeet = false;
	global.returnfromhouse4 = false;
	global.pickupkey = false;
	global.switch1On = false;
}
if(instance_exists(OSmoke))
{
	
	audio_listener_orientation(0,1,0,0,0,1);
	audio_falloff_set_model(audio_falloff_exponent_distance);
	audio_play_sound_at(Fire,OSmoke.x,OSmoke.y,0,10,5,1,true,1);
}
else
{
	audio_pause_sound(Fire);
}
