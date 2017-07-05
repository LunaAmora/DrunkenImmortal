draw_sprite(dash_counter_spr, -1, 158, 30);

draw_healthbar(8, 8, view_wport[0]-8, 24, player.hp, c_black, c_red, c_green, 0, true, true);

if (!player.dizziness) colour = c_dkgray;
else colour = c_lime;
draw_healthbar(8, view_hport[0]-8, view_wport[0]-8, view_hport[0] - 28, player.sobriety, c_black, colour, c_yellow, 0, true, true);

draw_set_color(c_black);

for (i = 0; i <= 4; i++)
{
	draw_line(view_wport[0] / 5 * i, view_hport[0]-8, view_wport[0] / 5 * i, view_hport[0]- 28);
}

draw_set_color(c_white);

draw_sprite_ext(playerIcone_spr, 0, 8, 24, 0.7, 0.7, 0, c_white, 1);
