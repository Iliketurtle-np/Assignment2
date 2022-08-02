/// @description CooldownBar

//draw rectangle
draw_set_color(c_blue)
var barWidth;
barWidth=100
draw_rectangle(20,20,20+(Time/maxTime)*barWidth,20+10,false)
draw_set_color(c_white)
draw_rectangle(20,20,20+barWidth,20+10, true)