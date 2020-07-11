if (argument0 == step) {
	if (state_new) {
		if (instance_exists(obj_game_player)) {
			if (instance_exists(obj_game_controller)) {
				obj_game_controller.player_score += 5;
			}
		}
	}
	
	if (state_timer >= 15) {
		instance_destroy();	
	}
} else if (argument0 == draw) {
	sprite_index = spr_enemy_death;
	draw_self();
}