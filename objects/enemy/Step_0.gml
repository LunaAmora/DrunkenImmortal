/// @description

image_angle = radtodeg(arctan2(x-player.x, y-player.y));
dirMod = 1;
	

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