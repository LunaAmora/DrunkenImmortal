/// @description drawText_scr(argument0, argument1, argument2, argument3);

z = argument0;	//array
w = argument1;	//increase
h = argument2;	//coordX
j = argument3;	//coordY

scr = instance_create_layer(0, 0, "GameLayer", drawText){
	for (a = 0; a < z; a++){
		scr.message[a] = text[a];
	}
	scr.increase = w;
	scr.coordX = h;
	scr.coordY = j;
	scr.message_length = string_length(scr.message[scr.message_current]);
}
