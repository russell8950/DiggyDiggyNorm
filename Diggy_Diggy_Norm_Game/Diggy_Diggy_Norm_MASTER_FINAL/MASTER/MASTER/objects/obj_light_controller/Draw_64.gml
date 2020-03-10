/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19556EA8
/// @DnDArgument : "code" "surface_set_target(lighting);$(13_10)$(13_10)draw_set_color(c_black);$(13_10)$(13_10)draw_rectangle(view_xport[0],view_yport[0],view_get_wport(0),view_get_hport(0),false);$(13_10)$(13_10)gpu_set_blendmode(bm_add);$(13_10)with(obj_light) {$(13_10)	draw_circle_color(view_get_wport(0)/2,view_get_hport(0)/2,radius,col,c_black,false);$(13_10)}$(13_10)gpu_set_blendmode(bm_normal);$(13_10)$(13_10)surface_reset_target();$(13_10)$(13_10)shader_set(shMask);$(13_10)$(13_10)var text = surface_get_texture(lighting);$(13_10)var handle = shader_get_sampler_index(shMask, "lighting");$(13_10)texture_set_stage(handle,text);$(13_10) $(13_10)draw_surface(lighting,0,0);$(13_10)$(13_10)shader_reset();"
surface_set_target(lighting);

draw_set_color(c_black);

draw_rectangle(view_xport[0],view_yport[0],view_get_wport(0),view_get_hport(0),false);

gpu_set_blendmode(bm_add);
with(obj_light) {
	draw_circle_color(view_get_wport(0)/2,view_get_hport(0)/2,radius,col,c_black,false);
}
gpu_set_blendmode(bm_normal);

surface_reset_target();

shader_set(shMask);

var text = surface_get_texture(lighting);
var handle = shader_get_sampler_index(shMask, "lighting");
texture_set_stage(handle,text);
 
draw_surface(lighting,0,0);

shader_reset();