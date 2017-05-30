/// @description nbutton_scr(argument0);
/// @function nbutton_scr
/// @param argument0
a = argument0;

if a = 0{                                                                 //-----Dash------
    if speed != 0 && dash = 0 && player.dashCounter > 0{                           //timer & cooldown check
        control.alarm[0] = control.cooldown;                              //reset arrow cooldown
        control.alarm[1] = -1;                                            //reset aiming timer
		player.dashCounter--;
		motion_set(radtodeg(arctan2(x - direc.x, y - direc.y))+90, 25)		//dash speed
		dash = 1;															//stop movements
		alarm[0] = control.dash_timer;										//dash timer
    }
}
if a = 1{                                                                 //-----Arrow-----
    if control.alarm[0] <= 0{                                             //cooldown check
        global.shooting = 1;                                              //speed reducer
        if control.alarm[1] <= 0{                                         //aim check
            control.alarm[1] = control.aiming;                            //aiming timer
        }
    }
}
