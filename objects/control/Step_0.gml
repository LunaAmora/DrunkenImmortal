/// @description Global Keys
if keyboard_check(vk_escape){   //end game
    game_end();
}
if keyboard_check(vk_enter){    //restart game
	ini_open("data.ini");
	if ini_read_real( "save", "score", 0) < score{
		ini_write_real("save", "score", score)
	}
	ini_close();
	room_restart();
}

a = instance_number(enemy) + instance_number(archer_enemy)+ instance_number(mage_enemy)
if spawn = true && a < 8{
	spawn_scr(choose(noone, noone, noone, noone, enemy, enemy, enemy, archer_enemy, archer_enemy, mage_enemy));
}

time ++;