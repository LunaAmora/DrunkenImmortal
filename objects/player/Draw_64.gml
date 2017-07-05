if sobriety < 20{
	dAlpha1 = 0.4;
	dAlpha2 = 0.4
	dAlpha3 = 0.4
	dAlpha4 = 0.4;
}
else if sobriety <40{
	dAlpha1 = 1;
	dAlpha2 = 0.4;
	dAlpha3 = 0.4;
	dAlpha4 = 0.4;
}
else if sobriety <60{
	dAlpha1 = 1;
	dAlpha2 = 1;
	dAlpha3 = 1;
	dAlpha4 = 0.4;
}
else{
	dAlpha1 = 1;
	dAlpha2 = 1;
	dAlpha3 = 1;
	dAlpha4 = 1;
}

if instance_number(arrowDef) == 9 dAlpha1 = 0.4;
if (canArrowDash) dAlpha2 = 0.4;
if (canPotionDash) dAlpha3 = 0.4;

draw_set_halign(fa_center);
if (drink1){
	draw_sprite_ext(drink_spr, 0, view_wport[0] - 224, view_hport[0] - 53, 0.5, 0.5, 0, c_white, dAlpha1);
	draw_text(view_wport[0] - 224, view_hport[0] - 90, "1")
}
if (drink2){
	draw_sprite_ext(drink_spr, 1, view_wport[0] - 160, view_hport[0] - 53, 0.5, 0.5, 0, c_white, dAlpha2);
	draw_text(view_wport[0] - 160, view_hport[0] - 90, "2")
}
if (drink3){
	draw_sprite_ext(drink_spr, 2, view_wport[0] - 96, view_hport[0] - 53, 0.5, 0.5, 0, c_white, dAlpha3);
	draw_text(view_wport[0] - 96, view_hport[0] - 90, "3")
}
if (drink4){
	draw_sprite_ext(drink_spr, 3, view_wport[0] - 32, view_hport[0] - 53, 0.5, 0.5, 0, c_white, dAlpha4);
	draw_text(view_wport[0] - 32, view_hport[0] - 90, "4")
}

draw_sprite(Instructions_spr, step, view_wport[0]/2, 150);

ini_open("data.ini")
if (drink1) && !(havedrink1){
	draw_sprite(Instructions1_spr, 0, view_wport[0]/2, 150);
}
if (drink2) && !(havedrink2){
	draw_sprite(Instructions1_spr, 1, view_wport[0]/2, 150);
}
if (drink3) && !(havedrink3){
	draw_sprite(Instructions1_spr, 2, view_wport[0]/2, 150);
}
if (drink4) && !(havedrink4){
	draw_sprite(Instructions1_spr, 3, view_wport[0]/2, 150);	
}
ini_close();
