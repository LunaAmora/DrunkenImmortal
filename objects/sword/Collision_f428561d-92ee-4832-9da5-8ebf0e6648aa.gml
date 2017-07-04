if colisorId != other.colisorId{
	owner.swording = 0;
	instance_destroy();
	audio_play_sound(sword_clash, 1, false);		
}