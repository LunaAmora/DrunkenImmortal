event_inherited();
if !(canArrowDash){
	if (active){
		nbutton_scr(5, 0);
		alarm[5] = shootTime;
		if distance_to_object(player) < 500{
			audio_play_sound(turret_snd,1, false);
		}
	}
}