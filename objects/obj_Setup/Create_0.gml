///@description Initialize Variables

//Randomize

randomize();

//Window Caption

global.versionNumber = "Beta VII";
window_set_caption("Kirby Gamble Galaxy Stories - " + global.versionNumber);

//Load Game

scr_LoadGame();

//Set Macros

#macro gameView view_camera[0]

//April Fools

global.aprilFools = true;
if (global.aprilFools)
{
	global.versionNumber = "The Future";
	window_set_caption("Kirby Gamble Galaxy Stories ~ " + global.versionNumber);
}
global.beatKaabi = false;
global.beatFrosty = false;
global.beatMarx = false;
if (global.aprilFools) global.playerLives = 99;

//Global Variables

global.hpMax = 5;
if (global.aprilFools) global.hpMax = 3;
global.hpP1 = global.hpMax;
global.hpP2 = global.hpMax;
global.skylandsHpMax = 5;
global.skylandsHpP1 = global.skylandsHpMax;
global.skylandsHpP2 = global.skylandsHpMax;
global.skylandsLives = 2;
global.abilityP1 = "none";
global.abilityP2 = "none";
global.sprayPaintP1 = irandom_range(0,22);
if (global.aprilFools) global.sprayPaintP1 = 0;
global.sprayPaintP2 = irandom_range(0,22);
global.characterP1 = "kirby";
global.characterP2 = "kirby";
global.isHelperP1 = false;
global.isHelperP2 = false;
global.roomPrevious = rm_Setup;
global.roomCheckpoint = rm_Setup;
global.pause = false;
global.pointStars = 0;
global.stageNumber = 0;
global.debug = false;
global.pause = false;
global.cutscene = false;
global.shaders = false;
if (shader_is_compiled(shd_pal_swapper))
{
	global.shaders = true;
}
global.hasCoop = false;
global.gambleActive = true;
if (global.aprilFools) global.gambleActive = false;

global.hatTypeCutterP1 = "kssu";
global.hatTypeBeamP1 = "kssu";
global.hatTypeStoneP1 = "kssu";
global.hatTypeUfoP1 = "modern";
global.hatTypeMirrorP1 = "kssu";
global.hatTypeNinjaP1 = "kssu";
global.hatTypeBombP1 = "kssu";
global.hatTypeFireP1 = "kssu";
global.hatTypeIceP1 = "kssu";
global.hatTypePlasmaP1 = "kssu";
global.hatTypeYoyoP1 = "kssu";
global.hatTypeWheelP1 = "kssu";
global.hatTypeArtistP1 = "modern";
global.hatTypeFighterP1 = "kssu";
global.hatTypeSuplexP1 = "kssu";
global.hatTypeWingP1 = "kssu";
global.hatTypeJetP1 = "kssu";
global.hatTypeSwordP1 = "kssu";
global.hatTypeParasolP1 = "kssu";
global.hatTypeHammerP1 = "kssu";

global.hatTypeCutterP2 = "kssu";
global.hatTypeBeamP2 = "kssu";
global.hatTypeStoneP2 = "kssu";
global.hatTypeUfoP2 = "modern";
global.hatTypeMirrorP2 = "kssu";
global.hatTypeNinjaP2 = "kssu";
global.hatTypeBombP2 = "kssu";
global.hatTypeFireP2 = "kssu";
global.hatTypeIceP2 = "kssu";
global.hatTypePlasmaP2 = "kssu";
global.hatTypeYoyoP2 = "kssu";
global.hatTypeWheelP2 = "kssu";
global.hatTypeArtistP2 = "kssu";
global.hatTypeFighterP2 = "kssu";
global.hatTypeSuplexP2 = "kssu";
global.hatTypeWingP2 = "kssu";
global.hatTypeJetP2 = "kssu";
global.hatTypeSwordP2 = "kssu";
global.hatTypeParasolP2 = "kssu";
global.hatTypeHammerP2 = "kssu";

