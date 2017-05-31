draw_sprite_ext(bow_spr, 0, x, y + 10, 1, 1, image_angle, c_white, image_alpha);

for (var i = 0; i < image_number; i++)
{
	draw_sprite_ext(sprite_index, i, x, y - i * image_xscale * 1, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}