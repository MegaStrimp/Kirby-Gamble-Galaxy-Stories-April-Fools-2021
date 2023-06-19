///@description Draw

//Shake

if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}

//Draw Self

var paletteFlash = 1;
if (invincibleFlash)
{
	if (hurt)
	{
		paletteFlash = 3;
	}
	else
	{
		paletteFlash = 2;
	}
}

if (global.shaders) pal_swap_set(paletteIndex,paletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shakeX,shakeX),y + irandom_range(-shakeY,shakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (global.shaders) pal_swap_reset();

//Flux Overlay

if (isMystic)
{
	if (!global.pause) fluxOverlayAlpha -= .01;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shakeX,shakeX),y + irandom_range(-shakeY,shakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,fluxOverlayAlpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	draw_sprite(spr_Texture_Flux,0,x + irandom_range(-shakeX,shakeX),y + irandom_range(-shakeY,shakeY));
	
	gpu_set_alphatestenable(false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

//Debug
/*
draw_text(x,y - 24,sign(scaleExX));