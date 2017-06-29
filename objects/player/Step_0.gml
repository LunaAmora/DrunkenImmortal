/// @description Basic Controls
if step = 4{
	step = 5;
	alarm[10] = room_speed*2;
}
if step = 6{
	step = 7;
	alarm[10] = room_speed*2;
}
if step = 8{
	step = 9;
	alarm[10] = room_speed*2;
}

depth = -y;

// Drinks
ini_open("data.ini")
drink1 = ini_read_real("drinks", "drink1", 0);
drink2 = ini_read_real("drinks", "drink2", 0);
drink3 = ini_read_real("drinks", "drink3", 0);
drink4 = ini_read_real("drinks", "drink4", 0);
havedrink1 = ini_read_real("hdrinks", "1", 0);
havedrink2 = ini_read_real("hdrinks", "2", 0);
havedrink3 = ini_read_real("hdrinks", "3", 0);
havedrink4 = ini_read_real("hdrinks", "4", 0);
ini_close();

// Action

if (cheating)
{
	hp = 100;
	dashCounter = 4;
	sobriety = maxSobriety;
}
if (canPotionDash){
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
	if step == 2 step = 3;
}

if keyboard_check_pressed(vk_pageup){
    if (cheating) cheating = false;
	else cheating = true;
}

if (drink1 && keyboard_check_pressed(ord("1"))){
	if instance_number(arrowDef) < 9{
		nbutton_scr(1, 20);
	}
	if !(havedrink1){
		ini_open("data.ini")
		ini_write_real("hdrinks", "1", 1)
		ini_close();
	}
}
if (drink2 && keyboard_check_pressed(ord("2"))&& !(canArrowDash)){
	nbutton_scr(2, 40)
	if !(havedrink2){
		ini_open("data.ini")
		ini_write_real("hdrinks", "2", 1)
		ini_close();
	}
}
if (drink3 && keyboard_check_pressed(ord("3"))){
	nbutton_scr(3, 40);
	if !(havedrink3){
		ini_open("data.ini")
		ini_write_real("hdrinks", "3", 1)
		ini_close();
	}
	
}
if (drink4 && keyboard_check_pressed(ord("4"))){
	nbutton_scr(4, 60);
	if !(havedrink4){
		ini_open("data.ini")
		ini_write_real("hdrinks", "4", 1)
		ini_close();
	}
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
		if step == 0 step = 1;
    }
}
else{
	if step == 3 step = 4;
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
	if !(canPotionDash){
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
	game_restart();
	room_goto(HurHub);
	hp = maxHp;
	sobriety = maxSobriety;
	control.spawnCount = 0;
	x = room_height/2;
	y = room_width/2;
}

if (sobriety <= 20)
{	
	alarm[2] = dizzinessDuration * room_speed;
	dizziness = -1;
}
if (sobriety < 100) sobriety += metabolism;