switch (type){
	case "New Game": 
		ini_open("data.ini");
		ini_section_delete("save")
		ini_section_delete("temples")
		ini_section_delete("drinks")
		ini_section_delete("hdrinks")
		ini_close();
		room_goto(HurHub);
	break;
	case "Continue": room_goto(HurHub);break;
	case "Exit": game_end();break;
}