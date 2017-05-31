/// @description spawn_scr(argument0);
/// @function spawn_scr
/// @param argument0
a = argument0;

global.spawn = false
global.lado = irandom_range(1, 4);

if global.lado = 1{
	instance_create(-20, random_range(0, room_height), a);
}

if global.lado = 2{
	instance_create(room_width+20, random_range(0, room_height), a);
}

if global.lado = 3{
	instance_create(random_range(0, room_width), -20, a);
}

if global.lado = 4{
	instance_create(random_range(0, room_width), room_height+20, a);
}

alarm_set(2, 40);
