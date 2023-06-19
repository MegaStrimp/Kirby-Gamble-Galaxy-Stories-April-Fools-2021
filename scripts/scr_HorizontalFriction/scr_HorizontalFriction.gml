///@description Horizontal Friction

function scr_HorizontalFriction()
{
	if (hsp >= decel) hsp -= decel;
	if (hsp <= -decel) hsp += decel;
	if ((hsp > -decel) and (hsp < decel)) hsp = 0;
}