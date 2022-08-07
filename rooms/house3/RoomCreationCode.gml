var lay_id = layer_get_id("background1");
var bg = layer_background_get_id(lay_id)
if(global.count == 1)
{
	layer_background_sprite(bg,sRoom3)
	layer_background_speed(bg,0.6);
}