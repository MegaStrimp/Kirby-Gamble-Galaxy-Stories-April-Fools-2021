///@description Draw

//Draw Self

draw_self();

//Draw Shine

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
draw_sprite_ext(spr_LogoMask,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite_ext(spr_LogoShine,0,x + xx - ((sprite_get_width(sprite_index) * image_xscale) / 2),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

gpu_set_alphatestenable(false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

//Draw Version Number

draw_set_font(fnt_Menu);
draw_set_color(c_white);
draw_set_valign(fa_bottom);
draw_text(6,room_height,"Version - " + string(global.versionNumber));
draw_set_valign(fa_top);