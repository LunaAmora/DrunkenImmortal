if (!roomActive)
{
	switch (dir){
		case "north":
			if (player.y < treshold) iniciate = true;
			break;
		case "south":
			if (player.y > treshold) iniciate = true;
			break;
		case "east":
			if (player.x > treshold) iniciate = true;
			break;
		case "west":
			if (player.x < treshold) iniciate = true;
			break;
	}

	if (iniciate)
	{
		roomActive = true;
		with (turret) active = true;
		with (turret1) active = true;
		with (spawner) spawn = true;
		
		
		switch (dir){
		
			case "north":
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
				break;
				
			case "south":
				for (i = 0; i <= 5; i++)
				{
					with instance_create_layer(670 + 16 + (i * 32), 96 + 16, "Wall", wall1){
						blockPassage = true;
					}
					with (instance_create_layer(670 + 16 + (i * 32), 96 + 17, "GameLayer", smokePuff))
					{
						image_xscale *= 1.5;
						image_yscale *= 1.5;
					}
				}
				break;
			case "east":
				if (player.x > treshold) iniciate = true;
				break;
			case "west":
				if (player.x < treshold) iniciate = true;
				break;
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