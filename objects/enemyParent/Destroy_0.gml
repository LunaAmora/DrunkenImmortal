instance_create_layer(x, y, "GameLayer", lifeDrop);

for (i = 0; i <= 8; i++)
{
	with (instance_create_layer(x, y, "GameLayer", bodyPart))
	{
		image_index = other.i;
		motion_set(random(360), irandom_range(6, 12));
	}
}