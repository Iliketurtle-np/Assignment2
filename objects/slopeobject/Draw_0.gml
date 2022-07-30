/// @description Insert description here
// You can write your code in this editor

shader_set(sh_outline)
var tex=sprite_get_texture(sprite_index,image_index)
var tex_w=texture_get_texel_width(tex)
var tex_h=texture_get_texel_height(tex)
shader_set_uniform_f(handler,tex_w,tex_h)
shader_set_uniform_f(handler_1,5)//line thickness
shader_set_uniform_f(handler_2,0.4,0.4,0.4,1.0)//b
draw_self()
shader_reset()

