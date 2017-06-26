if (!roomActive)
{
	if (player.y < 1600)
	{
		roomActive = true;
		with (turret) active = true;
		with (turret1) active = true;
		with (spawner) spawn = true;
		
		for (i = 0; i <= 6; i++)
		{
			instance_create_layer(670 + 16 + (i * 32), 1664 + 16, "Wall", wall1);
			with (instance_create_layer(670 + 16 + (i * 32), 1664 + 17, "GameLayer", smokePuff))
			{
				image_xscale *= 1.5;
				image_yscale *= 1.5;
			}
		}
		
	}
}