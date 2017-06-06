/// @description
/*
for (var i = 0; i < image_number; i++)
{
	draw_sprite_ext(sprite_index, i, x, y - i * sign(image_xscale)*image_xscale * 1, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}

*/
for (var i=0; i<image_number; i++) {
    draw_sprite_ext(sprite_index, i, x+lengthdir_x(i*1,(camera_get_view_angle(view_camera[0])*-1)+90), y+lengthdir_y(i*1,(camera_get_view_angle(view_camera[0])*-1)+90), image_xscale, image_yscale, image_angle, c_white, image_alpha);
}