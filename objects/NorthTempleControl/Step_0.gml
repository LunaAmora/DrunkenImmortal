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
			with instance_create_layer(670 + 16 + (i * 32), 1664 + 16, "Wall", wall1){
				blockPassage = true;
			}
			with (instance_create_layer(670 + 16 + (i * 32), 1664 + 17, "GameLayer", smokePuff))
			{
				image_xscale *= 1.5;
				image_yscale *= 1.5;
			}
		}
		
	}
}
else if (control.spawnCount >= 100 && !done)
{
	with (spawner) spawn = false;
	if !(instance_exists(enemyParent)){
		instance_create_layer(player.x, player.y, "GameLayer", explosion);
		instance_create_layer(player.x, player.y, "GameLayer", victory);
		with (wall1){
			if (blockPassage){
				instance_destroy();
				with (instance_create_layer(x, y, "GameLayer", smokePuff))
				{
					image_xscale *= 1.5;
					image_yscale *= 1.5;
				}
			}
		}
		with (turret) active = false;
		with (turret1) active = false;
		done = true;
	}
}