//if !(other.fixed){
instance_destroy(other);
if distance_to_object(player) < 600{
	audio_play_sound(arrowBreak,1, false);
}
//}