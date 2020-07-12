event_inherited();

if (!global.game_over) {
	var i = irandom_range(0, 99);

	if (i <= 12) {
		instance_create_layer(x, y, layer, obj_health_pickup);
	}

	if (i > 12 && i <= 14) {
		instance_create_layer(x, y, layer, obj_bomb_pickup);
	}
}