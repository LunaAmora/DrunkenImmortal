//Perseguir jogador
event_inherited();
image_angle = (darctan2(x-player.x, y-player.y));
dirMod = 1;

if !(collision_line(x, y, player.x, player.y, blockParent, true, true)){
	gravity = 0.5;
	friction = 0;
	if (point_distance(x, y, player.x, player.y) > distanceTreshold1){
		if (speed > 6) speed--;
	}
	else if (point_distance(x, y, player.x, player.y) < distanceTreshold2){
		dirMod = -1
		if (speed > 5) speed--;
	}
	else{
		dirMod = spinDir;
		if (speed > 4) speed--;
	}

	if (point_distance(x, y, player.x, player.y) < distanceTreshold3)
	{
		nbutton_scr(1);
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