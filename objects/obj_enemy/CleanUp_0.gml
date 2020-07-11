if (!global.game_over) {
	var i = irandom_range(0, 99);

	if (i <= 15) {
		instance_create_layer(x, y, layer, obj_health_pickup);
	}

	if (i > 15 && i <= 20) {
		instance_create_layer(x, y, layer, obj_bomb_pickup);
	}

	event_inherited();
}