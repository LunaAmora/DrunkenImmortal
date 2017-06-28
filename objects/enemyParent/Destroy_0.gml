/// @description
score += 1;
instance_create_layer(x, y, "GameLayer", lifeDrop);
if (hasDrink){
	instance_create_layer(x, y, "Gamelayer", drink);
}