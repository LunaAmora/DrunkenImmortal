switch (whoShoot){
	case "player": arrowC = c_white;break;
	case "archer": arrowC = c_yellow;break;
	case "mage": arrowC = c_red;break;
	case "turret": arrowC = c_black;break;
	case "turret1": arrowC = c_black;break;
	case "grandpa_boss": arrowC = c_fuchsia;break;
}
draw_sprite_ext(arrow_spr, 0, x, y, image_xscale, image_yscale, image_angle, arrowC, image_alpha);