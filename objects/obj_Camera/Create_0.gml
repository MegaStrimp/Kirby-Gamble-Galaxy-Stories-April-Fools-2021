///@description Initialize Variables

//Physics

spd = .5;
cutsceneSpd = .5;

//Other Variables

viewWidth = 480;
viewHeight = 270;
scale = 2;
zoom = 1;
windowCenter = false;
cameraX = 0;
cameraY = 0;
debugCamera = false;
shakeX = 0;
shakeY = 0;
offsetX = 0;
offsetY = 0;
bossOffsetX = 0;
bossOffsetY = 0;
objectFollowing = -1;
cinematicXOffset = 0;
cinematicYOffset = 0;
cinematicXOffsetTarget = 0;
cinematicYOffsetTarget = 0;
cinematicOffsetRange = 0;
cinematicOffsetSpeed = 0;
state = "followingKirby";

//Timers

cinematicOffsetTimer = -1;
cinematicOffsetTimerMax = 30;

//Set Window Size

window_set_size(viewWidth * scale,viewHeight * scale);

//Resize Surface

surface_resize(application_surface,viewWidth * scale,viewHeight * scale);