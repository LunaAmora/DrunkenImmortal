if other.owner != id && dash = 0{
	hp -= 5;
	audio_play_sound(damage,1, false);
	damageFeedback = 0.1;
	damaged = true;
}