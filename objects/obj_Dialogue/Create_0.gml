///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
xx = 0;
yy = 0;

//Sprites

sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
sprBackground[0] = spr_Hud_Dialogue_Background_YellowCard;
sprPortrait[0] = spr_Hud_Dialogue_Portrait_JellyMarx_Normal;

//Other Variables

text[0] = "";
array = 0;
text_speed = room_speed / 10;
textSpeed = 18;
text_displayed = "";
text_length = -1;
text_halign = fa_left;
index = 0;
cooldown = text_speed;
owner = id;
dir = 1;
spd = .25;
alphaSpd = .05;
cursorIndex = 1;
cursorLimit = 2;
cursorSpd = .05;
state = 0;
typewriter = true;
textSound[0] = snd_TextGamble;
soundPlaying = -1;
owner = -1;
resetArray = false;
stopsCutscene = false;
targetRoom = -1;
textFont = fnt_ComicSans;

//Timers

destroyTimer = -1;