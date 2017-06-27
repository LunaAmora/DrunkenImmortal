/// @description Aiming & Shooting

alarm[4] = arrowCooldown;

if (canArrowDash){
	ad = instance_create_layer(x, y + 10, "GameLayer", arrowDash);
	ad.image_angle = (darctan2(x - aim.x, y - aim.y));
	ad.velo = dashShootVeloMin;
	ad.dashVelo = dashShootVeloMax;
	ad.alarm[1] = arrowDashTurnTime;
	ad.whoShoot = string(object_get_name(object_index));
	ad.owner = id;
}
else{
	with (instance_create_layer(x, y + 10, "GameLayer", arrow)){
		image_angle = (darctan2(other.x - aim.x, other.y - aim.y));
		velo = other.shootVelo;
		whoShoot = "player";
	}
}