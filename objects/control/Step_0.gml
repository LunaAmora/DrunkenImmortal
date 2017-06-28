/// @description Global Keys
if keyboard_check(vk_enter){    //restart game
	ini_open("data.ini");
	if ini_read_real( "save", "score", 0) < score{
		ini_write_real("save", "score", score)
	}
	ini_close();
	game_restart();
}

ini_open("data.ini"){
	completed = ini_read_real("temples", "count", 0);
}
if completed == 4 && (spawned) && !(instance_exists(TempleControl)){
	spawned = false;
	instance_create_layer(room_width/2, room_height/2, "GameLayer", grandpa_boss)
}