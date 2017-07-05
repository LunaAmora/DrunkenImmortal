switch (owner){
	case "player": arrowC = colour;break;
	case "mage": arrowC = c_aqua;break;
	case "turret1": arrowC = c_orange;break;
	default: arrowC = c_yellow;
}
draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, arrowC, image_alpha);