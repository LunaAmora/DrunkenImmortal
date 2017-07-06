ini_open("data.ini")
	if ini_read_real("temples", string(dir), 0) == 0{
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
					for (i = 0; i <= 5; i++)
					{
						with instance_create_layer(64 + 16, 544 + 16 + (i * 32), "Wall", wall1){
							blockPassage = true;
						}
						with (instance_create_layer(64 + 16, 544 + 17 + (i * 32), "GameLayer", smokePuff))
						{
							image_xscale *= 1.5;
							image_yscale *= 1.5;
						}
					}
					break;
					
				case "west":
					for (i = 0; i <= 5; i++)
					{
						with instance_create_layer(1441 + 16, 864 + 16 + (i * 32), "Wall", wall1){
							blockPassage = true;
						}
						with (instance_create_layer(1441 + 16, 864 + 17 + (i * 32), "GameLayer", smokePuff))
						{
							image_xscale *= 1.5;
							image_yscale *= 1.5;
						}
					}
					break;
			}
		}
	}
	else if (control.spawnCount >= 20 * (control.completed+1)&& !done)
	{
		with (spawner) spawn = false;
		
		if !(instance_exists(enemyParent)){
			with (turret) active = false;
			with (turret1) active = false;
			if !(dSpawned){
				instance_create_layer(room_width/2, room_height/2, "GameLayer", drink);
				dSpawned = true;
			}
			if !(instance_exists(drink)){
				instance_create_layer(player.x, player.y, "GameLayer", explosion);
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
				done = true;
				ini_open("data.ini");
				ini_write_real("temples", string(dir), 1);
				ini_write_real("temples", "count", ini_read_real("temples", "count", 0)+1);
				ini_close();
			}
		}
	}
}