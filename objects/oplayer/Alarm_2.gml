 /// @description Insert description here
// You can write your code in this editor
OLighting.visible = true;
if(global.Conditionmeet == true)
{
	if (oShadow.visible)
	{
	audio_play_sound(ShadowDisappear,1,false);
	}
	oShadow.visible = false;
	
}
alarm[3] = 290;
  