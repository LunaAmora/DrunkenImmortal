/// @description Basic Controls
//alarm[10]= 1;
depth = -y;
// Action

if (cheating)
{
	hp = 100;
	dashCounter = 4;
}

if keyboard_check_pressed(vk_space){
    nbutton_scr("dash", 0);
}

if mouse_check_button(mb_left){
    nbutton_scr("arrow", 0);
}

if mouse_check_button(mb_right){
    nbutton_scr("sword", 0);
}

if keyboard_check_pressed(vk_pageup){
    if (cheating) cheating = false;
	else cheating = true;
}

if (drink1 && keyboard_check_pressed(ord("1"))){
	nbutton_scr(1, 20);
}
if (drink2 && keyboard_check_pressed(ord("2"))){
	nbutton_scr(2, 20);
}
if (drink3 && keyboard_check_pressed(ord("3"))){
	nbutton_scr(3, 20);
}
if (drink4 && keyboard_check_pressed(ord("4"))){
	nbutton_scr(4, 60);
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
    if place_meeting(x, y, direc){
		friction = 10;
	    gravity = 0;
    }
    else{
		friction = 0;
        gravity = 0.5;
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
	if potionDash = 0{
		ad.colour = c_white;
	}
	else ad.colour = c_orange;
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
	game_restart();
}

if (sobriety <= 20)
{	
	alarm[2] = dizzinessDuration * room_speed;
	dizziness = -1;
}
if (sobriety < 100) sobriety += metabolism;