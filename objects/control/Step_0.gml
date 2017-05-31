/// @description Global Keys
if keyboard_check(vk_escape){   //end game
    game_end();
}
if keyboard_check(vk_enter){    //restart game
    game_restart();
}
if global.spawn = true{
	spawn_scr(choose(enemy, archer_enemy));
}