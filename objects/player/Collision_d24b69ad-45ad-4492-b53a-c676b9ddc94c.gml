if other.whoShoot != "player" && dash = 0{
	with(other)
	{
		target = string(object_get_name(other.object_index));
		instance_destroy();
	}
	switch (other.whoShoot){
		case "archer": hp -= 2;break;
		case "turret": hp -= 3;break;
		case "turret1": hp -= 4;break;
		case "mage": hp -= 3;break;
	}
	audio_play_sound(damage,1, false);
	damageFeedback = 0.1;
	damaged = true;
}