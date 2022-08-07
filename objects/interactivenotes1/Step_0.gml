/// @description Insert description here
// You can write your code in this editor


var keyx= keyboard_check_pressed(ord("X"));


if ( keyx && place_meeting(x,y,oPlayer)){
	if ( !pause ){
		alarm[1]	= 2; //Resume
	}
	pause = !pause
} 
if( keyx && pause == true)
{
	alarm[0] = 2;
}


