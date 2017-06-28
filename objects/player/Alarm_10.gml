if step = 5 step = 6;
if step = 7 step = 8;
if step = 9{
	step = 10;
	ini_open("data.ini")
	ini_write_real("tutorial", "step", 8)
	ini_close();
}