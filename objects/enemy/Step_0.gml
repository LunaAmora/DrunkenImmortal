/// @description

image_angle = (darctan2(x-player.x, y-player.y));
dirMod = 1;
	
if !(collision_line(x, y, player.x, player.y, blockParent, true, true)){
	gravity = 0.5;
	friction = 0;
	if (point_distance(x, y, player.x, player.y) < attackTreshold)
	{
	
		if canSword = 1{
			alarm[0] = swordCooldown;
			canSword = 0;
		}
		if (speed > 4) speed--;
		dirMod = spinDir;
	}
	else{
		if (speed > velocity) speed--;
	}
	if (point_distance(x, y, player.x, player.y) < distanceTreshold2){
		dirMod = -1
		if (speed > 3) speed--;
	}
	gravity_direction = image_angle + 90*dirMod;
}
else{
	gravity = 0;
	friction = 0.1;
}
if place_meeting(x + sign(hspeed)*player.colisionDist, y, blockParent){
	hspeed = 0;
}
if place_meeting(x, y + sign(vspeed)*player.colisionDist, blockParent){
	vspeed = 0;
}