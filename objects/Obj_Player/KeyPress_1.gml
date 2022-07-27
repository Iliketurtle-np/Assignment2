/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_left) {
	direction = 180;
	speed = 1;
	image_xscale = -1;
	image_angle=0;
}
if keyboard_check(vk_right) {
	direction = 0;
	image_xscale = 1;
	image_angle=0;
}
if keyboard_check(vk_up){
	direction = 90;
	image_angle=90;
	image_xscale=1;

}
if keyboard_check(vk_down){ 
	direction = 270;
	image_xscale= 1;
	image_angle=270;
}

