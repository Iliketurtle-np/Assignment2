/// @description Insert description here
// You can write your code in this editor

instance_activate_object(oPlayer);
audio_resume_all();

obj_note1.visible = false;
if(global.scream)
{
	audio_listener_orientation(0,1,0,0,0,1);
	audio_falloff_set_model(audio_falloff_exponent_distance);
	audio_play_sound_at(Scream,OSmoke.x,OSmoke.y,0,100,500,1,false,1);
global.scream = false;
}



