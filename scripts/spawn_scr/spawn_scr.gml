/// @description spawn_scr(argument0);
a = argument0;

control.spawn = false
lado = irandom_range(1, 4);
if a != noone{
	if lado = 1{
		instance_create_layer(-20, random_range(0, room_height), "GameLayer", a);
	}

	if lado = 2{
		instance_create_layer(room_width+20, random_range(0, room_height), "GameLayer", a);
	}

	if lado = 3{
		instance_create_layer(random_range(0, room_width), -20, "GameLayer", a);
	}

	if lado = 4{
		instance_create_layer(random_range(0, room_width), room_height+20, "GameLayer", a);
	}
}
alarm_set(2, 20);
