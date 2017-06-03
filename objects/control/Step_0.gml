/// @description Global Keys
if keyboard_check(vk_escape){   //end game
    game_end();
}
if keyboard_check(vk_enter){    //restart game
    game_restart();
}

a =instance_number(enemy) + instance_number(archer_enemy)+ instance_number(mage_enemy)
if spawn = true && a < 15{
	spawn_scr(choose(noone, noone, noone, noone, enemy, enemy, enemy, archer_enemy, archer_enemy, mage_enemy));
}

time ++;