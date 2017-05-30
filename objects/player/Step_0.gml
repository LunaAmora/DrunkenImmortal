/// @description Basic Controls

//Action
if keyboard_check(vk_space){
    nbutton_scr(0)
}
if mouse_check_button(mb_left){
    nbutton_scr(1)
}
if mouse_check_button_released(mb_left){
    control.alarm[1] = -1;
    global.shooting = 0;
}
//Direction
image_angle = radtodeg(arctan2(x-mouse_x, y-mouse_y));

//Movement
if dash = 0{
    if place_meeting(x, y, direc){
        friction = 1;
        gravity = 0;
    }
    else{
        friction = 0;
        gravity = 0.5;
        gravity_direction = (radtodeg(arctan2(x-direc.x, y-direc.y))+90);
    }
}
else{
    gravity = 0;
    friction = 0
}

//Velocity limiter
if dash = 0{
    if global.shooting = 0{
        if speed > 7{
            speed = 7;
        }
    }
    else{
        if speed > 4{
            speed = 4
        }
    }
    if speed < 0{
        speed = 0;
    }
}

//Teletransportation
move_wrap(true, true, 16);