var __b__;
__b__ = action_if_variable(global.shooting, 0, 0);
if __b__
{
{
action_sprite_set(bow_spr, 0, 1);
}
}
else
{
{
__b__ = action_if_variable(control.alarm[0], 0, 2);
if __b__
{
{
action_sprite_set(bow_spr, 0, 1);
}
}
else
{
{
__b__ = action_if_variable(control.alarm[1], 2*control.aiming/3, 4);
if __b__
{
action_sprite_set(bow_spr2, 0, 1);
}
else

{
{
__b__ = action_if_variable(control.alarm[1], control.aiming/3, 4);
if __b__
{
action_sprite_set(bow_spr3, 0, 1);
}
else
{
{
__b__ = action_if_variable(control.alarm[1], control.aiming/3, 1);
if __b__
{
action_sprite_set(bow_spr4, 0, 1);
}
}
}
}
}
}
}
}
}