global.hatPaletteCutterKssuP1 = 0;
global.hatPaletteBeamKssuP1 = 0;
global.hatPaletteStoneKssuP1 = 0;
global.hatPaletteStoneModernP1 = 0;
global.hatPaletteUfoKssuP1 = 0;
global.hatPaletteMirrorKssuP1 = 0;
global.hatPaletteMirrorModernP1 = 0;
global.hatPaletteNinjaKssuP1 = 0;
global.hatPaletteNinjaModernP1 = 0;
global.hatPaletteBombKssuP1 = 0;
global.hatPaletteBombModernP1 = 0;
global.hatPaletteFireKssuP1 = 0;
global.hatPaletteIceKssuP1 = 0;
global.hatPalettePlasmaKssuP1 = 0;
global.hatPaletteYoyoKssuP1 = 0;
global.hatPaletteWheelKssuP1 = 0;
global.hatPaletteArtistKssuP1 = 0;
global.hatPaletteArtistModernP1 = 0;
global.hatPaletteFighterKssuP1 = 0;
global.hatPaletteSuplexKssuP1 = 0;
global.hatPaletteWingKssuP1 = 0;
global.hatPaletteJetKssuP1 = 0;
global.hatPaletteSwordKssuP1 = 0;
global.hatPaletteParasolKssuP1 = 0;
global.hatPaletteHammerKssuP1 = 0;

global.hatPaletteCutterKssuP2 = 0;
global.hatPaletteBeamKssuP2 = 0;
global.hatPaletteStoneKssuP2 = 0;
global.hatPaletteStoneModernP2 = 0;
global.hatPaletteUfoKssuP2 = 0;
global.hatPaletteMirrorKssuP2 = 0;
global.hatPaletteMirrorModernP2 = 0;
global.hatPaletteNinjaKssuP2 = 0;
global.hatPaletteNinjaModernP2 = 0;
global.hatPaletteBombKssuP2 = 0;
global.hatPaletteBombModernP2 = 0;
global.hatPaletteFireKssuP2 = 0;
global.hatPaletteIceKssuP2 = 0;
global.hatPalettePlasmaKssuP2 = 0;
global.hatPaletteYoyoKssuP2 = 0;
global.hatPaletteWheelKssuP2 = 0;
global.hatPaletteArtistKssuP2 = 0;
global.hatPaletteArtistModernP2 = 0;
global.hatPaletteFighterKssuP2 = 0;
global.hatPaletteSuplexKssuP2 = 0;
global.hatPaletteWingKssuP2 = 0;
global.hatPaletteJetKssuP2 = 0;
global.hatPaletteSwordKssuP2 = 0;
global.hatPaletteParasolKssuP2 = 0;
global.hatPaletteHammerKssuP2 = 0;

global.discordDetailText = "Startup";
global.discordStateText = "";
global.discordLargeImage = "ggs_icon";
global.discordLargeImageText = "Kirby Gamble Galaxy Stories";
global.discordSmallImage = "teamgamble_icon";
global.discordSmallImageText = "Team Gamble";

//Fonts

mapStringKssu = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz .!";
global.bitmapKssu = font_add_sprite_ext(spr_Hud_Dialogue_Font_Kssu,mapStringKssu,false,0);

//Discord Rich Presence Setup

var appId = "754628961522286702";

if (!rousr_dissonance_create(appId)) Error_msg = "Discord RPC unable to initialize";

rousr_dissonance_handler_on_ready(example_on_ready, id);
rousr_dissonance_handler_on_disconnected(example_on_disconnected, id);
rousr_dissonance_handler_on_error(example_on_error, id);
rousr_dissonance_handler_on_join(example_on_join, id);
rousr_dissonance_handler_on_spectate(example_on_spectate, id);
rousr_dissonance_handler_on_join_request(example_on_join_request, id);

//Palette Swap Setup

if (global.shaders) pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);

//player States

enum playerStates
{
    normal,
    slide,
    float,
    climb,
    enter,
    inhale,
    carry,
	swallow,
	cutterDash,
	mirrorDash,
	fireDash,
	wingDash,
    death
}

//Other Variables

renderable = true;

//Timers

renderTimerMax = 30;
renderTimer = renderTimerMax;