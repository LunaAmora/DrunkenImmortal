a = choose(noone, noone, noone, noone, enemy, enemy, enemy, archer_enemy, archer_enemy, mage_enemy);
if (a != noone){
	instance_create_layer(x,y, "GameLayer", a);
	instance_create_layer(x,y-1, "GameLayer", smokePuff);
	control.spawnCount +=10;
	
}