if(is_home) {
	if (instance_exists(obj_game_controller)) {
		if (obj_game_controller.screen_is_on) {
			toggle_game_over();
		}
	}
}