/// @description Global Keys
ini_open("data.ini")
completed = ini_read_real("temples", "count", 0);

if !(instance_exists(TempleControl)){
	if ini_read_real("temples", "north", 1) || player.step != 10{

	}
	if ini_read_real("temples", "south", 1) || player.step != 10{

	}
	if ini_read_real("temples", "west", 1) || player.step != 10{

	}
	if ini_read_real("temples", "east", 1) || player.step != 10{

	}
}
ini_close();

if completed == 4 && (spawned) && !(instance_exists(TempleControl)){
	spawned = false;
	instance_create_layer(room_width/2, room_height/2, "GameLayer", grandpa_boss)
}
