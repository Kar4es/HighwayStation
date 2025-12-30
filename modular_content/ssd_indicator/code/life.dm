/mob/living/proc/handle_ssd(seconds_per_tick)
	if(player_logged)
		return
	SetSleeping(7 SECONDS)
