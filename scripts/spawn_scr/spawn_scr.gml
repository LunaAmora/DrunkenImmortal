/// @description spawn_scr(argument0);
a = argument0;

spawn = false
if a != noone{
	instance_create_layer(x,y, "GameLayer", a);
}
alarm_set(2, 999999);
