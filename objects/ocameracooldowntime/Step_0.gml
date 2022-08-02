/// @description
cameraflash = keyboard_check(ord("C"));
if(cameraflash && cooldown)
{
	Time = 0;	
	
}
if (Time<5)
{
	Time=Time+delta_time/1000000
	cooldown = false;
}
else
{
	Time=5
	cooldown = true;
}
//if Game room is Rm_Game im age_xscale changes to 0.2y = cy +ydifference;