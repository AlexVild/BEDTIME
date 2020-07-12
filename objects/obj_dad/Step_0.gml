if (instance_exists(obj_player)) {
	if (obj_player.game_instance.screen_is_on) {
		// PLAYER CAUGHT!!!
		instance_destroy(obj_door);
		instance_create_layer(x, y, "Controllers", obj_door_dad_busting_in);
		instance_destroy();
	}
}

if (done_checking) {
	if (instance_exists(obj_door)) {
	with(obj_door) {
		close_door = true;
		}
	}
	instance_destroy();
}
