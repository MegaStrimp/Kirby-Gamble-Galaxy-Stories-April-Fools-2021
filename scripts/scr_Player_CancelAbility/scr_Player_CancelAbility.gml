///@description Player - Cancel Ability
///@param {real} objectToCheck Which object to check.

function scr_Player_CancelAbility(argument0)
{
	var objectToCheck = argument0;
	
	with (objectToCheck)
	{
		if (attackNumber == "cutterDash")
		{
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
		    if (instance_exists(slideMaskProj)) instance_destroy(slideMaskProj);
			state = playerStates.normal;
		}
		if ((attackNumber == "beamNormal") or (attackNumber == "beamAir") or (attackNumber == "beamUp"))
		{
			audio_stop_sound(sndBeam);
		}
		if (attackNumber == "beamNormal")
		{
			if (instance_exists(parBeamCycle1)) instance_destroy(parBeamCycle1);
		}
		if (attackNumber == "stoneNormal")
		{
			grav = gravNormal;
			gravLimit = gravLimitNormal;
		}
		duckJumpCharge = 0;
		cutterCharge = 0;
		beamCharge = 0;
		stoneParticleCount = 0;
		stoneReady = true;
		stoneFallen = false;
		stoneFistReady = true;
		mirrorHold = false;
		mirrorFirstAttack = true;
		mirrorAttackDir = 1;
		ufoCharge = 0;
		attackTimer = -1;
		stoneReadyTimer = -1;
		stoneParticleTimer = -1;
		stoneFistReadyTimer = -1;
		stoneFistReleaseTimer = -1;
		iceReady = true;
		iceRelease = false;
		icePosition = 0;
		if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
		chargeSfxState = "intro";
		attack = false;
		attackable = true;
		attackNumber = "none";
	}
}