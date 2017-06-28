if keyboard_check(vk_escape){   //end game
	if room_get_name(room) != "Menu"{
		game_restart();
	}
	else{
		game_end();
	}
}