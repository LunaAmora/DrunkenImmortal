ini_open("data.ini")
switch (drinkId){
	case "south": 
	ini_write_real("drinks", "drink3", 1);
	ini_write_real("drinks", "drink2", 1);
	break;
	case "north":
	ini_write_real("drinks", "drink1", 1);
	ini_write_real("drinks", "drink4", 1);
	break;
}
ini_close();
instance_destroy();