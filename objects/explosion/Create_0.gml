image_xscale /= 64;
image_yscale /= 64;
alarm[0] = room_speed / 2;

radius = sprite_width + image_xscale / 2;
for (a = 0; a < 360; a += random_range(0.1, 0.3))
{
	with (instance_create_layer(x + (radius * cos(a)), y + (radius * sin(a)), "GameLayer", spark))
	{
		image_angle = point_direction(other.x, other.y, x, y);
		direction = image_angle;
		speed = random_range(28, 32);
	}
}