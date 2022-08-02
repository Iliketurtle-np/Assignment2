/// @description Insert description here
// You can write your code in this editor


/// @description

//draw rectangle
draw_set_color(c_blue)
var barWidth;
barWidth=200
draw_rectangle(40,40,40+(Time/maxTime)*barWidth,40+20,false)
draw_set_color(c_white)
draw_rectangle(40,40,40+barWidth,40+20, true)
