if (other.whoShoot == "player")
{
	with (other)
	{
		for (i = 0; i < 4; i++;)
		{
			with (instance_create_layer(x, y, "GameLayer", spark))
			{
				image_angle = other.image_angle + random_range(-45, 45);
				direction = image_angle;
				speed = random_range(2, 3);
			}
		}
		instance_destroy();
	}
	instance_destroy();
}