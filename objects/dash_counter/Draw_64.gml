draw_sprite(dash_counter_spr, -1, 16, 32);
draw_healthbar(0, 0, view_wport[0], 16, player.hp, c_black, c_red, c_green, 0, true, true);

if (!player.dizziness) colour = c_dkgray;
else colour = c_lime;
draw_healthbar(0, view_hport[0], view_wport[0], view_hport[0] - 16, player.sobriety, c_black, colour, c_yellow, 0, true, true);