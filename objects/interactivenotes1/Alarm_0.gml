/// @description Insert description here
// You can write your code in this editor

instance_activate_object(oPlayer);
audio_resume_all();

obj_note1.visible = false;
if(global.scream)
{
audio_play_sound(Scream,1,false)
global.scream = false;
}



