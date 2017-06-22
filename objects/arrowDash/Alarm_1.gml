/// @description
if whoShoot = "player"{
	/*if target == noone{
		with (enemyParent)
		{
			if (distance_to_object(other) < other.distance)
			{
				if (collision_line(x, y, other.x, other.y, blockParent, 0, 0))
				{
					other.target = self;
					other.distance = distance_to_object(other);
				}
			}
		}
		if target != noone {
			image_angle = (darctan2(x - target.x, y - target.y));
		}
	}*/
	if target == noone && instance_exists(enemyParent){
		target = instance_nearest(x, y, enemyParent);
		image_angle = (darctan2(x - target.x, y - target.y));
	}
	
}
if whoShoot = "turret1"{
	image_angle = (darctan2(x - player.x, y - player.y));
}
velo = dashVelo;