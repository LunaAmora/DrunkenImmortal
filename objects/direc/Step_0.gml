/// @description Movement Direction
//a
if keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("D")) || keyboard_check(ord("A")){    
    if keyboard_check(ord("W")) && keyboard_check(ord("S")){
        y = player.y    //"up" and "down" canceling each other
    }
    else{               //"up" or "down"
        if keyboard_check(ord("W")){
            y = player.y - 100;
        }
        if keyboard_check(ord("S")){
            y = player.y + 100;
        }
    }
    if keyboard_check(ord("D")) && keyboard_check(ord("A")){
        x = player.x    //"right" and "left" canceling each other
    }
    else{               //"right" or "left"
        if keyboard_check(ord("D")){
            x = player.x + 100;
        }
        if keyboard_check(ord("A")){
            x = player.x - 100;
        }
    }
}
else{                   //neihter key default state
    x = player.x;
    y = player.y;
}

if (keyboard_check(ord("W")) || keyboard_check(ord("S"))) && (!keyboard_check(ord("D")) && !keyboard_check(ord("A"))){
    x = player.x;       //only "up" or "down" X default state
}
if (keyboard_check(ord("A")) || keyboard_check(ord("D"))) && (!keyboard_check(ord("W")) && !keyboard_check(ord("S"))){
    y = player.y;       //only "right" or "left" Y default state
}

