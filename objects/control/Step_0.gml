/// @description Global Keys
if keyboard_check(vk_escape){   //end game
    game_end();
}
if keyboard_check(vk_enter){    //restart game
    game_restart();
}
if spawn = true{
	spawn_scr(choose(noone, noone, noone, noone, enemy, enemy, enemy, archer_enemy, archer_enemy, mage_enemy));
}

time ++;