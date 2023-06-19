///@description Main

//Event Inherited
if (hp <= 0)
{
	audio_play_sound(snd_GoldenangelDie,5,false);
	if (audio_is_playing(mus_AF_Goldenangel)) audio_stop_sound(mus_AF_Goldenangel);
}
event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Horizontal Straight Movement
		
		case 0:
		dirX = 1;
		hsp = 0;
		
		image_speed = 1;
		sprite_index = sprIdle;
		break;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		if (!global.cutscene) attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (bulletOffset == 90) bulletOffset = 0;
		if (!audio_is_playing(snd_GoldenangelScream))
		{
			audio_play_sound(snd_GoldenangelScream,2,false);
			audio_play_sound(snd_GoldenangelScream,2,false);
			audio_play_sound(snd_GoldenangelScream,2,false);
			audio_play_sound(snd_GoldenangelScream,2,false);
			audio_play_sound(snd_GoldenangelScream,2,false);
		}
		for (var i = 0; i < 8; i++)
		{
			var ball = instance_create_depth(x,y,depth,obj_Projectile_AFEnergy);
			ball.speed = 4;
			ball.direction = i * (45 + bulletOffset);
			if (ball.direction >= 360) ball.direction -= 360;
			ball.owner = id;
			ball.enemy = true;
			ball.destroyableByEnemy = false;
			ball.hurtsObject = false;
			ball.hurtsEnemy = false;
			ball.hurtsPlayer = true;
		}
		bulletOffset += 40;
		attackTimer = attackTimerMax;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}