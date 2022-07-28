/// @description
// You can write your code in this editor
created = 0;
WasinHouse4 = false;

global.exitHouse4 = false;
if(room == Rm_Game)
{
	hsp = 0;
	vsp = 0;
	grv = 0.3;
	walkSp = 2.5;
	jumpSp = 7;
	object_get_visible(Clouds)
}
else if(room == House4)
{
	global.exitHouse4 = true;
	hsp = 0;
	vsp = 0;
	grv = 0.3;
	walkSp = 2.5;
	jumpSp = 100;
}

