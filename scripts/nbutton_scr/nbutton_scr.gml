/// @description nbutton_scr(argument0);
/// @function nbutton_scr
/// @param argument0
a = argument0;

if a = 0{																	//-----Dash------
    if speed != 0 && dash = 0 && player.dashCounter > 0{                    //timer & cooldown check
        control.alarm[0] = player.arrowCooldown;                            //reset arrow cooldown
        control.alarm[1] = -1;												//reset aiming timer
		player.dashCounter--;
		motion_set(radtodeg(arctan2(x-direc.x,y-direc.y))+90,25*player.dirMod)//dash speed
		dash = 1;															//stop movements
		alarm[0] = control.dash_timer;										//dash timer
    }
}
if a = 1{																	//-----Arrow-----
    if control.alarm[0] <= 0{												//cooldown check
        global.shooting = 1;												//speed reducer
        if control.alarm[1] <= 0{											//aim check
            control.alarm[1] = player.aimingTime;                           //aiming timer
        }
    }
}
if a = 2{																	//-----Sword-----
	if global.shooting = 0 && global.swording = 0{
		global.swording = 1;
		control.alarm[0] = player.arrowCooldown;                            //reset arrow cooldown
        control.alarm[1] = -1;												//reset aiming timer													//Shooting check
		instance_create(x, y, sword);
	}
}