///@description Draw

//Variables

var dialogueX = camera_get_view_x(gameView) + 1;
var dialogueY = (camera_get_view_y(gameView) + camera_get_view_height(gameView)) - 1;
var xSpace = sprite_get_width(sprBackground[array]);
var ySpace = sprite_get_height(sprBackground[array]);

//Draw Textbox

draw_sprite(sprTextbox[array],0,dialogueX,dialogueY);

//Draw Backgrounds

vsp += .15;
if (vsp >= ySpace) vsp -= ySpace;
hsp += .15;
if (hsp >= xSpace) hsp -= xSpace;

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
draw_sprite(spr_Hud_Dialogue_BackgroundMask,0,dialogueX + 10,dialogueY - 10);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

for (var i = 0; i < 3; i++)
{
	for (var h = 0; h < 3; h++)
	{
		draw_sprite(sprBackground[array],0, dialogueX + 10 + hsp + (xSpace * (i - 1)),dialogueY - 10 + vsp + (ySpace * (h - 1)));
	}
}

gpu_set_alphatestenable(false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

//Draw Portrait

draw_sprite(sprPortrait[array],0,dialogueX + 10,dialogueY - 10);

//Draw Text

draw_set_color(c_white);
draw_set_font(textFont);
draw_set_alpha(image_alpha);
draw_set_halign(text_halign);
draw_text(dialogueX + 70,dialogueY - 60,text_displayed);
draw_set_halign(fa_left);
draw_set_alpha(1);