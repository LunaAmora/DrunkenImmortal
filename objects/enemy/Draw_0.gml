/// @description

for (var i = 0; i < image_number; i++)
{
	draw_sprite_ext(sprite_index, i, x, y - i * image_xscale * 1, image_xscale, image_yscale, image_angle, c_yellow, image_alpha);
}