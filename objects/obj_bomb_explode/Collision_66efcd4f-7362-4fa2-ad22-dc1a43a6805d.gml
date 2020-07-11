if (instance_exists(obj_game_controller) && !global.game_over) {
	obj_game_controller.player_score += 5;
}
instance_destroy(other);

play_subgame_sound(sfx_explode);