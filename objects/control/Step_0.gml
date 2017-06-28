/// @description Global Keys
ini_open("data.ini"){
	completed = ini_read_real("temples", "count", 0);
}
if completed == 4 && (spawned) && !(instance_exists(TempleControl)){
	spawned = false;
	instance_create_layer(room_width/2, room_height/2, "GameLayer", grandpa_boss)
}