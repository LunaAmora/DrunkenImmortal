/// @description
event_inherited()

substitute = 0;
for(a = 0; a <= control.arraySize; a++){
	if control.defCircle[a] != 0{
		substitute++;
	}
	if control.defCircle[a] == id{
		pos = substitute;
		a = control.arraySize+1;
	}
}
bAnglePos = pos*(360 div instance_number(arrowDef));


veloDef = 5;
anglePos -= veloDef;

if mouse_check_button(mb_middle){
	dirX = mouse_x;
	dirY = mouse_y;
}
else{
	dirX = owner.x;
	dirY = owner.y;
}

defAim_scr(dirX + owner.distanceDef * cos(degtorad(bAnglePos+anglePos)), dirY - owner.distanceDef * sin(degtorad(bAnglePos + anglePos)));