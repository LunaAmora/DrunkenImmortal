with (arrow)
{
	if (distance_to_object(other) <= 0 && whoShoot != "player") motion_add(point_direction(other.x, other.y, x, y), 100);
}

with (smokePuff)
{
	if (distance_to_object(other) <= 0 && owner != "player") motion_add(point_direction(other.x, other.y, x, y), 1);
}

with (enemyParent)
{
	if (distance_to_object(other) <= 0 ) motion_add(point_direction(other.x, other.y, x, y), 1.5);
}

with (turret)
{
	if (distance_to_object(other) <= 0 ) {active = false; alarm[0] = room_speed * 5;}
}

with (turret1)
{
	if (distance_to_object(other) <= 0 ) {active = false; alarm[0] = room_speed * 5;}
}

image_xscale += 0.3;
image_yscale += 0.3;