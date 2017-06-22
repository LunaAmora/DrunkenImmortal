/// @description Basic Controls
//alarm[10]= 1;
depth = -y;
// Action
if keyboard_check_pressed(vk_space){
    nbutton_scr(0);
}

if mouse_check_button(mb_left){
    nbutton_scr(1);
}

if mouse_check_button(mb_right){
    nbutton_scr(2);
}

if (keyboard_check_pressed(ord("1"))){
	sobriety -= 10;
	nbutton_scr(4);
}
if (keyboard_check_pressed(ord("2"))){
	sobriety -= 10;
	nbutton_scr(5);
}
if (keyboard_check_pressed(ord("4"))){
	sobriety -= 50;
	nbutton_scr(6);
}

if mouse_check_button_released(mb_left){
    alarm[3] = -1;
    shooting = 0;
}
if mouse_check_button_released(mb_right){
    usingWeapon = 0;
}

// Direction
image_angle = (darctan2(x-mouse_x, y-mouse_y));

// Movement
if dash = 0{
	if (dizziness) dirMod = -1;
	else dirMod = 1;
	
    if place_meeting(x, y, direc){
		friction = 10;
	    gravity = 0;
    }
    else{
		friction = 0;
        gravity = 0.5 * dirMod;
        gravity_direction = ((darctan2(x-direc.x, y-direc.y))+90);
		
    }
}
else{
    gravity = 0;
    friction = 0
}

// Velocity limiter
if dash = 0{
    if shooting = 0 && swording = 0{
        if speed > maxSpeed{
            speed = maxSpeed;
        }
    }
    else{
        if speed > ingSpeed{
            speed = ingSpeed;
        }
    }
    if speed < 0{
        speed = 0;
    }
}
else{
	ad = instance_create_layer(x, y, "gameLayer", smokePuff);
	ad.owner = "player";
}

if place_meeting(x + sign(hspeed)*colisionDist, y, blockParent) || place_meeting(x + direc.dirX*colisionDist, y, blockParent){
	hspeed = 0;
}
if place_meeting(x, y + sign(vspeed)*colisionDist, blockParent) || place_meeting(x, y + direc.dirY*colisionDist, blockParent){
	vspeed = 0;
}

// Other Things
if (hp <= 0){
    ini_open("data.ini");
	if ini_read_real( "save", "score", 0) < score{
		ini_write_real("save", "score", score)
	}
	ini_close();
	room_restart();
}

if (sobriety <= 0)
{	
	alarm[2] = dizzinessDuration * room_speed;
	sobriety = 0.1;
	dizziness = true;
}
if (sobriety < 100) sobriety += metabolism;