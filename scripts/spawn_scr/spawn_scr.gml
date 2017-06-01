/// @description spawn_scr(argument0);
a = argument0;

control.spawn = false
lado = irandom_range(1, 4);

if lado = 1{
	instance_create(-20, random_range(0, room_height), a);
}

if lado = 2{
	instance_create(room_width+20, random_range(0, room_height), a);
}

if lado = 3{
	instance_create(random_range(0, room_width), -20, a);
}

if lado = 4{
	instance_create(random_range(0, room_width), room_height+20, a);
}

alarm_set(2, 40);
