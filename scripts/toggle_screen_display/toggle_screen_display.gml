if (instance_exists(obj_game_controller)) {
	obj_game_controller.screen_is_on = !argument0;
	
	// Go back to game after turning game on
	if (obj_game_controller.screen_is_on) {
		if (instance_exists(obj_player)) {
			obj_player.selected_domain = Domains.GAME;	
		}
	}
}